; ModuleID = 'sample.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-redhat-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"Starting count...\0A\00"
@.str1 = private unnamed_addr constant [19 x i8] c"Count at stage %d\0A\00"

define i32 @main(i32 %argc, i8** %argv) nounwind {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  store i32 0, i32* %i, align 4
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str, i32 0, i32 0))
  br label %5

; <label>:5                                       ; preds = %8, %0
  %6 = load i32* %i, align 4
  %7 = icmp slt i32 %6, 11
  br i1 %7, label %8, label %13

; <label>:8                                       ; preds = %5
  %9 = load i32* %i, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %i, align 4
  %11 = load i32* %i, align 4
  %12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 %11)
  br label %5

; <label>:13                                      ; preds = %5
  ret i32 0
}

declare i32 @printf(i8*, ...)
