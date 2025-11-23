; ModuleID = 'probe1.afb44c0e9780130e-cgu.0'
source_filename = "probe1.afb44c0e9780130e-cgu.0"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"core::fmt::rt::Argument<'_>" = type { %"core::fmt::rt::ArgumentType<'_>" }
%"core::fmt::rt::ArgumentType<'_>" = type { ptr, [1 x i64] }

@anon.e309b0091a05b3511db99e97da9d941d.0 = private unnamed_addr constant <{ [8 x i8], [8 x i8] }> <{ [8 x i8] zeroinitializer, [8 x i8] undef }>, align 8
@alloc_db07ae5a9ce650d9b7cc970d048e6f0c = private unnamed_addr constant [186 x i8] c"unsafe precondition(s) violated: usize::unchecked_mul cannot overflow\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_fad0cd83b7d1858a846a172eb260e593 = private unnamed_addr constant [42 x i8] c"is_aligned_to: align is not a power-of-two", align 1
@alloc_e92e94d0ff530782b571cfd99ec66aef = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_fad0cd83b7d1858a846a172eb260e593, [8 x i8] c"*\00\00\00\00\00\00\00" }>, align 8
@alloc_3236b51b3c408fc8ee14f71c3bbee7d9 = private unnamed_addr constant [82 x i8] c"/rustc/29483883eed69d5fb4db01964cdf2af4d86e9cb2\\library\\core\\src\\ptr\\const_ptr.rs\00", align 1
@alloc_73c96d63ab00c43d552394ddc40e7dcf = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_3236b51b3c408fc8ee14f71c3bbee7d9, [16 x i8] c"R\00\00\00\00\00\00\00\92\05\00\00\0D\00\00\00" }>, align 8
@alloc_bd3468a7b96187f70c1ce98a3e7a63bf = private unnamed_addr constant [283 x i8] c"unsafe precondition(s) violated: ptr::copy_nonoverlapping requires that both pointer arguments are aligned and non-null and the specified memory ranges do not overlap\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_560a59ed819b9d9a5841f6e731c4c8e5 = private unnamed_addr constant [210 x i8] c"unsafe precondition(s) violated: NonNull::new_unchecked requires that the pointer is non-null\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_64e308ef4babfeb8b6220184de794a17 = private unnamed_addr constant [221 x i8] c"unsafe precondition(s) violated: hint::assert_unchecked must never be called when the condition is false\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_1be5ea12ba708d9a11b6e93a7d387a75 = private unnamed_addr constant [281 x i8] c"unsafe precondition(s) violated: Layout::from_size_align_unchecked requires that align is a power of 2 and the rounded-up allocation size does not exceed isize::MAX\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_38b7fde96b4b599c18f5818742046b8e = private unnamed_addr constant [81 x i8] c"/rustc/29483883eed69d5fb4db01964cdf2af4d86e9cb2\\library\\core\\src\\alloc\\layout.rs\00", align 1
@alloc_b0c509cdcd7655e2d8fff4283800a34b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_38b7fde96b4b599c18f5818742046b8e, [16 x i8] c"Q\00\00\00\00\00\00\00V\01\00\00\12\00\00\00" }>, align 8
@alloc_763310d78c99c2c1ad3f8a9821e942f3 = private unnamed_addr constant [61 x i8] c"is_nonoverlapping: `size_of::<T>() * count` overflows a usize", align 1
@alloc_5ed1de88b840c5cdea3b355c5d0b02ce = private unnamed_addr constant [81 x i8] c"/rustc/29483883eed69d5fb4db01964cdf2af4d86e9cb2\\library\\core\\src\\ptr\\non_null.rs\00", align 1
@alloc_485c78d921bfbda7ba472cfd2839a92c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_5ed1de88b840c5cdea3b355c5d0b02ce, [16 x i8] c"Q\00\00\00\00\00\00\00l\05\00\00\12\00\00\00" }>, align 8
@alloc_fd67cd5e7b0161f58af8a5290684f28a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_5ed1de88b840c5cdea3b355c5d0b02ce, [16 x i8] c"Q\00\00\00\00\00\00\00\09\01\00\00\1B\00\00\00" }>, align 8
@alloc_4d83dec4d5b9af836947d5a6a12df9f9 = private unnamed_addr constant [81 x i8] c"/rustc/29483883eed69d5fb4db01964cdf2af4d86e9cb2\\library\\alloc\\src\\raw_vec\\mod.rs\00", align 1
@alloc_b965cc126472437fabb70d6dba849b74 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_4d83dec4d5b9af836947d5a6a12df9f9, [16 x i8] c"Q\00\00\00\00\00\00\00\17\02\00\005\00\00\00" }>, align 8
@alloc_d6f1473f5077a494ff4f19f5929a0ece = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_4d83dec4d5b9af836947d5a6a12df9f9, [16 x i8] c"Q\00\00\00\00\00\00\00\18\02\00\00\1E\00\00\00" }>, align 8
@alloc_f68c5ca0d8de251e95e8810bb46fb5a4 = private unnamed_addr constant [75 x i8] c"/rustc/29483883eed69d5fb4db01964cdf2af4d86e9cb2\\library\\alloc\\src\\slice.rs\00", align 1
@alloc_31508227edbe7da887593416ee4dda13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f68c5ca0d8de251e95e8810bb46fb5a4, [16 x i8] c"K\00\00\00\00\00\00\00\C1\01\00\00\1D\00\00\00" }>, align 8
@alloc_0bc6f8aab27fea7352fe1903aa941372 = private unnamed_addr constant [76 x i8] c"/rustc/29483883eed69d5fb4db01964cdf2af4d86e9cb2\\library\\core\\src\\ptr\\mod.rs\00", align 1
@alloc_9b02f156631fac5803bf5ba989d15e2b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_0bc6f8aab27fea7352fe1903aa941372, [16 x i8] c"L\00\00\00\00\00\00\00\0A\02\00\00\05\00\00\00" }>, align 8
@alloc_53973d2fe29b4adba8bb7390b5678745 = private unnamed_addr constant [8 x i8] zeroinitializer, align 8
@alloc_eab5d04767146d7d9b93b60d28ef530a = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer }>, align 8

; core::intrinsics::cold_path
; Function Attrs: cold nounwind uwtable
define internal void @_ZN4core10intrinsics9cold_path17h926a1bb2b94aa480E() unnamed_addr #0 {
start:
  ret void
}

; core::fmt::rt::<impl core::fmt::Arguments>::new_v1
; Function Attrs: inlinehint uwtable
define void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117h301da1b53a032bdfE"(ptr sret([48 x i8]) align 8 %_0, ptr align 8 %pieces, ptr align 8 %args) unnamed_addr #1 {
start:
  store ptr %pieces, ptr %_0, align 8
  %0 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 1, ptr %0, align 8
  %1 = load ptr, ptr @anon.e309b0091a05b3511db99e97da9d941d.0, align 8
  %2 = load i64, ptr getelementptr inbounds (i8, ptr @anon.e309b0091a05b3511db99e97da9d941d.0, i64 8), align 8
  %3 = getelementptr inbounds i8, ptr %_0, i64 32
  store ptr %1, ptr %3, align 8
  %4 = getelementptr inbounds i8, ptr %3, i64 8
  store i64 %2, ptr %4, align 8
  %5 = getelementptr inbounds i8, ptr %_0, i64 16
  store ptr %args, ptr %5, align 8
  %6 = getelementptr inbounds i8, ptr %5, i64 8
  store i64 1, ptr %6, align 8
  ret void
}

; core::fmt::rt::Argument::new_lower_exp
; Function Attrs: inlinehint uwtable
define void @_ZN4core3fmt2rt8Argument13new_lower_exp17he8bc08925f0f5bebE(ptr sret([16 x i8]) align 8 %_0, ptr align 8 %x) unnamed_addr #1 {
start:
  %_2 = alloca [16 x i8], align 8
  store ptr %x, ptr %_2, align 8
  %0 = getelementptr inbounds i8, ptr %_2, i64 8
  store ptr @"_ZN4core3fmt3num3imp55_$LT$impl$u20$core..fmt..LowerExp$u20$for$u20$isize$GT$3fmt17h65e65d578443e83dE", ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %_2, i64 16, i1 false)
  ret void
}

; core::num::<impl usize>::unchecked_mul::precondition_check
; Function Attrs: inlinehint nounwind uwtable
define internal void @"_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_mul18precondition_check17h77eed13de9a78894E"(i64 %lhs, i64 %rhs, ptr align 8 %0) unnamed_addr #2 {
start:
  %_6 = alloca [16 x i8], align 8
  %_4 = alloca [48 x i8], align 8
  %1 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %lhs, i64 %rhs)
  %_8.0 = extractvalue { i64, i1 } %1, 0
  %_8.1 = extractvalue { i64, i1 } %1, 1
  br i1 %_8.1, label %bb1, label %bb2

bb2:                                              ; preds = %start
  ret void

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds nuw { ptr, i64 }, ptr %_6, i64 0
  store ptr @alloc_db07ae5a9ce650d9b7cc970d048e6f0c, ptr %2, align 8
  %3 = getelementptr inbounds i8, ptr %2, i64 8
  store i64 186, ptr %3, align 8
  store ptr %_6, ptr %_4, align 8
  %4 = getelementptr inbounds i8, ptr %_4, i64 8
  store i64 1, ptr %4, align 8
  %5 = load ptr, ptr @anon.e309b0091a05b3511db99e97da9d941d.0, align 8
  %6 = load i64, ptr getelementptr inbounds (i8, ptr @anon.e309b0091a05b3511db99e97da9d941d.0, i64 8), align 8
  %7 = getelementptr inbounds i8, ptr %_4, i64 32
  store ptr %5, ptr %7, align 8
  %8 = getelementptr inbounds i8, ptr %7, i64 8
  store i64 %6, ptr %8, align 8
  %9 = getelementptr inbounds i8, ptr %_4, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %9, align 8
  %10 = getelementptr inbounds i8, ptr %9, i64 8
  store i64 0, ptr %10, align 8
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17h967cb19ee376c79aE(ptr align 8 %_4, i1 zeroext false, ptr align 8 %0) #15
  unreachable
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3ops8function6FnOnce9call_once17h634d671db52bde72E(ptr sret([24 x i8]) align 8 %_0, ptr align 1 %0, i64 %1) unnamed_addr #1 {
start:
  %_2 = alloca [16 x i8], align 8
  store ptr %0, ptr %_2, align 8
  %2 = getelementptr inbounds i8, ptr %_2, i64 8
  store i64 %1, ptr %2, align 8
  %3 = load ptr, ptr %_2, align 8
  %4 = getelementptr inbounds i8, ptr %_2, i64 8
  %5 = load i64, ptr %4, align 8
; call alloc::str::<impl alloc::borrow::ToOwned for str>::to_owned
  call void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17hc6a52330b2a06b41E"(ptr sret([24 x i8]) align 8 %_0, ptr align 1 %3, i64 %5)
  ret void
}

; core::ptr::copy_nonoverlapping::precondition_check
; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17he20b3870ecc13628E(ptr %src, ptr %dst, i64 %size, i64 %align, i64 %count, ptr align 8 %0) unnamed_addr #2 personality ptr @__CxxFrameHandler3 {
start:
  %1 = alloca [4 x i8], align 4
  %_29 = alloca [48 x i8], align 8
  %_24 = alloca [4 x i8], align 4
  %_23 = alloca [8 x i8], align 8
  %_22 = alloca [8 x i8], align 8
  %_21 = alloca [8 x i8], align 8
  %_20 = alloca [48 x i8], align 8
  %_17 = alloca [16 x i8], align 8
  %_15 = alloca [48 x i8], align 8
  %is_zst = alloca [1 x i8], align 1
  %align1 = alloca [8 x i8], align 8
  %zero_size = alloca [1 x i8], align 1
  %2 = icmp eq i64 %count, 0
  br i1 %2, label %bb1, label %bb2

bb1:                                              ; preds = %start
  store i8 1, ptr %zero_size, align 1
  store i64 %align, ptr %align1, align 8
  %3 = load i8, ptr %zero_size, align 1
  %4 = trunc nuw i8 %3 to i1
  %5 = zext i1 %4 to i8
  store i8 %5, ptr %is_zst, align 1
  %6 = call i64 @llvm.ctpop.i64(i64 %align)
  %7 = trunc i64 %6 to i32
  store i32 %7, ptr %_24, align 4
  %8 = load i32, ptr %_24, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %bb26, label %bb15

bb2:                                              ; preds = %start
  %10 = icmp eq i64 %size, 0
  %11 = zext i1 %10 to i8
  store i8 %11, ptr %zero_size, align 1
  store i64 %align, ptr %align1, align 8
  %12 = load i8, ptr %zero_size, align 1
  %13 = trunc nuw i8 %12 to i1
  %14 = zext i1 %13 to i8
  store i8 %14, ptr %is_zst, align 1
  %15 = call i64 @llvm.ctpop.i64(i64 %align)
  %16 = trunc i64 %15 to i32
  store i32 %16, ptr %_24, align 4
  %17 = load i32, ptr %_24, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %bb14, label %bb15

bb26:                                             ; preds = %bb1
  %19 = ptrtoint ptr %src to i64
  store i64 %19, ptr %_22, align 8
  %20 = sub i64 %align, 1
  store i64 %20, ptr %_23, align 8
  %21 = load i64, ptr %_22, align 8
  %22 = load i64, ptr %_23, align 8
  %23 = and i64 %21, %22
  store i64 %23, ptr %_21, align 8
  %24 = load i64, ptr %_21, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %bb27, label %bb11

bb15:                                             ; preds = %bb2, %bb1
  store ptr @alloc_e92e94d0ff530782b571cfd99ec66aef, ptr %_20, align 8
  %26 = getelementptr inbounds i8, ptr %_20, i64 8
  store i64 1, ptr %26, align 8
  %27 = load ptr, ptr @anon.e309b0091a05b3511db99e97da9d941d.0, align 8
  %28 = load i64, ptr getelementptr inbounds (i8, ptr @anon.e309b0091a05b3511db99e97da9d941d.0, i64 8), align 8
  %29 = getelementptr inbounds i8, ptr %_20, i64 32
  store ptr %27, ptr %29, align 8
  %30 = getelementptr inbounds i8, ptr %29, i64 8
  store i64 %28, ptr %30, align 8
  %31 = getelementptr inbounds i8, ptr %_20, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %31, align 8
  %32 = getelementptr inbounds i8, ptr %31, i64 8
  store i64 0, ptr %32, align 8
; invoke core::panicking::panic_fmt
  invoke void @_ZN4core9panicking9panic_fmt17hc3fdfcf609de6652E(ptr align 8 %_20, ptr align 8 @alloc_73c96d63ab00c43d552394ddc40e7dcf) #16
          to label %unreachable unwind label %cs_terminate

bb27:                                             ; preds = %bb26
  br label %bb12

bb11:                                             ; preds = %bb14, %bb26
  br label %bb6

bb12:                                             ; preds = %bb10, %bb27
  br label %bb3

bb14:                                             ; preds = %bb2
  %33 = ptrtoint ptr %src to i64
  store i64 %33, ptr %_22, align 8
  %34 = sub i64 %align, 1
  store i64 %34, ptr %_23, align 8
  %35 = load i64, ptr %_22, align 8
  %36 = load i64, ptr %_23, align 8
  %37 = and i64 %35, %36
  store i64 %37, ptr %_21, align 8
  %38 = load i64, ptr %_21, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %bb10, label %bb11

bb10:                                             ; preds = %bb14
  %40 = load i8, ptr %is_zst, align 1
  %41 = trunc nuw i8 %40 to i1
  br i1 %41, label %bb12, label %bb13

bb13:                                             ; preds = %bb10
  %42 = load i64, ptr %_22, align 8
  %_18 = icmp eq i64 %42, 0
  %_8 = xor i1 %_18, true
  br i1 %_8, label %bb3, label %bb6

bb6:                                              ; preds = %bb11, %bb13
  br label %bb7

bb3:                                              ; preds = %bb12, %bb13
  %43 = load i8, ptr %zero_size, align 1
  %is_zst2 = trunc nuw i8 %43 to i1
  %44 = call i64 @llvm.ctpop.i64(i64 %align)
  %45 = trunc i64 %44 to i32
  store i32 %45, ptr %1, align 4
  %_32 = load i32, ptr %1, align 4
  %46 = icmp eq i32 %_32, 1
  br i1 %46, label %bb21, label %bb22

bb21:                                             ; preds = %bb3
  %_31 = ptrtoint ptr %dst to i64
  %47 = load i64, ptr %_23, align 8
  %_30 = and i64 %_31, %47
  %48 = icmp eq i64 %_30, 0
  br i1 %48, label %bb17, label %bb18

bb22:                                             ; preds = %bb3
  store ptr @alloc_e92e94d0ff530782b571cfd99ec66aef, ptr %_29, align 8
  %49 = getelementptr inbounds i8, ptr %_29, i64 8
  store i64 1, ptr %49, align 8
  %50 = load ptr, ptr @anon.e309b0091a05b3511db99e97da9d941d.0, align 8
  %51 = load i64, ptr getelementptr inbounds (i8, ptr @anon.e309b0091a05b3511db99e97da9d941d.0, i64 8), align 8
  %52 = getelementptr inbounds i8, ptr %_29, i64 32
  store ptr %50, ptr %52, align 8
  %53 = getelementptr inbounds i8, ptr %52, i64 8
  store i64 %51, ptr %53, align 8
  %54 = getelementptr inbounds i8, ptr %_29, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %54, align 8
  %55 = getelementptr inbounds i8, ptr %54, i64 8
  store i64 0, ptr %55, align 8
; invoke core::panicking::panic_fmt
  invoke void @_ZN4core9panicking9panic_fmt17hc3fdfcf609de6652E(ptr align 8 %_29, ptr align 8 @alloc_73c96d63ab00c43d552394ddc40e7dcf) #16
          to label %unreachable unwind label %cs_terminate

bb17:                                             ; preds = %bb21
  br i1 %is_zst2, label %bb19, label %bb20

bb18:                                             ; preds = %bb21
  br label %bb5

bb20:                                             ; preds = %bb17
  %_27 = icmp eq i64 %_31, 0
  %_11 = xor i1 %_27, true
  br i1 %_11, label %bb4, label %bb5

bb19:                                             ; preds = %bb17
  br label %bb4

bb5:                                              ; preds = %bb18, %bb20
  br label %bb7

bb4:                                              ; preds = %bb19, %bb20
; invoke core::ub_checks::maybe_is_nonoverlapping::runtime
  %_6 = invoke zeroext i1 @_ZN4core9ub_checks23maybe_is_nonoverlapping7runtime17h42e295b8aefbb769E(ptr %src, ptr %dst, i64 %size, i64 %count)
          to label %bb24 unwind label %cs_terminate

cs_terminate:                                     ; preds = %bb15, %bb22, %bb4
  %catchswitch = catchswitch within none [label %cp_terminate] unwind to caller

cp_terminate:                                     ; preds = %cs_terminate
  %catchpad = catchpad within %catchswitch [ptr null, i32 64, ptr null]
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17h8f2b96e8056bc9b0E() #17 [ "funclet"(token %catchpad) ]
  unreachable

bb24:                                             ; preds = %bb4
  br i1 %_6, label %bb9, label %bb8

bb8:                                              ; preds = %bb7, %bb24
  %56 = getelementptr inbounds nuw { ptr, i64 }, ptr %_17, i64 0
  store ptr @alloc_bd3468a7b96187f70c1ce98a3e7a63bf, ptr %56, align 8
  %57 = getelementptr inbounds i8, ptr %56, i64 8
  store i64 283, ptr %57, align 8
  store ptr %_17, ptr %_15, align 8
  %58 = getelementptr inbounds i8, ptr %_15, i64 8
  store i64 1, ptr %58, align 8
  %59 = load ptr, ptr @anon.e309b0091a05b3511db99e97da9d941d.0, align 8
  %60 = load i64, ptr getelementptr inbounds (i8, ptr @anon.e309b0091a05b3511db99e97da9d941d.0, i64 8), align 8
  %61 = getelementptr inbounds i8, ptr %_15, i64 32
  store ptr %59, ptr %61, align 8
  %62 = getelementptr inbounds i8, ptr %61, i64 8
  store i64 %60, ptr %62, align 8
  %63 = getelementptr inbounds i8, ptr %_15, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %63, align 8
  %64 = getelementptr inbounds i8, ptr %63, i64 8
  store i64 0, ptr %64, align 8
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17h967cb19ee376c79aE(ptr align 8 %_15, i1 zeroext false, ptr align 8 %0) #15
  unreachable

bb9:                                              ; preds = %bb24
  ret void

bb7:                                              ; preds = %bb6, %bb5
  br label %bb8

unreachable:                                      ; preds = %bb15, %bb22
  unreachable
}

; core::ptr::drop_in_place<alloc::string::String>
; Function Attrs: uwtable
define void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he522e65c6bbc41fdE"(ptr align 8 %_1) unnamed_addr #3 {
start:
; call core::ptr::drop_in_place<alloc::vec::Vec<u8>>
  call void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h539046b8ea89756dE"(ptr align 8 %_1)
  ret void
}

; core::ptr::drop_in_place<alloc::vec::Vec<u8>>
; Function Attrs: uwtable
define void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h539046b8ea89756dE"(ptr align 8 %_1) unnamed_addr #3 personality ptr @__CxxFrameHandler3 {
start:
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e1d929fd50b7039E"(ptr align 8 %_1)
          to label %bb4 unwind label %funclet_bb3

bb3:                                              ; preds = %funclet_bb3
; call core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
  call void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hb4f2d0a2f50079afE"(ptr align 8 %_1) #18 [ "funclet"(token %cleanuppad) ]
  cleanupret from %cleanuppad unwind to caller

funclet_bb3:                                      ; preds = %start
  %cleanuppad = cleanuppad within none []
  br label %bb3

bb4:                                              ; preds = %start
; call core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
  call void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hb4f2d0a2f50079afE"(ptr align 8 %_1)
  ret void
}

; core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
; Function Attrs: uwtable
define void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hb4f2d0a2f50079afE"(ptr align 8 %_1) unnamed_addr #3 {
start:
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17head69495fea31553E"(ptr align 8 %_1)
  ret void
}

; core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
; Function Attrs: inlinehint nounwind uwtable
define internal void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hdc61d3835d365ec6E"(ptr %ptr, ptr align 8 %0) unnamed_addr #2 {
start:
  %_5 = alloca [16 x i8], align 8
  %_3 = alloca [48 x i8], align 8
  %_6 = ptrtoint ptr %ptr to i64
  %1 = icmp eq i64 %_6, 0
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds nuw { ptr, i64 }, ptr %_5, i64 0
  store ptr @alloc_560a59ed819b9d9a5841f6e731c4c8e5, ptr %2, align 8
  %3 = getelementptr inbounds i8, ptr %2, i64 8
  store i64 210, ptr %3, align 8
  store ptr %_5, ptr %_3, align 8
  %4 = getelementptr inbounds i8, ptr %_3, i64 8
  store i64 1, ptr %4, align 8
  %5 = load ptr, ptr @anon.e309b0091a05b3511db99e97da9d941d.0, align 8
  %6 = load i64, ptr getelementptr inbounds (i8, ptr @anon.e309b0091a05b3511db99e97da9d941d.0, i64 8), align 8
  %7 = getelementptr inbounds i8, ptr %_3, i64 32
  store ptr %5, ptr %7, align 8
  %8 = getelementptr inbounds i8, ptr %7, i64 8
  store i64 %6, ptr %8, align 8
  %9 = getelementptr inbounds i8, ptr %_3, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %9, align 8
  %10 = getelementptr inbounds i8, ptr %9, i64 8
  store i64 0, ptr %10, align 8
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17h967cb19ee376c79aE(ptr align 8 %_3, i1 zeroext false, ptr align 8 %0) #15
  unreachable

bb2:                                              ; preds = %start
  ret void
}

; core::hint::assert_unchecked::precondition_check
; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZN4core4hint16assert_unchecked18precondition_check17h416bf214d21ca5c5E(i1 zeroext %cond, ptr align 8 %0) unnamed_addr #2 {
start:
  %_5 = alloca [16 x i8], align 8
  %_3 = alloca [48 x i8], align 8
  br i1 %cond, label %bb2, label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds nuw { ptr, i64 }, ptr %_5, i64 0
  store ptr @alloc_64e308ef4babfeb8b6220184de794a17, ptr %1, align 8
  %2 = getelementptr inbounds i8, ptr %1, i64 8
  store i64 221, ptr %2, align 8
  store ptr %_5, ptr %_3, align 8
  %3 = getelementptr inbounds i8, ptr %_3, i64 8
  store i64 1, ptr %3, align 8
  %4 = load ptr, ptr @anon.e309b0091a05b3511db99e97da9d941d.0, align 8
  %5 = load i64, ptr getelementptr inbounds (i8, ptr @anon.e309b0091a05b3511db99e97da9d941d.0, i64 8), align 8
  %6 = getelementptr inbounds i8, ptr %_3, i64 32
  store ptr %4, ptr %6, align 8
  %7 = getelementptr inbounds i8, ptr %6, i64 8
  store i64 %5, ptr %7, align 8
  %8 = getelementptr inbounds i8, ptr %_3, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %8, align 8
  %9 = getelementptr inbounds i8, ptr %8, i64 8
  store i64 0, ptr %9, align 8
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17h967cb19ee376c79aE(ptr align 8 %_3, i1 zeroext false, ptr align 8 %0) #15
  unreachable

bb2:                                              ; preds = %start
  ret void
}

; core::alloc::layout::Layout::repeat_packed
; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout13repeat_packed17h1411f9711280f75cE(ptr align 8 %self, i64 %n) unnamed_addr #1 {
start:
  %_3 = alloca [16 x i8], align 8
  %_0 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %self1 = load i64, ptr %0, align 8
  %1 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %self1, i64 %n)
  %_9.0 = extractvalue { i64, i1 } %1, 0
  %_9.1 = extractvalue { i64, i1 } %1, 1
  br i1 %_9.1, label %bb2, label %bb4

bb4:                                              ; preds = %start
  %2 = getelementptr inbounds i8, ptr %_3, i64 8
  store i64 %_9.0, ptr %2, align 8
  store i64 1, ptr %_3, align 8
  %3 = getelementptr inbounds i8, ptr %_3, i64 8
  %size = load i64, ptr %3, align 8
  %align = load i64, ptr %self, align 8
  %_20 = icmp uge i64 %align, 1
  %_21 = icmp ule i64 %align, -9223372036854775808
  %_22 = and i1 %_20, %_21
  %_15 = sub nuw i64 -9223372036854775808, %align
  %_14 = icmp ugt i64 %size, %_15
  br i1 %_14, label %bb6, label %bb7

bb2:                                              ; preds = %start
  %4 = load i64, ptr @anon.e309b0091a05b3511db99e97da9d941d.0, align 8
  %5 = load i64, ptr getelementptr inbounds (i8, ptr @anon.e309b0091a05b3511db99e97da9d941d.0, i64 8), align 8
  store i64 %4, ptr %_0, align 8
  %6 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %5, ptr %6, align 8
  br label %bb1

bb7:                                              ; preds = %bb4
  store i64 %align, ptr %_0, align 8
  %7 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %size, ptr %7, align 8
  br label %bb5

bb6:                                              ; preds = %bb4
  %8 = load i64, ptr @anon.e309b0091a05b3511db99e97da9d941d.0, align 8
  %9 = load i64, ptr getelementptr inbounds (i8, ptr @anon.e309b0091a05b3511db99e97da9d941d.0, i64 8), align 8
  store i64 %8, ptr %_0, align 8
  %10 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %9, ptr %10, align 8
  br label %bb5

bb5:                                              ; preds = %bb6, %bb7
  br label %bb1

bb1:                                              ; preds = %bb2, %bb5
  %11 = load i64, ptr %_0, align 8
  %12 = getelementptr inbounds i8, ptr %_0, i64 8
  %13 = load i64, ptr %12, align 8
  %14 = insertvalue { i64, i64 } poison, i64 %11, 0
  %15 = insertvalue { i64, i64 } %14, i64 %13, 1
  ret { i64, i64 } %15
}

; core::alloc::layout::Layout::from_size_align_unchecked::precondition_check
; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZN4core5alloc6layout6Layout25from_size_align_unchecked18precondition_check17hcf4843262290193fE(i64 %size, i64 %align, ptr align 8 %0) unnamed_addr #2 personality ptr @__CxxFrameHandler3 {
start:
  %_7 = alloca [16 x i8], align 8
  %_5 = alloca [48 x i8], align 8
; invoke core::alloc::layout::Layout::is_size_align_valid
  %_3 = invoke zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h404c0a2962f1f594E(i64 %size, i64 %align)
          to label %bb1 unwind label %cs_terminate

cs_terminate:                                     ; preds = %start
  %catchswitch = catchswitch within none [label %cp_terminate] unwind to caller

cp_terminate:                                     ; preds = %cs_terminate
  %catchpad = catchpad within %catchswitch [ptr null, i32 64, ptr null]
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17h8f2b96e8056bc9b0E() #17 [ "funclet"(token %catchpad) ]
  unreachable

bb1:                                              ; preds = %start
  br i1 %_3, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  %1 = getelementptr inbounds nuw { ptr, i64 }, ptr %_7, i64 0
  store ptr @alloc_1be5ea12ba708d9a11b6e93a7d387a75, ptr %1, align 8
  %2 = getelementptr inbounds i8, ptr %1, i64 8
  store i64 281, ptr %2, align 8
  store ptr %_7, ptr %_5, align 8
  %3 = getelementptr inbounds i8, ptr %_5, i64 8
  store i64 1, ptr %3, align 8
  %4 = load ptr, ptr @anon.e309b0091a05b3511db99e97da9d941d.0, align 8
  %5 = load i64, ptr getelementptr inbounds (i8, ptr @anon.e309b0091a05b3511db99e97da9d941d.0, i64 8), align 8
  %6 = getelementptr inbounds i8, ptr %_5, i64 32
  store ptr %4, ptr %6, align 8
  %7 = getelementptr inbounds i8, ptr %6, i64 8
  store i64 %5, ptr %7, align 8
  %8 = getelementptr inbounds i8, ptr %_5, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %8, align 8
  %9 = getelementptr inbounds i8, ptr %8, i64 8
  store i64 0, ptr %9, align 8
; call core::panicking::panic_nounwind_fmt
  call void @_ZN4core9panicking18panic_nounwind_fmt17h967cb19ee376c79aE(ptr align 8 %_5, i1 zeroext false, ptr align 8 %0) #15
  unreachable

bb2:                                              ; preds = %bb1
  ret void
}

; core::alloc::layout::Layout::repeat
; Function Attrs: inlinehint uwtable
define internal void @_ZN4core5alloc6layout6Layout6repeat17h782d4d975004fcdbE(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %self, i64 %n) unnamed_addr #1 {
start:
  %_8 = alloca [24 x i8], align 8
  %_4 = alloca [16 x i8], align 8
  %padded = alloca [16 x i8], align 8
  %align = load i64, ptr %self, align 8
  %_19 = icmp uge i64 %align, 1
  %_20 = icmp ule i64 %align, -9223372036854775808
  %_21 = and i1 %_19, %_20
  %_12 = sub nuw i64 %align, 1
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %_15 = load i64, ptr %0, align 8
  %_14 = add nuw i64 %_15, %_12
  %_16 = xor i64 %_12, -1
  %new_size = and i64 %_14, %_16
  br label %bb5

bb5:                                              ; preds = %start
; call core::alloc::layout::Layout::from_size_align_unchecked::precondition_check
  call void @_ZN4core5alloc6layout6Layout25from_size_align_unchecked18precondition_check17hcf4843262290193fE(i64 %new_size, i64 %align, ptr align 8 @alloc_b0c509cdcd7655e2d8fff4283800a34b) #19
  br label %bb6

bb6:                                              ; preds = %bb5
  %1 = getelementptr inbounds i8, ptr %padded, i64 8
  store i64 %new_size, ptr %1, align 8
  store i64 %align, ptr %padded, align 8
; call core::alloc::layout::Layout::repeat_packed
  %2 = call { i64, i64 } @_ZN4core5alloc6layout6Layout13repeat_packed17h1411f9711280f75cE(ptr align 8 %padded, i64 %n)
  %3 = extractvalue { i64, i64 } %2, 0
  %4 = extractvalue { i64, i64 } %2, 1
  store i64 %3, ptr %_4, align 8
  %5 = getelementptr inbounds i8, ptr %_4, i64 8
  store i64 %4, ptr %5, align 8
  %6 = load i64, ptr %_4, align 8
  %7 = getelementptr inbounds i8, ptr %_4, i64 8
  %8 = load i64, ptr %7, align 8
  %9 = icmp eq i64 %6, 0
  %_6 = select i1 %9, i64 1, i64 0
  %10 = trunc nuw i64 %_6 to i1
  br i1 %10, label %bb3, label %bb2

bb3:                                              ; preds = %bb6
  store i64 0, ptr %_0, align 8
  br label %bb4

bb2:                                              ; preds = %bb6
  %repeated.0 = load i64, ptr %_4, align 8
  %11 = getelementptr inbounds i8, ptr %_4, i64 8
  %repeated.1 = load i64, ptr %11, align 8
  store i64 %repeated.0, ptr %_8, align 8
  %12 = getelementptr inbounds i8, ptr %_8, i64 8
  store i64 %repeated.1, ptr %12, align 8
  %13 = getelementptr inbounds i8, ptr %_8, i64 16
  store i64 %new_size, ptr %13, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %_8, i64 24, i1 false)
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  ret void

bb7:                                              ; No predecessors!
  unreachable
}

; core::option::Option<T>::map_or_else
; Function Attrs: inlinehint uwtable
define void @"_ZN4core6option15Option$LT$T$GT$11map_or_else17hc9891f4af274c3b8E"(ptr sret([24 x i8]) align 8 %_0, ptr align 1 %0, i64 %1, ptr align 8 %default) unnamed_addr #1 personality ptr @__CxxFrameHandler3 {
start:
  %_10 = alloca [1 x i8], align 1
  %_9 = alloca [1 x i8], align 1
  %self = alloca [16 x i8], align 8
  store ptr %0, ptr %self, align 8
  %2 = getelementptr inbounds i8, ptr %self, i64 8
  store i64 %1, ptr %2, align 8
  store i8 1, ptr %_10, align 1
  store i8 1, ptr %_9, align 1
  %3 = load ptr, ptr %self, align 8
  %4 = getelementptr inbounds i8, ptr %self, i64 8
  %5 = load i64, ptr %4, align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = icmp eq i64 %6, 0
  %_4 = select i1 %7, i64 0, i64 1
  %8 = trunc nuw i64 %_4 to i1
  br i1 %8, label %bb3, label %bb2

bb3:                                              ; preds = %start
  %t.0 = load ptr, ptr %self, align 8
  %9 = getelementptr inbounds i8, ptr %self, i64 8
  %t.1 = load i64, ptr %9, align 8
  store i8 0, ptr %_9, align 1
; invoke core::ops::function::FnOnce::call_once
  invoke void @_ZN4core3ops8function6FnOnce9call_once17h634d671db52bde72E(ptr sret([24 x i8]) align 8 %_0, ptr align 1 %t.0, i64 %t.1)
          to label %bb4 unwind label %funclet_bb11

bb2:                                              ; preds = %start
  store i8 0, ptr %_10, align 1
; invoke alloc::fmt::format::{{closure}}
  invoke void @"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h5124e42aa5a6266fE"(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %default)
          to label %bb5 unwind label %funclet_bb11

bb11:                                             ; preds = %funclet_bb11
  %10 = load i8, ptr %_9, align 1
  %11 = trunc nuw i8 %10 to i1
  br i1 %11, label %bb10, label %bb11_cleanup_trampoline_bb7

funclet_bb11:                                     ; preds = %bb3, %bb2
  %cleanuppad = cleanuppad within none []
  br label %bb11

bb5:                                              ; preds = %bb2
  br label %bb6

bb6:                                              ; preds = %bb9, %bb4, %bb5
  ret void

bb4:                                              ; preds = %bb3
  %12 = load i8, ptr %_10, align 1
  %13 = trunc nuw i8 %12 to i1
  br i1 %13, label %bb9, label %bb6

bb9:                                              ; preds = %bb4
  br label %bb6

bb7:                                              ; preds = %funclet_bb7
  %14 = load i8, ptr %_10, align 1
  %15 = trunc nuw i8 %14 to i1
  br i1 %15, label %bb12, label %bb8

funclet_bb7:                                      ; preds = %bb10, %bb11_cleanup_trampoline_bb7
  %cleanuppad1 = cleanuppad within none []
  br label %bb7

bb11_cleanup_trampoline_bb7:                      ; preds = %bb11
  cleanupret from %cleanuppad unwind label %funclet_bb7

bb10:                                             ; preds = %bb11
  cleanupret from %cleanuppad unwind label %funclet_bb7

bb8:                                              ; preds = %bb12, %bb7
  cleanupret from %cleanuppad1 unwind to caller

bb12:                                             ; preds = %bb7
  br label %bb8

bb1:                                              ; No predecessors!
  unreachable
}

; core::ub_checks::maybe_is_nonoverlapping::runtime
; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_ZN4core9ub_checks23maybe_is_nonoverlapping7runtime17h42e295b8aefbb769E(ptr %src, ptr %dst, i64 %size, i64 %count) unnamed_addr #1 {
start:
  %diff = alloca [8 x i8], align 8
  %_9 = alloca [16 x i8], align 8
  %src_usize = ptrtoint ptr %src to i64
  %dst_usize = ptrtoint ptr %dst to i64
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %size, i64 %count)
  %_14.0 = extractvalue { i64, i1 } %0, 0
  %_14.1 = extractvalue { i64, i1 } %0, 1
  br i1 %_14.1, label %bb1, label %bb3

bb3:                                              ; preds = %start
  %1 = getelementptr inbounds i8, ptr %_9, i64 8
  store i64 %_14.0, ptr %1, align 8
  store i64 1, ptr %_9, align 8
  %2 = getelementptr inbounds i8, ptr %_9, i64 8
  %size1 = load i64, ptr %2, align 8
  %_22 = icmp ult i64 %src_usize, %dst_usize
  br i1 %_22, label %bb4, label %bb5

bb1:                                              ; preds = %start
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17hc74681a4886dc958E(ptr align 1 @alloc_763310d78c99c2c1ad3f8a9821e942f3, i64 61) #15
  unreachable

bb5:                                              ; preds = %bb3
  %3 = sub i64 %src_usize, %dst_usize
  store i64 %3, ptr %diff, align 8
  br label %bb6

bb4:                                              ; preds = %bb3
  %4 = sub i64 %dst_usize, %src_usize
  store i64 %4, ptr %diff, align 8
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  %_11 = load i64, ptr %diff, align 8
  %_0 = icmp uge i64 %_11, %size1
  ret i1 %_0
}

; alloc::fmt::format
; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc3fmt6format17h327672921db0c4fcE(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %args) unnamed_addr #1 {
start:
  %_2 = alloca [16 x i8], align 8
  %_6.0 = load ptr, ptr %args, align 8
  %0 = getelementptr inbounds i8, ptr %args, i64 8
  %_6.1 = load i64, ptr %0, align 8
  %1 = getelementptr inbounds i8, ptr %args, i64 16
  %_7.0 = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds i8, ptr %1, i64 8
  %_7.1 = load i64, ptr %2, align 8
  %3 = icmp eq i64 %_6.1, 0
  br i1 %3, label %bb4, label %bb5

bb4:                                              ; preds = %start
  %4 = icmp eq i64 %_7.1, 0
  br i1 %4, label %bb8, label %bb3

bb5:                                              ; preds = %start
  %5 = icmp eq i64 %_6.1, 1
  br i1 %5, label %bb6, label %bb3

bb8:                                              ; preds = %bb4
  store ptr inttoptr (i64 1 to ptr), ptr %_2, align 8
  %6 = getelementptr inbounds i8, ptr %_2, i64 8
  store i64 0, ptr %6, align 8
  br label %bb2

bb3:                                              ; preds = %bb6, %bb5, %bb4
  %7 = load ptr, ptr @anon.e309b0091a05b3511db99e97da9d941d.0, align 8
  %8 = load i64, ptr getelementptr inbounds (i8, ptr @anon.e309b0091a05b3511db99e97da9d941d.0, i64 8), align 8
  store ptr %7, ptr %_2, align 8
  %9 = getelementptr inbounds i8, ptr %_2, i64 8
  store i64 %8, ptr %9, align 8
  br label %bb2

bb2:                                              ; preds = %bb3, %bb7, %bb8
  %10 = load ptr, ptr %_2, align 8
  %11 = getelementptr inbounds i8, ptr %_2, i64 8
  %12 = load i64, ptr %11, align 8
; call core::option::Option<T>::map_or_else
  call void @"_ZN4core6option15Option$LT$T$GT$11map_or_else17hc9891f4af274c3b8E"(ptr sret([24 x i8]) align 8 %_0, ptr align 1 %10, i64 %12, ptr align 8 %args)
  ret void

bb6:                                              ; preds = %bb5
  %13 = icmp eq i64 %_7.1, 0
  br i1 %13, label %bb7, label %bb3

bb7:                                              ; preds = %bb6
  %s = getelementptr inbounds nuw { ptr, i64 }, ptr %_6.0, i64 0
  %14 = getelementptr inbounds nuw { ptr, i64 }, ptr %_6.0, i64 0
  %_12.0 = load ptr, ptr %14, align 8
  %15 = getelementptr inbounds i8, ptr %14, i64 8
  %_12.1 = load i64, ptr %15, align 8
  store ptr %_12.0, ptr %_2, align 8
  %16 = getelementptr inbounds i8, ptr %_2, i64 8
  store i64 %_12.1, ptr %16, align 8
  br label %bb2
}

; alloc::fmt::format::{{closure}}
; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h5124e42aa5a6266fE"(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %_1) unnamed_addr #1 {
start:
  %_2 = alloca [48 x i8], align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_2, ptr align 8 %_1, i64 48, i1 false)
; call alloc::fmt::format::format_inner
  call void @_ZN5alloc3fmt6format12format_inner17h64b41e47fed01f63E(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %_2)
  ret void
}

; alloc::str::<impl alloc::borrow::ToOwned for str>::to_owned
; Function Attrs: inlinehint uwtable
define internal void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17hc6a52330b2a06b41E"(ptr sret([24 x i8]) align 8 %_0, ptr align 1 %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %bytes = alloca [24 x i8], align 8
; call <T as alloc::slice::<impl [T]>::to_vec_in::ConvertVec>::to_vec
  call void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7ecfd3b224189bd8E"(ptr sret([24 x i8]) align 8 %bytes, ptr align 1 %self.0, i64 %self.1)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %bytes, i64 24, i1 false)
  ret void
}

; alloc::alloc::Global::alloc_impl
; Function Attrs: inlinehint uwtable
define internal { ptr, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h078aba8a5f4c5c56E(ptr align 1 %self, i64 %0, i64 %1, i1 zeroext %zeroed) unnamed_addr #1 {
start:
  %self4 = alloca [8 x i8], align 8
  %self3 = alloca [8 x i8], align 8
  %_12 = alloca [8 x i8], align 8
  %layout2 = alloca [16 x i8], align 8
  %layout1 = alloca [16 x i8], align 8
  %raw_ptr = alloca [8 x i8], align 8
  %_0 = alloca [16 x i8], align 8
  %layout = alloca [16 x i8], align 8
  store i64 %0, ptr %layout, align 8
  %2 = getelementptr inbounds i8, ptr %layout, i64 8
  store i64 %1, ptr %2, align 8
  %3 = getelementptr inbounds i8, ptr %layout, i64 8
  %size = load i64, ptr %3, align 8
  %4 = icmp eq i64 %size, 0
  br i1 %4, label %bb2, label %bb1

bb2:                                              ; preds = %start
  %_19 = load i64, ptr %layout, align 8
  %_20 = getelementptr i8, ptr null, i64 %_19
  %data = getelementptr i8, ptr null, i64 %_19
  br label %bb7

bb1:                                              ; preds = %start
  br i1 %zeroed, label %bb3, label %bb4

bb7:                                              ; preds = %bb2
  %_24 = getelementptr i8, ptr null, i64 %_19
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hdc61d3835d365ec6E"(ptr %_24, ptr align 8 @alloc_485c78d921bfbda7ba472cfd2839a92c) #19
  br label %bb9

bb9:                                              ; preds = %bb7
  store ptr %data, ptr %_0, align 8
  %5 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 0, ptr %5, align 8
  br label %bb6

bb6:                                              ; preds = %bb21, %bb14, %bb9
  %6 = load ptr, ptr %_0, align 8
  %7 = getelementptr inbounds i8, ptr %_0, i64 8
  %8 = load i64, ptr %7, align 8
  %9 = insertvalue { ptr, i64 } poison, ptr %6, 0
  %10 = insertvalue { ptr, i64 } %9, i64 %8, 1
  ret { ptr, i64 } %10

bb4:                                              ; preds = %bb1
  %11 = load i64, ptr %layout, align 8
  %12 = getelementptr inbounds i8, ptr %layout, i64 8
  %13 = load i64, ptr %12, align 8
  store i64 %11, ptr %layout2, align 8
  %14 = getelementptr inbounds i8, ptr %layout2, i64 8
  store i64 %13, ptr %14, align 8
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  call void @_RNvCs73fAdSrgOJL_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19
  %_41 = load i64, ptr %layout, align 8
  %_44 = icmp uge i64 %_41, 1
  %_45 = icmp ule i64 %_41, -9223372036854775808
  %_46 = and i1 %_44, %_45
; call __rustc::__rust_alloc
  %15 = call ptr @_RNvCs73fAdSrgOJL_7___rustc12___rust_alloc(i64 %size, i64 %_41) #19
  store ptr %15, ptr %raw_ptr, align 8
  br label %bb5

bb3:                                              ; preds = %bb1
  %16 = load i64, ptr %layout, align 8
  %17 = getelementptr inbounds i8, ptr %layout, i64 8
  %18 = load i64, ptr %17, align 8
  store i64 %16, ptr %layout1, align 8
  %19 = getelementptr inbounds i8, ptr %layout1, i64 8
  store i64 %18, ptr %19, align 8
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  call void @_RNvCs73fAdSrgOJL_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19
  %_31 = load i64, ptr %layout, align 8
  %_34 = icmp uge i64 %_31, 1
  %_35 = icmp ule i64 %_31, -9223372036854775808
  %_36 = and i1 %_34, %_35
; call __rustc::__rust_alloc_zeroed
  %20 = call ptr @_RNvCs73fAdSrgOJL_7___rustc19___rust_alloc_zeroed(i64 %size, i64 %_31) #19
  store ptr %20, ptr %raw_ptr, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %ptr = load ptr, ptr %raw_ptr, align 8
  %_49 = ptrtoint ptr %ptr to i64
  %21 = icmp eq i64 %_49, 0
  br i1 %21, label %bb14, label %bb15

bb14:                                             ; preds = %bb5
  store ptr null, ptr %self4, align 8
  store ptr null, ptr %self3, align 8
  %22 = load ptr, ptr @anon.e309b0091a05b3511db99e97da9d941d.0, align 8
  %23 = load i64, ptr getelementptr inbounds (i8, ptr @anon.e309b0091a05b3511db99e97da9d941d.0, i64 8), align 8
  store ptr %22, ptr %_0, align 8
  %24 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %23, ptr %24, align 8
  br label %bb6

bb15:                                             ; preds = %bb5
  br label %bb16

bb16:                                             ; preds = %bb15
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hdc61d3835d365ec6E"(ptr %ptr, ptr align 8 @alloc_fd67cd5e7b0161f58af8a5290684f28a) #19
  br label %bb18

bb18:                                             ; preds = %bb16
  store ptr %ptr, ptr %self4, align 8
  %v = load ptr, ptr %self4, align 8
  store ptr %v, ptr %self3, align 8
  %v5 = load ptr, ptr %self3, align 8
  store ptr %v5, ptr %_12, align 8
  %ptr6 = load ptr, ptr %_12, align 8
  br label %bb19

bb19:                                             ; preds = %bb18
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hdc61d3835d365ec6E"(ptr %ptr6, ptr align 8 @alloc_485c78d921bfbda7ba472cfd2839a92c) #19
  br label %bb21

bb21:                                             ; preds = %bb19
  store ptr %ptr6, ptr %_0, align 8
  %25 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %size, ptr %25, align 8
  br label %bb6
}

; alloc::raw_vec::RawVecInner<A>::deallocate
; Function Attrs: uwtable
define void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9a4fc89819b68d55E"(ptr align 8 %self, i64 %elem_layout.0, i64 %elem_layout.1) unnamed_addr #3 {
start:
  %_3 = alloca [24 x i8], align 8
; call alloc::raw_vec::RawVecInner<A>::current_memory
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17haf09b4af77631e73E"(ptr sret([24 x i8]) align 8 %_3, ptr align 8 %self, i64 %elem_layout.0, i64 %elem_layout.1)
  %0 = getelementptr inbounds i8, ptr %_3, i64 8
  %1 = load i64, ptr %0, align 8
  %2 = icmp eq i64 %1, 0
  %_5 = select i1 %2, i64 0, i64 1
  %3 = trunc nuw i64 %_5 to i1
  br i1 %3, label %bb2, label %bb4

bb2:                                              ; preds = %start
  %ptr = load ptr, ptr %_3, align 8
  %4 = getelementptr inbounds i8, ptr %_3, i64 8
  %layout.0 = load i64, ptr %4, align 8
  %5 = getelementptr inbounds i8, ptr %4, i64 8
  %layout.1 = load i64, ptr %5, align 8
  %_9 = getelementptr inbounds i8, ptr %self, i64 16
; call <alloc::alloc::Global as core::alloc::Allocator>::deallocate
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h729c89783ff93cc4E"(ptr align 1 %_9, ptr %ptr, i64 %layout.0, i64 %layout.1)
  br label %bb5

bb4:                                              ; preds = %start
  br label %bb5

bb5:                                              ; preds = %bb4, %bb2
  ret void

bb6:                                              ; No predecessors!
  unreachable
}

; alloc::raw_vec::RawVecInner<A>::current_memory
; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17haf09b4af77631e73E"(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %self, i64 %0, i64 %1) unnamed_addr #1 {
start:
  %_15 = alloca [24 x i8], align 8
  %align = alloca [8 x i8], align 8
  %alloc_size = alloca [8 x i8], align 8
  %elem_layout = alloca [16 x i8], align 8
  store i64 %0, ptr %elem_layout, align 8
  %2 = getelementptr inbounds i8, ptr %elem_layout, i64 8
  store i64 %1, ptr %2, align 8
  %3 = getelementptr inbounds i8, ptr %elem_layout, i64 8
  %self1 = load i64, ptr %3, align 8
  %4 = icmp eq i64 %self1, 0
  br i1 %4, label %bb3, label %bb1

bb3:                                              ; preds = %bb2, %start
  %5 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 0, ptr %5, align 8
  br label %bb5

bb1:                                              ; preds = %start
  %self2 = load i64, ptr %self, align 8
  %6 = icmp eq i64 %self2, 0
  br i1 %6, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  br label %bb3

bb4:                                              ; preds = %bb1
  %self3 = load i64, ptr %self, align 8
  br label %bb6

bb5:                                              ; preds = %bb9, %bb3
  ret void

bb6:                                              ; preds = %bb4
; call core::num::<impl usize>::unchecked_mul::precondition_check
  call void @"_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_mul18precondition_check17h77eed13de9a78894E"(i64 %self1, i64 %self3, ptr align 8 @alloc_b965cc126472437fabb70d6dba849b74) #19
  %7 = mul nuw i64 %self1, %self3
  store i64 %7, ptr %alloc_size, align 8
  %size = load i64, ptr %alloc_size, align 8
  %_18 = load i64, ptr %elem_layout, align 8
  %_21 = icmp uge i64 %_18, 1
  %_22 = icmp ule i64 %_18, -9223372036854775808
  %_23 = and i1 %_21, %_22
  store i64 %_18, ptr %align, align 8
  br label %bb8

bb8:                                              ; preds = %bb6
  %8 = load i64, ptr %alloc_size, align 8
  %9 = load i64, ptr %align, align 8
; call core::alloc::layout::Layout::from_size_align_unchecked::precondition_check
  call void @_ZN4core5alloc6layout6Layout25from_size_align_unchecked18precondition_check17hcf4843262290193fE(i64 %8, i64 %9, ptr align 8 @alloc_d6f1473f5077a494ff4f19f5929a0ece) #19
  br label %bb9

bb9:                                              ; preds = %bb8
  %_25 = load i64, ptr %align, align 8
  %layout.1 = load i64, ptr %alloc_size, align 8
  %10 = getelementptr inbounds i8, ptr %self, i64 8
  %self4 = load ptr, ptr %10, align 8
  store ptr %self4, ptr %_15, align 8
  %11 = getelementptr inbounds i8, ptr %_15, i64 8
  store i64 %_25, ptr %11, align 8
  %12 = getelementptr inbounds i8, ptr %11, i64 8
  store i64 %layout.1, ptr %12, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %_15, i64 24, i1 false)
  br label %bb5

bb7:                                              ; No predecessors!
  unreachable
}

; alloc::raw_vec::RawVecInner<A>::try_allocate_in
; Function Attrs: uwtable
define void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h856f3bbb6f05943aE"(ptr sret([24 x i8]) align 8 %_0, i64 %capacity, i1 zeroext %init, i64 %0, i64 %1) unnamed_addr #3 personality ptr @__CxxFrameHandler3 {
start:
  %self3 = alloca [24 x i8], align 8
  %self2 = alloca [16 x i8], align 8
  %self = alloca [16 x i8], align 8
  %result = alloca [16 x i8], align 8
  %elem_layout1 = alloca [16 x i8], align 8
  %_6 = alloca [24 x i8], align 8
  %layout = alloca [16 x i8], align 8
  %elem_layout = alloca [16 x i8], align 8
  %alloc = alloca [0 x i8], align 1
  store i64 %0, ptr %elem_layout, align 8
  %2 = getelementptr inbounds i8, ptr %elem_layout, i64 8
  store i64 %1, ptr %2, align 8
  %3 = load i64, ptr %elem_layout, align 8
  %4 = getelementptr inbounds i8, ptr %elem_layout, i64 8
  %5 = load i64, ptr %4, align 8
  store i64 %3, ptr %elem_layout1, align 8
  %6 = getelementptr inbounds i8, ptr %elem_layout1, i64 8
  store i64 %5, ptr %6, align 8
; invoke core::alloc::layout::Layout::repeat
  invoke void @_ZN4core5alloc6layout6Layout6repeat17h782d4d975004fcdbE(ptr sret([24 x i8]) align 8 %self3, ptr align 8 %elem_layout1, i64 %capacity)
          to label %bb16 unwind label %funclet_bb15

bb15:                                             ; preds = %funclet_bb15
  br label %bb14

funclet_bb15:                                     ; preds = %bb4, %bb5, %start
  %cleanuppad = cleanuppad within none []
  br label %bb15

bb16:                                             ; preds = %start
  %7 = load i64, ptr %self3, align 8
  %8 = icmp eq i64 %7, 0
  %_33 = select i1 %8, i64 1, i64 0
  %9 = trunc nuw i64 %_33 to i1
  br i1 %9, label %bb17, label %bb18

bb17:                                             ; preds = %bb16
  %10 = load i64, ptr @anon.e309b0091a05b3511db99e97da9d941d.0, align 8
  %11 = load i64, ptr getelementptr inbounds (i8, ptr @anon.e309b0091a05b3511db99e97da9d941d.0, i64 8), align 8
  store i64 %10, ptr %self2, align 8
  %12 = getelementptr inbounds i8, ptr %self2, i64 8
  store i64 %11, ptr %12, align 8
  %13 = load i64, ptr @anon.e309b0091a05b3511db99e97da9d941d.0, align 8
  %14 = load i64, ptr getelementptr inbounds (i8, ptr @anon.e309b0091a05b3511db99e97da9d941d.0, i64 8), align 8
  %15 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %13, ptr %15, align 8
  %16 = getelementptr inbounds i8, ptr %15, i64 8
  store i64 %14, ptr %16, align 8
  store i64 1, ptr %_0, align 8
  br label %bb13

bb18:                                             ; preds = %bb16
  %t.0 = load i64, ptr %self3, align 8
  %17 = getelementptr inbounds i8, ptr %self3, i64 8
  %t.1 = load i64, ptr %17, align 8
  %18 = getelementptr inbounds i8, ptr %self3, i64 16
  %t = load i64, ptr %18, align 8
  store i64 %t.0, ptr %self2, align 8
  %19 = getelementptr inbounds i8, ptr %self2, i64 8
  store i64 %t.1, ptr %19, align 8
  %t.04 = load i64, ptr %self2, align 8
  %20 = getelementptr inbounds i8, ptr %self2, i64 8
  %t.15 = load i64, ptr %20, align 8
  %21 = getelementptr inbounds i8, ptr %_6, i64 8
  store i64 %t.04, ptr %21, align 8
  %22 = getelementptr inbounds i8, ptr %21, i64 8
  store i64 %t.15, ptr %22, align 8
  store i64 0, ptr %_6, align 8
  %23 = getelementptr inbounds i8, ptr %_6, i64 8
  %layout.0 = load i64, ptr %23, align 8
  %24 = getelementptr inbounds i8, ptr %23, i64 8
  %layout.1 = load i64, ptr %24, align 8
  store i64 %layout.0, ptr %layout, align 8
  %25 = getelementptr inbounds i8, ptr %layout, i64 8
  store i64 %layout.1, ptr %25, align 8
  %26 = icmp eq i64 %layout.1, 0
  br i1 %26, label %bb2, label %bb3

bb2:                                              ; preds = %bb18
  %align = load i64, ptr %elem_layout, align 8
  %_40 = getelementptr i8, ptr null, i64 %align
  %27 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 0, ptr %27, align 8
  %28 = getelementptr inbounds i8, ptr %27, i64 8
  store ptr %_40, ptr %28, align 8
  store i64 0, ptr %_0, align 8
  br label %bb11

bb3:                                              ; preds = %bb18
  %_17 = zext i1 %init to i64
  %29 = trunc nuw i64 %_17 to i1
  br i1 %29, label %bb4, label %bb5

bb11:                                             ; preds = %bb13, %bb10, %bb2
  ret void

bb4:                                              ; preds = %bb3
; invoke <alloc::alloc::Global as core::alloc::Allocator>::allocate_zeroed
  %30 = invoke { ptr, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h9ef71391f3751379E"(ptr align 1 %alloc, i64 %layout.0, i64 %layout.1)
          to label %bb7 unwind label %funclet_bb15

bb5:                                              ; preds = %bb3
; invoke <alloc::alloc::Global as core::alloc::Allocator>::allocate
  %31 = invoke { ptr, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h3c50d266a8f54e04E"(ptr align 1 %alloc, i64 %layout.0, i64 %layout.1)
          to label %bb6 unwind label %funclet_bb15

bb6:                                              ; preds = %bb5
  %32 = extractvalue { ptr, i64 } %31, 0
  %33 = extractvalue { ptr, i64 } %31, 1
  store ptr %32, ptr %result, align 8
  %34 = getelementptr inbounds i8, ptr %result, i64 8
  store i64 %33, ptr %34, align 8
  br label %bb8

bb8:                                              ; preds = %bb7, %bb6
  %35 = load ptr, ptr %result, align 8
  %36 = getelementptr inbounds i8, ptr %result, i64 8
  %37 = load i64, ptr %36, align 8
  %38 = ptrtoint ptr %35 to i64
  %39 = icmp eq i64 %38, 0
  %_20 = select i1 %39, i64 1, i64 0
  %40 = trunc nuw i64 %_20 to i1
  br i1 %40, label %bb9, label %bb10

bb7:                                              ; preds = %bb4
  %41 = extractvalue { ptr, i64 } %30, 0
  %42 = extractvalue { ptr, i64 } %30, 1
  store ptr %41, ptr %result, align 8
  %43 = getelementptr inbounds i8, ptr %result, i64 8
  store i64 %42, ptr %43, align 8
  br label %bb8

bb9:                                              ; preds = %bb8
  store i64 %layout.0, ptr %self, align 8
  %44 = getelementptr inbounds i8, ptr %self, i64 8
  store i64 %layout.1, ptr %44, align 8
  %_22.0 = load i64, ptr %self, align 8
  %45 = getelementptr inbounds i8, ptr %self, i64 8
  %_22.1 = load i64, ptr %45, align 8
  %46 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %_22.0, ptr %46, align 8
  %47 = getelementptr inbounds i8, ptr %46, i64 8
  store i64 %_22.1, ptr %47, align 8
  store i64 1, ptr %_0, align 8
  br label %bb13

bb10:                                             ; preds = %bb8
  %ptr.0 = load ptr, ptr %result, align 8
  %48 = getelementptr inbounds i8, ptr %result, i64 8
  %ptr.1 = load i64, ptr %48, align 8
  %49 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %capacity, ptr %49, align 8
  %50 = getelementptr inbounds i8, ptr %49, i64 8
  store ptr %ptr.0, ptr %50, align 8
  store i64 0, ptr %_0, align 8
  br label %bb11

bb13:                                             ; preds = %bb17, %bb9
  br label %bb11

bb1:                                              ; No predecessors!
  unreachable

bb14:                                             ; preds = %bb15
  br label %bb12

bb12:                                             ; preds = %bb14
  cleanupret from %cleanuppad unwind to caller
}

; alloc::raw_vec::RawVecInner<A>::with_capacity_in
; Function Attrs: inlinehint uwtable
define { i64, ptr } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h43ba477e9323ac08E"(i64 %capacity, i64 %elem_layout.0, i64 %elem_layout.1, ptr align 8 %0) unnamed_addr #1 {
start:
  %self = alloca [8 x i8], align 8
  %elem_layout = alloca [16 x i8], align 8
  %this = alloca [16 x i8], align 8
  %_4 = alloca [24 x i8], align 8
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h856f3bbb6f05943aE"(ptr sret([24 x i8]) align 8 %_4, i64 %capacity, i1 zeroext false, i64 %elem_layout.0, i64 %elem_layout.1)
  %_5 = load i64, ptr %_4, align 8
  %1 = trunc nuw i64 %_5 to i1
  br i1 %1, label %bb3, label %bb4

bb3:                                              ; preds = %start
  %2 = getelementptr inbounds i8, ptr %_4, i64 8
  %err.0 = load i64, ptr %2, align 8
  %3 = getelementptr inbounds i8, ptr %2, i64 8
  %err.1 = load i64, ptr %3, align 8
; call alloc::raw_vec::handle_error
  call void @_ZN5alloc7raw_vec12handle_error17h5e3eecedd9f8a6e5E(i64 %err.0, i64 %err.1, ptr align 8 %0) #16
  unreachable

bb4:                                              ; preds = %start
  %4 = getelementptr inbounds i8, ptr %_4, i64 8
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds i8, ptr %4, i64 8
  %7 = load ptr, ptr %6, align 8
  store i64 %5, ptr %this, align 8
  %8 = getelementptr inbounds i8, ptr %this, i64 8
  store ptr %7, ptr %8, align 8
  store i64 %elem_layout.0, ptr %elem_layout, align 8
  %9 = getelementptr inbounds i8, ptr %elem_layout, i64 8
  store i64 %elem_layout.1, ptr %9, align 8
  %10 = icmp eq i64 %elem_layout.1, 0
  br i1 %10, label %bb6, label %bb7

bb6:                                              ; preds = %bb4
  store i64 -1, ptr %self, align 8
  br label %bb5

bb7:                                              ; preds = %bb4
  %self1 = load i64, ptr %this, align 8
  store i64 %self1, ptr %self, align 8
  br label %bb5

bb5:                                              ; preds = %bb7, %bb6
  %11 = load i64, ptr %self, align 8
  %_13 = sub i64 %11, 0
  %_8 = icmp ugt i64 %capacity, %_13
  %cond = xor i1 %_8, true
  br label %bb8

bb8:                                              ; preds = %bb5
; call core::hint::assert_unchecked::precondition_check
  call void @_ZN4core4hint16assert_unchecked18precondition_check17h416bf214d21ca5c5E(i1 zeroext %cond, ptr align 8 %0) #19
  br label %bb9

bb9:                                              ; preds = %bb8
  %_0.0 = load i64, ptr %this, align 8
  %12 = getelementptr inbounds i8, ptr %this, i64 8
  %_0.1 = load ptr, ptr %12, align 8
  %13 = insertvalue { i64, ptr } poison, i64 %_0.0, 0
  %14 = insertvalue { i64, ptr } %13, ptr %_0.1, 1
  ret { i64, ptr } %14

bb2:                                              ; No predecessors!
  unreachable
}

; <alloc::alloc::Global as core::alloc::Allocator>::deallocate
; Function Attrs: inlinehint uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h729c89783ff93cc4E"(ptr align 1 %self, ptr %ptr, i64 %0, i64 %1) unnamed_addr #1 {
start:
  %layout1 = alloca [16 x i8], align 8
  %layout = alloca [16 x i8], align 8
  store i64 %0, ptr %layout, align 8
  %2 = getelementptr inbounds i8, ptr %layout, i64 8
  store i64 %1, ptr %2, align 8
  %3 = getelementptr inbounds i8, ptr %layout, i64 8
  %_4 = load i64, ptr %3, align 8
  %4 = icmp eq i64 %_4, 0
  br i1 %4, label %bb2, label %bb1

bb2:                                              ; preds = %bb1, %start
  ret void

bb1:                                              ; preds = %start
  %5 = load i64, ptr %layout, align 8
  %6 = getelementptr inbounds i8, ptr %layout, i64 8
  %7 = load i64, ptr %6, align 8
  store i64 %5, ptr %layout1, align 8
  %8 = getelementptr inbounds i8, ptr %layout1, i64 8
  store i64 %7, ptr %8, align 8
  %_11 = load i64, ptr %layout, align 8
  %_14 = icmp uge i64 %_11, 1
  %_15 = icmp ule i64 %_11, -9223372036854775808
  %_16 = and i1 %_14, %_15
; call __rustc::__rust_dealloc
  call void @_RNvCs73fAdSrgOJL_7___rustc14___rust_dealloc(ptr %ptr, i64 %_4, i64 %_11) #19
  br label %bb2
}

; <alloc::alloc::Global as core::alloc::Allocator>::allocate_zeroed
; Function Attrs: inlinehint uwtable
define internal { ptr, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h9ef71391f3751379E"(ptr align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #1 {
start:
; call alloc::alloc::Global::alloc_impl
  %0 = call { ptr, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h078aba8a5f4c5c56E(ptr align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext true)
  %_0.0 = extractvalue { ptr, i64 } %0, 0
  %_0.1 = extractvalue { ptr, i64 } %0, 1
  %1 = insertvalue { ptr, i64 } poison, ptr %_0.0, 0
  %2 = insertvalue { ptr, i64 } %1, i64 %_0.1, 1
  ret { ptr, i64 } %2
}

; <alloc::alloc::Global as core::alloc::Allocator>::allocate
; Function Attrs: inlinehint uwtable
define internal { ptr, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h3c50d266a8f54e04E"(ptr align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #1 {
start:
; call alloc::alloc::Global::alloc_impl
  %0 = call { ptr, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h078aba8a5f4c5c56E(ptr align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext false)
  %_0.0 = extractvalue { ptr, i64 } %0, 0
  %_0.1 = extractvalue { ptr, i64 } %0, 1
  %1 = insertvalue { ptr, i64 } poison, ptr %_0.0, 0
  %2 = insertvalue { ptr, i64 } %1, i64 %_0.1, 1
  ret { ptr, i64 } %2
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e1d929fd50b7039E"(ptr align 8 %self) unnamed_addr #3 {
start:
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %_5 = load ptr, ptr %0, align 8
  %1 = getelementptr inbounds i8, ptr %self, i64 16
  %len = load i64, ptr %1, align 8
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17head69495fea31553E"(ptr align 8 %self) unnamed_addr #3 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h9a4fc89819b68d55E"(ptr align 8 %self, i64 1, i64 1)
  ret void
}

; <T as alloc::slice::<impl [T]>::to_vec_in::ConvertVec>::to_vec
; Function Attrs: inlinehint uwtable
define void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7ecfd3b224189bd8E"(ptr sret([24 x i8]) align 8 %_0, ptr align 1 %s.0, i64 %s.1) unnamed_addr #1 {
start:
  %v = alloca [24 x i8], align 8
; call alloc::raw_vec::RawVecInner<A>::with_capacity_in
  %0 = call { i64, ptr } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h43ba477e9323ac08E"(i64 %s.1, i64 1, i64 1, ptr align 8 @alloc_31508227edbe7da887593416ee4dda13)
  %_10.0 = extractvalue { i64, ptr } %0, 0
  %_10.1 = extractvalue { i64, ptr } %0, 1
  store i64 %_10.0, ptr %v, align 8
  %1 = getelementptr inbounds i8, ptr %v, i64 8
  store ptr %_10.1, ptr %1, align 8
  %2 = getelementptr inbounds i8, ptr %v, i64 16
  store i64 0, ptr %2, align 8
  %3 = getelementptr inbounds i8, ptr %v, i64 8
  %_12 = load ptr, ptr %3, align 8
  br label %bb2

bb2:                                              ; preds = %start
; call core::ptr::copy_nonoverlapping::precondition_check
  call void @_ZN4core3ptr19copy_nonoverlapping18precondition_check17he20b3870ecc13628E(ptr %s.0, ptr %_12, i64 1, i64 1, i64 %s.1, ptr align 8 @alloc_9b02f156631fac5803bf5ba989d15e2b) #19
  br label %bb4

bb4:                                              ; preds = %bb2
  %4 = mul i64 %s.1, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %_12, ptr align 1 %s.0, i64 %4, i1 false)
  %5 = getelementptr inbounds i8, ptr %v, i64 16
  store i64 %s.1, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %v, i64 24, i1 false)
  ret void
}

; probe1::probe
; Function Attrs: uwtable
define void @_ZN6probe15probe17h441aabe1cbe9c69cE() unnamed_addr #3 {
start:
  %_5 = alloca [16 x i8], align 8
  %args = alloca [16 x i8], align 8
  %_3 = alloca [48 x i8], align 8
  %_2 = alloca [24 x i8], align 8
  %_1 = alloca [24 x i8], align 8
; call core::fmt::rt::Argument::new_lower_exp
  call void @_ZN4core3fmt2rt8Argument13new_lower_exp17he8bc08925f0f5bebE(ptr sret([16 x i8]) align 8 %_5, ptr align 8 @alloc_53973d2fe29b4adba8bb7390b5678745)
  %0 = getelementptr inbounds nuw %"core::fmt::rt::Argument<'_>", ptr %args, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %_5, i64 16, i1 false)
; call core::fmt::rt::<impl core::fmt::Arguments>::new_v1
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117h301da1b53a032bdfE"(ptr sret([48 x i8]) align 8 %_3, ptr align 8 @alloc_eab5d04767146d7d9b93b60d28ef530a, ptr align 8 %args)
; call alloc::fmt::format
  call void @_ZN5alloc3fmt6format17h327672921db0c4fcE(ptr sret([24 x i8]) align 8 %_2, ptr align 8 %_3)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_1, ptr align 8 %_2, i64 24, i1 false)
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he522e65c6bbc41fdE"(ptr align 8 %_1)
  ret void
}

; core::fmt::num::imp::<impl core::fmt::LowerExp for isize>::fmt
; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp55_$LT$impl$u20$core..fmt..LowerExp$u20$for$u20$isize$GT$3fmt17h65e65d578443e83dE"(ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #5

; core::panicking::panic_nounwind_fmt
; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking18panic_nounwind_fmt17h967cb19ee376c79aE(ptr align 8, i1 zeroext, ptr align 8) unnamed_addr #6

declare i32 @__CxxFrameHandler3(...) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #5

; core::panicking::panic_cannot_unwind
; Function Attrs: cold minsize noinline noreturn nounwind optsize uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h8f2b96e8056bc9b0E() unnamed_addr #8

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hc3fdfcf609de6652E(ptr align 8, ptr align 8) unnamed_addr #9

; core::alloc::layout::Layout::is_size_align_valid
; Function Attrs: uwtable
declare zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h404c0a2962f1f594E(i64, i64) unnamed_addr #3

; core::panicking::panic_nounwind
; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking14panic_nounwind17hc74681a4886dc958E(ptr align 1, i64) unnamed_addr #6

; alloc::fmt::format::format_inner
; Function Attrs: uwtable
declare void @_ZN5alloc3fmt6format12format_inner17h64b41e47fed01f63E(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #3

; __rustc::__rust_no_alloc_shim_is_unstable_v2
; Function Attrs: nounwind uwtable
declare void @_RNvCs73fAdSrgOJL_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #10

; __rustc::__rust_alloc
; Function Attrs: nounwind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias ptr @_RNvCs73fAdSrgOJL_7___rustc12___rust_alloc(i64, i64 allocalign) unnamed_addr #11

; __rustc::__rust_alloc_zeroed
; Function Attrs: nounwind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias ptr @_RNvCs73fAdSrgOJL_7___rustc19___rust_alloc_zeroed(i64, i64 allocalign) unnamed_addr #12

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h5e3eecedd9f8a6e5E(i64, i64, ptr align 8) unnamed_addr #13

; __rustc::__rust_dealloc
; Function Attrs: nounwind allockind("free") uwtable
declare void @_RNvCs73fAdSrgOJL_7___rustc14___rust_dealloc(ptr allocptr, i64, i64) unnamed_addr #14

attributes #0 = { cold nounwind uwtable "target-cpu"="x86-64" "target-features"="+cx16,+sse3,+sahf" }
attributes #1 = { inlinehint uwtable "target-cpu"="x86-64" "target-features"="+cx16,+sse3,+sahf" }
attributes #2 = { inlinehint nounwind uwtable "target-cpu"="x86-64" "target-features"="+cx16,+sse3,+sahf" }
attributes #3 = { uwtable "target-cpu"="x86-64" "target-features"="+cx16,+sse3,+sahf" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { cold noinline noreturn nounwind uwtable "target-cpu"="x86-64" "target-features"="+cx16,+sse3,+sahf" }
attributes #7 = { "target-cpu"="x86-64" }
attributes #8 = { cold minsize noinline noreturn nounwind optsize uwtable "target-cpu"="x86-64" "target-features"="+cx16,+sse3,+sahf" }
attributes #9 = { cold noinline noreturn uwtable "target-cpu"="x86-64" "target-features"="+cx16,+sse3,+sahf" }
attributes #10 = { nounwind uwtable "target-cpu"="x86-64" "target-features"="+cx16,+sse3,+sahf" }
attributes #11 = { nounwind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "target-cpu"="x86-64" "target-features"="+cx16,+sse3,+sahf" }
attributes #12 = { nounwind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "target-cpu"="x86-64" "target-features"="+cx16,+sse3,+sahf" }
attributes #13 = { cold minsize noreturn optsize uwtable "target-cpu"="x86-64" "target-features"="+cx16,+sse3,+sahf" }
attributes #14 = { nounwind allockind("free") uwtable "alloc-family"="__rust_alloc" "target-cpu"="x86-64" "target-features"="+cx16,+sse3,+sahf" }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { cold }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{!"rustc version 1.89.0 (29483883e 2025-08-04)"}
