import json
import re

from copy import deepcopy
from pathlib import Path
from PIL import ImageFont


def load_font(formatting: str) -> ImageFont.FreeTypeFont:
    return ImageFont.truetype(f"./scripts/journal/MinecraftDefault-{formatting}.ttf", size=12)

FONTS = {
    (False, False): load_font("Regular"),
    (True, False): load_font("Bold"),
    (False, True): load_font("Italic"),
    (True, True): load_font("BoldItalic")
}

REPLS = {
    "'": "’",
    r"\.\.\.": "…",
    r'"(.*?)"': r'“\1”',
    r"\?\?(.*?)\?\?": r"§k\1§r",
    r"\*\*(.*?)\*\*": r"§l\1§r",
    r"~~(.*?)~~": r"§m\1§r",
    r"__(.*?)__": r"§n\1§r",
    r"(_|\*)(.*?)\1": r"§o\2§r",
}

ROMAN = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X"]

LANG = {}


with open("./scripts/journal/advancement.json") as file:
    ADVANCEMENT = json.load(file)

with open("./scripts/journal/modifier.json") as file:
    MODIFIER = json.load(file)
        

MAX_WIDTH = 114
MAX_LINES = 14

SUB_WIGGLE = {
    "profession": 45,
    "name": 30
}

if __name__ == "__main__":
    for journal in Path("./scripts/journal/data/").rglob("*.md"):
        name = journal.stem
        author, part = name.split(".")

        with open(journal, encoding="utf8") as file:
            text = file.read().rstrip()
            for string, repl in REPLS.items():
                text = re.sub(string, repl, text)

        bold = False
        italic = False

        pages = []
        for page in text.split("\n\n\n"):
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
                            pages.append(("\n".join(lines), subs))
                            subs = []
                            lines = []

                        lines.append(" ".join(words[:-1]))
                        words = [words[-1]]
                        wiggle = 0

                    if "§r" in word:
                        bold = italic = False

                lines.append(" ".join(words))
            
            pages.append(("\n".join(lines), subs))

        advancement = deepcopy(ADVANCEMENT)
        advancement["criteria"]["has_journal"]["conditions"]["items"][0]["components"]["minecraft:custom_data"]["aa"]["id"] = name

        modifier = deepcopy(MODIFIER)
        modifier["functions"][0]["author"] = author.title()
        modifier["functions"][0]["title"] = f"Journal - Part {ROMAN[int(part)]}"
        modifier["functions"][2]["components"]["minecraft:custom_data"]["aa"]["id"] = name
        modifier["functions"][2]["components"]["minecraft:custom_name"]["translate"] = f"item.aa.journal.{part}"

        for index, (page, subs) in enumerate(pages):
            key = f"journal.aa.{author}.{part}.{index + 1}"
            LANG[key] = page

            nbt = {"translate": key, "with": [{"nbt": sub, "storage": "aa:story", "interpret": True} for sub in subs]}
            if not nbt["with"]:
                nbt.pop("with")

            modifier["functions"][1]["pages"].append(nbt)

        with open(f"./datapack/data/_aa/advancement/journal/{name}.json", "w+") as file:
            json.dump(advancement, file, indent=4)

        with open(f"./datapack/data/_aa/item_modifier/journal/{name}.json", "w+") as file:
            json.dump(modifier, file, indent=4)

    with open("./resourcepack/assets/_aa/lang/en_us.json", "w+", encoding="utf8") as file:
        json.dump(LANG, file, indent=4, ensure_ascii=False)
    