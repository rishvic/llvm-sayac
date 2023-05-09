	.text
	.file	"bfs.c"
	.globl	addEdge                         # -- Begin function addEdge
	.align	3
	.type	addEdge,@function
addEdge:                                # @addEdge
# %bb.0:                                # %entry
	adi sp -16
	msi a3 14
	adr a3 sp a3
	str a3 ra
	msi a3 12
	adr a3 sp a3
	str a3 fp
	msi a3 16
	adr fp sp a3
	msi a3 -6
	adr a3 fp a3
	str a3 a0
	msi a0 -8
	adr a0 fp a0
	str a0 a1
	msi a0 -10
	adr a0 fp a0
	str a0 a2
	msi a0 -6
	adr a0 fp a0
	ldr a0 a0
	msi a1 -8
	adr a1 fp a1
	ldr a1 a1
	msi a2 10
	mul a1 a1 a2
	adr a0 a0 a1
	msi a1 -10
	adr a1 fp a1
	ldr a1 a1
	shil -1, a1
	adr a0 a0 a1
	adi a0 2
	msi a1 1
	str a0 a1
	msi a0 12
	adr a0 sp a0
	ldr fp a0
	msi a0 14
	adr a0 sp a0
	ldr ra a0
	adi sp 16
	cmi 0 zero
	brc 0x0 ra
.Lfunc_end0:
	.size	addEdge, .Lfunc_end0-addEdge
                                        # -- End function
	.globl	BFS                             # -- Begin function BFS
	.align	3
	.type	BFS,@function
BFS:                                    # @BFS
# %bb.0:                                # %entry
	adi sp -40
	msi a3 38
	adr a3 sp a3
	str a3 ra
	msi a3 36
	adr a3 sp a3
	str a3 fp
	msi a3 40
	adr fp sp a3
	msi a3 -6
	adr a3 fp a3
	str a3 a0
	msi a0 -8
	adr a0 fp a0
	str a0 a1
	msi a0 -10
	adr a0 fp a0
	str a0 a2
	msi a0 0
	msi a1 -22
	adr a1 fp a1
	str a1 a0
	msym a0 .LBB1_1
	jmr a0
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	msi a0 -22
	adr a0 fp a0
	ldr a0 a0
	msi a1 -6
	adr a1 fp a1
	ldr a1 a1
	ldr a1 a1
	cmr a0 a1
	msym a0 .LBB1_4
	brc 0x3 a0
	msym a0 .LBB1_2
	jmr a0
.LBB1_2:                                # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	msi a0 -22
	adr a0 fp a0
	ldr a0 a0
	shil -1, a0
	msi a1 -20
	adr a1 fp a1
	adr a0 a1 a0
	msi a1 0
	str a0 a1
	msym a0 .LBB1_3
	jmr a0
.LBB1_3:                                # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	msi a0 -22
	adr a0 fp a0
	ldr a0 a0
	adi a0 1
	msi a1 -22
	adr a1 fp a1
	str a1 a0
	msym a0 .LBB1_1
	jmr a0
.LBB1_4:                                # %for.end
	msi a0 0
	msi a1 -34
	adr a1 fp a1
	str a1 a0
	msi a1 -36
	adr a1 fp a1
	str a1 a0
	msi a1 -8
	adr a1 fp a1
	ldr a1 a1
	shil -1, a1
	msi a2 -20
	adr a2 fp a2
	adr a1 a2 a1
	msi a2 1
	str a1 a2
	msi a1 -8
	adr a1 fp a1
	ldr a1 a1
	msi a2 -36
	adr a2 fp a2
	ldr a2 a2
	adr a3 a2 zero
	adi a3 1
	msi a4 -36
	adr a4 fp a4
	str a4 a3
	shil -1, a2
	msi a3 -32
	adr a3 fp a3
	adr a2 a3 a2
	str a2 a1
	msi a1 -38
	adr a1 fp a1
	str a1 a0
	msym a0 .LBB1_5
	jmr a0
.LBB1_5:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
	msi a0 -34
	adr a0 fp a0
	ldr a0 a0
	msi a1 -36
	adr a1 fp a1
	ldr a1 a1
	cmr a0 a1
	msym a0 .LBB1_14
	brc 0x0 a0
	msym a0 .LBB1_6
	jmr a0
.LBB1_6:                                # %while.body
                                        #   in Loop: Header=BB1_5 Depth=1
	msi a0 -34
	adr a0 fp a0
	ldr a0 a0
	adr a1 a0 zero
	adi a1 1
	msi a2 -34
	adr a2 fp a2
	str a2 a1
	shil -1, a0
	msi a1 -32
	adr a1 fp a1
	adr a0 a1 a0
	ldr a0 a0
	msi a1 -8
	adr a1 fp a1
	str a1 a0
	msi a0 -8
	adr a0 fp a0
	ldr a0 a0
	msi a1 -10
	adr a1 fp a1
	ldr a1 a1
	msi a2 -38
	adr a2 fp a2
	ldr a2 a2
	shil -1, a2
	adr a1 a1 a2
	str a1 a0
	msi a0 -38
	adr a0 fp a0
	ldr a0 a0
	adi a0 1
	msi a1 -38
	adr a1 fp a1
	str a1 a0
	msi a0 0
	msi a1 -40
	adr a1 fp a1
	str a1 a0
	msym a0 .LBB1_7
	jmr a0
.LBB1_7:                                # %for.cond9
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	msi a0 -40
	adr a0 fp a0
	ldr a0 a0
	msi a1 -6
	adr a1 fp a1
	ldr a1 a1
	ldr a1 a1
	cmr a0 a1
	msym a0 .LBB1_13
	brc 0x3 a0
	msym a0 .LBB1_8
	jmr a0
.LBB1_8:                                # %for.body12
                                        #   in Loop: Header=BB1_7 Depth=2
	msi a0 -6
	adr a0 fp a0
	ldr a0 a0
	msi a1 -8
	adr a1 fp a1
	ldr a1 a1
	msi a2 10
	mul a1 a1 a2
	adr a0 a0 a1
	msi a1 -40
	adr a1 fp a1
	ldr a1 a1
	shil -1, a1
	adr a0 a0 a1
	adi a0 2
	ldr a0 a0
	msi a1 0
	cmr a0 a1
	msym a0 .LBB1_11
	brc 0x0 a0
	msym a0 .LBB1_9
	jmr a0
.LBB1_9:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_7 Depth=2
	msi a0 -40
	adr a0 fp a0
	ldr a0 a0
	shil -1, a0
	msi a1 -20
	adr a1 fp a1
	adr a0 a1 a0
	ldr a0 a0
	msi a1 0
	cmr a0 a1
	msym a0 .LBB1_11
	brc 0x5 a0
	msym a0 .LBB1_10
	jmr a0
.LBB1_10:                               # %if.then
                                        #   in Loop: Header=BB1_7 Depth=2
	msi a0 -40
	adr a0 fp a0
	ldr a0 a0
	shil -1, a0
	msi a1 -20
	adr a1 fp a1
	adr a0 a1 a0
	msi a1 1
	str a0 a1
	msi a0 -40
	adr a0 fp a0
	ldr a0 a0
	msi a1 -36
	adr a1 fp a1
	ldr a1 a1
	adr a2 a1 zero
	adi a2 1
	msi a3 -36
	adr a3 fp a3
	str a3 a2
	shil -1, a1
	msi a2 -32
	adr a2 fp a2
	adr a1 a2 a1
	str a1 a0
	msym a0 .LBB1_11
	jmr a0
.LBB1_11:                               # %if.end
                                        #   in Loop: Header=BB1_7 Depth=2
	msym a0 .LBB1_12
	jmr a0
.LBB1_12:                               # %for.inc20
                                        #   in Loop: Header=BB1_7 Depth=2
	msi a0 -40
	adr a0 fp a0
	ldr a0 a0
	adi a0 1
	msi a1 -40
	adr a1 fp a1
	str a1 a0
	msym a0 .LBB1_7
	jmr a0
.LBB1_13:                               # %for.end22
                                        #   in Loop: Header=BB1_5 Depth=1
	msym a0 .LBB1_5
	jmr a0
.LBB1_14:                               # %while.end
	msi a0 36
	adr a0 sp a0
	ldr fp a0
	msi a0 38
	adr a0 sp a0
	ldr ra a0
	adi sp 40
	cmi 0 zero
	brc 0x0 ra
.Lfunc_end1:
	.size	BFS, .Lfunc_end1-BFS
                                        # -- End function
	.globl	main                            # -- Begin function main
	.align	3
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	adi sp -72
	msi a0 70
	adr a0 sp a0
	str a0 ra
	msi a0 68
	adr a0 sp a0
	str a0 fp
	msi a0 66
	adr a0 sp a0
	str a0 s1
	msi a0 64
	adr a0 sp a0
	str a0 s2
	msi a0 72
	adr fp sp a0
	msi a0 0
	msi a1 -10
	adr a1 fp a1
	str a1 a0
	msi a0 5
	msi a1 -62
	adr a1 fp a1
	str a1 a0
	msym s2 addEdge
	msi s1 -62
	adr s1 fp s1
	adr a0 s1 zero
	msi a1 0
	msi a2 1
	jmrs ra s2
	adr a0 s1 zero
	msi a1 0
	msi a2 2
	jmrs ra s2
	adr a0 s1 zero
	msi a1 1
	msi a2 2
	jmrs ra s2
	adr a0 s1 zero
	msi a1 2
	msi a2 0
	jmrs ra s2
	adr a0 s1 zero
	msi a1 2
	msi a2 4
	jmrs ra s2
	adr a0 s1 zero
	msi a1 3
	msi a2 3
	jmrs ra s2
	msym a3 BFS
	msi a2 -72
	adr a2 fp a2
	adr a0 s1 zero
	msi a1 2
	jmrs ra a3
	msi a0 0
	msi a1 64
	adr a1 sp a1
	ldr s2 a1
	msi a1 66
	adr a1 sp a1
	ldr s1 a1
	msi a1 68
	adr a1 sp a1
	ldr fp a1
	msi a1 70
	adr a1 sp a1
	ldr ra a1
	adi sp 72
	cmi 0 zero
	brc 0x0 ra
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.ident	"clang version 12.0.1 (https://github.com/ak821/SAYAC-Compiler.git 76547d3e98c59a447f55dea8242812e7e96fef9e)"
	.section	".note.GNU-stack","",@progbits
