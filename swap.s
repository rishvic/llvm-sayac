	.text
	.file	"swap.c"
	.globl	swap_num                        # -- Begin function swap_num
	.align	3
	.type	swap_num,@function
swap_num:                               # @swap_num
# %bb.0:                                # %entry
	adi sp -16
	msi a2 14
	adr a2 sp a2
	str a2 ra
	msi a2 12
	adr a2 sp a2
	str a2 fp
	msi a2 16
	adr fp sp a2
	msi a2 6
	adr a2 fp a2
	str a2 a0
	msi a0 8
	adr a0 fp a0
	str a0 a1
	msi a0 6
	adr a0 fp a0
	ldr a0 a0
	ldr a0 a0
	msi a1 10
	adr a1 fp a1
	str a1 a0
	msi a0 8
	adr a0 fp a0
	ldr a0 a0
	ldr a0 a0
	msi a1 6
	adr a1 fp a1
	ldr a1 a1
	str a1 a0
	msi a0 10
	adr a0 fp a0
	ldr a0 a0
	msi a1 8
	adr a1 fp a1
	ldr a1 a1
	str a1 a0
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
	.size	swap_num, .Lfunc_end0-swap_num
                                        # -- End function
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
	msi a1 6
	adr a1 fp a1
	str a1 a0
	msi a0 43
	msi a1 8
	adr a1 fp a1
	str a1 a0
	msi a0 34
	msi a1 10
	adr a1 fp a1
	str a1 a0
	msym a2 swap_num
	msi a0 8
	adr a0 fp a0
	msi a1 10
	adr a1 fp a1
	jmrs ra a2
	msi a0 0
	msi a1 12
	adr a1 sp a1
	ldr fp a1
	msi a1 14
	adr a1 sp a1
	ldr ra a1
	adi sp 16
	cmi 0 zero
	brc 0x0 ra
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.ident	"clang version 12.0.1 (https://github.com/llvm/llvm-project/ 8724eb480dea541e9bddc86757e240b70852fb65)"
	.section	".note.GNU-stack","",@progbits
