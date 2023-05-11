; ModuleID = 'test.bc'
source_filename = "test.c"
target datalayout = "e-m:e-p:16:16-i32:16-a:0:16-n16-S16"
target triple = "sayac"

@__const.main.ch = private unnamed_addr constant [2 x i8] c"12", align 1
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1

; Function Attrs: noinline nounwind optnone
define dso_local i16 @main() #0 {
entry:
  %ch = alloca [2 x i8], align 1
  %c = alloca i8*, align 2
  %0 = bitcast [2 x i8]* %ch to i8*
  call void @llvm.memcpy.p0i8.p0i8.i16(i8* align 1 %0, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.main.ch, i32 0, i32 0), i16 2, i1 false)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i16 0, i16 0), i8** %c, align 2
  ret i16 0
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i16(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i16, i1 immarg) #1

attributes #0 = { noinline nounwind optnone "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{!"clang version 12.0.1 (https://github.com/ak821/SAYAC-Compiler.git ff29de01d31f9e9ef73e64686958f20eb4f574eb)"}
