	.text
	.file	"stack.c"
	.globl	isFull                          # -- Begin function isFull
	.align	3
	.type	isFull,@function
isFull:                                 # @isFull
# %bb.0:                                # %entry
	adi sp -8
	msi a1 6
	adr a1 sp a1
	str a1 ra
	msi a1 4
	adr a1 sp a1
	str a1 fp
	msi a1 8
	adr fp sp a1
	msi a1 -6
	adr a1 fp a1
	str a1 a0
	msi a0 -6
	adr a0 fp a0
	ldr a0 a0
	ldr a1 a0
	adi a0 2
	ldr a0 a0
	msi a2 -1
	adr a0 a0 a2
	cmr a1 a0
	msi a0 16
	anr a0 flag a0
	shil 4, a0
	msi a1 4
	adr a1 sp a1
	ldr fp a1
	msi a1 6
	adr a1 sp a1
	ldr ra a1
	adi sp 8
	cmi 0 zero
	brc 0x0 ra
.Lfunc_end0:
	.size	isFull, .Lfunc_end0-isFull
                                        # -- End function
	.globl	isEmpty                         # -- Begin function isEmpty
	.align	3
	.type	isEmpty,@function
isEmpty:                                # @isEmpty
# %bb.0:                                # %entry
	adi sp -8
	msi a1 6
	adr a1 sp a1
	str a1 ra
	msi a1 4
	adr a1 sp a1
	str a1 fp
	msi a1 8
	adr fp sp a1
	msi a1 -6
	adr a1 fp a1
	str a1 a0
	msi a0 -6
	adr a0 fp a0
	ldr a0 a0
	ldr a0 a0
	msi a1 -1
	cmr a0 a1
	msi a0 16
	anr a0 flag a0
	shil 4, a0
	msi a1 4
	adr a1 sp a1
	ldr fp a1
	msi a1 6
	adr a1 sp a1
	ldr ra a1
	adi sp 8
	cmi 0 zero
	brc 0x0 ra
.Lfunc_end1:
	.size	isEmpty, .Lfunc_end1-isEmpty
                                        # -- End function
	.globl	push                            # -- Begin function push
	.align	3
	.type	push,@function
push:                                   # @push
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
	msi a0 -6
	adr a0 fp a0
	ldr a0 a0
	msym a1 isFull
	jmrs ra a1
	msi a1 0
	cmr a0 a1
	msym a0 .LBB2_2
	brc 0x0 a0
	msym a0 .LBB2_1
	jmr a0
.LBB2_1:                                # %if.then
	msym a0 .LBB2_3
	jmr a0
.LBB2_2:                                # %if.end
	msi a0 -8
	adr a0 fp a0
	ldr a0 a0
	msi a1 -6
	adr a1 fp a1
	ldr a1 a1
	ldr a2 a1
	adi a2 1
	adr a3 a2 zero
	shil -1, a3
	adr a3 a1 a3
	str a1 a2
	adi a3 4
	str a3 a0
	msym a0 .LBB2_3
	jmr a0
.LBB2_3:                                # %return
	msi a0 4
	adr a0 sp a0
	ldr fp a0
	msi a0 6
	adr a0 sp a0
	ldr ra a0
	adi sp 8
	cmi 0 zero
	brc 0x0 ra
.Lfunc_end2:
	.size	push, .Lfunc_end2-push
                                        # -- End function
	.globl	pop                             # -- Begin function pop
	.align	3
	.type	pop,@function
pop:                                    # @pop
# %bb.0:                                # %entry
	adi sp -8
	msi a1 6
	adr a1 sp a1
	str a1 ra
	msi a1 4
	adr a1 sp a1
	str a1 fp
	msi a1 8
	adr fp sp a1
	msi a1 -8
	adr a1 fp a1
	str a1 a0
	msi a0 -8
	adr a0 fp a0
	ldr a0 a0
	msym a1 isEmpty
	jmrs ra a1
	msi a1 0
	cmr a0 a1
	msym a0 .LBB3_2
	brc 0x0 a0
	msym a0 .LBB3_1
	jmr a0
.LBB3_1:                                # %if.then
	mhi a0 128
	adi a0 0
	msi a1 -6
	adr a1 fp a1
	str a1 a0
	msym a0 .LBB3_3
	jmr a0
.LBB3_2:                                # %if.end
	msi a0 -8
	adr a0 fp a0
	ldr a0 a0
	ldr a1 a0
	adr a2 a1 zero
	shil -1, a2
	adr a2 a0 a2
	msi a3 -1
	adr a1 a1 a3
	str a0 a1
	adi a2 4
	ldr a0 a2
	msi a1 -6
	adr a1 fp a1
	str a1 a0
	msym a0 .LBB3_3
	jmr a0
.LBB3_3:                                # %return
	msi a0 -6
	adr a0 fp a0
	ldr a0 a0
	msi a1 4
	adr a1 sp a1
	ldr fp a1
	msi a1 6
	adr a1 sp a1
	ldr ra a1
	adi sp 8
	cmi 0 zero
	brc 0x0 ra
.Lfunc_end3:
	.size	pop, .Lfunc_end3-pop
                                        # -- End function
	.globl	peek                            # -- Begin function peek
	.align	3
	.type	peek,@function
peek:                                   # @peek
# %bb.0:                                # %entry
	adi sp -8
	msi a1 6
	adr a1 sp a1
	str a1 ra
	msi a1 4
	adr a1 sp a1
	str a1 fp
	msi a1 8
	adr fp sp a1
	msi a1 -8
	adr a1 fp a1
	str a1 a0
	msi a0 -8
	adr a0 fp a0
	ldr a0 a0
	msym a1 isEmpty
	jmrs ra a1
	msi a1 0
	cmr a0 a1
	msym a0 .LBB4_2
	brc 0x0 a0
	msym a0 .LBB4_1
	jmr a0
.LBB4_1:                                # %if.then
	mhi a0 128
	adi a0 0
	msi a1 -6
	adr a1 fp a1
	str a1 a0
	msym a0 .LBB4_3
	jmr a0
.LBB4_2:                                # %if.end
	msi a0 -8
	adr a0 fp a0
	ldr a0 a0
	ldr a1 a0
	shil -1, a1
	adr a0 a0 a1
	adi a0 4
	ldr a0 a0
	msi a1 -6
	adr a1 fp a1
	str a1 a0
	msym a0 .LBB4_3
	jmr a0
.LBB4_3:                                # %return
	msi a0 -6
	adr a0 fp a0
	ldr a0 a0
	msi a1 4
	adr a1 sp a1
	ldr fp a1
	msi a1 6
	adr a1 sp a1
	ldr ra a1
	adi sp 8
	cmi 0 zero
	brc 0x0 ra
.Lfunc_end4:
	.size	peek, .Lfunc_end4-peek
                                        # -- End function
	.globl	main                            # -- Begin function main
	.align	3
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	adi sp -40
	msi a0 38
	adr a0 sp a0
	str a0 ra
	msi a0 36
	adr a0 sp a0
	str a0 fp
	msi a0 34
	adr a0 sp a0
	str a0 s1
	msi a0 32
	adr a0 sp a0
	str a0 s2
	msi a0 40
	adr fp sp a0
	msi a0 0
	msi a1 -10
	adr a1 fp a1
	str a1 a0
	msi a0 -34
	adr a0 fp a0
	msi a1 11
	str a0 a1
	msi a0 -1
	msi a1 -36
	adr a1 fp a1
	str a1 a0
	msym s2 push
	msi s1 -36
	adr s1 fp s1
	adr a0 s1 zero
	msi a1 17
	jmrs ra s2
	adr a0 s1 zero
	msi a1 19
	jmrs ra s2
	msym a1 peek
	adr a0 s1 zero
	jmrs ra a1
	msi a1 -38
	adr a1 fp a1
	str a1 a0
	msym a1 pop
	adr a0 s1 zero
	jmrs ra a1
	msi a1 -40
	adr a1 fp a1
	str a1 a0
	adr a0 s1 zero
	msi a1 23
	jmrs ra s2
	msi a0 0
	msi a1 32
	adr a1 sp a1
	ldr s2 a1
	msi a1 34
	adr a1 sp a1
	ldr s1 a1
	msi a1 36
	adr a1 sp a1
	ldr fp a1
	msi a1 38
	adr a1 sp a1
	ldr ra a1
	adi sp 40
	cmi 0 zero
	brc 0x0 ra
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
                                        # -- End function
	.ident	"clang version 12.0.1 (https://github.com/ak821/SAYAC-Compiler.git 76547d3e98c59a447f55dea8242812e7e96fef9e)"
	.section	".note.GNU-stack","",@progbits
