; ModuleID = 'linked_list.c'
source_filename = "linked_list.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32, %struct.node* }

@n = dso_local constant i32 100, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @create_list(i32 %elems_num) #0 {
entry:
  %retval = alloca %struct.node*, align 8
  %elems_num.addr = alloca i32, align 4
  %head = alloca %struct.node*, align 8
  %tail = alloca %struct.node*, align 8
  %next_node = alloca %struct.node*, align 8
  %i = alloca i32, align 4
  store i32 %elems_num, i32* %elems_num.addr, align 4
  store %struct.node* null, %struct.node** %head, align 8
  store %struct.node* null, %struct.node** %tail, align 8
  store %struct.node* null, %struct.node** %next_node, align 8
  %0 = load i32, i32* %elems_num.addr, align 4
  %cmp = icmp ule i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.node* null, %struct.node** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call = call noalias i8* @malloc(i64 16) #2
  %1 = bitcast i8* %call to %struct.node*
  store %struct.node* %1, %struct.node** %head, align 8
  %2 = load %struct.node*, %struct.node** %head, align 8
  %data = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 0
  store i32 0, i32* %data, align 8
  %3 = load %struct.node*, %struct.node** %head, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 1
  store %struct.node* null, %struct.node** %next, align 8
  %4 = load %struct.node*, %struct.node** %head, align 8
  store %struct.node* %4, %struct.node** %tail, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %elems_num.addr, align 4
  %sub = sub i32 %6, 1
  %cmp1 = icmp ult i32 %5, %sub
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call noalias i8* @malloc(i64 16) #2
  %7 = bitcast i8* %call2 to %struct.node*
  store %struct.node* %7, %struct.node** %next_node, align 8
  %8 = load %struct.node*, %struct.node** %next_node, align 8
  %data3 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 0
  store i32 0, i32* %data3, align 8
  %9 = load %struct.node*, %struct.node** %next_node, align 8
  %next4 = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 1
  store %struct.node* null, %struct.node** %next4, align 8
  %10 = load %struct.node*, %struct.node** %next_node, align 8
  %11 = load %struct.node*, %struct.node** %tail, align 8
  %next5 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 1
  store %struct.node* %10, %struct.node** %next5, align 8
  %12 = load %struct.node*, %struct.node** %next_node, align 8
  store %struct.node* %12, %struct.node** %tail, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.node*, %struct.node** %head, align 8
  store %struct.node* %14, %struct.node** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %15 = load %struct.node*, %struct.node** %retval, align 8
  ret %struct.node* %15
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @destroy_list(%struct.node* %head) #0 {
entry:
  %head.addr = alloca %struct.node*, align 8
  %to_be_deallocated = alloca %struct.node*, align 8
  store %struct.node* %head, %struct.node** %head.addr, align 8
  store %struct.node* null, %struct.node** %to_be_deallocated, align 8
  %0 = load %struct.node*, %struct.node** %head.addr, align 8
  %cmp = icmp eq %struct.node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %1 = load %struct.node*, %struct.node** %head.addr, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 1
  %2 = load %struct.node*, %struct.node** %next, align 8
  %cmp1 = icmp ne %struct.node* %2, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.node*, %struct.node** %head.addr, align 8
  store %struct.node* %3, %struct.node** %to_be_deallocated, align 8
  %4 = load %struct.node*, %struct.node** %head.addr, align 8
  %next2 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 1
  %5 = load %struct.node*, %struct.node** %next2, align 8
  store %struct.node* %5, %struct.node** %head.addr, align 8
  %6 = load %struct.node*, %struct.node** %to_be_deallocated, align 8
  %7 = bitcast %struct.node* %6 to i8*
  call void @free(i8* %7) #2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load %struct.node*, %struct.node** %head.addr, align 8
  %9 = bitcast %struct.node* %8 to i8*
  call void @free(i8* %9) #2
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %list = alloca %struct.node*, align 8
  store i32 0, i32* %retval, align 4
  %call = call %struct.node* @create_list(i32 100)
  store %struct.node* %call, %struct.node** %list, align 8
  %0 = load %struct.node*, %struct.node** %list, align 8
  call void @destroy_list(%struct.node* %0)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 7.0.1 (https://git.llvm.org/git/clang.git/ e44b4e4240e03c24f5479f81235519493823c27b) (https://git.llvm.org/git/llvm.git/ 08f7943cf05b989e05297fea48e2464f5af11bf1)"}
