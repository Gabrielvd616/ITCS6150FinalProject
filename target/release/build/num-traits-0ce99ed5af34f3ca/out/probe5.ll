; ModuleID = 'probe5.51445aacc84240ee-cgu.0'
source_filename = "probe5.51445aacc84240ee-cgu.0"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

@alloc_7971f3465817cc18ad816e3dbdd7087a = private unnamed_addr constant [7 x i8] c"<anon>\00", align 1
@alloc_b9b30cce65897495d8b789b323503a84 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_7971f3465817cc18ad816e3dbdd7087a, [16 x i8] c"\07\00\00\00\00\00\00\00\01\00\00\00\1F\00\00\00" }>, align 8

; probe5::probe
; Function Attrs: uwtable
define void @_ZN6probe55probe17hb7fe51dff08eb63bE() unnamed_addr #0 {
start:
  ret void
}

; core::panicking::panic_const::panic_const_div_by_zero
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h770dd699cce6ca92E(ptr align 8) unnamed_addr #1

attributes #0 = { uwtable "target-cpu"="x86-64" "target-features"="+cx16,+sse3,+sahf" }
attributes #1 = { cold noinline noreturn uwtable "target-cpu"="x86-64" "target-features"="+cx16,+sse3,+sahf" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{!"rustc version 1.89.0 (29483883e 2025-08-04)"}
