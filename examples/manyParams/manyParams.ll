; ModuleID = 'manyParams.bc'
source_filename = "manyParams.c"
target datalayout = "e-m:e-p:16:16-i32:16-a:0:16-n16-S16"
target triple = "sayac"

@OFFSET = dso_local constant i16 20, align 2

; Function Attrs: noinline nounwind optnone
define dso_local i16 @offSum(i16 %A, i16 %B, i16 %C, i16 %D, i16 %E, i16 %F) #0 {
entry:
  %A.addr = alloca i16, align 2
  %B.addr = alloca i16, align 2
  %C.addr = alloca i16, align 2
  %D.addr = alloca i16, align 2
  %E.addr = alloca i16, align 2
  %F.addr = alloca i16, align 2
  store i16 %A, i16* %A.addr, align 2
  store i16 %B, i16* %B.addr, align 2
  store i16 %C, i16* %C.addr, align 2
  store i16 %D, i16* %D.addr, align 2
  store i16 %E, i16* %E.addr, align 2
  store i16 %F, i16* %F.addr, align 2
  %0 = load i16, i16* %A.addr, align 2
  %1 = load i16, i16* %B.addr, align 2
  %add = add nsw i16 %0, %1
  %2 = load i16, i16* %C.addr, align 2
  %add1 = add nsw i16 %add, %2
  %3 = load i16, i16* %D.addr, align 2
  %add2 = add nsw i16 %add1, %3
  %4 = load i16, i16* %E.addr, align 2
  %add3 = add nsw i16 %add2, %4
  %5 = load i16, i16* %F.addr, align 2
  %add4 = add nsw i16 %add3, %5
  %add5 = add nsw i16 %add4, 20
  ret i16 %add5
}

; Function Attrs: noinline nounwind optnone
define dso_local i16 @main() #0 {
entry:
  %retval = alloca i16, align 2
  %P = alloca i16, align 2
  %Q = alloca i16, align 2
  %R = alloca i16, align 2
  %S = alloca i16, align 2
  %T = alloca i16, align 2
  %U = alloca i16, align 2
  %Sum = alloca i16, align 2
  store i16 0, i16* %retval, align 2
  store i16 -3, i16* %P, align 2
  store i16 7, i16* %Q, align 2
  store i16 -10, i16* %R, align 2
  store i16 -10, i16* %S, align 2
  store i16 -4, i16* %T, align 2
  store i16 0, i16* %U, align 2
  %0 = load i16, i16* %P, align 2
  %1 = load i16, i16* %Q, align 2
  %2 = load i16, i16* %R, align 2
  %3 = load i16, i16* %S, align 2
  %4 = load i16, i16* %T, align 2
  %5 = load i16, i16* %U, align 2
  %call = call i16 @offSum(i16 %0, i16 %1, i16 %2, i16 %3, i16 %4, i16 %5)
  store i16 %call, i16* %Sum, align 2
  %6 = load i16, i16* %Sum, align 2
  ret i16 %6
}

attributes #0 = { noinline nounwind optnone "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{!"clang version 12.0.1 (git@github.com:ak821/SAYAC-Compiler.git 33493041b1c3ed6328f49fd84d129600f3496433)"}
