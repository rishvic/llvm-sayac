	.text
	.file	"mytest.c"
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
	msi a0 17
	msi a1 8
	adr a1 fp a1
	str a1 a0
	msi a0 18
	msi a1 10
	adr a1 fp a1
	str a1 a0
	msi a0 8
	adr a0 fp a0
	ldr a0 a0
	msi a1 10
	adr a1 fp a1
	ldr a1 a1
	adr a0 a0 a1
	adr a0 a0 a0
	msi a1 12
	adr a1 fp a1
	str a1 a0
	msi a0 8
	adr a0 fp a0
	ldr a0 a0
	msi a1 10
	adr a1 fp a1
	ldr a1 a1
	adr a0 a0 a1
	msi a1 14
	adr a1 fp a1
	str a1 a0
	msi a0 14
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
	.ident	"clang version 12.0.1 (https://github.com/llvm/llvm-project/ 8724eb480dea541e9bddc86757e240b70852fb65)"
	.section	".note.GNU-stack","",@progbits
