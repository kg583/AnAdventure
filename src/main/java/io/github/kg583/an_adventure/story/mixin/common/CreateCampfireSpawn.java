package io.github.kg583.an_adventure.story.mixin.common;

import net.minecraft.block.BedBlock;
import net.minecraft.block.BlockState;
import net.minecraft.block.Blocks;
import net.minecraft.block.HorizontalFacingBlock;
import net.minecraft.block.entity.CampfireBlockEntity;
import net.minecraft.block.entity.LootableContainerBlockEntity;
import net.minecraft.block.enums.BedPart;
import net.minecraft.item.Item;
import net.minecraft.item.ItemStack;
import net.minecraft.item.Items;
import net.minecraft.loot.LootTables;
import net.minecraft.server.MinecraftServer;
import net.minecraft.server.network.SpawnLocating;
import net.minecraft.server.world.ServerChunkManager;
import net.minecraft.server.world.ServerWorld;
import net.minecraft.util.Util;
import net.minecraft.util.math.BlockPos;
import net.minecraft.util.math.ChunkPos;
import net.minecraft.util.math.Direction;
import net.minecraft.util.math.MathHelper;
import net.minecraft.world.GameMode;
import net.minecraft.world.Heightmap;
import net.minecraft.world.level.ServerWorldProperties;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfo;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfoReturnable;
import org.spongepowered.asm.mixin.injection.callback.LocalCapture;

import java.util.List;

@Mixin(MinecraftServer.class)
public abstract class CreateCampfireSpawn {
    @Inject(method = "setupSpawn", at = @At(value = "INVOKE", target = "Lnet/minecraft/util/math/BlockPos;add(III)" +
            "Lnet/minecraft/util/math/BlockPos;"), cancellable = true, locals =
            LocalCapture.CAPTURE_FAILHARD)
    private static void spawnCampsite(ServerWorld world, ServerWorldProperties worldProperties, boolean bonusChest, boolean debugWorld, CallbackInfo ci, ServerChunkManager serverChunkManager, ChunkPos chunkPos, int i) {
        if (worldProperties.getGameMode() != GameMode.ADVENTURE) return;

        worldProperties.setSpawnPos(chunkPos.getStartPos().add(8, i, 8), 0.0F);
        int j = 0;
        int k = 0;
        int l = 0;
        int m = -1;

        for (int o = 0; o < MathHelper.square(15); ++o) {
            if (j >= -7 && j <= 7 && k >= -7 && k <= 7) {
                BlockPos blockPos2 = SpawnLocating.findServerSpawnPoint(world, new ChunkPos(chunkPos.x + j, chunkPos.z + k));
                if (blockPos2 != null) {
                    worldProperties.setSpawnPos(blockPos2, 0.0F);
                    break;
                }
            }

            if (j == k || j < 0 && j == -k || j > 0 && j == 1 - k) {
                int p = l;
                l = -m;
                m = p;
            }

            j += l;
            k += m;
        }

        BlockPos blockPos = world.getTopPosition(Heightmap.Type.MOTION_BLOCKING_NO_LEAVES, world.getSpawnPos());

        world.setBlockState(blockPos, Blocks.COBBLESTONE_SLAB.getDefaultState(), 0x10);
        world.setBlockState(blockPos.south(2), Blocks.CAMPFIRE.getDefaultState(), 0x10);
        world.setBlockState(blockPos.south(2).down(), Blocks.HAY_BLOCK.getDefaultState(), 0x10);

        CampfireBlockEntity campfire = (CampfireBlockEntity)world.getBlockEntity(blockPos.south(2));
        if (campfire != null) {
            List<Item> items = List.of(Items.BEEF, Items.PORKCHOP, Items.MUTTON, Items.CHICKEN, Items.COD,
                    Items.SALMON, Items.RABBIT);

            campfire.addItem(null, new ItemStack(Util.getRandom(items, world.random)), 400);
        }

        BlockState bed = Blocks.RED_BED.getDefaultState().with(HorizontalFacingBlock.FACING, Direction.SOUTH);
        world.setBlockState(blockPos.south().east(2), bed.with(BedBlock.PART, BedPart.FOOT), 0x11);
        world.setBlockState(blockPos.south(2).east(2), bed.with(BedBlock.PART, BedPart.HEAD), 0x11);

        if (bonusChest) {
            BlockPos chestPos = blockPos.south(2).west(2);
            world.setBlockState(chestPos, Blocks.CHEST.getDefaultState().with(HorizontalFacingBlock.FACING,
                    Direction.EAST), 0x10);
            LootableContainerBlockEntity.setLootTable(world, world.random, chestPos, LootTables.SPAWN_BONUS_CHEST);
        }

        ci.cancel();
    }

    @Inject(method = "getSpawnRadius", at = @At(value = "HEAD"), cancellable = true)
    private void setSpawnRadius(ServerWorld world, CallbackInfoReturnable<Integer> cir) {
        cir.setReturnValue(0);
    }
}
