	.text
	.file	"binaryTree.c"
	.globl	inorderTraversal                # -- Begin function inorderTraversal
	.align	3
	.type	inorderTraversal,@function
inorderTraversal:                       # @inorderTraversal
# %bb.0:                                # %entry
	adi sp -16
	msi a3 14
	adr a3 sp a3
	str a3 ra
	msi a3 12
	adr a3 sp a3
	str a3 fp
	msi a3 10
	adr a3 sp a3
	str a3 s1
	msi a3 16
	adr fp sp a3
	msi a3 -8
	adr a3 fp a3
	str a3 a0
	msi a0 -10
	adr a0 fp a0
	str a0 a1
	msi a0 -12
	adr a0 fp a0
	str a0 a2
	msi a0 -8
	adr a0 fp a0
	ldr a0 a0
	msi a1 0
	cmr a0 a1
	msym a0 .LBB0_2
	brc 0x5 a0
	msym a0 .LBB0_1
	jmr a0
.LBB0_1:                                # %if.then
	msym a0 .LBB0_3
	jmr a0
.LBB0_2:                                # %if.end
	msi a0 -8
	adr a0 fp a0
	ldr a0 a0
	adi a0 2
	ldr a0 a0
	msi a1 -10
	adr a1 fp a1
	ldr a1 a1
	msi a2 -12
	adr a2 fp a2
	ldr a2 a2
	msym s1 inorderTraversal
	jmrs ra s1
	msi a0 -8
	adr a0 fp a0
	ldr a0 a0
	ldr a0 a0
	msi a1 -10
	adr a1 fp a1
	ldr a1 a1
	msi a2 -12
	adr a2 fp a2
	ldr a2 a2
	ldr a2 a2
	shil -1, a2
	adr a1 a1 a2
	str a1 a0
	msi a0 -12
	adr a0 fp a0
	ldr a0 a0
	ldr a1 a0
	adi a1 1
	str a0 a1
	msi a0 -8
	adr a0 fp a0
	ldr a0 a0
	adi a0 4
	ldr a0 a0
	msi a1 -10
	adr a1 fp a1
	ldr a1 a1
	msi a2 -12
	adr a2 fp a2
	ldr a2 a2
	jmrs ra s1
	msym a0 .LBB0_3
	jmr a0
.LBB0_3:                                # %return
	msi a0 10
	adr a0 sp a0
	ldr s1 a0
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
	.size	inorderTraversal, .Lfunc_end0-inorderTraversal
                                        # -- End function
	.globl	preorderTraversal               # -- Begin function preorderTraversal
	.align	3
	.type	preorderTraversal,@function
preorderTraversal:                      # @preorderTraversal
# %bb.0:                                # %entry
	adi sp -16
	msi a3 14
	adr a3 sp a3
	str a3 ra
	msi a3 12
	adr a3 sp a3
	str a3 fp
	msi a3 10
	adr a3 sp a3
	str a3 s1
	msi a3 16
	adr fp sp a3
	msi a3 -8
	adr a3 fp a3
	str a3 a0
	msi a0 -10
	adr a0 fp a0
	str a0 a1
	msi a0 -12
	adr a0 fp a0
	str a0 a2
	msi a0 -8
	adr a0 fp a0
	ldr a0 a0
	msi a1 0
	cmr a0 a1
	msym a0 .LBB1_2
	brc 0x5 a0
	msym a0 .LBB1_1
	jmr a0
.LBB1_1:                                # %if.then
	msym a0 .LBB1_3
	jmr a0
.LBB1_2:                                # %if.end
	msi a0 -8
	adr a0 fp a0
	ldr a0 a0
	ldr a0 a0
	msi a1 -10
	adr a1 fp a1
	ldr a1 a1
	msi a2 -12
	adr a2 fp a2
	ldr a2 a2
	ldr a2 a2
	shil -1, a2
	adr a1 a1 a2
	str a1 a0
	msi a0 -12
	adr a0 fp a0
	ldr a0 a0
	ldr a1 a0
	adi a1 1
	str a0 a1
	msi a0 -8
	adr a0 fp a0
	ldr a0 a0
	adi a0 2
	ldr a0 a0
	msi a1 -10
	adr a1 fp a1
	ldr a1 a1
	msi a2 -12
	adr a2 fp a2
	ldr a2 a2
	msym s1 preorderTraversal
	jmrs ra s1
	msi a0 -8
	adr a0 fp a0
	ldr a0 a0
	adi a0 4
	ldr a0 a0
	msi a1 -10
	adr a1 fp a1
	ldr a1 a1
	msi a2 -12
	adr a2 fp a2
	ldr a2 a2
	jmrs ra s1
	msym a0 .LBB1_3
	jmr a0
.LBB1_3:                                # %return
	msi a0 10
	adr a0 sp a0
	ldr s1 a0
	msi a0 12
	adr a0 sp a0
	ldr fp a0
	msi a0 14
	adr a0 sp a0
	ldr ra a0
	adi sp 16
	cmi 0 zero
	brc 0x0 ra
.Lfunc_end1:
	.size	preorderTraversal, .Lfunc_end1-preorderTraversal
                                        # -- End function
	.globl	postorderTraversal              # -- Begin function postorderTraversal
	.align	3
	.type	postorderTraversal,@function
postorderTraversal:                     # @postorderTraversal
# %bb.0:                                # %entry
	adi sp -16
	msi a3 14
	adr a3 sp a3
	str a3 ra
	msi a3 12
	adr a3 sp a3
	str a3 fp
	msi a3 10
	adr a3 sp a3
	str a3 s1
	msi a3 16
	adr fp sp a3
	msi a3 -8
	adr a3 fp a3
	str a3 a0
	msi a0 -10
	adr a0 fp a0
	str a0 a1
	msi a0 -12
	adr a0 fp a0
	str a0 a2
	msi a0 -8
	adr a0 fp a0
	ldr a0 a0
	msi a1 0
	cmr a0 a1
	msym a0 .LBB2_2
	brc 0x5 a0
	msym a0 .LBB2_1
	jmr a0
.LBB2_1:                                # %if.then
	msym a0 .LBB2_3
	jmr a0
.LBB2_2:                                # %if.end
	msi a0 -8
	adr a0 fp a0
	ldr a0 a0
	adi a0 2
	ldr a0 a0
	msi a1 -10
	adr a1 fp a1
	ldr a1 a1
	msi a2 -12
	adr a2 fp a2
	ldr a2 a2
	msym s1 postorderTraversal
	jmrs ra s1
	msi a0 -8
	adr a0 fp a0
	ldr a0 a0
	adi a0 4
	ldr a0 a0
	msi a1 -10
	adr a1 fp a1
	ldr a1 a1
	msi a2 -12
	adr a2 fp a2
	ldr a2 a2
	jmrs ra s1
	msi a0 -8
	adr a0 fp a0
	ldr a0 a0
	ldr a0 a0
	msi a1 -10
	adr a1 fp a1
	ldr a1 a1
	msi a2 -12
	adr a2 fp a2
	ldr a2 a2
	ldr a2 a2
	shil -1, a2
	adr a1 a1 a2
	str a1 a0
	msi a0 -12
	adr a0 fp a0
	ldr a0 a0
	ldr a1 a0
	adi a1 1
	str a0 a1
	msym a0 .LBB2_3
	jmr a0
.LBB2_3:                                # %return
	msi a0 10
	adr a0 sp a0
	ldr s1 a0
	msi a0 12
	adr a0 sp a0
	ldr fp a0
	msi a0 14
	adr a0 sp a0
	ldr ra a0
	adi sp 16
	cmi 0 zero
	brc 0x0 ra
.Lfunc_end2:
	.size	postorderTraversal, .Lfunc_end2-postorderTraversal
                                        # -- End function
	.globl	create                          # -- Begin function create
	.align	3
	.type	create,@function
create:                                 # @create
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
	msi a0 -8
	adr a0 fp a0
	ldr a0 a0
	ldr a0 a0
	msi a1 -12
	adr a1 fp a1
	str a1 a0
	msi a0 -8
	adr a0 fp a0
	ldr a0 a0
	ldr a1 a0
	adi a1 1
	str a0 a1
	msi a0 -10
	adr a0 fp a0
	ldr a0 a0
	msi a1 -6
	adr a1 fp a1
	ldr a1 a1
	msi a2 -12
	adr a2 fp a2
	ldr a2 a2
	msi a3 6
	mul a2 a2 a3
	adr a1 a1 a2
	str a1 a0
	msi a0 -6
	adr a0 fp a0
	ldr a0 a0
	msi a1 -12
	adr a1 fp a1
	ldr a1 a1
	mul a1 a1 a3
	adr a0 a0 a1
	adi a0 2
	msi a1 0
	str a0 a1
	msi a0 -6
	adr a0 fp a0
	ldr a0 a0
	msi a2 -12
	adr a2 fp a2
	ldr a2 a2
	mul a2 a2 a3
	adr a0 a0 a2
	adi a0 4
	str a0 a1
	msi a0 -6
	adr a0 fp a0
	ldr a0 a0
	msi a1 -12
	adr a1 fp a1
	ldr a1 a1
	mul a1 a1 a3
	adr a0 a0 a1
	msi a1 12
	adr a1 sp a1
	ldr fp a1
	msi a1 14
	adr a1 sp a1
	ldr ra a1
	adi sp 16
	cmi 0 zero
	brc 0x0 ra
.Lfunc_end3:
	.size	create, .Lfunc_end3-create
                                        # -- End function
	.globl	insertLeft                      # -- Begin function insertLeft
	.align	3
	.type	insertLeft,@function
insertLeft:                             # @insertLeft
# %bb.0:                                # %entry
	adi sp -8
	msi a2 6
	adr a2 sp a2
	str a2 ra
	msi a2 4
	adr a2 sp a2
	str a2 fp
	msi a2 8
	adr fp sp a2
	msi a2 -6
	adr a2 fp a2
	str a2 a0
	msi a0 -8
	adr a0 fp a0
	str a0 a1
	msi a0 -8
	adr a0 fp a0
	ldr a0 a0
	msi a1 -6
	adr a1 fp a1
	ldr a1 a1
	adi a1 2
	str a1 a0
	msi a0 4
	adr a0 sp a0
	ldr fp a0
	msi a0 6
	adr a0 sp a0
	ldr ra a0
	adi sp 8
	cmi 0 zero
	brc 0x0 ra
.Lfunc_end4:
	.size	insertLeft, .Lfunc_end4-insertLeft
                                        # -- End function
	.globl	insertRight                     # -- Begin function insertRight
	.align	3
	.type	insertRight,@function
insertRight:                            # @insertRight
# %bb.0:                                # %entry
	adi sp -8
	msi a2 6
	adr a2 sp a2
	str a2 ra
	msi a2 4
	adr a2 sp a2
	str a2 fp
	msi a2 8
	adr fp sp a2
	msi a2 -6
	adr a2 fp a2
	str a2 a0
	msi a0 -8
	adr a0 fp a0
	str a0 a1
	msi a0 -8
	adr a0 fp a0
	ldr a0 a0
	msi a1 -6
	adr a1 fp a1
	ldr a1 a1
	adi a1 4
	str a1 a0
	msi a0 4
	adr a0 sp a0
	ldr fp a0
	msi a0 6
	adr a0 sp a0
	ldr ra a0
	adi sp 8
	cmi 0 zero
	brc 0x0 ra
.Lfunc_end5:
	.size	insertRight, .Lfunc_end5-insertRight
                                        # -- End function
	.globl	main                            # -- Begin function main
	.align	3
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	adi sp -88
	msi a0 86
	adr a0 sp a0
	str a0 ra
	msi a0 84
	adr a0 sp a0
	str a0 fp
	msi a0 82
	adr a0 sp a0
	str a0 s1
	msi a0 80
	adr a0 sp a0
	str a0 s2
	msi a0 78
	adr a0 sp a0
	str a0 s3
	msi a0 88
	adr fp sp a0
	msi a0 0
	msi a1 -12
	adr a1 fp a1
	str a1 a0
	msi a1 -44
	adr a1 fp a1
	str a1 a0
	msi a0 -44
	adr a0 fp a0
	ldr a1 a0
	msym s3 create
	msi s1 -42
	adr s1 fp s1
	adr a0 s1 zero
	msi a2 17
	jmrs ra s3
	msi a1 -46
	adr a1 fp a1
	str a1 a0
	msi a0 -46
	adr a0 fp a0
	ldr s2 a0
	msi a0 -44
	adr a0 fp a0
	ldr a1 a0
	adr a0 s1 zero
	msi a2 21
	jmrs ra s3
	adr a1 a0 zero
	msym a2 insertLeft
	msi a0 4
	adr a0 sp a0
	str a0 a2
	adr a0 s2 zero
	jmrs ra a2
	msi a0 -46
	adr a0 fp a0
	ldr a0 a0
	msi a1 2
	adr a1 sp a1
	str a1 a0
	msi a0 -44
	adr a0 fp a0
	ldr a1 a0
	adr a0 s1 zero
	msi a2 23
	jmrs ra s3
	adr a1 a0 zero
	msym s2 insertRight
	msi a0 2
	adr a0 sp a0
	ldr a0 a0
	jmrs ra s2
	msi a0 -46
	adr a0 fp a0
	ldr a0 a0
	adi a0 2
	ldr a0 a0
	msi a1 0
	adr a1 sp a1
	str a1 a0
	msi a0 -44
	adr a0 fp a0
	ldr a1 a0
	adr a0 s1 zero
	msi a2 29
	jmrs ra s3
	adr a1 a0 zero
	msi a0 0
	adr a0 sp a0
	ldr a0 a0
	jmrs ra s2
	msi a0 -46
	adr a0 fp a0
	ldr a0 a0
	adi a0 4
	ldr s2 a0
	msi a0 -44
	adr a0 fp a0
	ldr a1 a0
	adr a0 s1 zero
	msi a2 41
	jmrs ra s3
	adr a1 a0 zero
	adr a0 s2 zero
	msi a2 4
	adr a2 sp a2
	ldr a2 a2
	jmrs ra a2
	msi s1 0
	msi a0 -58
	adr a0 fp a0
	str a0 s1
	msi a0 -46
	adr a0 fp a0
	ldr a0 a0
	msi a1 -58
	adr a1 fp a1
	ldr a2 a1
	msym a3 inorderTraversal
	msi a1 -56
	adr a1 fp a1
	jmrs ra a3
	msi a0 -70
	adr a0 fp a0
	str a0 s1
	msi s1 0
	msi a0 -46
	adr a0 fp a0
	ldr a0 a0
	msi a1 -70
	adr a1 fp a1
	ldr a2 a1
	msym a3 preorderTraversal
	msi a1 -68
	adr a1 fp a1
	jmrs ra a3
	msi a0 -82
	adr a0 fp a0
	str a0 s1
	msi a0 -46
	adr a0 fp a0
	ldr a0 a0
	msi a1 -82
	adr a1 fp a1
	ldr a2 a1
	msym a3 postorderTraversal
	msi a1 -80
	adr a1 fp a1
	jmrs ra a3
	msi a0 0
	msi a1 78
	adr a1 sp a1
	ldr s3 a1
	msi a1 80
	adr a1 sp a1
	ldr s2 a1
	msi a1 82
	adr a1 sp a1
	ldr s1 a1
	msi a1 84
	adr a1 sp a1
	ldr fp a1
	msi a1 86
	adr a1 sp a1
	ldr ra a1
	adi sp 88
	cmi 0 zero
	brc 0x0 ra
.Lfunc_end6:
	.size	main, .Lfunc_end6-main
                                        # -- End function
	.ident	"clang version 12.0.1 (https://github.com/ak821/SAYAC-Compiler.git 76547d3e98c59a447f55dea8242812e7e96fef9e)"
	.section	".note.GNU-stack","",@progbits
