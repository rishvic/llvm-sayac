	.text
	.file	"binarySearch.c"
	.globl	binarySearch                    # -- Begin function binarySearch
	.align	3
	.type	binarySearch,@function
binarySearch:                           # @binarySearch
# %bb.0:                                # %entry
	adi sp -16
	msi a4 14
	adr a4 sp a4
	str a4 ra
	msi a4 12
	adr a4 sp a4
	str a4 fp
	msi a4 16
	adr fp sp a4
	msi a4 -8
	adr a4 fp a4
	str a4 a0
	msi a0 -10
	adr a0 fp a0
	str a0 a1
	msi a0 -12
	adr a0 fp a0
	str a0 a2
	msi a0 -14
	adr a0 fp a0
	str a0 a3
	msym a0 .LBB0_1
	jmr a0
.LBB0_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	msi a0 -10
	adr a0 fp a0
	ldr a0 a0
	msi a1 -12
	adr a1 fp a1
	ldr a1 a1
	cmr a0 a1
	msym a0 .LBB0_8
	brc 0x2 a0
	msym a0 .LBB0_2
	jmr a0
.LBB0_2:                                # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	msi a0 -10
	adr a0 fp a0
	ldr a0 a0
	msi a1 -12
	adr a1 fp a1
	ldr a1 a1
	sur a1 a1 a0
	msi a2 15
	adr a3 a1 zero
	shil a2, a3
	adr a1 a1 a3
	msi a2 1
	shia a2, a1
	adr a0 a0 a1
	msi a1 -16
	adr a1 fp a1
	str a1 a0
	msi a0 -8
	adr a0 fp a0
	ldr a0 a0
	msi a1 -16
	adr a1 fp a1
	ldr a1 a1
	shil -1, a1
	adr a0 a0 a1
	ldr a0 a0
	msi a1 -14
	adr a1 fp a1
	ldr a1 a1
	cmr a0 a1
	msym a0 .LBB0_4
	brc 0x5 a0
	msym a0 .LBB0_3
	jmr a0
.LBB0_3:                                # %if.then
	msi a0 -16
	adr a0 fp a0
	ldr a0 a0
	msi a1 -6
	adr a1 fp a1
	str a1 a0
	msym a0 .LBB0_9
	jmr a0
.LBB0_4:                                # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	msi a0 -8
	adr a0 fp a0
	ldr a0 a0
	msi a1 -16
	adr a1 fp a1
	ldr a1 a1
	shil -1, a1
	adr a0 a0 a1
	ldr a0 a0
	msi a1 -14
	adr a1 fp a1
	ldr a1 a1
	cmr a0 a1
	msym a0 .LBB0_6
	brc 0x3 a0
	msym a0 .LBB0_5
	jmr a0
.LBB0_5:                                # %if.then4
                                        #   in Loop: Header=BB0_1 Depth=1
	msi a0 -16
	adr a0 fp a0
	ldr a0 a0
	adi a0 1
	msi a1 -10
	adr a1 fp a1
	str a1 a0
	msym a0 .LBB0_7
	jmr a0
.LBB0_6:                                # %if.else
                                        #   in Loop: Header=BB0_1 Depth=1
	msi a0 -16
	adr a0 fp a0
	ldr a0 a0
	msi a1 -1
	adr a0 a0 a1
	msi a1 -12
	adr a1 fp a1
	str a1 a0
	msym a0 .LBB0_7
	jmr a0
.LBB0_7:                                # %if.end7
                                        #   in Loop: Header=BB0_1 Depth=1
	msym a0 .LBB0_1
	jmr a0
.LBB0_8:                                # %while.end
	msi a0 -1
	msi a1 -6
	adr a1 fp a1
	str a1 a0
	msym a0 .LBB0_9
	jmr a0
.LBB0_9:                                # %return
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
	.size	binarySearch, .Lfunc_end0-binarySearch
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
	msi a0 5
	msi a1 -8
	adr a1 fp a1
	str a1 a0
	msi a1 3
	msi a2 -18
	adr a2 fp a2
	str a2 a1
	msi a1 -16
	adr a1 fp a1
	str a1 a0
	msi a0 -14
	adr a0 fp a0
	msi a1 13
	str a0 a1
	msi a0 -12
	adr a0 fp a0
	msi a1 23
	str a0 a1
	msi a0 -10
	adr a0 fp a0
	msi a2 41
	str a0 a2
	msi a0 -20
	adr a0 fp a0
	str a0 a1
	msi a0 -8
	adr a0 fp a0
	ldr a0 a0
	msi a1 -1
	adr a2 a0 a1
	msi a0 -20
	adr a0 fp a0
	ldr a3 a0
	msym a4 binarySearch
	msi a0 -18
	adr a0 fp a0
	msi a1 0
	jmrs ra a4
	msi a1 -22
	adr a1 fp a1
	str a1 a0
	msi a0 0
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
	.ident	"clang version 12.0.1 (https://github.com/ak821/SAYAC-Compiler.git 76547d3e98c59a447f55dea8242812e7e96fef9e)"
	.section	".note.GNU-stack","",@progbits
