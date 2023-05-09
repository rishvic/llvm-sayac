; ModuleID = 'fibonacci.bc'
source_filename = "fibonacci.c"
target datalayout = "e-m:e-p:16:16-i32:16-a:0:16-n16-S16"
target triple = "sayac"

; Function Attrs: noinline nounwind optnone
define dso_local void @calFibonacciNum(i16* %fib, i16 %n) #0 {
entry:
  %fib.addr = alloca i16*, align 2
  %n.addr = alloca i16, align 2
  %i = alloca i16, align 2
  store i16* %fib, i16** %fib.addr, align 2
  store i16 %n, i16* %n.addr, align 2
  %0 = load i16*, i16** %fib.addr, align 2
  %arrayidx = getelementptr inbounds i16, i16* %0, i16 0
  store i16 0, i16* %arrayidx, align 2
  %1 = load i16*, i16** %fib.addr, align 2
  %arrayidx1 = getelementptr inbounds i16, i16* %1, i16 1
  store i16 1, i16* %arrayidx1, align 2
  store i16 2, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i16, i16* %i, align 2
  %3 = load i16, i16* %n.addr, align 2
  %cmp = icmp slt i16 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i16*, i16** %fib.addr, align 2
  %5 = load i16, i16* %i, align 2
  %sub = sub nsw i16 %5, 1
  %arrayidx2 = getelementptr inbounds i16, i16* %4, i16 %sub
  %6 = load i16, i16* %arrayidx2, align 2
  %7 = load i16*, i16** %fib.addr, align 2
  %8 = load i16, i16* %i, align 2
  %sub3 = sub nsw i16 %8, 2
  %arrayidx4 = getelementptr inbounds i16, i16* %7, i16 %sub3
  %9 = load i16, i16* %arrayidx4, align 2
  %add = add nsw i16 %6, %9
  %10 = load i16*, i16** %fib.addr, align 2
  %11 = load i16, i16* %i, align 2
  %arrayidx5 = getelementptr inbounds i16, i16* %10, i16 %11
  store i16 %add, i16* %arrayidx5, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i16, i16* %i, align 2
  %inc = add nsw i16 %12, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond, !llvm.loop !2

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local i16 @main() #0 {
entry:
  %retval = alloca i16, align 2
  %fib = alloca [10 x i16], align 2
  store i16 0, i16* %retval, align 2
  %arraydecay = getelementptr inbounds [10 x i16], [10 x i16]* %fib, i16 0, i16 0
  call void @calFibonacciNum(i16* %arraydecay, i16 10)
  ret i16 0
}

attributes #0 = { noinline nounwind optnone "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{!"clang version 12.0.1 (https://github.com/ak821/SAYAC-Compiler.git dcfc6c5129ec31184ab904e94e41adcbb220f935)"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
