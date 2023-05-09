	.text
	.file	"greatestNum.c"
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
	msi a1 -6
	adr a1 fp a1
	str a1 a0
	msi a0 19
	msi a1 -8
	adr a1 fp a1
	str a1 a0
	msi a0 25
	msi a1 -10
	adr a1 fp a1
	str a1 a0
	msi a0 23
	msi a1 -12
	adr a1 fp a1
	str a1 a0
	msi a0 -8
	adr a0 fp a0
	ldr a0 a0
	msi a1 -10
	adr a1 fp a1
	ldr a1 a1
	cmr a0 a1
	msym a0 .LBB0_3
	brc 0x1 a0
	msym a0 .LBB0_1
	jmr a0
.LBB0_1:                                # %land.lhs.true
	msi a0 -8
	adr a0 fp a0
	ldr a0 a0
	msi a1 -12
	adr a1 fp a1
	ldr a1 a1
	cmr a0 a1
	msym a0 .LBB0_3
	brc 0x1 a0
	msym a0 .LBB0_2
	jmr a0
.LBB0_2:                                # %if.then
	msi a0 -8
	adr a0 fp a0
	ldr a0 a0
	msi a1 -14
	adr a1 fp a1
	str a1 a0
	msym a0 .LBB0_8
	jmr a0
.LBB0_3:                                # %if.else
	msi a0 -10
	adr a0 fp a0
	ldr a0 a0
	msi a1 -8
	adr a1 fp a1
	ldr a1 a1
	cmr a0 a1
	msym a0 .LBB0_6
	brc 0x1 a0
	msym a0 .LBB0_4
	jmr a0
.LBB0_4:                                # %land.lhs.true3
	msi a0 -10
	adr a0 fp a0
	ldr a0 a0
	msi a1 -12
	adr a1 fp a1
	ldr a1 a1
	cmr a0 a1
	msym a0 .LBB0_6
	brc 0x1 a0
	msym a0 .LBB0_5
	jmr a0
.LBB0_5:                                # %if.then5
	msi a0 -10
	adr a0 fp a0
	ldr a0 a0
	msi a1 -14
	adr a1 fp a1
	str a1 a0
	msym a0 .LBB0_7
	jmr a0
.LBB0_6:                                # %if.else6
	msi a0 -12
	adr a0 fp a0
	ldr a0 a0
	msi a1 -14
	adr a1 fp a1
	str a1 a0
	msym a0 .LBB0_7
	jmr a0
.LBB0_7:                                # %if.end
	msym a0 .LBB0_8
	jmr a0
.LBB0_8:                                # %if.end7
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
	.ident	"clang version 12.0.1 (https://github.com/ak821/SAYAC-Compiler.git dcfc6c5129ec31184ab904e94e41adcbb220f935)"
	.section	".note.GNU-stack","",@progbits
