	.text
	.file	"test.c"
	.globl	main                            # -- Begin function main
	.align	3
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	adi sp -8
	msi a0 6
	adr a0 sp a0
	str a0 ra
	msi a0 4
	adr a0 sp a0
	str a0 fp
	msi a0 8
	adr fp sp a0
	msym a0 .L__const.main.ch
	ldb a1 a0
	adi a0 1
	ldb a0 a0
	shil -8 a0
	ntd1 a0
	ntr1 a1 a1
	anr a1 a0 a1
	ntd1 a1
	msi a0 -6
	adr a0 fp a0
	str a0 a1
	msi a0 0
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
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	.L__const.main.ch,@object       # @__const.main.ch
	.section	.rodata,"a",@progbits
.L__const.main.ch:
	.ascii	"12"
	.size	.L__const.main.ch, 2

	.ident	"clang version 12.0.1 (https://github.com/ak821/SAYAC-Compiler.git ff29de01d31f9e9ef73e64686958f20eb4f574eb)"
	.section	".note.GNU-stack","",@progbits
