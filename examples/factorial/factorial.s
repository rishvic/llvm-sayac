	.text
	.file	"factorial.c"
	.globl	main                            # -- Begin function main
	.align	3
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	adi sp -16
	msi a0 14
	adr a0 sp a0
	str a0 ra
	msi a0 12
	adr a0 sp a0
	str a0 fp
	msi a0 16
	adr fp sp a0
	msi a0 0
	msi a1 -6
	adr a1 fp a1
	str a1 a0
	msi a0 6
	msi a1 -8
	adr a1 fp a1
	str a1 a0
	msi a0 1
	msi a1 -10
	adr a1 fp a1
	str a1 a0
	msi a0 2
	msi a1 -12
	adr a1 fp a1
	str a1 a0
	msym a0 .LBB0_1
	jmr a0
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	msi a0 -12
	adr a0 fp a0
	ldr a0 a0
	msi a1 -8
	adr a1 fp a1
	ldr a1 a1
	cmr a0 a1
	msym a0 .LBB0_4
	brc 0x2 a0
	msym a0 .LBB0_2
	jmr a0
.LBB0_2:                                # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	msi a0 -12
	adr a0 fp a0
	ldr a0 a0
	msi a1 -10
	adr a1 fp a1
	ldr a1 a1
	mul a0 a1 a0
	msi a1 -10
	adr a1 fp a1
	str a1 a0
	msym a0 .LBB0_3
	jmr a0
.LBB0_3:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	msi a0 -12
	adr a0 fp a0
	ldr a0 a0
	adi a0 1
	msi a1 -12
	adr a1 fp a1
	str a1 a0
	msym a0 .LBB0_1
	jmr a0
.LBB0_4:                                # %for.end
	msi a0 -6
	adr a0 fp a0
	ldr a0 a0
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
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.ident	"clang version 12.0.1 (https://github.com/ak821/SAYAC-Compiler.git 76547d3e98c59a447f55dea8242812e7e96fef9e)"
	.section	".note.GNU-stack","",@progbits
