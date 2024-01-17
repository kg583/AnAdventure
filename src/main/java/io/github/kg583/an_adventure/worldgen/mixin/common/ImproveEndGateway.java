package io.github.kg583.an_adventure.worldgen.mixin.common;

import com.mojang.serialization.Codec;
import net.minecraft.block.Blocks;
import net.minecraft.block.EndRodBlock;
import net.minecraft.block.entity.BlockEntity;
import net.minecraft.block.entity.EndGatewayBlockEntity;
import net.minecraft.util.math.BlockPos;
import net.minecraft.util.math.Direction;
import net.minecraft.world.StructureWorldAccess;
import net.minecraft.world.gen.feature.EndGatewayFeature;
import net.minecraft.world.gen.feature.EndGatewayFeatureConfig;
import net.minecraft.world.gen.feature.Feature;
import net.minecraft.world.gen.feature.util.FeatureContext;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfoReturnable;

@Mixin(EndGatewayFeature.class)
public abstract class ImproveEndGateway extends Feature<EndGatewayFeatureConfig> {
    public ImproveEndGateway(Codec<EndGatewayFeatureConfig> configCodec) {
        super(configCodec);
    }

    @Inject(method = "generate", at = @At(value = "HEAD"), cancellable = true)
    private void theyJustKindaSuck(FeatureContext<EndGatewayFeatureConfig> context, CallbackInfoReturnable<Boolean> cir) {
        BlockPos blockPos = context.getOrigin();
        StructureWorldAccess structureWorldAccess = context.getWorld();
        EndGatewayFeatureConfig endGatewayFeatureConfig = context.getConfig();

        BlockPos.iterate(blockPos.add(0, -2, 0), blockPos.add(0, 2, 0)).forEach(pos -> this.setBlockState(structureWorldAccess, pos, Blocks.CRYING_OBSIDIAN.getDefaultState()));

        this.setBlockState(structureWorldAccess, blockPos, Blocks.END_GATEWAY.getDefaultState());
        endGatewayFeatureConfig.getExitPos().ifPresent(pos -> {
            BlockEntity blockEntity = structureWorldAccess.getBlockEntity(blockPos);
            if (blockEntity instanceof EndGatewayBlockEntity endGatewayBlockEntity) {
                endGatewayBlockEntity.setExitPortalPos(pos, endGatewayFeatureConfig.isExact());
                blockEntity.markDirty();
            }
        });

        this.setBlockState(structureWorldAccess, blockPos.add(1, 1, 0), Blocks.OBSIDIAN.getDefaultState());
        this.setBlockState(structureWorldAccess, blockPos.add(-1, 1, 0), Blocks.OBSIDIAN.getDefaultState());
        this.setBlockState(structureWorldAccess, blockPos.add(0, 1, 1), Blocks.OBSIDIAN.getDefaultState());
        this.setBlockState(structureWorldAccess, blockPos.add(0, 1, -1), Blocks.OBSIDIAN.getDefaultState());

        this.setBlockState(structureWorldAccess, blockPos.add(1, 0, 0), Blocks.END_ROD.getDefaultState());
        this.setBlockState(structureWorldAccess, blockPos.add(-1, 0, 0), Blocks.END_ROD.getDefaultState());
        this.setBlockState(structureWorldAccess, blockPos.add(0, 0, 1), Blocks.END_ROD.getDefaultState());
        this.setBlockState(structureWorldAccess, blockPos.add(0, 0, -1), Blocks.END_ROD.getDefaultState());

        this.setBlockState(structureWorldAccess, blockPos.add(1, -1, 0), Blocks.OBSIDIAN.getDefaultState());
        this.setBlockState(structureWorldAccess, blockPos.add(-1, -1, 0), Blocks.OBSIDIAN.getDefaultState());
        this.setBlockState(structureWorldAccess, blockPos.add(0, -1, 1), Blocks.OBSIDIAN.getDefaultState());
        this.setBlockState(structureWorldAccess, blockPos.add(0, -1, -1), Blocks.OBSIDIAN.getDefaultState());

        this.setBlockState(structureWorldAccess, blockPos.add(0, 3, 0), Blocks.END_ROD.getDefaultState());
        this.setBlockState(structureWorldAccess, blockPos.add(0, -3, 0),
                Blocks.END_ROD.getDefaultState().with(EndRodBlock.FACING, Direction.DOWN));

        cir.setReturnValue(true);
    }
}
