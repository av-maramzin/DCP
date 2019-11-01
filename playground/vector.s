; ModuleID = 'vector.cpp'
source_filename = "vector.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" = type { i32*, i32*, i32* }
%"class.std::allocator" = type { i8 }
%struct.Vector = type { i32, i32* }
%"class.__gnu_cxx::new_allocator" = type { i8 }

$_ZNSaIiEC2Ev = comdat any

$_ZNSt6vectorIiSaIiEEC2EmRKS0_ = comdat any

$_ZNSaIiED2Ev = comdat any

$_ZNSt6vectorIiSaIiEED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIiEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIiED2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_ = comdat any

$_ZNSt6vectorIiSaIiEE21_M_default_initializeEm = comdat any

$_ZNSt12_Vector_baseIiSaIiEED2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev = comdat any

$_ZNSaIiEC2ERKS_ = comdat any

$_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIiEE8allocateERS0_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv = comdat any

$_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZSt25__uninitialized_default_nIPimET_S1_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_ = comdat any

$_ZSt6fill_nIPimiET_S1_T0_RKT1_ = comdat any

$_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_ = comdat any

$_ZSt12__niter_baseIPiET_S1_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim = comdat any

$__clang_call_terminate = comdat any

$_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim = comdat any

$_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E = comdat any

$_ZSt8_DestroyIPiEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_ = comdat any

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %vec = alloca %"class.std::vector", align 8
  %ref.tmp = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %v = alloca %struct.Vector, align 8
  call void @_ZNSaIiEC2Ev(%"class.std::allocator"* %ref.tmp) #8
  invoke void @_ZNSt6vectorIiSaIiEEC2EmRKS0_(%"class.std::vector"* %vec, i64 10, %"class.std::allocator"* dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIiED2Ev(%"class.std::allocator"* %ref.tmp) #8
  %size = getelementptr inbounds %struct.Vector, %struct.Vector* %v, i32 0, i32 0
  store i32 10, i32* %size, align 8
  %size1 = getelementptr inbounds %struct.Vector, %struct.Vector* %v, i32 0, i32 0
  %0 = load i32, i32* %size1, align 8
  %conv = zext i32 %0 to i64
  %1 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv, i64 4)
  %2 = extractvalue { i64, i1 } %1, 1
  %3 = extractvalue { i64, i1 } %1, 0
  %4 = select i1 %2, i64 -1, i64 %3
  %call = invoke i8* @_Znam(i64 %4) #9
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %invoke.cont
  %5 = bitcast i8* %call to i32*
  %elements = getelementptr inbounds %struct.Vector, %struct.Vector* %v, i32 0, i32 1
  store i32* %5, i32** %elements, align 8
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* %vec) #8
  ret i32 0

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  call void @_ZNSaIiED2Ev(%"class.std::allocator"* %ref.tmp) #8
  br label %eh.resume

lpad2:                                            ; preds = %invoke.cont
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %exn.slot, align 8
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %ehselector.slot, align 4
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* %vec) #8
  br label %eh.resume

eh.resume:                                        ; preds = %lpad2, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val4 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val4
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2Ev(%"class.std::allocator"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator"* %0) #8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2EmRKS0_(%"class.std::vector"* %this, i64 %__n, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #2 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %1 = load i64, i64* %__n.addr, align 8
  %2 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  call void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(%"struct.std::_Vector_base"* %0, i64 %1, %"class.std::allocator"* dereferenceable(1) %2)
  %3 = load i64, i64* %__n.addr, align 8
  invoke void @_ZNSt6vectorIiSaIiEE21_M_default_initializeEm(%"class.std::vector"* %this1, i64 %3)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  store i8* %5, i8** %exn.slot, align 8
  %6 = extractvalue { i8*, i32 } %4, 1
  store i32 %6, i32* %ehselector.slot, align 4
  %7 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base"* %7) #8
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIiED2Ev(%"class.std::allocator"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator"* %0) #8
  ret void
}

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znam(i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* %this) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load i32*, i32** %_M_start, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl2, i32 0, i32 1
  %3 = load i32*, i32** %_M_finish, align 8
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %4) #8
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %1, i32* %3, %"class.std::allocator"* dereferenceable(1) %call)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base"* %5) #8
  ret void

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base"* %9) #8
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #10
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(%"struct.std::_Vector_base"* %this, i64 %__n, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #2 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, %"class.std::allocator"* dereferenceable(1) %0) #8
  %1 = load i64, i64* %__n.addr, align 8
  invoke void @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm(%"struct.std::_Vector_base"* %this1, i64 %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl) #8
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE21_M_default_initializeEm(%"class.std::vector"* %this, i64 %__n) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load i32*, i32** %_M_start, align 8
  %2 = load i64, i64* %__n.addr, align 8
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %3) #8
  %call2 = call i32* @_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E(i32* %1, i64 %2, %"class.std::allocator"* dereferenceable(1) %call)
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl3, i32 0, i32 1
  store i32* %call2, i32** %_M_finish, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %0 = load i32*, i32** %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %1 = load i32*, i32** %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl3, i32 0, i32 0
  %2 = load i32*, i32** %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base"* %this1, i32* %0, i64 %sub.ptr.div)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl5) #8
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 }
          catch i8* null
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl6) #8
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #10
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %this.addr, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  %this1 = load %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this1 to %"class.std::allocator"*
  %1 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  call void @_ZNSaIiEC2ERKS_(%"class.std::allocator"* %0, %"class.std::allocator"* dereferenceable(1) %1) #8
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this1, i32 0, i32 0
  store i32* null, i32** %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this1, i32 0, i32 1
  store i32* null, i32** %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this1, i32 0, i32 2
  store i32* null, i32** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm(%"struct.std::_Vector_base"* %this, i64 %__n) #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %call = call i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base"* %this1, i64 %0)
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  store i32* %call, i32** %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl2, i32 0, i32 0
  %1 = load i32*, i32** %_M_start3, align 8
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl4, i32 0, i32 1
  store i32* %1, i32** %_M_finish, align 8
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl5, i32 0, i32 0
  %2 = load i32*, i32** %_M_start6, align 8
  %3 = load i64, i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds i32, i32* %2, i64 %3
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl7, i32 0, i32 2
  store i32* %add.ptr, i32** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaIiED2Ev(%"class.std::allocator"* %0) #8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2ERKS_(%"class.std::allocator"* %this, %"class.std::allocator"* dereferenceable(1) %__a) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  %__a.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  %1 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %2 = bitcast %"class.std::allocator"* %1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_(%"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"* dereferenceable(1) %2) #8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_(%"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"* dereferenceable(1)) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base"* %this, i64 %__n) #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl to %"class.std::allocator"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call i32* @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%"class.std::allocator"* dereferenceable(1) %1, i64 %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32* [ %call, %cond.true ], [ null, %cond.false ]
  ret i32* %cond
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%"class.std::allocator"* dereferenceable(1) %__a, i64 %__n) #2 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %1, i64 %2, i8* null)
  ret i32* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %this, i64 %__n, i8*) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this1) #8
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #11
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 4
  %call2 = call i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to i32*
  ret i32* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret i64 4611686018427387903
}

; Function Attrs: noreturn
declare dso_local void @_ZSt17__throw_bad_allocv() #5

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znwm(i64) #4

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E(i32* %__first, i64 %__n, %"class.std::allocator"* dereferenceable(1)) #2 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %1 = load i32*, i32** %__first.addr, align 8
  %2 = load i64, i64* %__n.addr, align 8
  %call = call i32* @_ZSt25__uninitialized_default_nIPimET_S1_T0_(i32* %1, i64 %2)
  ret i32* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZSt25__uninitialized_default_nIPimET_S1_T0_(i32* %__first, i64 %__n) #2 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  %__assignable = alloca i8, align 1
  store i32* %__first, i32** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8 1, i8* %__assignable, align 1
  %0 = load i32*, i32** %__first.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i32* @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_(i32* %0, i64 %1)
  ret i32* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_(i32* %__first, i64 %__n) #2 comdat align 2 {
entry:
  %__first.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  %ref.tmp = alloca i32, align 4
  store i32* %__first, i32** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load i32*, i32** %__first.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  store i32 0, i32* %ref.tmp, align 4
  %call = call i32* @_ZSt6fill_nIPimiET_S1_T0_RKT1_(i32* %0, i64 %1, i32* dereferenceable(4) %ref.tmp)
  ret i32* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZSt6fill_nIPimiET_S1_T0_RKT1_(i32* %__first, i64 %__n, i32* dereferenceable(4) %__value) #2 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca i32*, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i32* %__value, i32** %__value.addr, align 8
  %0 = load i32*, i32** %__first.addr, align 8
  %call = call i32* @_ZSt12__niter_baseIPiET_S1_(i32* %0)
  %1 = load i64, i64* %__n.addr, align 8
  %2 = load i32*, i32** %__value.addr, align 8
  %call1 = call i32* @_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(i32* %call, i64 %1, i32* dereferenceable(4) %2)
  ret i32* %call1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(i32* %__first, i64 %__n, i32* dereferenceable(4) %__value) #1 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca i32*, align 8
  %__tmp = alloca i32, align 4
  %__niter = alloca i64, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i32* %__value, i32** %__value.addr, align 8
  %0 = load i32*, i32** %__value.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %__tmp, align 4
  %2 = load i64, i64* %__n.addr, align 8
  store i64 %2, i64* %__niter, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %__niter, align 8
  %cmp = icmp ugt i64 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %__tmp, align 4
  %5 = load i32*, i32** %__first.addr, align 8
  store i32 %4, i32* %5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i64, i64* %__niter, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %__niter, align 8
  %7 = load i32*, i32** %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %7, i32 1
  store i32* %incdec.ptr, i32** %__first.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32*, i32** %__first.addr, align 8
  ret i32* %8
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZSt12__niter_baseIPiET_S1_(i32* %__it) #1 comdat {
entry:
  %__it.addr = alloca i32*, align 8
  store i32* %__it, i32** %__it.addr, align 8
  %0 = load i32*, i32** %__it.addr, align 8
  ret i32* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base"* %this, i32* %__p, i64 %__n) #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__p.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load i32*, i32** %__p.addr, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %_M_impl to %"class.std::allocator"*
  %2 = load i32*, i32** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%"class.std::allocator"* dereferenceable(1) %1, i32* %2, i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #6 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #8
  call void @_ZSt9terminatev() #10
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_ZSt9terminatev()

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%"class.std::allocator"* dereferenceable(1) %__a, i32* %__p, i64 %__n) #2 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca i32*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load i32*, i32** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator"* %1, i32* %2, i64 %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator"* %this, i32* %__p, i64) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca i32*, align 8
  %.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store i32* %__p, i32** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %1 = load i32*, i32** %__p.addr, align 8
  %2 = bitcast i32* %1 to i8*
  call void @_ZdlPv(i8* %2) #8
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #7

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %__first, i32* %__last, %"class.std::allocator"* dereferenceable(1)) #2 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  %.addr = alloca %"class.std::allocator"*, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  %1 = load i32*, i32** %__first.addr, align 8
  %2 = load i32*, i32** %__last.addr, align 8
  call void @_ZSt8_DestroyIPiEvT_S1_(i32* %1, i32* %2)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiEvT_S1_(i32* %__first, i32* %__last) #2 comdat {
entry:
  %__first.addr = alloca i32*, align 8
  %__last.addr = alloca i32*, align 8
  store i32* %__first, i32** %__first.addr, align 8
  store i32* %__last, i32** %__last.addr, align 8
  %0 = load i32*, i32** %__first.addr, align 8
  %1 = load i32*, i32** %__last.addr, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(i32* %0, i32* %1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(i32*, i32*) #1 comdat align 2 {
entry:
  %.addr = alloca i32*, align 8
  %.addr1 = alloca i32*, align 8
  store i32* %0, i32** %.addr, align 8
  store i32* %1, i32** %.addr1, align 8
  ret void
}

attributes #0 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline noreturn nounwind }
attributes #7 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { builtin }
attributes #10 = { noreturn nounwind }
attributes #11 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 7.0.1 (https://git.llvm.org/git/clang.git/ e44b4e4240e03c24f5479f81235519493823c27b) (https://git.llvm.org/git/llvm.git/ 08f7943cf05b989e05297fea48e2464f5af11bf1)"}
