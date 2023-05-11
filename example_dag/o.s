	.text
	.file	"o.c"
	.globl	sum                             # -- Begin function sum
	.align	3
	.type	sum,@function
sum:                                    # @sum
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
	msi a2 -6
	adr a2 fp a2
	str a2 a0
	msi a0 -8
	adr a0 fp a0
	str a0 a1
	msi a0 -6
	adr a0 fp a0
	ldr a0 a0
	msi a1 -8
	adr a1 fp a1
	ldr a1 a1
	adr a0 a0 a1
	msi a1 -10
	adr a1 fp a1
	str a1 a0
	msi a0 -10
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
	.size	sum, .Lfunc_end0-sum
                                        # -- End function
	.ident	"clang version 12.0.1 (https://github.com/ak821/SAYAC-Compiler.git 76547d3e98c59a447f55dea8242812e7e96fef9e)"
	.section	".note.GNU-stack","",@progbits
