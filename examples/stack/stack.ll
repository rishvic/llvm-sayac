; ModuleID = 'stack.bc'
source_filename = "stack.c"
target datalayout = "e-m:e-p:16:16-i32:16-a:0:16-n16-S16"
target triple = "sayac"

%struct.Stack = type { i16, i16, [11 x i16] }

; Function Attrs: noinline nounwind optnone
define dso_local i16 @isFull(%struct.Stack* %stack) #0 {
entry:
  %stack.addr = alloca %struct.Stack*, align 2
  store %struct.Stack* %stack, %struct.Stack** %stack.addr, align 2
  %0 = load %struct.Stack*, %struct.Stack** %stack.addr, align 2
  %top = getelementptr inbounds %struct.Stack, %struct.Stack* %0, i32 0, i32 0
  %1 = load i16, i16* %top, align 2
  %2 = load %struct.Stack*, %struct.Stack** %stack.addr, align 2
  %capacity = getelementptr inbounds %struct.Stack, %struct.Stack* %2, i32 0, i32 1
  %3 = load i16, i16* %capacity, align 2
  %sub = sub i16 %3, 1
  %cmp = icmp eq i16 %1, %sub
  %conv = zext i1 %cmp to i16
  ret i16 %conv
}

; Function Attrs: noinline nounwind optnone
define dso_local i16 @isEmpty(%struct.Stack* %stack) #0 {
entry:
  %stack.addr = alloca %struct.Stack*, align 2
  store %struct.Stack* %stack, %struct.Stack** %stack.addr, align 2
  %0 = load %struct.Stack*, %struct.Stack** %stack.addr, align 2
  %top = getelementptr inbounds %struct.Stack, %struct.Stack* %0, i32 0, i32 0
  %1 = load i16, i16* %top, align 2
  %cmp = icmp eq i16 %1, -1
  %conv = zext i1 %cmp to i16
  ret i16 %conv
}

; Function Attrs: noinline nounwind optnone
define dso_local void @push(%struct.Stack* %stack, i16 %item) #0 {
entry:
  %stack.addr = alloca %struct.Stack*, align 2
  %item.addr = alloca i16, align 2
  store %struct.Stack* %stack, %struct.Stack** %stack.addr, align 2
  store i16 %item, i16* %item.addr, align 2
  %0 = load %struct.Stack*, %struct.Stack** %stack.addr, align 2
  %call = call i16 @isFull(%struct.Stack* %0)
  %tobool = icmp ne i16 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i16, i16* %item.addr, align 2
  %2 = load %struct.Stack*, %struct.Stack** %stack.addr, align 2
  %array = getelementptr inbounds %struct.Stack, %struct.Stack* %2, i32 0, i32 2
  %3 = load %struct.Stack*, %struct.Stack** %stack.addr, align 2
  %top = getelementptr inbounds %struct.Stack, %struct.Stack* %3, i32 0, i32 0
  %4 = load i16, i16* %top, align 2
  %inc = add nsw i16 %4, 1
  store i16 %inc, i16* %top, align 2
  %arrayidx = getelementptr inbounds [11 x i16], [11 x i16]* %array, i16 0, i16 %inc
  store i16 %1, i16* %arrayidx, align 2
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local i16 @pop(%struct.Stack* %stack) #0 {
entry:
  %retval = alloca i16, align 2
  %stack.addr = alloca %struct.Stack*, align 2
  store %struct.Stack* %stack, %struct.Stack** %stack.addr, align 2
  %0 = load %struct.Stack*, %struct.Stack** %stack.addr, align 2
  %call = call i16 @isEmpty(%struct.Stack* %0)
  %tobool = icmp ne i16 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i16 -32768, i16* %retval, align 2
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.Stack*, %struct.Stack** %stack.addr, align 2
  %array = getelementptr inbounds %struct.Stack, %struct.Stack* %1, i32 0, i32 2
  %2 = load %struct.Stack*, %struct.Stack** %stack.addr, align 2
  %top = getelementptr inbounds %struct.Stack, %struct.Stack* %2, i32 0, i32 0
  %3 = load i16, i16* %top, align 2
  %dec = add nsw i16 %3, -1
  store i16 %dec, i16* %top, align 2
  %arrayidx = getelementptr inbounds [11 x i16], [11 x i16]* %array, i16 0, i16 %3
  %4 = load i16, i16* %arrayidx, align 2
  store i16 %4, i16* %retval, align 2
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i16, i16* %retval, align 2
  ret i16 %5
}

; Function Attrs: noinline nounwind optnone
define dso_local i16 @peek(%struct.Stack* %stack) #0 {
entry:
  %retval = alloca i16, align 2
  %stack.addr = alloca %struct.Stack*, align 2
  store %struct.Stack* %stack, %struct.Stack** %stack.addr, align 2
  %0 = load %struct.Stack*, %struct.Stack** %stack.addr, align 2
  %call = call i16 @isEmpty(%struct.Stack* %0)
  %tobool = icmp ne i16 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i16 -32768, i16* %retval, align 2
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.Stack*, %struct.Stack** %stack.addr, align 2
  %array = getelementptr inbounds %struct.Stack, %struct.Stack* %1, i32 0, i32 2
  %2 = load %struct.Stack*, %struct.Stack** %stack.addr, align 2
  %top = getelementptr inbounds %struct.Stack, %struct.Stack* %2, i32 0, i32 0
  %3 = load i16, i16* %top, align 2
  %arrayidx = getelementptr inbounds [11 x i16], [11 x i16]* %array, i16 0, i16 %3
  %4 = load i16, i16* %arrayidx, align 2
  store i16 %4, i16* %retval, align 2
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i16, i16* %retval, align 2
  ret i16 %5
}

; Function Attrs: noinline nounwind optnone
define dso_local i16 @main() #0 {
entry:
  %retval = alloca i16, align 2
  %stack = alloca %struct.Stack, align 2
  %top1 = alloca i16, align 2
  %poppedNum = alloca i16, align 2
  store i16 0, i16* %retval, align 2
  %capacity = getelementptr inbounds %struct.Stack, %struct.Stack* %stack, i32 0, i32 1
  store i16 11, i16* %capacity, align 2
  %top = getelementptr inbounds %struct.Stack, %struct.Stack* %stack, i32 0, i32 0
  store i16 -1, i16* %top, align 2
  call void @push(%struct.Stack* %stack, i16 17)
  call void @push(%struct.Stack* %stack, i16 19)
  %call = call i16 @peek(%struct.Stack* %stack)
  store i16 %call, i16* %top1, align 2
  %call2 = call i16 @pop(%struct.Stack* %stack)
  store i16 %call2, i16* %poppedNum, align 2
  call void @push(%struct.Stack* %stack, i16 23)
  ret i16 0
}

attributes #0 = { noinline nounwind optnone "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{!"clang version 12.0.1 (https://github.com/ak821/SAYAC-Compiler.git 76547d3e98c59a447f55dea8242812e7e96fef9e)"}
