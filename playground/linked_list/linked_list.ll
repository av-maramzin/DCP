; ModuleID = 'linked_list.cpp'
source_filename = "linked_list.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ListNode = type { i32, %struct.ListNode* }

; Function Attrs: noinline norecurse nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %head = alloca %struct.ListNode*, align 8
  %tmp = alloca %struct.ListNode*, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call noalias i8* @malloc(i64 16) #2
  %0 = bitcast i8* %call to %struct.ListNode*
  store %struct.ListNode* %0, %struct.ListNode** %head, align 8
  %1 = load %struct.ListNode*, %struct.ListNode** %head, align 8
  store %struct.ListNode* %1, %struct.ListNode** %tmp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 99
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call noalias i8* @malloc(i64 16) #2
  %3 = bitcast i8* %call1 to %struct.ListNode*
  %4 = load %struct.ListNode*, %struct.ListNode** %tmp, align 8
  %next = getelementptr inbounds %struct.ListNode, %struct.ListNode* %4, i32 0, i32 1
  store %struct.ListNode* %3, %struct.ListNode** %next, align 8
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.ListNode*, %struct.ListNode** %tmp, align 8
  %data = getelementptr inbounds %struct.ListNode, %struct.ListNode* %6, i32 0, i32 0
  store i32 %5, i32* %data, align 8
  %7 = load %struct.ListNode*, %struct.ListNode** %tmp, align 8
  %next2 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %7, i32 0, i32 1
  %8 = load %struct.ListNode*, %struct.ListNode** %next2, align 8
  store %struct.ListNode* %8, %struct.ListNode** %tmp, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

attributes #0 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.0 (https://github.com/llvm/llvm-project.git 0399d5a9682b3cef71c653373e38890c63c4c365)"}
