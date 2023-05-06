	.text
	.attribute	4, 16
	.attribute	5, "rv32i2p0"
	.file	"test.c"
	.globl	main                            # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi	sp, sp, -32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 32
	sw	zero, -12(s0)
	addi	a0, zero, 45
	sw	a0, -16(s0)
	addi	a0, zero, 31
	sw	a0, -20(s0)
	lw	a0, -16(s0)
	lw	a1, -20(s0)
	add	a0, a0, a1
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.ident	"clang version 12.0.1 (https://github.com/llvm/llvm-project/ 8724eb480dea541e9bddc86757e240b70852fb65)"
	.section	".note.GNU-stack","",@progbits
