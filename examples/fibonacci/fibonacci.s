	.text
	.file	"fibonacci.c"
	.globl	calFibonacciNum                 # -- Begin function calFibonacciNum
	.align	3
	.type	calFibonacciNum,@function
calFibonacciNum:                        # @calFibonacciNum
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
	msi a1 0
	str a0 a1
	msi a0 -6
	adr a0 fp a0
	ldr a0 a0
	adi a0 2
	msi a1 1
	str a0 a1
	msi a0 2
	msi a1 -10
	adr a1 fp a1
	str a1 a0
	msym a0 .LBB0_1
	jmr a0
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	msi a0 -10
	adr a0 fp a0
	ldr a0 a0
	msi a1 -8
	adr a1 fp a1
	ldr a1 a1
	cmr a0 a1
	msym a0 .LBB0_4
	brc 0x3 a0
	msym a0 .LBB0_2
	jmr a0
.LBB0_2:                                # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	msi a0 -6
	adr a0 fp a0
	ldr a0 a0
	msi a1 -10
	adr a1 fp a1
	ldr a1 a1
	shil -1, a1
	adr a0 a0 a1
	msi a1 -2
	adr a1 a0 a1
	ldr a1 a1
	msi a2 -4
	adr a2 a0 a2
	ldr a2 a2
	adr a1 a1 a2
	str a0 a1
	msym a0 .LBB0_3
	jmr a0
.LBB0_3:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	msi a0 -10
	adr a0 fp a0
	ldr a0 a0
	adi a0 1
	msi a1 -10
	adr a1 fp a1
	str a1 a0
	msym a0 .LBB0_1
	jmr a0
.LBB0_4:                                # %for.end
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
	.size	calFibonacciNum, .Lfunc_end0-calFibonacciNum
                                        # -- End function
	.globl	main                            # -- Begin function main
	.align	3
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	adi sp -32
	msi a0 30
	adr a0 sp a0
	str a0 ra
	msi a0 28
	adr a0 sp a0
	str a0 fp
	msi a0 32
	adr fp sp a0
	msi a0 0
	msi a1 -6
	adr a1 fp a1
	str a1 a0
	msym a2 calFibonacciNum
	msi a0 -26
	adr a0 fp a0
	msi a1 10
	jmrs ra a2
	msi a0 0
	msi a1 28
	adr a1 sp a1
	ldr fp a1
	msi a1 30
	adr a1 sp a1
	ldr ra a1
	adi sp 32
	cmi 0 zero
	brc 0x0 ra
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.ident	"clang version 12.0.1 (https://github.com/ak821/SAYAC-Compiler.git dcfc6c5129ec31184ab904e94e41adcbb220f935)"
	.section	".note.GNU-stack","",@progbits
