; ModuleID = 'bfs.bc'
source_filename = "bfs.c"
target datalayout = "e-m:e-p:16:16-i32:16-a:0:16-n16-S16"
target triple = "sayac"

%struct.Graph = type { i16, [5 x [5 x i16]] }

; Function Attrs: noinline nounwind optnone
define dso_local void @addEdge(%struct.Graph* %g, i16 %v, i16 %w) #0 {
entry:
  %g.addr = alloca %struct.Graph*, align 2
  %v.addr = alloca i16, align 2
  %w.addr = alloca i16, align 2
  store %struct.Graph* %g, %struct.Graph** %g.addr, align 2
  store i16 %v, i16* %v.addr, align 2
  store i16 %w, i16* %w.addr, align 2
  %0 = load %struct.Graph*, %struct.Graph** %g.addr, align 2
  %adj = getelementptr inbounds %struct.Graph, %struct.Graph* %0, i32 0, i32 1
  %1 = load i16, i16* %v.addr, align 2
  %arrayidx = getelementptr inbounds [5 x [5 x i16]], [5 x [5 x i16]]* %adj, i16 0, i16 %1
  %2 = load i16, i16* %w.addr, align 2
  %arrayidx1 = getelementptr inbounds [5 x i16], [5 x i16]* %arrayidx, i16 0, i16 %2
  store i16 1, i16* %arrayidx1, align 2
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @BFS(%struct.Graph* %g, i16 %s, i16* %bfs_order) #0 {
entry:
  %g.addr = alloca %struct.Graph*, align 2
  %s.addr = alloca i16, align 2
  %bfs_order.addr = alloca i16*, align 2
  %visited = alloca [5 x i16], align 2
  %i = alloca i16, align 2
  %queue = alloca [5 x i16], align 2
  %front = alloca i16, align 2
  %rear = alloca i16, align 2
  %idx = alloca i16, align 2
  %adjacent = alloca i16, align 2
  store %struct.Graph* %g, %struct.Graph** %g.addr, align 2
  store i16 %s, i16* %s.addr, align 2
  store i16* %bfs_order, i16** %bfs_order.addr, align 2
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16, i16* %i, align 2
  %1 = load %struct.Graph*, %struct.Graph** %g.addr, align 2
  %V = getelementptr inbounds %struct.Graph, %struct.Graph* %1, i32 0, i32 0
  %2 = load i16, i16* %V, align 2
  %cmp = icmp slt i16 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i16, i16* %i, align 2
  %arrayidx = getelementptr inbounds [5 x i16], [5 x i16]* %visited, i16 0, i16 %3
  store i16 0, i16* %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i16, i16* %i, align 2
  %inc = add nsw i16 %4, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond, !llvm.loop !2

for.end:                                          ; preds = %for.cond
  store i16 0, i16* %front, align 2
  store i16 0, i16* %rear, align 2
  %5 = load i16, i16* %s.addr, align 2
  %arrayidx1 = getelementptr inbounds [5 x i16], [5 x i16]* %visited, i16 0, i16 %5
  store i16 1, i16* %arrayidx1, align 2
  %6 = load i16, i16* %s.addr, align 2
  %7 = load i16, i16* %rear, align 2
  %inc2 = add nsw i16 %7, 1
  store i16 %inc2, i16* %rear, align 2
  %arrayidx3 = getelementptr inbounds [5 x i16], [5 x i16]* %queue, i16 0, i16 %7
  store i16 %6, i16* %arrayidx3, align 2
  store i16 0, i16* %idx, align 2
  br label %while.cond

while.cond:                                       ; preds = %for.end22, %for.end
  %8 = load i16, i16* %front, align 2
  %9 = load i16, i16* %rear, align 2
  %cmp4 = icmp ne i16 %8, %9
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i16, i16* %front, align 2
  %inc5 = add nsw i16 %10, 1
  store i16 %inc5, i16* %front, align 2
  %arrayidx6 = getelementptr inbounds [5 x i16], [5 x i16]* %queue, i16 0, i16 %10
  %11 = load i16, i16* %arrayidx6, align 2
  store i16 %11, i16* %s.addr, align 2
  %12 = load i16, i16* %s.addr, align 2
  %13 = load i16*, i16** %bfs_order.addr, align 2
  %14 = load i16, i16* %idx, align 2
  %arrayidx7 = getelementptr inbounds i16, i16* %13, i16 %14
  store i16 %12, i16* %arrayidx7, align 2
  %15 = load i16, i16* %idx, align 2
  %inc8 = add nsw i16 %15, 1
  store i16 %inc8, i16* %idx, align 2
  store i16 0, i16* %adjacent, align 2
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc20, %while.body
  %16 = load i16, i16* %adjacent, align 2
  %17 = load %struct.Graph*, %struct.Graph** %g.addr, align 2
  %V10 = getelementptr inbounds %struct.Graph, %struct.Graph* %17, i32 0, i32 0
  %18 = load i16, i16* %V10, align 2
  %cmp11 = icmp slt i16 %16, %18
  br i1 %cmp11, label %for.body12, label %for.end22

for.body12:                                       ; preds = %for.cond9
  %19 = load %struct.Graph*, %struct.Graph** %g.addr, align 2
  %adj = getelementptr inbounds %struct.Graph, %struct.Graph* %19, i32 0, i32 1
  %20 = load i16, i16* %s.addr, align 2
  %arrayidx13 = getelementptr inbounds [5 x [5 x i16]], [5 x [5 x i16]]* %adj, i16 0, i16 %20
  %21 = load i16, i16* %adjacent, align 2
  %arrayidx14 = getelementptr inbounds [5 x i16], [5 x i16]* %arrayidx13, i16 0, i16 %21
  %22 = load i16, i16* %arrayidx14, align 2
  %tobool = icmp ne i16 %22, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body12
  %23 = load i16, i16* %adjacent, align 2
  %arrayidx15 = getelementptr inbounds [5 x i16], [5 x i16]* %visited, i16 0, i16 %23
  %24 = load i16, i16* %arrayidx15, align 2
  %tobool16 = icmp ne i16 %24, 0
  br i1 %tobool16, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %25 = load i16, i16* %adjacent, align 2
  %arrayidx17 = getelementptr inbounds [5 x i16], [5 x i16]* %visited, i16 0, i16 %25
  store i16 1, i16* %arrayidx17, align 2
  %26 = load i16, i16* %adjacent, align 2
  %27 = load i16, i16* %rear, align 2
  %inc18 = add nsw i16 %27, 1
  store i16 %inc18, i16* %rear, align 2
  %arrayidx19 = getelementptr inbounds [5 x i16], [5 x i16]* %queue, i16 0, i16 %27
  store i16 %26, i16* %arrayidx19, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body12
  br label %for.inc20

for.inc20:                                        ; preds = %if.end
  %28 = load i16, i16* %adjacent, align 2
  %inc21 = add nsw i16 %28, 1
  store i16 %inc21, i16* %adjacent, align 2
  br label %for.cond9, !llvm.loop !4

for.end22:                                        ; preds = %for.cond9
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local i16 @main() #0 {
entry:
  %retval = alloca i16, align 2
  %g = alloca %struct.Graph, align 2
  %bfs_order = alloca [5 x i16], align 2
  store i16 0, i16* %retval, align 2
  %V = getelementptr inbounds %struct.Graph, %struct.Graph* %g, i32 0, i32 0
  store i16 5, i16* %V, align 2
  call void @addEdge(%struct.Graph* %g, i16 0, i16 1)
  call void @addEdge(%struct.Graph* %g, i16 0, i16 2)
  call void @addEdge(%struct.Graph* %g, i16 1, i16 2)
  call void @addEdge(%struct.Graph* %g, i16 2, i16 0)
  call void @addEdge(%struct.Graph* %g, i16 2, i16 4)
  call void @addEdge(%struct.Graph* %g, i16 3, i16 3)
  %arraydecay = getelementptr inbounds [5 x i16], [5 x i16]* %bfs_order, i16 0, i16 0
  call void @BFS(%struct.Graph* %g, i16 2, i16* %arraydecay)
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
