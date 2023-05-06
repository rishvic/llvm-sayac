; ModuleID = 'swap.bc'
source_filename = "swap.c"
target datalayout = "e-m:e-p:16:16-i32:16-a:0:16-n16-S16"
target triple = "sayac"

; Function Attrs: noinline nounwind optnone
define dso_local void @swap_num(i16* %a, i16* %b) #0 {
entry:
  %a.addr = alloca i16*, align 2
  %b.addr = alloca i16*, align 2
  %temp = alloca i16, align 2
  store i16* %a, i16** %a.addr, align 2
  store i16* %b, i16** %b.addr, align 2
  %0 = load i16*, i16** %a.addr, align 2
  %1 = load i16, i16* %0, align 2
  store i16 %1, i16* %temp, align 2
  %2 = load i16*, i16** %b.addr, align 2
  %3 = load i16, i16* %2, align 2
  %4 = load i16*, i16** %a.addr, align 2
  store i16 %3, i16* %4, align 2
  %5 = load i16, i16* %temp, align 2
  %6 = load i16*, i16** %b.addr, align 2
  store i16 %5, i16* %6, align 2
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local i16 @main() #0 {
entry:
  %retval = alloca i16, align 2
  %a = alloca i16, align 2
  %b = alloca i16, align 2
  store i16 0, i16* %retval, align 2
  store i16 43, i16* %a, align 2
  store i16 34, i16* %b, align 2
  call void @swap_num(i16* %a, i16* %b)
  ret i16 0
}

attributes #0 = { noinline nounwind optnone "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{!"clang version 12.0.1 (https://github.com/llvm/llvm-project/ 8724eb480dea541e9bddc86757e240b70852fb65)"}
