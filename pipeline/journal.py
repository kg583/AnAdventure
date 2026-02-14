import re

from beet import *

from pathlib import Path
from PIL import ImageFont


def load_font(formatting: str) -> ImageFont.FreeTypeFont:
    return ImageFont.truetype(f"./pipeline/MinecraftDefault-{formatting}.ttf", size=12)

FONTS = {
    (False, False): load_font("Regular"),
    (True, False): load_font("Bold"),
    (False, True): load_font("Italic"),
    (True, True): load_font("BoldItalic")
}


def apply_formatting(text: str):
    repls = {
        "'": "’",
        r"\.\.\.": "…",
        r'"(.*?)"': r'“\1”',

        # Formatting codes are broken in language files (probably never to be fixed)
        r"\?\?(.*?)\?\?": r"\1",
        r"\*\*(.*?)\*\*": r"\1",
        r"~~(.*?)~~": r"\1",
        r"__(.*?)__": r"\1",
        r"(_|\*)(.*?)\1": r"\2",
    }

    for patt, repl in repls.items():
        text = re.sub(patt, repl, text)

    return text
        

MAX_WIDTH = 114
MAX_LINES = 14

SUB_WIGGLE = {
    "profession": 45,
    "name": 30
}

class Journal:
    def __init__(self, path: Path):
        self.path = path
        
        self.id = path.stem
        self.location = f"aa:journal/{self.id}"

        self.author, self.part = self.id.split(".", maxsplit=1)
        self.number = int(self.part.split(".", maxsplit=1)[0])
        self.roman = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X"][self.number]

        with open(path, encoding="utf8") as file:
            self.text = apply_formatting(file.read().rstrip())

        bold = False
        italic = False

        self.pages = []
        for page in self.text.split("\n\n\n"):
            lines = []
            subs = []
            for line in page.split("\n"):
                words = []
                wiggle = 0
                for word in line.split():
                    if "§l" in word:
                        bold = True

                    if "§o" in word:
                        italic = True

                    for match in re.finditer(r"%\((.*?)\)", word):
                        word = word.replace(match[0], "%s")
                        subs.append(match[1])
                        wiggle += SUB_WIGGLE[match[1].split(".")[-1]]
                                
                    words.append(word)
                    if FONTS[(bold, italic)].getlength(re.sub(r"§.", "", " ".join(words))) + wiggle > MAX_WIDTH:
                        if len(lines) >= MAX_LINES:
                            self.pages.append(("\n".join(lines), subs))
                            subs = []
                            lines = []

                        lines.append(" ".join(words[:-1]))
                        words = [words[-1]]
                        wiggle = 0

                    if "§r" in word:
                        bold = italic = False

                lines.append(" ".join(words))
            
            self.pages.append(("\n".join(lines), subs))

    def key(self, index: int) -> str:
        return f"journal.aa.{self.author}.{self.part}.{index + 1}"

    def advancement(self) -> Advancement:
        return Advancement(
            {
                "criteria": {
                    "has_journal": {
                        "trigger": "minecraft:inventory_changed",
                        "conditions": {
                            "items": [
                                {
                                    "items": [
                                        "minecraft:written_book"
                                    ],
                                    "components": {
                                        "minecraft:custom_data": {
                                            "aa": {
                                                "type": "journal",
                                                "id": self.id
                                            }
                                        }
                                    }
                                }
                            ]
                        }
                    }
                },
                "requirements": [
                    [
                        "has_journal"
                    ]
                ]
            }
        )
    
    def item_modifier(self) -> ItemModifier:
        return ItemModifier(
            {
                "function": "sequence",
                "functions": [
                    {
                        "function": "minecraft:set_book_cover",
                        "author": self.author.title(),
                        "title": f"Journal - Part {self.roman}"
                    },
                    {
                        "function": "minecraft:set_written_book_pages",
                        "mode": "replace_all",
                        "pages": [
                            {
                                "translate": self.key(index),
                                "with": [{"nbt": sub, "storage": "aa:story", "interpret": True} for sub in subs]
                            } if subs else {
                                "translate": self.key(index)
                            }
                                for index, (_, subs) in enumerate(self.pages)
                        ]
                    },
                    {
                        "function": "minecraft:set_components",
                        "components": {
                            "minecraft:rarity": "rare",
                            "minecraft:custom_data": {
                                "aa": {
                                    "type": "journal",
                                    "id": self.id,
                                    "author": self.author
                                }
                            },
                            "minecraft:custom_name": {
                                "translate": f"item.aa.journal.{self.number}",
                                "italic": False
                            },
                            "minecraft:enchantment_glint_override": False
                        }
                    }
                ]
            }
        )
    
    def add(self, ctx: Context):
        ctx.data.advancements[self.location] = self.advancement()
        ctx.data.item_modifiers[self.location] = self.item_modifier()

        ctx.assets.languages["aa:en_us"].merge(Language({self.key(index): page
                                                         for index, (page, _) in enumerate(self.pages)}))


def main(ctx: Context):
    print("Adding player journals...")
    
    for path in Path("./pipeline/journal/").rglob("*.md"):
        journal = Journal(path)

        journal.add(ctx)
