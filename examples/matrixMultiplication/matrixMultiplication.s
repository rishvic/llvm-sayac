	.text
	.file	"matrixMultiplication.c"
	.globl	main                            # -- Begin function main
	.align	3
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	adi sp -48
	msi a0 46
	adr a0 sp a0
	str a0 ra
	msi a0 44
	adr a0 sp a0
	str a0 fp
	msi a0 48
	adr fp sp a0
	msi a0 0
	msi a1 -6
	adr a1 fp a1
	str a1 a0
	msi a1 9
	msi a2 -14
	adr a2 fp a2
	str a2 a1
	msi a2 -12
	adr a2 fp a2
	msi a3 3
	str a2 a3
	msi a2 -10
	adr a2 fp a2
	msi a3 7
	str a2 a3
	msi a2 -8
	adr a2 fp a2
	msi a4 5
	str a2 a4
	msi a2 -26
	adr a2 fp a2
	str a2 a1
	msi a1 -24
	adr a1 fp a1
	msi a2 11
	str a1 a2
	msi a1 -22
	adr a1 fp a1
	msi a2 13
	str a1 a2
	msi a1 -20
	adr a1 fp a1
	msi a2 15
	str a1 a2
	msi a1 -18
	adr a1 fp a1
	str a1 a3
	msi a1 -16
	adr a1 fp a1
	msi a2 19
	str a1 a2
	msi a1 -40
	adr a1 fp a1
	str a1 a0
	msym a0 .LBB0_1
	jmr a0
.LBB0_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
	msi a0 -40
	adr a0 fp a0
	ldr a0 a0
	msi a1 1
	cmr a0 a1
	msym a0 .LBB0_12
	brc 0x2 a0
	msym a0 .LBB0_2
	jmr a0
.LBB0_2:                                # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	msi a0 0
	msi a1 -42
	adr a1 fp a1
	str a1 a0
	msym a0 .LBB0_3
	jmr a0
.LBB0_3:                                # %for.cond20
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
	msi a0 -42
	adr a0 fp a0
	ldr a0 a0
	msi a1 2
	cmr a0 a1
	msym a0 .LBB0_10
	brc 0x2 a0
	msym a0 .LBB0_4
	jmr a0
.LBB0_4:                                # %for.body22
                                        #   in Loop: Header=BB0_3 Depth=2
	msi a0 -40
	adr a0 fp a0
	ldr a0 a0
	msi a1 6
	mul a0 a0 a1
	msi a1 -38
	adr a1 fp a1
	adr a0 a1 a0
	msi a1 -42
	adr a1 fp a1
	ldr a1 a1
	shil -1, a1
	adr a0 a0 a1
	msi a1 0
	str a0 a1
	msi a0 -44
	adr a0 fp a0
	str a0 a1
	msym a0 .LBB0_5
	jmr a0
.LBB0_5:                                # %for.cond25
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	msi a0 -44
	adr a0 fp a0
	ldr a0 a0
	msi a1 1
	cmr a0 a1
	msym a0 .LBB0_8
	brc 0x2 a0
	msym a0 .LBB0_6
	jmr a0
.LBB0_6:                                # %for.body27
                                        #   in Loop: Header=BB0_5 Depth=3
	msi a0 -40
	adr a0 fp a0
	ldr a0 a0
	adr a1 a0 zero
	shil -2, a1
	msi a2 -14
	adr a2 fp a2
	adr a1 a2 a1
	msi a2 -44
	adr a2 fp a2
	ldr a2 a2
	adr a3 a2 zero
	shil -1, a3
	adr a1 a1 a3
	ldr a1 a1
	msi a3 6
	mul a2 a2 a3
	msi a4 -26
	adr a4 fp a4
	adr a2 a4 a2
	msi a4 -42
	adr a4 fp a4
	ldr a4 a4
	shil -1, a4
	adr a2 a2 a4
	ldr a2 a2
	mul a1 a1 a2
	mul a0 a0 a3
	msi a2 -38
	adr a2 fp a2
	adr a0 a2 a0
	adr a0 a0 a4
	ldr a2 a0
	adr a1 a2 a1
	str a0 a1
	msym a0 .LBB0_7
	jmr a0
.LBB0_7:                                # %for.inc
                                        #   in Loop: Header=BB0_5 Depth=3
	msi a0 -44
	adr a0 fp a0
	ldr a0 a0
	adi a0 1
	msi a1 -44
	adr a1 fp a1
	str a1 a0
	msym a0 .LBB0_5
	jmr a0
.LBB0_8:                                # %for.end
                                        #   in Loop: Header=BB0_3 Depth=2
	msym a0 .LBB0_9
	jmr a0
.LBB0_9:                                # %for.inc34
                                        #   in Loop: Header=BB0_3 Depth=2
	msi a0 -42
	adr a0 fp a0
	ldr a0 a0
	adi a0 1
	msi a1 -42
	adr a1 fp a1
	str a1 a0
	msym a0 .LBB0_3
	jmr a0
.LBB0_10:                               # %for.end36
                                        #   in Loop: Header=BB0_1 Depth=1
	msym a0 .LBB0_11
	jmr a0
.LBB0_11:                               # %for.inc37
                                        #   in Loop: Header=BB0_1 Depth=1
	msi a0 -40
	adr a0 fp a0
	ldr a0 a0
	adi a0 1
	msi a1 -40
	adr a1 fp a1
	str a1 a0
	msym a0 .LBB0_1
	jmr a0
.LBB0_12:                               # %for.end39
	msi a0 0
	msi a1 44
	adr a1 sp a1
	ldr fp a1
	msi a1 46
	adr a1 sp a1
	ldr ra a1
	adi sp 48
	cmi 0 zero
	brc 0x0 ra
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.ident	"clang version 12.0.1 (https://github.com/ak821/SAYAC-Compiler.git 76547d3e98c59a447f55dea8242812e7e96fef9e)"
	.section	".note.GNU-stack","",@progbits
