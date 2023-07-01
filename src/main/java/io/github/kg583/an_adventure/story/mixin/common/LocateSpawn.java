package io.github.kg583.an_adventure.story.mixin.common;

import net.minecraft.block.BlockState;
import net.minecraft.block.Blocks;
import net.minecraft.server.world.ServerWorld;
import net.minecraft.util.math.BlockPos;
import net.minecraft.world.GameMode;
import net.minecraft.world.chunk.WorldChunk;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfoReturnable;
import org.spongepowered.asm.mixin.injection.callback.LocalCapture;

@Mixin(net.minecraft.server.network.SpawnLocating.class)
public abstract class LocateSpawn {
    @Inject(method = "findOverworldSpawn", at = @At(value = "NEW", target = "()Lnet/minecraft/util/math" +
            "/BlockPos$Mutable;"), cancellable = true, locals = LocalCapture.CAPTURE_FAILHARD)
    private static void injectStorySpawnSearch(ServerWorld world, int x, int z, CallbackInfoReturnable<BlockPos> cir, boolean bl, WorldChunk worldChunk, int i, int j) {
        if (world.getServer().getSaveProperties().getGameMode() != GameMode.ADVENTURE) return;

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
        cir.setReturnValue(mutable.up().up().toImmutable());
    }
}
