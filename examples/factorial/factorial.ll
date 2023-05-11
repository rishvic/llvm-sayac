; ModuleID = './examples/factorial/factorial.bc'
source_filename = "./examples/factorial/factorial.c"
target datalayout = "e-m:e-p:16:16-i32:16-a:0:16-n16-S16"
target triple = "sayac"

; Function Attrs: noinline nounwind optnone
define dso_local i16 @main() #0 {
entry:
  %retval = alloca i16, align 2
  %n = alloca i16, align 2
  %factorial_n = alloca i16, align 2
  %i = alloca i16, align 2
  store i16 0, i16* %retval, align 2
  store i16 6, i16* %n, align 2
  store i16 1, i16* %factorial_n, align 2
  store i16 2, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16, i16* %i, align 2
  %1 = load i16, i16* %n, align 2
  %cmp = icmp sle i16 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i16, i16* %i, align 2
  %3 = load i16, i16* %factorial_n, align 2
  %mul = mul nsw i16 %3, %2
  store i16 %mul, i16* %factorial_n, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i16, i16* %i, align 2
  %inc = add nsw i16 %4, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond, !llvm.loop !2

for.end:                                          ; preds = %for.cond
  %5 = load i16, i16* %retval, align 2
  ret i16 %5
}

attributes #0 = { noinline nounwind optnone "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{!"clang version 12.0.1 (https://github.com/ak821/SAYAC-Compiler.git 76547d3e98c59a447f55dea8242812e7e96fef9e)"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
