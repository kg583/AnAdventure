package io.github.kg583.an_adventure.story.mixin.common;

import net.minecraft.entity.Entity;
import net.minecraft.server.command.CommandOutput;
import net.minecraft.server.world.ServerWorld;
import net.minecraft.util.Nameable;
import net.minecraft.util.math.BlockPos;
import net.minecraft.util.math.Vec3d;
import net.minecraft.world.GameMode;
import net.minecraft.world.TeleportTarget;
import net.minecraft.world.World;
import net.minecraft.world.entity.EntityLike;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfoReturnable;
import org.spongepowered.asm.mixin.injection.callback.LocalCapture;

@Mixin(Entity.class)
public abstract class MoveEndSpawn implements Nameable, EntityLike, CommandOutput {
    public final int END_SCALE = 1;
    public final int END_HEIGHT = 80;

    @Inject(method = "getTeleportTarget", at = @At(value = "HEAD"), cancellable = true, locals =
            LocalCapture.CAPTURE_FAILHARD)
    public void moveToOuterEnd(ServerWorld destination, CallbackInfoReturnable<TeleportTarget> cir) {
        if (((Entity)(Object)this).getServer().getDefaultGameMode() == GameMode.ADVENTURE && destination.getRegistryKey() == World.END) {
            BlockPos blockPos = destination.getWorldBorder().clamp(END_SCALE * ((Entity)(Object)this).getX(),
                    END_HEIGHT, END_SCALE * ((Entity)(Object)this).getZ());

            cir.setReturnValue(new TeleportTarget(new Vec3d((double)blockPos.getX() + 0.5, blockPos.getY(),
                    (double)blockPos.getZ() + 0.5),
                    ((Entity)(Object)this).getVelocity(), ((Entity)(Object)this).getYaw(), ((Entity)(Object)this).getPitch()));
        }
    }
}
