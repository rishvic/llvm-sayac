	.text
	.file	"test.c"
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
	msym a0 .L__const.main.a
	adr a1 a0 zero
	adi a1 6
	ldr a1 a1
	msi a2 -6
	adr a2 fp a2
	str a2 a1
	adr a1 a0 zero
	adi a1 4
	ldr a1 a1
	msi a2 -8
	adr a2 fp a2
	str a2 a1
	adr a1 a0 zero
	adi a1 2
	ldr a1 a1
	msi a2 -10
	adr a2 fp a2
	str a2 a1
	ldr a0 a0
	msi a1 -12
	adr a1 fp a1
	str a1 a0
	msym a0 .L.str
	msi a1 -14
	adr a1 fp a1
	str a1 a0
	msym a0 .L.str.1
	msi a1 -16
	adr a1 fp a1
	str a1 a0
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
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	.L__const.main.a,@object        # @__const.main.a
	.section	.rodata.cst8,"aM",@progbits,8
	.align	1
.L__const.main.a:
	.short	1                               # 0x1
	.short	2                               # 0x2
	.short	3                               # 0x3
	.short	4                               # 0x4
	.size	.L__const.main.a, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"AFDSGFSA"
	.size	.L.str, 9

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"GSFDLS"
	.size	.L.str.1, 7

	.ident	"clang version 12.0.1 (https://github.com/ak821/SAYAC-Compiler.git 606f23d4600b1a0836f98e2b93eaa1379b164631)"
	.section	".note.GNU-stack","",@progbits
