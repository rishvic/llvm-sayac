; ModuleID = 'binarySearch.bc'
source_filename = "binarySearch.c"
target datalayout = "e-m:e-p:16:16-i32:16-a:0:16-n16-S16"
target triple = "sayac"

; Function Attrs: noinline nounwind optnone
define dso_local i16 @binarySearch(i16* %arr, i16 %l, i16 %r, i16 %x) #0 {
entry:
  %retval = alloca i16, align 2
  %arr.addr = alloca i16*, align 2
  %l.addr = alloca i16, align 2
  %r.addr = alloca i16, align 2
  %x.addr = alloca i16, align 2
  %m = alloca i16, align 2
  store i16* %arr, i16** %arr.addr, align 2
  store i16 %l, i16* %l.addr, align 2
  store i16 %r, i16* %r.addr, align 2
  store i16 %x, i16* %x.addr, align 2
  br label %while.cond

while.cond:                                       ; preds = %if.end7, %entry
  %0 = load i16, i16* %l.addr, align 2
  %1 = load i16, i16* %r.addr, align 2
  %cmp = icmp sle i16 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i16, i16* %l.addr, align 2
  %3 = load i16, i16* %r.addr, align 2
  %4 = load i16, i16* %l.addr, align 2
  %sub = sub nsw i16 %3, %4
  %div = sdiv i16 %sub, 2
  %add = add nsw i16 %2, %div
  store i16 %add, i16* %m, align 2
  %5 = load i16*, i16** %arr.addr, align 2
  %6 = load i16, i16* %m, align 2
  %arrayidx = getelementptr inbounds i16, i16* %5, i16 %6
  %7 = load i16, i16* %arrayidx, align 2
  %8 = load i16, i16* %x.addr, align 2
  %cmp1 = icmp eq i16 %7, %8
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %9 = load i16, i16* %m, align 2
  store i16 %9, i16* %retval, align 2
  br label %return

if.end:                                           ; preds = %while.body
  %10 = load i16*, i16** %arr.addr, align 2
  %11 = load i16, i16* %m, align 2
  %arrayidx2 = getelementptr inbounds i16, i16* %10, i16 %11
  %12 = load i16, i16* %arrayidx2, align 2
  %13 = load i16, i16* %x.addr, align 2
  %cmp3 = icmp slt i16 %12, %13
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %14 = load i16, i16* %m, align 2
  %add5 = add nsw i16 %14, 1
  store i16 %add5, i16* %l.addr, align 2
  br label %if.end7

if.else:                                          ; preds = %if.end
  %15 = load i16, i16* %m, align 2
  %sub6 = sub nsw i16 %15, 1
  store i16 %sub6, i16* %r.addr, align 2
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  br label %while.cond, !llvm.loop !2

while.end:                                        ; preds = %while.cond
  store i16 -1, i16* %retval, align 2
  br label %return

return:                                           ; preds = %while.end, %if.then
  %16 = load i16, i16* %retval, align 2
  ret i16 %16
}

; Function Attrs: noinline nounwind optnone
define dso_local i16 @main() #0 {
entry:
  %retval = alloca i16, align 2
  %n = alloca i16, align 2
  %arr = alloca [5 x i16], align 2
  %x = alloca i16, align 2
  %result = alloca i16, align 2
  store i16 0, i16* %retval, align 2
  store i16 5, i16* %n, align 2
  %arrayidx = getelementptr inbounds [5 x i16], [5 x i16]* %arr, i16 0, i16 0
  store i16 3, i16* %arrayidx, align 2
  %arrayidx1 = getelementptr inbounds [5 x i16], [5 x i16]* %arr, i16 0, i16 1
  store i16 5, i16* %arrayidx1, align 2
  %arrayidx2 = getelementptr inbounds [5 x i16], [5 x i16]* %arr, i16 0, i16 2
  store i16 13, i16* %arrayidx2, align 2
  %arrayidx3 = getelementptr inbounds [5 x i16], [5 x i16]* %arr, i16 0, i16 3
  store i16 23, i16* %arrayidx3, align 2
  %arrayidx4 = getelementptr inbounds [5 x i16], [5 x i16]* %arr, i16 0, i16 4
  store i16 41, i16* %arrayidx4, align 2
  store i16 23, i16* %x, align 2
  %arraydecay = getelementptr inbounds [5 x i16], [5 x i16]* %arr, i16 0, i16 0
  %0 = load i16, i16* %n, align 2
  %sub = sub nsw i16 %0, 1
  %1 = load i16, i16* %x, align 2
  %call = call i16 @binarySearch(i16* %arraydecay, i16 0, i16 %sub, i16 %1)
  store i16 %call, i16* %result, align 2
  ret i16 0
}

attributes #0 = { noinline nounwind optnone "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{!"clang version 12.0.1 (https://github.com/ak821/SAYAC-Compiler.git 76547d3e98c59a447f55dea8242812e7e96fef9e)"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
