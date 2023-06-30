package io.github.kg583.an_adventure.story.mixin.common;

import net.minecraft.block.BlockState;
import net.minecraft.block.Blocks;
import net.minecraft.server.world.ServerWorld;
import net.minecraft.util.math.BlockPos;
import net.minecraft.util.math.ChunkSectionPos;
import net.minecraft.world.GameMode;
import net.minecraft.world.Heightmap;
import net.minecraft.world.chunk.WorldChunk;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfoReturnable;

@Mixin(net.minecraft.server.network.SpawnLocating.class)
public abstract class LocateLargerSpawn {
    @Inject(method = "findOverworldSpawn", at = @At(value = "HEAD"), cancellable = true)
    private static void injectSafeBoxSearch(ServerWorld world, int x, int z, CallbackInfoReturnable<BlockPos> cir) {
        if (world.getServer().getSaveProperties().getGameMode() != GameMode.ADVENTURE) return;

        boolean bl = world.getDimension().hasCeiling();
        WorldChunk worldChunk = world.getChunk(ChunkSectionPos.getSectionCoord(x), ChunkSectionPos.getSectionCoord(z));
        int i = bl ? world.getChunkManager().getChunkGenerator().getSpawnHeight(world) : worldChunk.sampleHeightmap(Heightmap.Type.MOTION_BLOCKING, x & 15, z & 15);
        if (i < world.getBottomY()) {
            cir.setReturnValue(null);
        } else {
            int j = worldChunk.sampleHeightmap(Heightmap.Type.MOTION_BLOCKING_NO_LEAVES, x & 15, z & 15);
            if (j <= i && j > worldChunk.sampleHeightmap(Heightmap.Type.OCEAN_FLOOR, x & 15, z & 15)) {
                cir.setReturnValue(null);
            } else {
                BlockPos.Mutable mutable = new BlockPos.Mutable();

                for (int l = -2; l < 4; l++) {
                    for (int m = -4; m < 5; m++) {
                        for (int n = 0; n < 4; n++) {
                            mutable.set(x + l, j + n, z + m);
                            BlockState blockState = world.getBlockState(mutable);

                            if (!blockState.getFluidState().isEmpty()) {
                                cir.setReturnValue(null);
                                return;
                            }

                            if (n == 0) {
                                if (!blockState.isOf(Blocks.GRASS_BLOCK)) {
                                    cir.setReturnValue(null);
                                    return;
                                }
                            } else if (n == 1) {
                                if (blockState.isSolidBlock(world, mutable)) {
                                    cir.setReturnValue(null);
                                    return;
                                }
                            } else {
                                if (!blockState.isAir()) {
                                    cir.setReturnValue(null);
                                    return;
                                }
                            }
                        }
                    }
                }

                mutable.set(x, j, z);
                cir.setReturnValue(mutable.up().toImmutable());
            }
        }
    }
}
