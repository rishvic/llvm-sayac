; ModuleID = 'greatestNum.bc'
source_filename = "greatestNum.c"
target datalayout = "e-m:e-p:16:16-i32:16-a:0:16-n16-S16"
target triple = "sayac"

; Function Attrs: noinline nounwind optnone
define dso_local i16 @main() #0 {
entry:
  %retval = alloca i16, align 2
  %a = alloca i16, align 2
  %b = alloca i16, align 2
  %c = alloca i16, align 2
  %hi = alloca i16, align 2
  store i16 0, i16* %retval, align 2
  store i16 19, i16* %a, align 2
  store i16 25, i16* %b, align 2
  store i16 23, i16* %c, align 2
  %0 = load i16, i16* %a, align 2
  %1 = load i16, i16* %b, align 2
  %cmp = icmp sge i16 %0, %1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i16, i16* %a, align 2
  %3 = load i16, i16* %c, align 2
  %cmp1 = icmp sge i16 %2, %3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load i16, i16* %a, align 2
  store i16 %4, i16* %hi, align 2
  br label %if.end7

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load i16, i16* %b, align 2
  %6 = load i16, i16* %a, align 2
  %cmp2 = icmp sge i16 %5, %6
  br i1 %cmp2, label %land.lhs.true3, label %if.else6

land.lhs.true3:                                   ; preds = %if.else
  %7 = load i16, i16* %b, align 2
  %8 = load i16, i16* %c, align 2
  %cmp4 = icmp sge i16 %7, %8
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %land.lhs.true3
  %9 = load i16, i16* %b, align 2
  store i16 %9, i16* %hi, align 2
  br label %if.end

if.else6:                                         ; preds = %land.lhs.true3, %if.else
  %10 = load i16, i16* %c, align 2
  store i16 %10, i16* %hi, align 2
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then5
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  ret i16 0
}

attributes #0 = { noinline nounwind optnone "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{!"clang version 12.0.1 (https://github.com/ak821/SAYAC-Compiler.git dcfc6c5129ec31184ab904e94e41adcbb220f935)"}
