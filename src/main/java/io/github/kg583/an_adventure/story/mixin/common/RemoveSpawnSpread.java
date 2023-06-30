package io.github.kg583.an_adventure.story.mixin.common;

import com.mojang.authlib.GameProfile;
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
public abstract class RemoveSpawnSpread extends PlayerEntity {
    public RemoveSpawnSpread(World world, BlockPos pos, float yaw, GameProfile gameProfile) {
        super(world, pos, yaw, gameProfile);
    }

    @Inject(method = "moveToSpawn", at = @At(value = "HEAD"), cancellable = true)
    private void removeSpawnSpread(ServerWorld world, CallbackInfo ci) {
        this.refreshPositionAndAngles(world.getSpawnPos(), 0.0F, 0.0F);
        ci.cancel();
    }
}
