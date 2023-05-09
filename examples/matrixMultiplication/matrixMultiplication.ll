; ModuleID = 'matrixMultiplication.bc'
source_filename = "matrixMultiplication.c"
target datalayout = "e-m:e-p:16:16-i32:16-a:0:16-n16-S16"
target triple = "sayac"

; Function Attrs: noinline nounwind optnone
define dso_local i16 @main() #0 {
entry:
  %retval = alloca i16, align 2
  %mat1 = alloca [2 x [2 x i16]], align 2
  %mat2 = alloca [2 x [3 x i16]], align 2
  %rslt = alloca [2 x [3 x i16]], align 2
  %i = alloca i16, align 2
  %j = alloca i16, align 2
  %k = alloca i16, align 2
  store i16 0, i16* %retval, align 2
  %arrayidx = getelementptr inbounds [2 x [2 x i16]], [2 x [2 x i16]]* %mat1, i16 0, i16 0
  %arrayidx1 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx, i16 0, i16 0
  store i16 9, i16* %arrayidx1, align 2
  %arrayidx2 = getelementptr inbounds [2 x [2 x i16]], [2 x [2 x i16]]* %mat1, i16 0, i16 0
  %arrayidx3 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx2, i16 0, i16 1
  store i16 3, i16* %arrayidx3, align 2
  %arrayidx4 = getelementptr inbounds [2 x [2 x i16]], [2 x [2 x i16]]* %mat1, i16 0, i16 1
  %arrayidx5 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx4, i16 0, i16 0
  store i16 7, i16* %arrayidx5, align 2
  %arrayidx6 = getelementptr inbounds [2 x [2 x i16]], [2 x [2 x i16]]* %mat1, i16 0, i16 1
  %arrayidx7 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx6, i16 0, i16 1
  store i16 5, i16* %arrayidx7, align 2
  %arrayidx8 = getelementptr inbounds [2 x [3 x i16]], [2 x [3 x i16]]* %mat2, i16 0, i16 0
  %arrayidx9 = getelementptr inbounds [3 x i16], [3 x i16]* %arrayidx8, i16 0, i16 0
  store i16 9, i16* %arrayidx9, align 2
  %arrayidx10 = getelementptr inbounds [2 x [3 x i16]], [2 x [3 x i16]]* %mat2, i16 0, i16 0
  %arrayidx11 = getelementptr inbounds [3 x i16], [3 x i16]* %arrayidx10, i16 0, i16 1
  store i16 11, i16* %arrayidx11, align 2
  %arrayidx12 = getelementptr inbounds [2 x [3 x i16]], [2 x [3 x i16]]* %mat2, i16 0, i16 0
  %arrayidx13 = getelementptr inbounds [3 x i16], [3 x i16]* %arrayidx12, i16 0, i16 2
  store i16 13, i16* %arrayidx13, align 2
  %arrayidx14 = getelementptr inbounds [2 x [3 x i16]], [2 x [3 x i16]]* %mat2, i16 0, i16 1
  %arrayidx15 = getelementptr inbounds [3 x i16], [3 x i16]* %arrayidx14, i16 0, i16 0
  store i16 15, i16* %arrayidx15, align 2
  %arrayidx16 = getelementptr inbounds [2 x [3 x i16]], [2 x [3 x i16]]* %mat2, i16 0, i16 1
  %arrayidx17 = getelementptr inbounds [3 x i16], [3 x i16]* %arrayidx16, i16 0, i16 1
  store i16 7, i16* %arrayidx17, align 2
  %arrayidx18 = getelementptr inbounds [2 x [3 x i16]], [2 x [3 x i16]]* %mat2, i16 0, i16 1
  %arrayidx19 = getelementptr inbounds [3 x i16], [3 x i16]* %arrayidx18, i16 0, i16 2
  store i16 19, i16* %arrayidx19, align 2
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc37, %entry
  %0 = load i16, i16* %i, align 2
  %cmp = icmp slt i16 %0, 2
  br i1 %cmp, label %for.body, label %for.end39

for.body:                                         ; preds = %for.cond
  store i16 0, i16* %j, align 2
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc34, %for.body
  %1 = load i16, i16* %j, align 2
  %cmp21 = icmp slt i16 %1, 3
  br i1 %cmp21, label %for.body22, label %for.end36

for.body22:                                       ; preds = %for.cond20
  %2 = load i16, i16* %i, align 2
  %arrayidx23 = getelementptr inbounds [2 x [3 x i16]], [2 x [3 x i16]]* %rslt, i16 0, i16 %2
  %3 = load i16, i16* %j, align 2
  %arrayidx24 = getelementptr inbounds [3 x i16], [3 x i16]* %arrayidx23, i16 0, i16 %3
  store i16 0, i16* %arrayidx24, align 2
  store i16 0, i16* %k, align 2
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc, %for.body22
  %4 = load i16, i16* %k, align 2
  %cmp26 = icmp slt i16 %4, 2
  br i1 %cmp26, label %for.body27, label %for.end

for.body27:                                       ; preds = %for.cond25
  %5 = load i16, i16* %i, align 2
  %arrayidx28 = getelementptr inbounds [2 x [2 x i16]], [2 x [2 x i16]]* %mat1, i16 0, i16 %5
  %6 = load i16, i16* %k, align 2
  %arrayidx29 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx28, i16 0, i16 %6
  %7 = load i16, i16* %arrayidx29, align 2
  %8 = load i16, i16* %k, align 2
  %arrayidx30 = getelementptr inbounds [2 x [3 x i16]], [2 x [3 x i16]]* %mat2, i16 0, i16 %8
  %9 = load i16, i16* %j, align 2
  %arrayidx31 = getelementptr inbounds [3 x i16], [3 x i16]* %arrayidx30, i16 0, i16 %9
  %10 = load i16, i16* %arrayidx31, align 2
  %mul = mul nsw i16 %7, %10
  %11 = load i16, i16* %i, align 2
  %arrayidx32 = getelementptr inbounds [2 x [3 x i16]], [2 x [3 x i16]]* %rslt, i16 0, i16 %11
  %12 = load i16, i16* %j, align 2
  %arrayidx33 = getelementptr inbounds [3 x i16], [3 x i16]* %arrayidx32, i16 0, i16 %12
  %13 = load i16, i16* %arrayidx33, align 2
  %add = add nsw i16 %13, %mul
  store i16 %add, i16* %arrayidx33, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body27
  %14 = load i16, i16* %k, align 2
  %inc = add nsw i16 %14, 1
  store i16 %inc, i16* %k, align 2
  br label %for.cond25, !llvm.loop !2

for.end:                                          ; preds = %for.cond25
  br label %for.inc34

for.inc34:                                        ; preds = %for.end
  %15 = load i16, i16* %j, align 2
  %inc35 = add nsw i16 %15, 1
  store i16 %inc35, i16* %j, align 2
  br label %for.cond20, !llvm.loop !4

for.end36:                                        ; preds = %for.cond20
  br label %for.inc37

for.inc37:                                        ; preds = %for.end36
  %16 = load i16, i16* %i, align 2
  %inc38 = add nsw i16 %16, 1
  store i16 %inc38, i16* %i, align 2
  br label %for.cond, !llvm.loop !5

for.end39:                                        ; preds = %for.cond
  ret i16 0
}

attributes #0 = { noinline nounwind optnone "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{!"clang version 12.0.1 (https://github.com/ak821/SAYAC-Compiler.git 76547d3e98c59a447f55dea8242812e7e96fef9e)"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
