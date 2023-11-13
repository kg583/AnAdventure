package io.github.kg583.an_adventure.worldgen.mixin.common;

import com.mojang.authlib.GameProfile;
import net.minecraft.block.Blocks;
import net.minecraft.entity.player.PlayerEntity;
import net.minecraft.server.network.ServerPlayerEntity;
import net.minecraft.server.world.ServerWorld;
import net.minecraft.util.math.BlockPos;
import net.minecraft.world.World;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfo;

@Mixin(ServerPlayerEntity.class)
public abstract class ImproveEndPlatform extends PlayerEntity {
    public ImproveEndPlatform(World world, BlockPos pos, float yaw, GameProfile gameProfile) {
        super(world, pos, yaw, gameProfile);
    }

    @Inject(method = "createEndSpawnPlatform", at = @At(value = "HEAD"), cancellable = true)
    private void addCryingObsidian(ServerWorld world, BlockPos centerPos, CallbackInfo ci) {
        BlockPos.iterate(centerPos.add(-2, 0, -2), centerPos.add(2, 3, 2)).forEach(pos -> world.setBlockState(pos,
                Blocks.AIR.getDefaultState()));
        BlockPos.iterate(centerPos.add(-1, -2, -1), centerPos.add(1, -1, 1)).forEach(pos -> world.setBlockState(pos,
                Blocks.OBSIDIAN.getDefaultState()));

        BlockPos.iterate(centerPos.add(-2, -1, -1), centerPos.add(-2, -1, 1)).forEach(pos -> world.setBlockState(pos,
                Blocks.CRYING_OBSIDIAN.getDefaultState()));
        BlockPos.iterate(centerPos.add(2, -1, -1), centerPos.add(2, -1, 1)).forEach(pos -> world.setBlockState(pos,
                Blocks.CRYING_OBSIDIAN.getDefaultState()));
        BlockPos.iterate(centerPos.add(-1, -1, -2), centerPos.add(1, -1, -2)).forEach(pos -> world.setBlockState(pos,
                Blocks.CRYING_OBSIDIAN.getDefaultState()));
        BlockPos.iterate(centerPos.add(-1, -1, 2), centerPos.add(1, -1, 2)).forEach(pos -> world.setBlockState(pos,
                Blocks.CRYING_OBSIDIAN.getDefaultState()));

        ci.cancel();
    }
}
