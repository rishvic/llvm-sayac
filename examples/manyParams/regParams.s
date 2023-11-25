	.text
	.file	"regParams.c"
	.globl	offSum                          # -- Begin function offSum
	.align	3
	.type	offSum,@function
offSum:                                 # @offSum
# %bb.0:                                # %entry
	adi sp -16
	msi t0 14
	adr t0 sp t0
	str t0 ra
	msi t0 12
	adr t0 sp t0
	str t0 fp
	msi t0 16
	adr fp sp t0
	msi t0 -6
	adr t0 fp t0
	str t0 a0
	msi a0 -8
	adr a0 fp a0
	str a0 a1
	msi a0 -10
	adr a0 fp a0
	str a0 a2
	msi a0 -12
	adr a0 fp a0
	str a0 a3
	msi a0 -14
	adr a0 fp a0
	str a0 a4
	msi a0 -6
	adr a0 fp a0
	ldr a0 a0
	msi a1 -8
	adr a1 fp a1
	ldr a1 a1
	adr a0 a0 a1
	msi a1 -10
	adr a1 fp a1
	ldr a1 a1
	adr a0 a0 a1
	msi a1 -12
	adr a1 fp a1
	ldr a1 a1
	adr a0 a0 a1
	msi a1 -14
	adr a1 fp a1
	ldr a1 a1
	adr a0 a0 a1
	adi a0 20
	msi a1 12
	adr a1 sp a1
	ldr fp a1
	msi a1 14
	adr a1 sp a1
	ldr ra a1
	adi sp 16
	cmi 0 zero
	brc 0x0 ra
.Lfunc_end0:
	.size	offSum, .Lfunc_end0-offSum
                                        # -- End function
	.globl	main                            # -- Begin function main
	.align	3
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	adi sp -24
	msi a0 22
	adr a0 sp a0
	str a0 ra
	msi a0 20
	adr a0 sp a0
	str a0 fp
	msi a0 24
	adr fp sp a0
	msi a0 0
	msi a1 -6
	adr a1 fp a1
	str a1 a0
	msi a0 -3
	msi a1 -8
	adr a1 fp a1
	str a1 a0
	msi a0 7
	msi a1 -10
	adr a1 fp a1
	str a1 a0
	msi a0 -10
	msi a1 -12
	adr a1 fp a1
	str a1 a0
	msi a1 -14
	adr a1 fp a1
	str a1 a0
	msi a0 -4
	msi a1 -16
	adr a1 fp a1
	str a1 a0
	msi a0 -8
	adr a0 fp a0
	ldr a0 a0
	msi a1 -10
	adr a1 fp a1
	ldr a1 a1
	msi a2 -12
	adr a2 fp a2
	ldr a2 a2
	msi a3 -14
	adr a3 fp a3
	ldr a3 a3
	msi a4 -16
	adr a4 fp a4
	ldr a4 a4
	msym t0 offSum
	jmrs ra t0
	msi a1 -18
	adr a1 fp a1
	str a1 a0
	msi a0 -18
	adr a0 fp a0
	ldr a0 a0
	msi a1 20
	adr a1 sp a1
	ldr fp a1
	msi a1 22
	adr a1 sp a1
	ldr ra a1
	adi sp 24
	cmi 0 zero
	brc 0x0 ra
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	OFFSET,@object                  # @OFFSET
	.section	.rodata,"a",@progbits
	.globl	OFFSET
	.align	1
OFFSET:
	.short	20                              # 0x14
	.size	OFFSET, 2

	.ident	"clang version 12.0.1 (git@github.com:ak821/SAYAC-Compiler.git 33493041b1c3ed6328f49fd84d129600f3496433)"
	.section	".note.GNU-stack","",@progbits
