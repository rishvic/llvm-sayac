; ModuleID = 'binaryTree.bc'
source_filename = "binaryTree.c"
target datalayout = "e-m:e-p:16:16-i32:16-a:0:16-n16-S16"
target triple = "sayac"

%struct.node = type { i16, %struct.node*, %struct.node* }

; Function Attrs: noinline nounwind optnone
define dso_local void @inorderTraversal(%struct.node* %root, i16* %arr, i16* %idx) #0 {
entry:
  %root.addr = alloca %struct.node*, align 2
  %arr.addr = alloca i16*, align 2
  %idx.addr = alloca i16*, align 2
  store %struct.node* %root, %struct.node** %root.addr, align 2
  store i16* %arr, i16** %arr.addr, align 2
  store i16* %idx, i16** %idx.addr, align 2
  %0 = load %struct.node*, %struct.node** %root.addr, align 2
  %cmp = icmp eq %struct.node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.node*, %struct.node** %root.addr, align 2
  %left = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 1
  %2 = load %struct.node*, %struct.node** %left, align 2
  %3 = load i16*, i16** %arr.addr, align 2
  %4 = load i16*, i16** %idx.addr, align 2
  call void @inorderTraversal(%struct.node* %2, i16* %3, i16* %4)
  %5 = load %struct.node*, %struct.node** %root.addr, align 2
  %item = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 0
  %6 = load i16, i16* %item, align 2
  %7 = load i16*, i16** %arr.addr, align 2
  %8 = load i16*, i16** %idx.addr, align 2
  %9 = load i16, i16* %8, align 2
  %arrayidx = getelementptr inbounds i16, i16* %7, i16 %9
  store i16 %6, i16* %arrayidx, align 2
  %10 = load i16*, i16** %idx.addr, align 2
  %11 = load i16, i16* %10, align 2
  %add = add nsw i16 %11, 1
  %12 = load i16*, i16** %idx.addr, align 2
  store i16 %add, i16* %12, align 2
  %13 = load %struct.node*, %struct.node** %root.addr, align 2
  %right = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 2
  %14 = load %struct.node*, %struct.node** %right, align 2
  %15 = load i16*, i16** %arr.addr, align 2
  %16 = load i16*, i16** %idx.addr, align 2
  call void @inorderTraversal(%struct.node* %14, i16* %15, i16* %16)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @preorderTraversal(%struct.node* %root, i16* %arr, i16* %idx) #0 {
entry:
  %root.addr = alloca %struct.node*, align 2
  %arr.addr = alloca i16*, align 2
  %idx.addr = alloca i16*, align 2
  store %struct.node* %root, %struct.node** %root.addr, align 2
  store i16* %arr, i16** %arr.addr, align 2
  store i16* %idx, i16** %idx.addr, align 2
  %0 = load %struct.node*, %struct.node** %root.addr, align 2
  %cmp = icmp eq %struct.node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.node*, %struct.node** %root.addr, align 2
  %item = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 0
  %2 = load i16, i16* %item, align 2
  %3 = load i16*, i16** %arr.addr, align 2
  %4 = load i16*, i16** %idx.addr, align 2
  %5 = load i16, i16* %4, align 2
  %arrayidx = getelementptr inbounds i16, i16* %3, i16 %5
  store i16 %2, i16* %arrayidx, align 2
  %6 = load i16*, i16** %idx.addr, align 2
  %7 = load i16, i16* %6, align 2
  %add = add nsw i16 %7, 1
  %8 = load i16*, i16** %idx.addr, align 2
  store i16 %add, i16* %8, align 2
  %9 = load %struct.node*, %struct.node** %root.addr, align 2
  %left = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 1
  %10 = load %struct.node*, %struct.node** %left, align 2
  %11 = load i16*, i16** %arr.addr, align 2
  %12 = load i16*, i16** %idx.addr, align 2
  call void @preorderTraversal(%struct.node* %10, i16* %11, i16* %12)
  %13 = load %struct.node*, %struct.node** %root.addr, align 2
  %right = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 2
  %14 = load %struct.node*, %struct.node** %right, align 2
  %15 = load i16*, i16** %arr.addr, align 2
  %16 = load i16*, i16** %idx.addr, align 2
  call void @preorderTraversal(%struct.node* %14, i16* %15, i16* %16)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @postorderTraversal(%struct.node* %root, i16* %arr, i16* %idx) #0 {
entry:
  %root.addr = alloca %struct.node*, align 2
  %arr.addr = alloca i16*, align 2
  %idx.addr = alloca i16*, align 2
  store %struct.node* %root, %struct.node** %root.addr, align 2
  store i16* %arr, i16** %arr.addr, align 2
  store i16* %idx, i16** %idx.addr, align 2
  %0 = load %struct.node*, %struct.node** %root.addr, align 2
  %cmp = icmp eq %struct.node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.node*, %struct.node** %root.addr, align 2
  %left = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 1
  %2 = load %struct.node*, %struct.node** %left, align 2
  %3 = load i16*, i16** %arr.addr, align 2
  %4 = load i16*, i16** %idx.addr, align 2
  call void @postorderTraversal(%struct.node* %2, i16* %3, i16* %4)
  %5 = load %struct.node*, %struct.node** %root.addr, align 2
  %right = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 2
  %6 = load %struct.node*, %struct.node** %right, align 2
  %7 = load i16*, i16** %arr.addr, align 2
  %8 = load i16*, i16** %idx.addr, align 2
  call void @postorderTraversal(%struct.node* %6, i16* %7, i16* %8)
  %9 = load %struct.node*, %struct.node** %root.addr, align 2
  %item = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 0
  %10 = load i16, i16* %item, align 2
  %11 = load i16*, i16** %arr.addr, align 2
  %12 = load i16*, i16** %idx.addr, align 2
  %13 = load i16, i16* %12, align 2
  %arrayidx = getelementptr inbounds i16, i16* %11, i16 %13
  store i16 %10, i16* %arrayidx, align 2
  %14 = load i16*, i16** %idx.addr, align 2
  %15 = load i16, i16* %14, align 2
  %add = add nsw i16 %15, 1
  %16 = load i16*, i16** %idx.addr, align 2
  store i16 %add, i16* %16, align 2
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local %struct.node* @create(%struct.node* %tree, i16* %idx, i16 %value) #0 {
entry:
  %tree.addr = alloca %struct.node*, align 2
  %idx.addr = alloca i16*, align 2
  %value.addr = alloca i16, align 2
  %loc = alloca i16, align 2
  store %struct.node* %tree, %struct.node** %tree.addr, align 2
  store i16* %idx, i16** %idx.addr, align 2
  store i16 %value, i16* %value.addr, align 2
  %0 = load i16*, i16** %idx.addr, align 2
  %1 = load i16, i16* %0, align 2
  store i16 %1, i16* %loc, align 2
  %2 = load i16*, i16** %idx.addr, align 2
  %3 = load i16, i16* %2, align 2
  %add = add nsw i16 %3, 1
  %4 = load i16*, i16** %idx.addr, align 2
  store i16 %add, i16* %4, align 2
  %5 = load i16, i16* %value.addr, align 2
  %6 = load %struct.node*, %struct.node** %tree.addr, align 2
  %7 = load i16, i16* %loc, align 2
  %arrayidx = getelementptr inbounds %struct.node, %struct.node* %6, i16 %7
  %item = getelementptr inbounds %struct.node, %struct.node* %arrayidx, i32 0, i32 0
  store i16 %5, i16* %item, align 2
  %8 = load %struct.node*, %struct.node** %tree.addr, align 2
  %9 = load i16, i16* %loc, align 2
  %arrayidx1 = getelementptr inbounds %struct.node, %struct.node* %8, i16 %9
  %left = getelementptr inbounds %struct.node, %struct.node* %arrayidx1, i32 0, i32 1
  store %struct.node* null, %struct.node** %left, align 2
  %10 = load %struct.node*, %struct.node** %tree.addr, align 2
  %11 = load i16, i16* %loc, align 2
  %arrayidx2 = getelementptr inbounds %struct.node, %struct.node* %10, i16 %11
  %right = getelementptr inbounds %struct.node, %struct.node* %arrayidx2, i32 0, i32 2
  store %struct.node* null, %struct.node** %right, align 2
  %12 = load %struct.node*, %struct.node** %tree.addr, align 2
  %13 = load i16, i16* %loc, align 2
  %arrayidx3 = getelementptr inbounds %struct.node, %struct.node* %12, i16 %13
  ret %struct.node* %arrayidx3
}

; Function Attrs: noinline nounwind optnone
define dso_local void @insertLeft(%struct.node* %root, %struct.node* %child) #0 {
entry:
  %root.addr = alloca %struct.node*, align 2
  %child.addr = alloca %struct.node*, align 2
  store %struct.node* %root, %struct.node** %root.addr, align 2
  store %struct.node* %child, %struct.node** %child.addr, align 2
  %0 = load %struct.node*, %struct.node** %child.addr, align 2
  %1 = load %struct.node*, %struct.node** %root.addr, align 2
  %left = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 1
  store %struct.node* %0, %struct.node** %left, align 2
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @insertRight(%struct.node* %root, %struct.node* %child) #0 {
entry:
  %root.addr = alloca %struct.node*, align 2
  %child.addr = alloca %struct.node*, align 2
  store %struct.node* %root, %struct.node** %root.addr, align 2
  store %struct.node* %child, %struct.node** %child.addr, align 2
  %0 = load %struct.node*, %struct.node** %child.addr, align 2
  %1 = load %struct.node*, %struct.node** %root.addr, align 2
  %right = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 2
  store %struct.node* %0, %struct.node** %right, align 2
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local i16 @main() #0 {
entry:
  %retval = alloca i16, align 2
  %tree = alloca [5 x %struct.node], align 2
  %idx = alloca i16*, align 2
  %root = alloca %struct.node*, align 2
  %in_arr = alloca [5 x i16], align 2
  %in_idx = alloca i16*, align 2
  %pre_arr = alloca [5 x i16], align 2
  %pre_idx = alloca i16*, align 2
  %post_arr = alloca [5 x i16], align 2
  %post_idx = alloca i16*, align 2
  store i16 0, i16* %retval, align 2
  store i16* null, i16** %idx, align 2
  %arraydecay = getelementptr inbounds [5 x %struct.node], [5 x %struct.node]* %tree, i16 0, i16 0
  %0 = load i16*, i16** %idx, align 2
  %call = call %struct.node* @create(%struct.node* %arraydecay, i16* %0, i16 17)
  store %struct.node* %call, %struct.node** %root, align 2
  %1 = load %struct.node*, %struct.node** %root, align 2
  %arraydecay1 = getelementptr inbounds [5 x %struct.node], [5 x %struct.node]* %tree, i16 0, i16 0
  %2 = load i16*, i16** %idx, align 2
  %call2 = call %struct.node* @create(%struct.node* %arraydecay1, i16* %2, i16 21)
  call void @insertLeft(%struct.node* %1, %struct.node* %call2)
  %3 = load %struct.node*, %struct.node** %root, align 2
  %arraydecay3 = getelementptr inbounds [5 x %struct.node], [5 x %struct.node]* %tree, i16 0, i16 0
  %4 = load i16*, i16** %idx, align 2
  %call4 = call %struct.node* @create(%struct.node* %arraydecay3, i16* %4, i16 23)
  call void @insertRight(%struct.node* %3, %struct.node* %call4)
  %5 = load %struct.node*, %struct.node** %root, align 2
  %left = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 1
  %6 = load %struct.node*, %struct.node** %left, align 2
  %arraydecay5 = getelementptr inbounds [5 x %struct.node], [5 x %struct.node]* %tree, i16 0, i16 0
  %7 = load i16*, i16** %idx, align 2
  %call6 = call %struct.node* @create(%struct.node* %arraydecay5, i16* %7, i16 29)
  call void @insertRight(%struct.node* %6, %struct.node* %call6)
  %8 = load %struct.node*, %struct.node** %root, align 2
  %right = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 2
  %9 = load %struct.node*, %struct.node** %right, align 2
  %arraydecay7 = getelementptr inbounds [5 x %struct.node], [5 x %struct.node]* %tree, i16 0, i16 0
  %10 = load i16*, i16** %idx, align 2
  %call8 = call %struct.node* @create(%struct.node* %arraydecay7, i16* %10, i16 41)
  call void @insertLeft(%struct.node* %9, %struct.node* %call8)
  store i16* null, i16** %in_idx, align 2
  %11 = load %struct.node*, %struct.node** %root, align 2
  %arraydecay9 = getelementptr inbounds [5 x i16], [5 x i16]* %in_arr, i16 0, i16 0
  %12 = load i16*, i16** %in_idx, align 2
  call void @inorderTraversal(%struct.node* %11, i16* %arraydecay9, i16* %12)
  store i16* null, i16** %pre_idx, align 2
  %13 = load %struct.node*, %struct.node** %root, align 2
  %arraydecay10 = getelementptr inbounds [5 x i16], [5 x i16]* %pre_arr, i16 0, i16 0
  %14 = load i16*, i16** %pre_idx, align 2
  call void @preorderTraversal(%struct.node* %13, i16* %arraydecay10, i16* %14)
  store i16* null, i16** %post_idx, align 2
  %15 = load %struct.node*, %struct.node** %root, align 2
  %arraydecay11 = getelementptr inbounds [5 x i16], [5 x i16]* %post_arr, i16 0, i16 0
  %16 = load i16*, i16** %post_idx, align 2
  call void @postorderTraversal(%struct.node* %15, i16* %arraydecay11, i16* %16)
  ret i16 0
}

attributes #0 = { noinline nounwind optnone "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{!"clang version 12.0.1 (https://github.com/ak821/SAYAC-Compiler.git 76547d3e98c59a447f55dea8242812e7e96fef9e)"}
