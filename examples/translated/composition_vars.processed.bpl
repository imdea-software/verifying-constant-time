type i1 = int;
type i8 = int;
type i32 = int;
type i64 = int;
type ref = i64;
const $0.ref: ref;
axiom ($0.ref == 0);
var $M.0: [ref] i8;
function {:inline} $sgt.ref.bool(p1: ref, p2: ref) returns (bool) { $sgt.i64.bool(p1,p2) }
function {:inline} $add.ref(p1: ref, p2: ref) returns (ref) { $add.i64(p1,p2) }
function {:inline} $mul.ref(p1: ref, p2: ref) returns (ref) { $mul.i64(p1,p2) }
procedure $init_funcs()
{
  return;
}
procedure $static_init()
modifies $CurrAddr, $CurrAddr.shadow;
// accesses $CurrAddr, $CurrAddr.shadow;
{
  $CurrAddr := 1024;
  $CurrAddr.shadow := 1024;
  return;
}
procedure {:entrypoint} main() returns ($r: i32, $r.shadow: i32)
modifies $exn, $exn.shadow;
// accesses $exn, $exn.shadow;
modifies $CurrAddr, $CurrAddr.shadow;
// accesses $CurrAddr, $CurrAddr.shadow;
modifies $M.0, $M.0.shadow;
// accesses $M.0, $M.0.shadow;
modifies $Alloc;
// accesses $0.ref, $Alloc;
{
  var $p0: ref;
  var $p0.shadow: ref;
  var $p1: ref;
  var $p1.shadow: ref;
  var $p2: ref;
  var $p2.shadow: ref;
  var $p3: ref;
  var $p3.shadow: ref;
  var $p4: ref;
  var $p4.shadow: ref;
  var $p5: ref;
  var $p5.shadow: ref;
$bb0: // preds 
  call $static_init();
  call $init_funcs();
  call $p0 := $alloc($mul.ref(4,1));
  $p0.shadow := $p0;
  call $p1 := $alloc($mul.ref(12,1));
  $p1.shadow := $p1;
  call $p2 := $alloc($mul.ref(12,1));
  $p2.shadow := $p2;
  $p3 := $p0;
  $p3.shadow := $p0.shadow;
  $p4 := $p2;
  $p4.shadow := $p2.shadow;
  $p5 := $p1;
  $p5.shadow := $p1.shadow;
  call sort3($p3, $p3.shadow, $p4, $p4.shadow, $p5, $p5.shadow);
  $r := 0;
  $r.shadow := 0;
  $exn := false;
  $exn.shadow := false;
  assert ($r == $r.shadow);
  return;
}
procedure sort2(out2: ref, out2.shadow: ref, in2: ref, in2.shadow: ref) returns ($r: i32, $r.shadow: i32)
modifies $M.0, $M.0.shadow, $exn, $exn.shadow;
// accesses $M.0, $M.0.shadow, $exn, $exn.shadow;
{
  var $i1: i32;
  var $i1.shadow: i32;
  var $i12: i32;
  var $i12.shadow: i32;
  var $i15: i32;
  var $i15.shadow: i32;
  var $i17: i1;
  var $i17.shadow: i1;
  var $i18: i32;
  var $i18.shadow: i32;
  var $i3: i32;
  var $i3.shadow: i32;
  var $i4: i1;
  var $i4.shadow: i1;
  var $i6: i32;
  var $i6.shadow: i32;
  var $i9: i32;
  var $i9.shadow: i32;
  var $p0: ref;
  var $p0.shadow: ref;
  var $p10: ref;
  var $p10.shadow: ref;
  var $p11: ref;
  var $p11.shadow: ref;
  var $p13: ref;
  var $p13.shadow: ref;
  var $p14: ref;
  var $p14.shadow: ref;
  var $p16: ref;
  var $p16.shadow: ref;
  var $p2: ref;
  var $p2.shadow: ref;
  var $p5: ref;
  var $p5.shadow: ref;
  var $p7: ref;
  var $p7.shadow: ref;
  var $p8: ref;
  var $p8.shadow: ref;
$bb0: // preds 
  call {:cexpr "out2"} boogie_si_record_ref(out2);
  call {:cexpr "in2"} boogie_si_record_ref(in2);
  $p0 := in2;
  $p0.shadow := in2.shadow;
  assert ($p0 == $p0.shadow);
  $i1 := $M.0[$p0];
  $i1.shadow := $M.0.shadow[$p0.shadow];
  call {:cexpr "a"} boogie_si_record_i32($i1);
  $p2 := $add.ref(in2,4);
  $p2.shadow := $add.ref(in2.shadow,4);
  assert ($p2 == $p2.shadow);
  $i3 := $M.0[$p2];
  $i3.shadow := $M.0.shadow[$p2.shadow];
  call {:cexpr "b"} boogie_si_record_i32($i3);
  $i4 := $slt.i32($i1,$i3);
  $i4.shadow := $slt.i32($i1.shadow,$i3.shadow);
  assert ($i4 == $i4.shadow);
  goto $bb1, $bb2;
$bb1: // preds $bb0, $bb0
  assume ($i4 == 1);
  assume ($i4.shadow == 1);
  $p5 := in2;
  $p5.shadow := in2.shadow;
  assert ($p5 == $p5.shadow);
  $i6 := $M.0[$p5];
  $i6.shadow := $M.0.shadow[$p5.shadow];
  $p7 := out2;
  $p7.shadow := out2.shadow;
  assert ($p7 == $p7.shadow);
  $M.0[$p7] := $i6;
  $M.0.shadow[$p7.shadow] := $i6.shadow;
  $p8 := $add.ref(in2,4);
  $p8.shadow := $add.ref(in2.shadow,4);
  assert ($p8 == $p8.shadow);
  $i9 := $M.0[$p8];
  $i9.shadow := $M.0.shadow[$p8.shadow];
  $p10 := $add.ref(out2,4);
  $p10.shadow := $add.ref(out2.shadow,4);
  assert ($p10 == $p10.shadow);
  $M.0[$p10] := $i9;
  $M.0.shadow[$p10.shadow] := $i9.shadow;
  goto $bb3;
$bb2: // preds $bb0, $bb0
  assume !($i4 == 1);
  assume !($i4.shadow == 1);
  $p11 := $add.ref(in2,4);
  $p11.shadow := $add.ref(in2.shadow,4);
  assert ($p11 == $p11.shadow);
  $i12 := $M.0[$p11];
  $i12.shadow := $M.0.shadow[$p11.shadow];
  $p13 := out2;
  $p13.shadow := out2.shadow;
  assert ($p13 == $p13.shadow);
  $M.0[$p13] := $i12;
  $M.0.shadow[$p13.shadow] := $i12.shadow;
  $p14 := in2;
  $p14.shadow := in2.shadow;
  assert ($p14 == $p14.shadow);
  $i15 := $M.0[$p14];
  $i15.shadow := $M.0.shadow[$p14.shadow];
  $p16 := $add.ref(out2,4);
  $p16.shadow := $add.ref(out2.shadow,4);
  assert ($p16 == $p16.shadow);
  $M.0[$p16] := $i15;
  $M.0.shadow[$p16.shadow] := $i15.shadow;
  goto $bb3;
$bb3: // preds $bb1, $bb2, $bb1, $bb2
  $i17 := $slt.i32($i1,$i3);
  $i17.shadow := $slt.i32($i1.shadow,$i3.shadow);
  $i18 := $zext.i1.i32($i17);
  $i18.shadow := $zext.i1.i32($i17.shadow);
  $r := $i18;
  $r.shadow := $i18.shadow;
  $exn := false;
  $exn.shadow := false;
  assert ($r == $r.shadow);
  return;
}
procedure sort3(conds: ref, conds.shadow: ref, out3: ref, out3.shadow: ref, in3: ref, in3.shadow: ref)
ensures (conds == conds.shadow);
modifies $M.0, $M.0.shadow, $exn, $exn.shadow;
// accesses $M.0, $M.0.shadow, $exn, $exn.shadow;
{
  var $i0: i32;
  var $i0.shadow: i32;
  var $i10: i32;
  var $i10.shadow: i32;
  var $i13: i32;
  var $i13.shadow: i32;
  var $i15: i32;
  var $i15.shadow: i32;
  var $i3: i32;
  var $i3.shadow: i32;
  var $i7: i32;
  var $i7.shadow: i32;
  var $p1: ref;
  var $p1.shadow: ref;
  var $p11: ref;
  var $p11.shadow: ref;
  var $p12: ref;
  var $p12.shadow: ref;
  var $p14: ref;
  var $p14.shadow: ref;
  var $p16: ref;
  var $p16.shadow: ref;
  var $p2: ref;
  var $p2.shadow: ref;
  var $p4: ref;
  var $p4.shadow: ref;
  var $p5: ref;
  var $p5.shadow: ref;
  var $p6: ref;
  var $p6.shadow: ref;
  var $p8: ref;
  var $p8.shadow: ref;
  var $p9: ref;
  var $p9.shadow: ref;
$bb0: // preds 
  call {:cexpr "conds"} boogie_si_record_ref(conds);
  call {:cexpr "out3"} boogie_si_record_ref(out3);
  call {:cexpr "in3"} boogie_si_record_ref(in3);
  call $i0, $i0.shadow := sort2(out3, out3.shadow, in3, in3.shadow);
  $p1 := conds;
  $p1.shadow := conds.shadow;
  assert ($p1 == $p1.shadow);
  $M.0[$p1] := $i0;
  $M.0.shadow[$p1.shadow] := $i0.shadow;
  $p2 := $add.ref(out3,4);
  $p2.shadow := $add.ref(out3.shadow,4);
  assert ($p2 == $p2.shadow);
  $i3 := $M.0[$p2];
  $i3.shadow := $M.0.shadow[$p2.shadow];
  $p4 := $add.ref(in3,4);
  $p4.shadow := $add.ref(in3.shadow,4);
  assert ($p4 == $p4.shadow);
  $M.0[$p4] := $i3;
  $M.0.shadow[$p4.shadow] := $i3.shadow;
  $p5 := $add.ref(out3,4);
  $p5.shadow := $add.ref(out3.shadow,4);
  $p6 := $add.ref(in3,4);
  $p6.shadow := $add.ref(in3.shadow,4);
  call $i7, $i7.shadow := sort2($p5, $p5.shadow, $p6, $p6.shadow);
  $p8 := $add.ref(conds,4);
  $p8.shadow := $add.ref(conds.shadow,4);
  assert ($p8 == $p8.shadow);
  $M.0[$p8] := $i7;
  $M.0.shadow[$p8.shadow] := $i7.shadow;
  $p9 := out3;
  $p9.shadow := out3.shadow;
  assert ($p9 == $p9.shadow);
  $i10 := $M.0[$p9];
  $i10.shadow := $M.0.shadow[$p9.shadow];
  $p11 := in3;
  $p11.shadow := in3.shadow;
  assert ($p11 == $p11.shadow);
  $M.0[$p11] := $i10;
  $M.0.shadow[$p11.shadow] := $i10.shadow;
  $p12 := $add.ref(out3,4);
  $p12.shadow := $add.ref(out3.shadow,4);
  assert ($p12 == $p12.shadow);
  $i13 := $M.0[$p12];
  $i13.shadow := $M.0.shadow[$p12.shadow];
  $p14 := $add.ref(in3,4);
  $p14.shadow := $add.ref(in3.shadow,4);
  assert ($p14 == $p14.shadow);
  $M.0[$p14] := $i13;
  $M.0.shadow[$p14.shadow] := $i13.shadow;
  call $i15, $i15.shadow := sort2(out3, out3.shadow, in3, in3.shadow);
  $p16 := $add.ref(conds,8);
  $p16.shadow := $add.ref(conds.shadow,8);
  assert ($p16 == $p16.shadow);
  $M.0[$p16] := $i15;
  $M.0.shadow[$p16.shadow] := $i15.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
}
function {:inline} $add.i64(i1: i64, i2: i64) returns (i64) { (i1 + i2) }
function {:inline} $mul.i64(i1: i64, i2: i64) returns (i64) { (i1 * i2) }
function {:inline} $sgt.i64.bool(i1: i64, i2: i64) returns (bool) { (i1 > i2) }
function {:inline} $slt.i32(i1: i32, i2: i32) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $zext.i1.i32(i: i1) returns (i32) { i }
procedure {:inline 1} $alloc(n: ref) returns (p: ref)
modifies $CurrAddr, $Alloc;
// accesses $CurrAddr, $0.ref, $Alloc;
{
  assume $sgt.ref.bool($CurrAddr,$0.ref);
  p := $CurrAddr;
  if ($sgt.ref.bool(n,$0.ref)) {
    $CurrAddr := $add.ref($CurrAddr,n);
  }
  $Alloc[p] := true;
}
procedure boogie_si_record_i32(i: i32);
procedure boogie_si_record_ref(i: ref);
var $Alloc: [ref] bool;
var $CurrAddr: ref;
var $exn: bool;
var $exnv: int;
var $M.0.shadow: [ref] i8;
var $Alloc.shadow: [ref] bool;
var $CurrAddr.shadow: ref;
var $exn.shadow: bool;
var $exnv.shadow: int;