type i1 = int;
type i8 = int;
type i16 = int;
type i24 = int;
type i32 = int;
type i64 = int;
type i96 = int;
type i128 = int;
type ref = i32;
const $0: i32;
axiom ($0 == 0);
const $0.ref: ref;
const $1.ref: ref;
const $2.ref: ref;
const $3.ref: ref;
const $4.ref: ref;
const $5.ref: ref;
const $6.ref: ref;
const $7.ref: ref;
const $8.ref: ref;
const $9.ref: ref;
const $10.ref: ref;
const $11.ref: ref;
const $12.ref: ref;
const $13.ref: ref;
const $14.ref: ref;
axiom ($0.ref == 0);
axiom ($1.ref == 1);
axiom ($2.ref == 2);
axiom ($3.ref == 3);
axiom ($4.ref == 4);
axiom ($5.ref == 5);
axiom ($6.ref == 6);
axiom ($7.ref == 7);
axiom ($8.ref == 8);
axiom ($9.ref == 9);
axiom ($10.ref == 10);
axiom ($11.ref == 11);
axiom ($12.ref == 12);
axiom ($13.ref == 13);
axiom ($14.ref == 14);
var $M.0: [ref] i64;
var $M.0.shadow: [ref] i64;
var $M.1: [ref] i32;
var $M.1.shadow: [ref] i32;
var $M.2: [ref] i32;
var $M.2.shadow: [ref] i32;
var $M.3: [ref] i32;
var $M.3.shadow: [ref] i32;
var $M.4: [ref] i32;
var $M.4.shadow: [ref] i32;
var $M.5: [ref] i32;
var $M.5.shadow: [ref] i32;
var $M.6: [ref] i32;
var $M.6.shadow: [ref] i32;
var $M.7: [ref] i32;
var $M.7.shadow: [ref] i32;
var $M.8: [ref] i32;
var $M.8.shadow: [ref] i32;
var $M.9: [ref] i32;
var $M.9.shadow: [ref] i32;
var $M.10: [ref] i32;
var $M.10.shadow: [ref] i32;
var $M.11: [ref] i32;
var $M.11.shadow: [ref] i32;
var $M.12: [ref] i32;
var $M.12.shadow: [ref] i32;
var $M.13: [ref] i32;
var $M.13.shadow: [ref] i32;
var $M.14: [ref] i32;
var $M.14.shadow: [ref] i32;
var $M.15: [ref] i32;
var $M.15.shadow: [ref] i32;
var $M.16: [ref] i32;
var $M.16.shadow: [ref] i32;
var $M.17: [ref] i32;
var $M.17.shadow: [ref] i32;
var $M.18: [ref] i8;
var $M.18.shadow: [ref] i8;
var $M.19: [ref] i64;
var $M.19.shadow: [ref] i64;
axiom ($GLOBALS_BOTTOM == $sub.ref(0,1464));
axiom ($EXTERNS_BOTTOM == $sub.ref(0,32768));
axiom ($MALLOC_TOP == 2136997887);
function {:builtin "bv2int"} $bv2int.32(i: bv32) returns (i32);
function {:builtin "(_ int2bv 32)"} $int2bv.32(i: i32) returns (bv32);
function {:inline} $p2i.ref.i8(p: ref) returns (i8) { $trunc.i32.i8(p) }
function {:inline} $i2p.i8.ref(i: i8) returns (ref) { $zext.i8.i32(i) }
function {:inline} $p2i.ref.i16(p: ref) returns (i16) { $trunc.i32.i16(p) }
function {:inline} $i2p.i16.ref(i: i16) returns (ref) { $zext.i16.i32(i) }
function {:inline} $p2i.ref.i32(p: ref) returns (i32) { p }
function {:inline} $i2p.i32.ref(i: i32) returns (ref) { i }
function {:inline} $p2i.ref.i64(p: ref) returns (i64) { $zext.i32.i64(p) }
function {:inline} $i2p.i64.ref(i: i64) returns (ref) { $trunc.i64.i32(i) }
function {:inline} $eq.ref(p1: ref, p2: ref) returns (i1) { (if $eq.i32.bool(p1,p2) then 1 else 0) }
function {:inline} $eq.ref.bool(p1: ref, p2: ref) returns (bool) { $eq.i32.bool(p1,p2) }
function {:inline} $ne.ref(p1: ref, p2: ref) returns (i1) { (if $ne.i32.bool(p1,p2) then 1 else 0) }
function {:inline} $ne.ref.bool(p1: ref, p2: ref) returns (bool) { $ne.i32.bool(p1,p2) }
function {:inline} $ugt.ref(p1: ref, p2: ref) returns (i1) { (if $ugt.i32.bool(p1,p2) then 1 else 0) }
function {:inline} $ugt.ref.bool(p1: ref, p2: ref) returns (bool) { $ugt.i32.bool(p1,p2) }
function {:inline} $uge.ref(p1: ref, p2: ref) returns (i1) { (if $uge.i32.bool(p1,p2) then 1 else 0) }
function {:inline} $uge.ref.bool(p1: ref, p2: ref) returns (bool) { $uge.i32.bool(p1,p2) }
function {:inline} $ult.ref(p1: ref, p2: ref) returns (i1) { (if $ult.i32.bool(p1,p2) then 1 else 0) }
function {:inline} $ult.ref.bool(p1: ref, p2: ref) returns (bool) { $ult.i32.bool(p1,p2) }
function {:inline} $ule.ref(p1: ref, p2: ref) returns (i1) { (if $ule.i32.bool(p1,p2) then 1 else 0) }
function {:inline} $ule.ref.bool(p1: ref, p2: ref) returns (bool) { $ule.i32.bool(p1,p2) }
function {:inline} $sgt.ref(p1: ref, p2: ref) returns (i1) { (if $sgt.i32.bool(p1,p2) then 1 else 0) }
function {:inline} $sgt.ref.bool(p1: ref, p2: ref) returns (bool) { $sgt.i32.bool(p1,p2) }
function {:inline} $sge.ref(p1: ref, p2: ref) returns (i1) { (if $sge.i32.bool(p1,p2) then 1 else 0) }
function {:inline} $sge.ref.bool(p1: ref, p2: ref) returns (bool) { $sge.i32.bool(p1,p2) }
function {:inline} $slt.ref(p1: ref, p2: ref) returns (i1) { (if $slt.i32.bool(p1,p2) then 1 else 0) }
function {:inline} $slt.ref.bool(p1: ref, p2: ref) returns (bool) { $slt.i32.bool(p1,p2) }
function {:inline} $sle.ref(p1: ref, p2: ref) returns (i1) { (if $sle.i32.bool(p1,p2) then 1 else 0) }
function {:inline} $sle.ref.bool(p1: ref, p2: ref) returns (bool) { $sle.i32.bool(p1,p2) }
function {:inline} $add.ref(p1: ref, p2: ref) returns (ref) { $add.i32(p1,p2) }
function {:inline} $sub.ref(p1: ref, p2: ref) returns (ref) { $sub.i32(p1,p2) }
function {:inline} $mul.ref(p1: ref, p2: ref) returns (ref) { $mul.i32(p1,p2) }
const .str1: ref;
const .str2: ref;
const .str3: ref;
const FFT_add: ref;
const FFT_mul: ref;
const RANDOM192: ref;
const RANDOM32: ref;
const RANDOM64: ref;
const __SMACK_code: ref;
const __SMACK_decls: ref;
const __SMACK_dummy: ref;
const __SMACK_init_func_memory_model: ref;
const __SMACK_static_init: ref;
const __SMACK_top_decl: ref;
const __SMACK_value: ref;
const __VERIFIER_assume: ref;
const __VERIFIER_nondet: ref;
const __VERIFIER_nondet_unsigned_char: ref;
const __VERIFIER_nondet_unsigned_int: ref;
const __VERIFIER_nondet_unsigned_long: ref;
const __VERIFIER_nondet_unsigned_short: ref;
const cmplt_ct: ref;
const ct_eq_u64: ref;
const ct_ge_u64: ref;
const ct_gt_u64: ref;
const ct_isnonzero_u64: ref;
const ct_le_u64: ref;
const ct_lt_u64: ref;
const ct_mask_u64: ref;
const ct_ne_u64: ref;
const ct_select_u64: ref;
const dbl: ref;
const free_: ref;
const llvm.dbg.declare: ref;
const llvm.dbg.value: ref;
const llvm.memset.p0i8.i32: ref;
const malloc: ref;
const naive: ref;
const nussbaumer_fft: ref;
const public_in_value: ref;
const random: ref;
const reverse: ref;
const {:count 52} rlwe_table: ref;
const sample_ct: ref;
const sample_ct_wrapper: ref;
const single_sample: ref;
const single_sample_ct: ref;
procedure {:inline 2} $initialize()
{
  call __SMACK_static_init();
  call __SMACK_init_func_memory_model();
  return;
}
procedure {:inline 2} FFT_add(z: ref, z.shadow: ref, x: ref, x.shadow: ref, y: ref, y.shadow: ref)
{
  var $i0: i32;
  var $i0.shadow: i32;
  var $i1: i1;
  var $i1.shadow: i1;
  var $i10: i32;
  var $i10.shadow: i32;
  var $i11: i32;
  var $i11.shadow: i32;
  var $i13: i32;
  var $i13.shadow: i32;
  var $i3: i32;
  var $i3.shadow: i32;
  var $i5: i32;
  var $i5.shadow: i32;
  var $i6: i32;
  var $i6.shadow: i32;
  var $i8: i32;
  var $i8.shadow: i32;
  var $i9: i1;
  var $i9.shadow: i1;
  var $p12: ref;
  var $p12.shadow: ref;
  var $p2: ref;
  var $p2.shadow: ref;
  var $p4: ref;
  var $p4.shadow: ref;
  var $p7: ref;
  var $p7.shadow: ref;
$bb0:
  call {:cexpr "z"} boogie_si_record_ref(z);
  call {:cexpr "x"} boogie_si_record_ref(x);
  call {:cexpr "y"} boogie_si_record_ref(y);
  call {:cexpr "i"} boogie_si_record_i32(0);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 230, 8} true;
  $i0 := 0;
  $i0.shadow := 0;
  goto $bb1;
$bb1:
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 230, 8} true;
  $i1 := $slt.i32($i0,1024);
  $i1.shadow := $slt.i32($i0.shadow,1024);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 230, 8} true;
  assume {:branchcond $i1} true;
  $shadow_ok := ($shadow_ok && ($i1 == $i1.shadow));
  goto $bb2, $bb3;
$bb2:
  assume ($i1 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 231, 5} true;
  $p2 := $add.ref(x,$mul.ref($i0,4));
  $p2.shadow := $add.ref(x.shadow,$mul.ref($i0.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 231, 5} true;
  $shadow_ok := ($shadow_ok && ($p2 == $p2.shadow));
  $i3 := $load.i32($M.1,$p2);
  $i3.shadow := $load.i32($M.1.shadow,$p2.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 231, 5} true;
  $p4 := $add.ref(y,$mul.ref($i0,4));
  $p4.shadow := $add.ref(y.shadow,$mul.ref($i0.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 231, 5} true;
  $shadow_ok := ($shadow_ok && ($p4 == $p4.shadow));
  $i5 := $load.i32($M.2,$p4);
  $i5.shadow := $load.i32($M.2.shadow,$p4.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 231, 5} true;
  $i6 := $add.i32($i3,$i5);
  $i6.shadow := $add.i32($i3.shadow,$i5.shadow);
  call {:cexpr "_t"} boogie_si_record_i32($i6);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 231, 5} true;
  $p7 := $add.ref(x,$mul.ref($i0,4));
  $p7.shadow := $add.ref(x.shadow,$mul.ref($i0.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 231, 5} true;
  $shadow_ok := ($shadow_ok && ($p7 == $p7.shadow));
  $i8 := $load.i32($M.1,$p7);
  $i8.shadow := $load.i32($M.1.shadow,$p7.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 231, 5} true;
  $i9 := $ult.i32($i6,$i8);
  $i9.shadow := $ult.i32($i6.shadow,$i8.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 231, 5} true;
  $i10 := $zext.i1.i32($i9);
  $i10.shadow := $zext.i1.i32($i9.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 231, 5} true;
  $i11 := $add.i32($i6,$i10);
  $i11.shadow := $add.i32($i6.shadow,$i10.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 231, 5} true;
  $p12 := $add.ref(z,$mul.ref($i0,4));
  $p12.shadow := $add.ref(z.shadow,$mul.ref($i0.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 231, 5} true;
  $shadow_ok := ($shadow_ok && ($p12 == $p12.shadow));
  $M.3 := $store.i32($M.3,$p12,$i11);
  $M.3.shadow := $store.i32($M.3.shadow,$p12.shadow,$i11.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 230, 25} true;
  $i13 := $add.i32($i0,1);
  $i13.shadow := $add.i32($i0.shadow,1);
  call {:cexpr "i"} boogie_si_record_i32($i13);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 230, 25} true;
  $i0 := $i13;
  $i0.shadow := $i13.shadow;
  goto $bb1;
$bb3:
  assume !($i1 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 233, 1} true;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 2} FFT_mul(z: ref, z.shadow: ref, x: ref, x.shadow: ref, y: ref, y.shadow: ref, ctx: ref, ctx.shadow: ref)
{
$bb0:
  call {:cexpr "z"} boogie_si_record_ref(z);
  call {:cexpr "x"} boogie_si_record_ref(x);
  call {:cexpr "y"} boogie_si_record_ref(y);
  call {:cexpr "ctx"} boogie_si_record_ref(ctx);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 225, 3} true;
  call nussbaumer_fft(z, z.shadow, x, x.shadow, y, y.shadow, ctx, ctx.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 226, 1} true;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 2} RANDOM192(r: ref, r.shadow: ref, rand_ctx: ref, rand_ctx.shadow: ref)
{
  var $i0: i64;
  var $i0.shadow: i64;
  var $i2: i64;
  var $i2.shadow: i64;
  var $i4: i64;
  var $i4.shadow: i64;
  var $p1: ref;
  var $p1.shadow: ref;
  var $p3: ref;
  var $p3.shadow: ref;
  var $p5: ref;
  var $p5.shadow: ref;
$bb0:
  call {:cexpr "r"} boogie_si_record_ref(r);
  call {:cexpr "rand_ctx"} boogie_si_record_ref(rand_ctx);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe_rand_c.c", 25, 10} true;
  call $i0, $i0.shadow := RANDOM64(rand_ctx, rand_ctx.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe_rand_c.c", 25, 10} true;
  $p1 := r;
  $p1.shadow := r.shadow;
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe_rand_c.c", 25, 10} true;
  $shadow_ok := ($shadow_ok && ($p1 == $p1.shadow));
  $M.0 := $store.i64($M.0,$p1,$i0);
  $M.0.shadow := $store.i64($M.0.shadow,$p1.shadow,$i0.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe_rand_c.c", 26, 10} true;
  call $i2, $i2.shadow := RANDOM64(rand_ctx, rand_ctx.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe_rand_c.c", 26, 10} true;
  $p3 := $add.ref(r,8);
  $p3.shadow := $add.ref(r.shadow,8);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe_rand_c.c", 26, 10} true;
  $shadow_ok := ($shadow_ok && ($p3 == $p3.shadow));
  $M.0 := $store.i64($M.0,$p3,$i2);
  $M.0.shadow := $store.i64($M.0.shadow,$p3.shadow,$i2.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe_rand_c.c", 27, 10} true;
  call $i4, $i4.shadow := RANDOM64(rand_ctx, rand_ctx.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe_rand_c.c", 27, 10} true;
  $p5 := $add.ref(r,16);
  $p5.shadow := $add.ref(r.shadow,16);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe_rand_c.c", 27, 10} true;
  $shadow_ok := ($shadow_ok && ($p5 == $p5.shadow));
  $M.0 := $store.i64($M.0,$p5,$i4);
  $M.0.shadow := $store.i64($M.0.shadow,$p5.shadow,$i4.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe_rand_c.c", 28, 1} true;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 2} RANDOM32(rand_ctx: ref, rand_ctx.shadow: ref) returns ($r: i32, $r.shadow: i32)
{
  var $i0: i32;
  var $i0.shadow: i32;
  var $i1: i32;
  var $i1.shadow: i32;
  var $i2: i32;
  var $i2.shadow: i32;
  var $i3: i32;
  var $i3.shadow: i32;
$bb0:
  call {:cexpr "rand_ctx"} boogie_si_record_ref(rand_ctx);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe_rand_c.c", 17, 23} true;
  call $i0, $i0.shadow := random();
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe_rand_c.c", 17, 23} true;
  $i1 := $shl.i32($i0,16);
  $i1.shadow := $shl.i32($i0.shadow,16);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe_rand_c.c", 17, 41} true;
  call $i2, $i2.shadow := random();
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe_rand_c.c", 17, 41} true;
  $i3 := $xor.i32($i1,$i2);
  $i3.shadow := $xor.i32($i1.shadow,$i2.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe_rand_c.c", 17, 41} true;
  $r := $i3;
  $r.shadow := $i3.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 2} RANDOM64(rand_ctx: ref, rand_ctx.shadow: ref) returns ($r: i64, $r.shadow: i64)
{
$bb0:
  call {:cexpr "rand_ctx"} boogie_si_record_ref(rand_ctx);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe_rand_c.c", 21, 3} true;
  $r := $or.i64($shl.i64($p2i.ref.i64(RANDOM32),32),$p2i.ref.i64(RANDOM32));
  $r.shadow := $or.i64($shl.i64($p2i.ref.i64(RANDOM32),32),$p2i.ref.i64(RANDOM32));
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 2} __SMACK_code.ref($p0: ref, $p0.shadow: ref);
procedure {:inline 2} __SMACK_code.ref.i32($p2: ref, $p2.shadow: ref, $i3: i32, $i3.shadow: i32);
procedure {:inline 2} __SMACK_dummy(v: i32, v.shadow: i32)
{
$bb0:
  call {:cexpr "v"} boogie_si_record_i32(v);
  assume {:sourceloc "/home/francois/repositories/ct-verif/tools/smack/share/smack/lib/smack.c", 79, 3} true;
  assume true;
  assume {:sourceloc "/home/francois/repositories/ct-verif/tools/smack/share/smack/lib/smack.c", 80, 1} true;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 2} __SMACK_init_func_memory_model()
{
$bb0:
  assume {:sourceloc "/home/francois/repositories/ct-verif/tools/smack/share/smack/lib/smack.c", 750, 3} true;
  $CurrAddr := 1024;
  $CurrAddr.shadow := 1024;
  assume {:sourceloc "/home/francois/repositories/ct-verif/tools/smack/share/smack/lib/smack.c", 751, 1} true;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 2} __SMACK_static_init()
{
$bb0:
  $shadow_ok := ($shadow_ok && (rlwe_table == rlwe_table));
  $M.19 := $store.i64($M.19,rlwe_table,$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,rlwe_table,$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,8) == $add.ref(rlwe_table,8)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,8),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,8),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,16) == $add.ref(rlwe_table,16)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,16),2305843009213693951);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,16),2305843009213693951);
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,24) == $add.ref(rlwe_table,24)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,24),$sub.i64(0,2249515437238207198));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,24),$sub.i64(0,2249515437238207198));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,24),8) == $add.ref($add.ref(rlwe_table,24),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,24),8),1592793330845037890);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,24),8),1592793330845037890);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,24),16) == $add.ref($add.ref(rlwe_table,24),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,24),16),6696619706335807527);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,24),16),6696619706335807527);
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,48) == $add.ref(rlwe_table,48)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,48),$sub.i64(0,8285941281797147640));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,48),$sub.i64(0,8285941281797147640));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,48),8) == $add.ref($add.ref(rlwe_table,48),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,48),8),4847211466624024354);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,48),8),4847211466624024354);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,48),16) == $add.ref($add.ref(rlwe_table,48),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,48),16),$sub.i64(0,7960586867416080608));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,48),16),$sub.i64(0,7960586867416080608));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,72) == $add.ref(rlwe_table,72)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,72),1201472555760626235);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,72),1201472555760626235);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,72),8) == $add.ref($add.ref(rlwe_table,72),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,72),8),6729167730292914195);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,72),8),6729167730292914195);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,72),16) == $add.ref($add.ref(rlwe_table,72),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,72),16),$sub.i64(0,4995794346518559821));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,72),16),$sub.i64(0,4995794346518559821));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,96) == $add.ref(rlwe_table,96)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,96),8114521816297691137);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,96),8114521816297691137);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,96),8) == $add.ref($add.ref(rlwe_table,96),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,96),8),1446206685223734562);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,96),8),1446206685223734562);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,96),16) == $add.ref($add.ref(rlwe_table,96),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,96),16),$sub.i64(0,2893150857432154959));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,96),16),$sub.i64(0,2893150857432154959));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,120) == $add.ref(rlwe_table,120)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,120),7099880999596852407);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,120),7099880999596852407);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,120),8) == $add.ref($add.ref(rlwe_table,120),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,120),8),9085210524266802976);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,120),8),9085210524266802976);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,120),16) == $add.ref($add.ref(rlwe_table,120),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,120),16),$sub.i64(0,1541388906239511059));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,120),16),$sub.i64(0,1541388906239511059));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,144) == $add.ref(rlwe_table,144)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,144),3804376278167319566);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,144),3804376278167319566);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,144),8) == $add.ref($add.ref(rlwe_table,144),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,144),8),$sub.i64(0,1742152845963475340));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,144),8),$sub.i64(0,1742152845963475340));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,144),16) == $add.ref($add.ref(rlwe_table,144),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,144),16),$sub.i64(0,753621456182986551));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,144),16),$sub.i64(0,753621456182986551));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,168) == $add.ref(rlwe_table,168)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,168),$sub.i64(0,3088915277557480542));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,168),$sub.i64(0,3088915277557480542));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,168),8) == $add.ref($add.ref(rlwe_table,168),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,168),8),$sub.i64(0,1682248557238023509));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,168),8),$sub.i64(0,1682248557238023509));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,168),16) == $add.ref($add.ref(rlwe_table,168),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,168),16),$sub.i64(0,337462653598058568));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,168),16),$sub.i64(0,337462653598058568));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,192) == $add.ref(rlwe_table,192)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,192),$sub.i64(0,4334180823331202454));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,192),$sub.i64(0,4334180823331202454));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,192),8) == $add.ref($add.ref(rlwe_table,192),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,192),8),1480756976636283163);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,192),8),1480756976636283163);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,192),16) == $add.ref($add.ref(rlwe_table,192),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,192),16),$sub.i64(0,138173630939556141));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,192),16),$sub.i64(0,138173630939556141));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,216) == $add.ref(rlwe_table,216)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,216),3316351689789417462);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,216),3316351689789417462);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,216),8) == $add.ref($add.ref(rlwe_table,216),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,216),8),568664117948907593);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,216),8),568664117948907593);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,216),16) == $add.ref($add.ref(rlwe_table,216),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,216),16),$sub.i64(0,51662715363560952));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,216),16),$sub.i64(0,51662715363560952));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,240) == $add.ref(rlwe_table,240)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,240),$sub.i64(0,221257131472947838));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,240),$sub.i64(0,221257131472947838));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,240),8) == $add.ref($add.ref(rlwe_table,240),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,240),8),1897152060538422174);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,240),8),1897152060538422174);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,240),16) == $add.ref($add.ref(rlwe_table,240),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,240),16),$sub.i64(0,17620197165958014));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,240),16),$sub.i64(0,17620197165958014));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,264) == $add.ref(rlwe_table,264)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,264),5756214254893706272);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,264),5756214254893706272);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,264),8) == $add.ref($add.ref(rlwe_table,264),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,264),8),$sub.i64(0,159424796309251752));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,264),8),$sub.i64(0,159424796309251752));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,264),16) == $add.ref($add.ref(rlwe_table,264),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,264),16),$sub.i64(0,5476926167104741));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,264),16),$sub.i64(0,5476926167104741));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,288) == $add.ref(rlwe_table,288)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,288),$sub.i64(0,6672639234738422049));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,288),$sub.i64(0,6672639234738422049));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,288),8) == $add.ref($add.ref(rlwe_table,288),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,288),8),$sub.i64(0,6414017842826773280));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,288),8),$sub.i64(0,6414017842826773280));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,288),16) == $add.ref($add.ref(rlwe_table,288),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,288),16),$sub.i64(0,1550359866037208));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,288),16),$sub.i64(0,1550359866037208));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,312) == $add.ref(rlwe_table,312)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,312),$sub.i64(0,7124733095156397737));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,312),$sub.i64(0,7124733095156397737));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,312),8) == $add.ref($add.ref(rlwe_table,312),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,312),8),5442209146708233141);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,312),8),5442209146708233141);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,312),16) == $add.ref($add.ref(rlwe_table,312),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,312),16),$sub.i64(0,399417910446676));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,312),16),$sub.i64(0,399417910446676));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,336) == $add.ref(rlwe_table,336)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,336),7727873114359271499);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,336),7727873114359271499);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,336),8) == $add.ref($add.ref(rlwe_table,336),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,336),8),$sub.i64(0,1409008076688890937));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,336),8),$sub.i64(0,1409008076688890937));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,336),16) == $add.ref($add.ref(rlwe_table,336),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,336),16),$sub.i64(0,93604062385515));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,336),16),$sub.i64(0,93604062385515));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,360) == $add.ref(rlwe_table,360)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,360),5244681734649349984);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,360),5244681734649349984);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,360),8) == $add.ref($add.ref(rlwe_table,360),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,360),8),3710793567371725401);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,360),8),3710793567371725401);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,360),16) == $add.ref($add.ref(rlwe_table,360),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,360),16),$sub.i64(0,19945351792932));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,360),16),$sub.i64(0,19945351792932));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,384) == $add.ref(rlwe_table,384)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,384),$sub.i64(0,8914863981107137049));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,384),$sub.i64(0,8914863981107137049));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,384),8) == $add.ref($add.ref(rlwe_table,384),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,384),8),$sub.i64(0,2783652087159636841));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,384),8),$sub.i64(0,2783652087159636841));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,384),16) == $add.ref($add.ref(rlwe_table,384),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,384),16),$sub.i64(0,3862823807334));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,384),16),$sub.i64(0,3862823807334));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,408) == $add.ref(rlwe_table,408)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,408),2576091611781134863);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,408),2576091611781134863);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,408),8) == $add.ref($add.ref(rlwe_table,408),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,408),8),$sub.i64(0,8211448420591766881));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,408),8),$sub.i64(0,8211448420591766881));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,408),16) == $add.ref($add.ref(rlwe_table,408),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,408),16),$sub.i64(0,679742308371));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,408),16),$sub.i64(0,679742308371));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,432) == $add.ref(rlwe_table,432)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,432),$sub.i64(0,8013982477908027129));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,432),$sub.i64(0,8013982477908027129));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,432),8) == $add.ref($add.ref(rlwe_table,432),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,432),8),412597397662358701);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,432),8),412597397662358701);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,432),16) == $add.ref($add.ref(rlwe_table,432),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,432),16),$sub.i64(0,108652460553));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,432),16),$sub.i64(0,108652460553));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,456) == $add.ref(rlwe_table,456)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,456),7579042041359821949);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,456),7579042041359821949);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,456),8) == $add.ref($add.ref(rlwe_table,456),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,456),8),$sub.i64(0,7356358222035343450));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,456),8),$sub.i64(0,7356358222035343450));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,456),16) == $add.ref($add.ref(rlwe_table,456),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,456),16),$sub.i64(0,15771999986));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,456),16),$sub.i64(0,15771999986));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,480) == $add.ref(rlwe_table,480)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,480),2937078737514233032);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,480),2937078737514233032);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,480),8) == $add.ref($add.ref(rlwe_table,480),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,480),8),$sub.i64(0,4115462299849155912));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,480),8),$sub.i64(0,4115462299849155912));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,480),16) == $add.ref($add.ref(rlwe_table,480),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,480),16),$sub.i64(0,2078719010));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,480),16),$sub.i64(0,2078719010));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,504) == $add.ref(rlwe_table,504)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,504),$sub.i64(0,4245259145448324522));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,504),$sub.i64(0,4245259145448324522));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,504),8) == $add.ref($add.ref(rlwe_table,504),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,504),8),5135670640006259933);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,504),8),5135670640006259933);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,504),16) == $add.ref($add.ref(rlwe_table,504),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,504),16),$sub.i64(0,248707092));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,504),16),$sub.i64(0,248707092));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,528) == $add.ref(rlwe_table,528)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,528),4175097344414281274);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,528),4175097344414281274);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,528),8) == $add.ref($add.ref(rlwe_table,528),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,528),8),$sub.i64(0,1269218905647454908));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,528),8),$sub.i64(0,1269218905647454908));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,528),16) == $add.ref($add.ref(rlwe_table,528),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,528),16),$sub.i64(0,27008184));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,528),16),$sub.i64(0,27008184));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,552) == $add.ref(rlwe_table,552)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,552),$sub.i64(0,2372909758022393130));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,552),$sub.i64(0,2372909758022393130));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,552),8) == $add.ref($add.ref(rlwe_table,552),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,552),8),453188373741758787);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,552),8),453188373741758787);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,552),16) == $add.ref($add.ref(rlwe_table,552),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,552),16),$sub.i64(0,2661689));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,552),16),$sub.i64(0,2661689));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,576) == $add.ref(rlwe_table,576)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,576),$sub.i64(0,3622567734810580465));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,576),$sub.i64(0,3622567734810580465));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,576),8) == $add.ref($add.ref(rlwe_table,576),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,576),8),$sub.i64(0,4146984406966275723));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,576),8),$sub.i64(0,4146984406966275723));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,576),16) == $add.ref($add.ref(rlwe_table,576),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,576),16),$sub.i64(0,238025));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,576),16),$sub.i64(0,238025));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,600) == $add.ref(rlwe_table,600)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,600),$sub.i64(0,163987042379365159));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,600),$sub.i64(0,163987042379365159));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,600),8) == $add.ref($add.ref(rlwe_table,600),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,600),8),7691858653836623235);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,600),8),7691858653836623235);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,600),16) == $add.ref($add.ref(rlwe_table,600),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,600),16),$sub.i64(0,19313));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,600),16),$sub.i64(0,19313));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,624) == $add.ref(rlwe_table,624)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,624),4345952454949945553);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,624),4345952454949945553);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,624),8) == $add.ref($add.ref(rlwe_table,624),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,624),8),7599147959704820245);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,624),8),7599147959704820245);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,624),16) == $add.ref($add.ref(rlwe_table,624),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,624),16),$sub.i64(0,1422));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,624),16),$sub.i64(0,1422));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,648) == $add.ref(rlwe_table,648)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,648),1546085497072313971);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,648),1546085497072313971);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,648),8) == $add.ref($add.ref(rlwe_table,648),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,648),8),1366177341857689681);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,648),8),1366177341857689681);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,648),16) == $add.ref($add.ref(rlwe_table,648),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,648),16),$sub.i64(0,95));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,648),16),$sub.i64(0,95));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,672) == $add.ref(rlwe_table,672)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,672),$sub.i64(0,2504620299271065059));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,672),$sub.i64(0,2504620299271065059));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,672),8) == $add.ref($add.ref(rlwe_table,672),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,672),8),4618139318551590258);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,672),8),4618139318551590258);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,672),16) == $add.ref($add.ref(rlwe_table,672),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,672),16),$sub.i64(0,6));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,672),16),$sub.i64(0,6));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,696) == $add.ref(rlwe_table,696)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,696),$sub.i64(0,5429959273906464134));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,696),$sub.i64(0,5429959273906464134));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,696),8) == $add.ref($add.ref(rlwe_table,696),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,696),8),$sub.i64(0,5826855619313110065));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,696),8),$sub.i64(0,5826855619313110065));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,696),16) == $add.ref($add.ref(rlwe_table,696),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,696),16),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,696),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,720) == $add.ref(rlwe_table,720)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,720),$sub.i64(0,7996868458510334874));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,720),$sub.i64(0,7996868458510334874));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,720),8) == $add.ref($add.ref(rlwe_table,720),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,720),8),$sub.i64(0,290334284935122246));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,720),8),$sub.i64(0,290334284935122246));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,720),16) == $add.ref($add.ref(rlwe_table,720),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,720),16),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,720),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,744) == $add.ref(rlwe_table,744)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,744),$sub.i64(0,7612316087120139260));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,744),$sub.i64(0,7612316087120139260));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,744),8) == $add.ref($add.ref(rlwe_table,744),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,744),8),$sub.i64(0,13119898084858593));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,744),8),$sub.i64(0,13119898084858593));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,744),16) == $add.ref($add.ref(rlwe_table,744),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,744),16),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,744),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,768) == $add.ref(rlwe_table,768)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,768),$sub.i64(0,1126051830318683997));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,768),$sub.i64(0,1126051830318683997));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,768),8) == $add.ref($add.ref(rlwe_table,768),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,768),8),$sub.i64(0,537663087921652));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,768),8),$sub.i64(0,537663087921652));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,768),16) == $add.ref($add.ref(rlwe_table,768),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,768),16),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,768),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,792) == $add.ref(rlwe_table,792)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,792),8638850255858835176);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,792),8638850255858835176);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,792),8) == $add.ref($add.ref(rlwe_table,792),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,792),8),$sub.i64(0,19981096073240));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,792),8),$sub.i64(0,19981096073240));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,792),16) == $add.ref($add.ref(rlwe_table,792),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,792),16),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,792),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,816) == $add.ref(rlwe_table,816)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,816),$sub.i64(0,7892498872047561718));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,816),$sub.i64(0,7892498872047561718));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,816),8) == $add.ref($add.ref(rlwe_table,816),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,816),8),$sub.i64(0,673350717809));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,816),8),$sub.i64(0,673350717809));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,816),16) == $add.ref($add.ref(rlwe_table,816),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,816),16),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,816),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,840) == $add.ref(rlwe_table,840)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,840),$sub.i64(0,6541798857842774664));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,840),$sub.i64(0,6541798857842774664));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,840),8) == $add.ref($add.ref(rlwe_table,840),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,840),8),$sub.i64(0,20576029743));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,840),8),$sub.i64(0,20576029743));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,840),16) == $add.ref($add.ref(rlwe_table,840),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,840),16),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,840),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,864) == $add.ref(rlwe_table,864)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,864),$sub.i64(0,8126034038526992427));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,864),$sub.i64(0,8126034038526992427));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,864),8) == $add.ref($add.ref(rlwe_table,864),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,864),8),$sub.i64(0,570120773));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,864),8),$sub.i64(0,570120773));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,864),16) == $add.ref($add.ref(rlwe_table,864),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,864),16),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,864),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,888) == $add.ref(rlwe_table,888)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,888),3534731305511073559);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,888),3534731305511073559);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,888),8) == $add.ref($add.ref(rlwe_table,888),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,888),8),$sub.i64(0,14323374));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,888),8),$sub.i64(0,14323374));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,888),16) == $add.ref($add.ref(rlwe_table,888),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,888),16),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,888),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,912) == $add.ref(rlwe_table,912)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,912),2243259166596724940);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,912),2243259166596724940);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,912),8) == $add.ref($add.ref(rlwe_table,912),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,912),8),$sub.i64(0,326277));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,912),8),$sub.i64(0,326277));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,912),16) == $add.ref($add.ref(rlwe_table,912),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,912),16),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,912),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,936) == $add.ref(rlwe_table,936)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,936),4371259963399398074);
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,936),4371259963399398074);
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,936),8) == $add.ref($add.ref(rlwe_table,936),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,936),8),$sub.i64(0,6739));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,936),8),$sub.i64(0,6739));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,936),16) == $add.ref($add.ref(rlwe_table,936),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,936),16),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,936),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,960) == $add.ref(rlwe_table,960)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,960),$sub.i64(0,3469514896178575716));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,960),$sub.i64(0,3469514896178575716));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,960),8) == $add.ref($add.ref(rlwe_table,960),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,960),8),$sub.i64(0,127));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,960),8),$sub.i64(0,127));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,960),16) == $add.ref($add.ref(rlwe_table,960),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,960),16),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,960),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,984) == $add.ref(rlwe_table,984)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,984),$sub.i64(0,2626126821433424814));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,984),$sub.i64(0,2626126821433424814));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,984),8) == $add.ref($add.ref(rlwe_table,984),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,984),8),$sub.i64(0,3));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,984),8),$sub.i64(0,3));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,984),16) == $add.ref($add.ref(rlwe_table,984),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,984),16),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,984),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,1008) == $add.ref(rlwe_table,1008)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,1008),$sub.i64(0,608298585034979133));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,1008),$sub.i64(0,608298585034979133));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1008),8) == $add.ref($add.ref(rlwe_table,1008),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,1008),8),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,1008),8),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1008),16) == $add.ref($add.ref(rlwe_table,1008),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,1008),16),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,1008),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,1032) == $add.ref(rlwe_table,1032)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,1032),$sub.i64(0,8488755704112603));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,1032),$sub.i64(0,8488755704112603));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1032),8) == $add.ref($add.ref(rlwe_table,1032),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,1032),8),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,1032),8),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1032),16) == $add.ref($add.ref(rlwe_table,1032),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,1032),16),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,1032),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,1056) == $add.ref(rlwe_table,1056)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,1056),$sub.i64(0,107396140848310));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,1056),$sub.i64(0,107396140848310));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1056),8) == $add.ref($add.ref(rlwe_table,1056),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,1056),8),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,1056),8),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1056),16) == $add.ref($add.ref(rlwe_table,1056),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,1056),16),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,1056),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,1080) == $add.ref(rlwe_table,1080)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,1080),$sub.i64(0,1231815223473));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,1080),$sub.i64(0,1231815223473));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1080),8) == $add.ref($add.ref(rlwe_table,1080),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,1080),8),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,1080),8),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1080),16) == $add.ref($add.ref(rlwe_table,1080),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,1080),16),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,1080),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,1104) == $add.ref(rlwe_table,1104)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,1104),$sub.i64(0,12808847295));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,1104),$sub.i64(0,12808847295));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1104),8) == $add.ref($add.ref(rlwe_table,1104),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,1104),8),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,1104),8),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1104),16) == $add.ref($add.ref(rlwe_table,1104),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,1104),16),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,1104),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,1128) == $add.ref(rlwe_table,1128)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,1128),$sub.i64(0,120747434));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,1128),$sub.i64(0,120747434));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1128),8) == $add.ref($add.ref(rlwe_table,1128),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,1128),8),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,1128),8),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1128),16) == $add.ref($add.ref(rlwe_table,1128),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,1128),16),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,1128),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,1152) == $add.ref(rlwe_table,1152)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,1152),$sub.i64(0,1031919));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,1152),$sub.i64(0,1031919));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1152),8) == $add.ref($add.ref(rlwe_table,1152),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,1152),8),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,1152),8),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1152),16) == $add.ref($add.ref(rlwe_table,1152),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,1152),16),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,1152),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,1176) == $add.ref(rlwe_table,1176)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,1176),$sub.i64(0,7995));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,1176),$sub.i64(0,7995));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1176),8) == $add.ref($add.ref(rlwe_table,1176),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,1176),8),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,1176),8),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1176),16) == $add.ref($add.ref(rlwe_table,1176),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,1176),16),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,1176),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,1200) == $add.ref(rlwe_table,1200)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,1200),$sub.i64(0,57));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,1200),$sub.i64(0,57));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1200),8) == $add.ref($add.ref(rlwe_table,1200),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,1200),8),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,1200),8),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1200),16) == $add.ref($add.ref(rlwe_table,1200),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,1200),16),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,1200),16),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref(rlwe_table,1224) == $add.ref(rlwe_table,1224)));
  $M.19 := $store.i64($M.19,$add.ref(rlwe_table,1224),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref(rlwe_table,1224),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1224),8) == $add.ref($add.ref(rlwe_table,1224),8)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,1224),8),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,1224),8),$sub.i64(0,1));
  $shadow_ok := ($shadow_ok && ($add.ref($add.ref(rlwe_table,1224),16) == $add.ref($add.ref(rlwe_table,1224),16)));
  $M.19 := $store.i64($M.19,$add.ref($add.ref(rlwe_table,1224),16),$sub.i64(0,1));
  $M.19.shadow := $store.i64($M.19.shadow,$add.ref($add.ref(rlwe_table,1224),16),$sub.i64(0,1));
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 2} __SMACK_top_decl.ref($p0: ref, $p0.shadow: ref);
procedure {:inline 2} __SMACK_value.ref($p0: ref, $p0.shadow: ref) returns ($r: ref, $r.shadow: ref);
procedure {:inline 1} __VERIFIER_assume(x: i32)
{
$bb0:
  call {:cexpr "x"} boogie_si_record_i32(x);
  call {:cexpr "v"} boogie_si_record_i32(x);
  assume {:sourceloc "/home/francois/repositories/ct-verif/tools/smack/share/smack/lib/smack.c", 79, 3} true;
  assume true;
  assume {:sourceloc "/home/francois/repositories/ct-verif/tools/smack/share/smack/lib/smack.c", 31, 21} true;
  assume (x != $0);
  assume {:sourceloc "/home/francois/repositories/ct-verif/tools/smack/share/smack/lib/smack.c", 32, 1} true;
  $exn := false;
  return;
}
procedure {:inline 2} cmplt_ct(a: ref, a.shadow: ref, b: ref, b.shadow: ref) returns ($r: i32, $r.shadow: i32)
{
  var $i0: i64;
  var $i0.shadow: i64;
  var $i1: i64;
  var $i1.shadow: i64;
  var $i10: i64;
  var $i10.shadow: i64;
  var $i11: i64;
  var $i11.shadow: i64;
  var $i13: i64;
  var $i13.shadow: i64;
  var $i15: i64;
  var $i15.shadow: i64;
  var $i16: i64;
  var $i16.shadow: i64;
  var $i17: i64;
  var $i17.shadow: i64;
  var $i18: i64;
  var $i18.shadow: i64;
  var $i19: i32;
  var $i19.shadow: i32;
  var $i2: i32;
  var $i2.shadow: i32;
  var $i20: i64;
  var $i20.shadow: i64;
  var $i21: i32;
  var $i21.shadow: i32;
  var $i3: i1;
  var $i3.shadow: i1;
  var $i5: i64;
  var $i5.shadow: i64;
  var $i7: i64;
  var $i7.shadow: i64;
  var $i8: i64;
  var $i8.shadow: i64;
  var $i9: i64;
  var $i9.shadow: i64;
  var $p12: ref;
  var $p12.shadow: ref;
  var $p14: ref;
  var $p14.shadow: ref;
  var $p4: ref;
  var $p4.shadow: ref;
  var $p6: ref;
  var $p6.shadow: ref;
$bb0:
  call {:cexpr "a"} boogie_si_record_ref(a);
  call {:cexpr "b"} boogie_si_record_ref(b);
  call {:cexpr "r"} boogie_si_record_i64(0);
  call {:cexpr "m"} boogie_si_record_i64(0);
  call {:cexpr "i"} boogie_si_record_i32(0);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 115, 8} true;
  $i0, $i1, $i2 := 0, 0, 0;
  $i0.shadow, $i1.shadow, $i2.shadow := 0, 0, 0;
  goto $bb1;
$bb1:
  assert {:manual} ($shadow_ok);
  assert {:manual} ($i2 == $i2.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 115, 8} true;
  $i3 := $slt.i32($i2,3);
  $i3.shadow := $slt.i32($i2.shadow,3);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 115, 8} true;
  assume {:branchcond $i3} true;
  $shadow_ok := ($shadow_ok && ($i3 == $i3.shadow));
  goto $bb2, $bb3;
$bb2:
  assume ($i3 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 116, 10} true;
  $p4 := $add.ref(a,$mul.ref($i2,8));
  $p4.shadow := $add.ref(a.shadow,$mul.ref($i2.shadow,8));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 116, 10} true;
  $shadow_ok := ($shadow_ok && ($p4 == $p4.shadow));
  $i5 := $load.i64($M.0,$p4);
  $i5.shadow := $load.i64($M.0.shadow,$p4.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 116, 10} true;
  $p6 := $add.ref(b,$mul.ref($i2,8));
  $p6.shadow := $add.ref(b.shadow,$mul.ref($i2.shadow,8));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 116, 10} true;
  $shadow_ok := ($shadow_ok && ($p6 == $p6.shadow));
  $i7 := $load.i64($M.19,$p6);
  $i7.shadow := $load.i64($M.19.shadow,$p6.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 116, 10} true;
  call $i8, $i8.shadow := ct_lt_u64($i5, $i5.shadow, $i7, $i7.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 116, 10} true;
  $i9 := $xor.i64($i1,$sub.i64(0,1));
  $i9.shadow := $xor.i64($i1.shadow,$sub.i64(0,1));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 116, 10} true;
  $i10 := $and.i64($i8,$i9);
  $i10.shadow := $and.i64($i8.shadow,$i9.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 116, 10} true;
  $i11 := $or.i64($i0,$i10);
  $i11.shadow := $or.i64($i0.shadow,$i10.shadow);
  call {:cexpr "r"} boogie_si_record_i64($i11);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 117, 22} true;
  $p12 := $add.ref(a,$mul.ref($i2,8));
  $p12.shadow := $add.ref(a.shadow,$mul.ref($i2.shadow,8));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 117, 22} true;
  $shadow_ok := ($shadow_ok && ($p12 == $p12.shadow));
  $i13 := $load.i64($M.0,$p12);
  $i13.shadow := $load.i64($M.0.shadow,$p12.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 117, 22} true;
  $p14 := $add.ref(b,$mul.ref($i2,8));
  $p14.shadow := $add.ref(b.shadow,$mul.ref($i2.shadow,8));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 117, 22} true;
  $shadow_ok := ($shadow_ok && ($p14 == $p14.shadow));
  $i15 := $load.i64($M.19,$p14);
  $i15.shadow := $load.i64($M.19.shadow,$p14.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 117, 22} true;
  call $i16, $i16.shadow := ct_ne_u64($i13, $i13.shadow, $i15, $i15.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 117, 10} true;
  call $i17, $i17.shadow := ct_mask_u64($i16, $i16.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 117, 10} true;
  $i18 := $or.i64($i1,$i17);
  $i18.shadow := $or.i64($i1.shadow,$i17.shadow);
  call {:cexpr "m"} boogie_si_record_i64($i18);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 115, 22} true;
  $i19 := $add.i32($i2,1);
  $i19.shadow := $add.i32($i2.shadow,1);
  call {:cexpr "i"} boogie_si_record_i32($i19);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 115, 22} true;
  $i0, $i1, $i2 := $i11, $i18, $i19;
  $i0.shadow, $i1.shadow, $i2.shadow := $i11.shadow, $i18.shadow, $i19.shadow;
  goto $bb1;
$bb3:
  assume !($i3 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 119, 3} true;
  $i20 := $and.i64($i0,1);
  $i20.shadow := $and.i64($i0.shadow,1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 119, 3} true;
  $i21 := $trunc.i64.i32($i20);
  $i21.shadow := $trunc.i64.i32($i20.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 119, 3} true;
  $r := $i21;
  $r.shadow := $i21.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 2} ct_eq_u64(x: i64, x.shadow: i64, y: i64, y.shadow: i64) returns ($r: i64, $r.shadow: i64)
{
  var $i0: i64;
  var $i0.shadow: i64;
  var $i1: i64;
  var $i1.shadow: i64;
$bb0:
  call {:cexpr "x"} boogie_si_record_i64(x);
  call {:cexpr "y"} boogie_si_record_i64(y);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 51, 14} true;
  call $i0, $i0.shadow := ct_ne_u64(x, x.shadow, y, y.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 51, 14} true;
  $i1 := $xor.i64(1,$i0);
  $i1.shadow := $xor.i64(1,$i0.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 51, 14} true;
  $r := $i1;
  $r.shadow := $i1.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 2} ct_ge_u64(x: i64, x.shadow: i64, y: i64, y.shadow: i64) returns ($r: i64, $r.shadow: i64)
{
  var $i0: i64;
  var $i0.shadow: i64;
  var $i1: i64;
  var $i1.shadow: i64;
$bb0:
  call {:cexpr "x"} boogie_si_record_i64(x);
  call {:cexpr "y"} boogie_si_record_i64(y);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 86, 14} true;
  call $i0, $i0.shadow := ct_lt_u64(x, x.shadow, y, y.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 86, 14} true;
  $i1 := $xor.i64(1,$i0);
  $i1.shadow := $xor.i64(1,$i0.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 86, 14} true;
  $r := $i1;
  $r.shadow := $i1.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 2} ct_gt_u64(x: i64, x.shadow: i64, y: i64, y.shadow: i64) returns ($r: i64, $r.shadow: i64)
{
  var $i0: i64;
  var $i0.shadow: i64;
$bb0:
  call {:cexpr "x"} boogie_si_record_i64(x);
  call {:cexpr "y"} boogie_si_record_i64(y);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 68, 10} true;
  call $i0, $i0.shadow := ct_lt_u64(y, y.shadow, x, x.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 68, 10} true;
  $r := $i0;
  $r.shadow := $i0.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 2} ct_isnonzero_u64(x: i64, x.shadow: i64) returns ($r: i64, $r.shadow: i64)
{
  var $i0: i64;
  var $i0.shadow: i64;
  var $i1: i64;
  var $i1.shadow: i64;
  var $i2: i64;
  var $i2.shadow: i64;
$bb0:
  call {:cexpr "x"} boogie_si_record_i64(x);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 33, 3} true;
  $i0 := $sub.i64(0,x);
  $i0.shadow := $sub.i64(0,x.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 33, 3} true;
  $i1 := $or.i64(x,$i0);
  $i1.shadow := $or.i64(x.shadow,$i0.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 33, 3} true;
  $i2 := $lshr.i64($i1,63);
  $i2.shadow := $lshr.i64($i1.shadow,63);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 33, 3} true;
  $r := $i2;
  $r.shadow := $i2.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 2} ct_le_u64(x: i64, x.shadow: i64, y: i64, y.shadow: i64) returns ($r: i64, $r.shadow: i64)
{
  var $i0: i64;
  var $i0.shadow: i64;
  var $i1: i64;
  var $i1.shadow: i64;
$bb0:
  call {:cexpr "x"} boogie_si_record_i64(x);
  call {:cexpr "y"} boogie_si_record_i64(y);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 77, 14} true;
  call $i0, $i0.shadow := ct_gt_u64(x, x.shadow, y, y.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 77, 14} true;
  $i1 := $xor.i64(1,$i0);
  $i1.shadow := $xor.i64(1,$i0.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 77, 14} true;
  $r := $i1;
  $r.shadow := $i1.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 2} ct_lt_u64(x: i64, x.shadow: i64, y: i64, y.shadow: i64) returns ($r: i64, $r.shadow: i64)
{
  var $i0: i64;
  var $i0.shadow: i64;
  var $i1: i64;
  var $i1.shadow: i64;
  var $i2: i64;
  var $i2.shadow: i64;
  var $i3: i64;
  var $i3.shadow: i64;
  var $i4: i64;
  var $i4.shadow: i64;
  var $i5: i64;
  var $i5.shadow: i64;
$bb0:
  call {:cexpr "x"} boogie_si_record_i64(x);
  call {:cexpr "y"} boogie_si_record_i64(y);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 59, 3} true;
  $i0 := $xor.i64(x,y);
  $i0.shadow := $xor.i64(x.shadow,y.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 59, 3} true;
  $i1 := $sub.i64(x,y);
  $i1.shadow := $sub.i64(x.shadow,y.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 59, 3} true;
  $i2 := $xor.i64($i1,y);
  $i2.shadow := $xor.i64($i1.shadow,y.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 59, 3} true;
  $i3 := $or.i64($i0,$i2);
  $i3.shadow := $or.i64($i0.shadow,$i2.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 59, 3} true;
  $i4 := $xor.i64(x,$i3);
  $i4.shadow := $xor.i64(x.shadow,$i3.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 59, 3} true;
  $i5 := $lshr.i64($i4,63);
  $i5.shadow := $lshr.i64($i4.shadow,63);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 59, 3} true;
  $r := $i5;
  $r.shadow := $i5.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 2} ct_mask_u64(bit: i64, bit.shadow: i64) returns ($r: i64, $r.shadow: i64)
{
  var $i0: i64;
  var $i0.shadow: i64;
  var $i1: i64;
  var $i1.shadow: i64;
$bb0:
  call {:cexpr "bit"} boogie_si_record_i64(bit);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 93, 24} true;
  call $i0, $i0.shadow := ct_isnonzero_u64(bit, bit.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 93, 24} true;
  $i1 := $sub.i64(0,$i0);
  $i1.shadow := $sub.i64(0,$i0.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 93, 24} true;
  $r := $i1;
  $r.shadow := $i1.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 2} ct_ne_u64(x: i64, x.shadow: i64, y: i64, y.shadow: i64) returns ($r: i64, $r.shadow: i64)
{
  var $i0: i64;
  var $i0.shadow: i64;
  var $i1: i64;
  var $i1.shadow: i64;
  var $i2: i64;
  var $i2.shadow: i64;
  var $i3: i64;
  var $i3.shadow: i64;
$bb0:
  call {:cexpr "x"} boogie_si_record_i64(x);
  call {:cexpr "y"} boogie_si_record_i64(y);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 42, 3} true;
  $i0 := $sub.i64(x,y);
  $i0.shadow := $sub.i64(x.shadow,y.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 42, 3} true;
  $i1 := $sub.i64(y,x);
  $i1.shadow := $sub.i64(y.shadow,x.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 42, 3} true;
  $i2 := $or.i64($i0,$i1);
  $i2.shadow := $or.i64($i0.shadow,$i1.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 42, 3} true;
  $i3 := $lshr.i64($i2,63);
  $i3.shadow := $lshr.i64($i2.shadow,63);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 42, 3} true;
  $r := $i3;
  $r.shadow := $i3.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 2} ct_select_u64(x: i64, x.shadow: i64, y: i64, y.shadow: i64, bit: i64, bit.shadow: i64) returns ($r: i64, $r.shadow: i64)
{
  var $i0: i64;
  var $i0.shadow: i64;
  var $i1: i64;
  var $i1.shadow: i64;
  var $i2: i64;
  var $i2.shadow: i64;
  var $i3: i64;
  var $i3.shadow: i64;
  var $i4: i64;
  var $i4.shadow: i64;
$bb0:
  call {:cexpr "x"} boogie_si_record_i64(x);
  call {:cexpr "y"} boogie_si_record_i64(y);
  call {:cexpr "bit"} boogie_si_record_i64(bit);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 102, 16} true;
  call $i0, $i0.shadow := ct_mask_u64(bit, bit.shadow);
  call {:cexpr "m"} boogie_si_record_i64($i0);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 103, 3} true;
  $i1 := $and.i64(x,$i0);
  $i1.shadow := $and.i64(x.shadow,$i0.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 103, 3} true;
  $i2 := $xor.i64($i0,$sub.i64(0,1));
  $i2.shadow := $xor.i64($i0.shadow,$sub.i64(0,1));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 103, 3} true;
  $i3 := $and.i64(y,$i2);
  $i3.shadow := $and.i64(y.shadow,$i2.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 103, 3} true;
  $i4 := $or.i64($i1,$i3);
  $i4.shadow := $or.i64($i1.shadow,$i3.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 103, 3} true;
  $r := $i4;
  $r.shadow := $i4.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 2} dbl(in: i32, in.shadow: i32, e: i32, e.shadow: i32) returns ($r: i64, $r.shadow: i64)
{
  var $i0: i32;
  var $i0.shadow: i32;
  var $i1: i32;
  var $i1.shadow: i32;
  var $i2: i32;
  var $i2.shadow: i32;
  var $i3: i32;
  var $i3.shadow: i32;
  var $i4: i64;
  var $i4.shadow: i64;
  var $i5: i64;
  var $i5.shadow: i64;
  var $i6: i64;
  var $i6.shadow: i64;
  var $i7: i64;
  var $i7.shadow: i64;
$bb0:
  call {:cexpr "in"} boogie_si_record_i32(in);
  call {:cexpr "e"} boogie_si_record_i32(e);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 213, 3} true;
  $i0 := $ashr.i32(e,1);
  $i0.shadow := $ashr.i32(e.shadow,1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 213, 3} true;
  $i1 := $and.i32($i0,1);
  $i1.shadow := $and.i32($i0.shadow,1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 213, 3} true;
  $i2 := $and.i32(e,1);
  $i2.shadow := $and.i32(e.shadow,1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 213, 3} true;
  $i3 := $sub.i32($i1,$i2);
  $i3.shadow := $sub.i32($i1.shadow,$i2.shadow);
  call {:cexpr "e"} boogie_si_record_i32($i3);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 214, 3} true;
  $i4 := $zext.i32.i64(in);
  $i4.shadow := $zext.i32.i64(in.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 214, 3} true;
  $i5 := $shl.i64($i4,1);
  $i5.shadow := $shl.i64($i4.shadow,1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 214, 3} true;
  $i6 := $sext.i32.i64($i3);
  $i6.shadow := $sext.i32.i64($i3.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 214, 3} true;
  $i7 := $sub.i64($i5,$i6);
  $i7.shadow := $sub.i64($i5.shadow,$i6.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 214, 3} true;
  $r := $i7;
  $r.shadow := $i7.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 2} llvm.dbg.declare($p0: ref, $p0.shadow: ref, $p1: ref, $p1.shadow: ref);
procedure {:inline 2} llvm.dbg.value($p0: ref, $p0.shadow: ref, $i1: i64, $i1.shadow: i64, $p2: ref, $p2.shadow: ref);
procedure {:inline 2} naive(z: ref, z.shadow: ref, x: ref, x.shadow: ref, y: ref, y.shadow: ref, n: i32, n.shadow: i32)
{
  var $i0: i32;
  var $i0.shadow: i32;
  var $i1: i1;
  var $i1.shadow: i1;
  var $i10: i64;
  var $i10.shadow: i64;
  var $i11: i32;
  var $i11.shadow: i32;
  var $i12: i32;
  var $i12.shadow: i32;
  var $i13: i32;
  var $i13.shadow: i32;
  var $i14: i1;
  var $i14.shadow: i1;
  var $i15: i32;
  var $i15.shadow: i32;
  var $i16: i32;
  var $i16.shadow: i32;
  var $i17: i32;
  var $i17.shadow: i32;
  var $i18: i32;
  var $i18.shadow: i32;
  var $i19: i1;
  var $i19.shadow: i1;
  var $i21: i32;
  var $i21.shadow: i32;
  var $i22: i64;
  var $i22.shadow: i64;
  var $i23: i32;
  var $i23.shadow: i32;
  var $i25: i32;
  var $i25.shadow: i32;
  var $i26: i64;
  var $i26.shadow: i64;
  var $i27: i64;
  var $i27.shadow: i64;
  var $i28: i64;
  var $i28.shadow: i64;
  var $i29: i64;
  var $i29.shadow: i64;
  var $i3: i32;
  var $i3.shadow: i32;
  var $i30: i32;
  var $i30.shadow: i32;
  var $i31: i64;
  var $i31.shadow: i64;
  var $i32: i32;
  var $i32.shadow: i32;
  var $i33: i32;
  var $i33.shadow: i32;
  var $i34: i32;
  var $i34.shadow: i32;
  var $i35: i1;
  var $i35.shadow: i1;
  var $i36: i32;
  var $i36.shadow: i32;
  var $i37: i32;
  var $i37.shadow: i32;
  var $i38: i32;
  var $i38.shadow: i32;
  var $i39: i32;
  var $i39.shadow: i32;
  var $i4: i64;
  var $i4.shadow: i64;
  var $i40: i32;
  var $i40.shadow: i32;
  var $i41: i32;
  var $i41.shadow: i32;
  var $i42: i1;
  var $i42.shadow: i1;
  var $i44: i32;
  var $i44.shadow: i32;
  var $i45: i64;
  var $i45.shadow: i64;
  var $i46: i32;
  var $i46.shadow: i32;
  var $i48: i32;
  var $i48.shadow: i32;
  var $i49: i64;
  var $i49.shadow: i64;
  var $i50: i64;
  var $i50.shadow: i64;
  var $i51: i64;
  var $i51.shadow: i64;
  var $i52: i64;
  var $i52.shadow: i64;
  var $i53: i32;
  var $i53.shadow: i32;
  var $i54: i64;
  var $i54.shadow: i64;
  var $i55: i32;
  var $i55.shadow: i32;
  var $i56: i32;
  var $i56.shadow: i32;
  var $i57: i32;
  var $i57.shadow: i32;
  var $i58: i1;
  var $i58.shadow: i1;
  var $i59: i32;
  var $i59.shadow: i32;
  var $i6: i32;
  var $i6.shadow: i32;
  var $i60: i32;
  var $i60.shadow: i32;
  var $i61: i32;
  var $i61.shadow: i32;
  var $i62: i32;
  var $i62.shadow: i32;
  var $i63: i32;
  var $i63.shadow: i32;
  var $i64: i1;
  var $i64.shadow: i1;
  var $i65: i32;
  var $i65.shadow: i32;
  var $i66: i32;
  var $i66.shadow: i32;
  var $i68: i32;
  var $i68.shadow: i32;
  var $i7: i64;
  var $i7.shadow: i64;
  var $i8: i64;
  var $i8.shadow: i64;
  var $i9: i32;
  var $i9.shadow: i32;
  var $p2: ref;
  var $p2.shadow: ref;
  var $p20: ref;
  var $p20.shadow: ref;
  var $p24: ref;
  var $p24.shadow: ref;
  var $p43: ref;
  var $p43.shadow: ref;
  var $p47: ref;
  var $p47.shadow: ref;
  var $p5: ref;
  var $p5.shadow: ref;
  var $p67: ref;
  var $p67.shadow: ref;
$bb0:
  call {:cexpr "z"} boogie_si_record_ref(z);
  call {:cexpr "x"} boogie_si_record_ref(x);
  call {:cexpr "y"} boogie_si_record_ref(y);
  call {:cexpr "n"} boogie_si_record_i32(n);
  call {:cexpr "i"} boogie_si_record_i32(0);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 100, 8} true;
  $i0 := 0;
  $i0.shadow := 0;
  goto $bb1;
$bb1:
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 100, 8} true;
  $i1 := $ult.i32($i0,n);
  $i1.shadow := $ult.i32($i0.shadow,n.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 100, 8} true;
  assume {:branchcond $i1} true;
  $shadow_ok := ($shadow_ok && ($i1 == $i1.shadow));
  goto $bb2, $bb3;
$bb2:
  assume ($i1 == 1);
  call {:cexpr "B"} boogie_si_record_i32(0);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 103, 5} true;
  $p2 := x;
  $p2.shadow := x.shadow;
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 103, 5} true;
  $shadow_ok := ($shadow_ok && ($p2 == $p2.shadow));
  $i3 := $load.i32($M.8,$p2);
  $i3.shadow := $load.i32($M.8.shadow,$p2.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 103, 5} true;
  $i4 := $zext.i32.i64($i3);
  $i4.shadow := $zext.i32.i64($i3.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 103, 5} true;
  $p5 := $add.ref(y,$mul.ref($i0,4));
  $p5.shadow := $add.ref(y.shadow,$mul.ref($i0.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 103, 5} true;
  $shadow_ok := ($shadow_ok && ($p5 == $p5.shadow));
  $i6 := $load.i32($M.11,$p5);
  $i6.shadow := $load.i32($M.11.shadow,$p5.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 103, 5} true;
  $i7 := $zext.i32.i64($i6);
  $i7.shadow := $zext.i32.i64($i6.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 103, 5} true;
  $i8 := $mul.i64($i4,$i7);
  $i8.shadow := $mul.i64($i4.shadow,$i7.shadow);
  call {:cexpr "_T"} boogie_si_record_i64($i8);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 103, 5} true;
  $i9 := $trunc.i64.i32($i8);
  $i9.shadow := $trunc.i64.i32($i8.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 103, 5} true;
  $i10 := $lshr.i64($i8,32);
  $i10.shadow := $lshr.i64($i8.shadow,32);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 103, 5} true;
  $i11 := $trunc.i64.i32($i10);
  $i11.shadow := $trunc.i64.i32($i10.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 103, 5} true;
  $i12 := $add.i32($i9,$i11);
  $i12.shadow := $add.i32($i9.shadow,$i11.shadow);
  call {:cexpr "_t"} boogie_si_record_i32($i12);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 103, 5} true;
  $i13 := $trunc.i64.i32($i8);
  $i13.shadow := $trunc.i64.i32($i8.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 103, 5} true;
  $i14 := $ult.i32($i12,$i13);
  $i14.shadow := $ult.i32($i12.shadow,$i13.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 103, 5} true;
  $i15 := $zext.i1.i32($i14);
  $i15.shadow := $zext.i1.i32($i14.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 103, 5} true;
  $i16 := $add.i32($i12,$i15);
  $i16.shadow := $add.i32($i12.shadow,$i15.shadow);
  call {:cexpr "A"} boogie_si_record_i32($i16);
  call {:cexpr "j"} boogie_si_record_i32(1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 105, 10} true;
  $i17, $i18 := 1, $i16;
  $i17.shadow, $i18.shadow := 1, $i16.shadow;
  goto $bb4;
$bb3:
  assume !($i1 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 114, 1} true;
  $exn := false;
  $exn.shadow := false;
  return;
$bb4:
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 105, 10} true;
  $i19 := $ule.i32($i17,$i0);
  $i19.shadow := $ule.i32($i17.shadow,$i0.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 105, 10} true;
  assume {:branchcond $i19} true;
  $shadow_ok := ($shadow_ok && ($i19 == $i19.shadow));
  goto $bb5, $bb6;
$bb5:
  assume ($i19 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 106, 7} true;
  $p20 := $add.ref(x,$mul.ref($i17,4));
  $p20.shadow := $add.ref(x.shadow,$mul.ref($i17.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 106, 7} true;
  $shadow_ok := ($shadow_ok && ($p20 == $p20.shadow));
  $i21 := $load.i32($M.8,$p20);
  $i21.shadow := $load.i32($M.8.shadow,$p20.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 106, 7} true;
  $i22 := $zext.i32.i64($i21);
  $i22.shadow := $zext.i32.i64($i21.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 106, 7} true;
  $i23 := $sub.i32($i0,$i17);
  $i23.shadow := $sub.i32($i0.shadow,$i17.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 106, 7} true;
  $p24 := $add.ref(y,$mul.ref($i23,4));
  $p24.shadow := $add.ref(y.shadow,$mul.ref($i23.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 106, 7} true;
  $shadow_ok := ($shadow_ok && ($p24 == $p24.shadow));
  $i25 := $load.i32($M.11,$p24);
  $i25.shadow := $load.i32($M.11.shadow,$p24.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 106, 7} true;
  $i26 := $zext.i32.i64($i25);
  $i26.shadow := $zext.i32.i64($i25.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 106, 7} true;
  $i27 := $mul.i64($i22,$i26);
  $i27.shadow := $mul.i64($i22.shadow,$i26.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 106, 7} true;
  $i28 := $zext.i32.i64($i18);
  $i28.shadow := $zext.i32.i64($i18.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 106, 7} true;
  $i29 := $add.i64($i27,$i28);
  $i29.shadow := $add.i64($i27.shadow,$i28.shadow);
  call {:cexpr "_T"} boogie_si_record_i64($i29);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 106, 7} true;
  $i30 := $trunc.i64.i32($i29);
  $i30.shadow := $trunc.i64.i32($i29.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 106, 7} true;
  $i31 := $lshr.i64($i29,32);
  $i31.shadow := $lshr.i64($i29.shadow,32);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 106, 7} true;
  $i32 := $trunc.i64.i32($i31);
  $i32.shadow := $trunc.i64.i32($i31.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 106, 7} true;
  $i33 := $add.i32($i30,$i32);
  $i33.shadow := $add.i32($i30.shadow,$i32.shadow);
  call {:cexpr "_t"} boogie_si_record_i32($i33);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 106, 7} true;
  $i34 := $trunc.i64.i32($i29);
  $i34.shadow := $trunc.i64.i32($i29.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 106, 7} true;
  $i35 := $ult.i32($i33,$i34);
  $i35.shadow := $ult.i32($i33.shadow,$i34.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 106, 7} true;
  $i36 := $zext.i1.i32($i35);
  $i36.shadow := $zext.i1.i32($i35.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 106, 7} true;
  $i37 := $add.i32($i33,$i36);
  $i37.shadow := $add.i32($i33.shadow,$i36.shadow);
  call {:cexpr "A"} boogie_si_record_i32($i37);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 105, 25} true;
  $i38 := $add.i32($i17,1);
  $i38.shadow := $add.i32($i17.shadow,1);
  call {:cexpr "j"} boogie_si_record_i32($i38);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 105, 25} true;
  $i17, $i18 := $i38, $i37;
  $i17.shadow, $i18.shadow := $i38.shadow, $i37.shadow;
  goto $bb4;
$bb6:
  assume !($i19 == 1);
  call {:cexpr "k"} boogie_si_record_i32(1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 109, 10} true;
  $i39, $i40, $i41 := $i17, 1, 0;
  $i39.shadow, $i40.shadow, $i41.shadow := $i17.shadow, 1, 0;
  goto $bb7;
$bb7:
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 109, 10} true;
  $i42 := $ult.i32($i39,n);
  $i42.shadow := $ult.i32($i39.shadow,n.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 109, 10} true;
  assume {:branchcond $i42} true;
  $shadow_ok := ($shadow_ok && ($i42 == $i42.shadow));
  goto $bb8, $bb9;
$bb8:
  assume ($i42 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 110, 7} true;
  $p43 := $add.ref(x,$mul.ref($i39,4));
  $p43.shadow := $add.ref(x.shadow,$mul.ref($i39.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 110, 7} true;
  $shadow_ok := ($shadow_ok && ($p43 == $p43.shadow));
  $i44 := $load.i32($M.8,$p43);
  $i44.shadow := $load.i32($M.8.shadow,$p43.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 110, 7} true;
  $i45 := $zext.i32.i64($i44);
  $i45.shadow := $zext.i32.i64($i44.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 110, 7} true;
  $i46 := $sub.i32(n,$i40);
  $i46.shadow := $sub.i32(n.shadow,$i40.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 110, 7} true;
  $p47 := $add.ref(y,$mul.ref($i46,4));
  $p47.shadow := $add.ref(y.shadow,$mul.ref($i46.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 110, 7} true;
  $shadow_ok := ($shadow_ok && ($p47 == $p47.shadow));
  $i48 := $load.i32($M.11,$p47);
  $i48.shadow := $load.i32($M.11.shadow,$p47.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 110, 7} true;
  $i49 := $zext.i32.i64($i48);
  $i49.shadow := $zext.i32.i64($i48.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 110, 7} true;
  $i50 := $mul.i64($i45,$i49);
  $i50.shadow := $mul.i64($i45.shadow,$i49.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 110, 7} true;
  $i51 := $zext.i32.i64($i41);
  $i51.shadow := $zext.i32.i64($i41.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 110, 7} true;
  $i52 := $add.i64($i50,$i51);
  $i52.shadow := $add.i64($i50.shadow,$i51.shadow);
  call {:cexpr "_T"} boogie_si_record_i64($i52);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 110, 7} true;
  $i53 := $trunc.i64.i32($i52);
  $i53.shadow := $trunc.i64.i32($i52.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 110, 7} true;
  $i54 := $lshr.i64($i52,32);
  $i54.shadow := $lshr.i64($i52.shadow,32);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 110, 7} true;
  $i55 := $trunc.i64.i32($i54);
  $i55.shadow := $trunc.i64.i32($i54.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 110, 7} true;
  $i56 := $add.i32($i53,$i55);
  $i56.shadow := $add.i32($i53.shadow,$i55.shadow);
  call {:cexpr "_t"} boogie_si_record_i32($i56);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 110, 7} true;
  $i57 := $trunc.i64.i32($i52);
  $i57.shadow := $trunc.i64.i32($i52.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 110, 7} true;
  $i58 := $ult.i32($i56,$i57);
  $i58.shadow := $ult.i32($i56.shadow,$i57.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 110, 7} true;
  $i59 := $zext.i1.i32($i58);
  $i59.shadow := $zext.i1.i32($i58.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 110, 7} true;
  $i60 := $add.i32($i56,$i59);
  $i60.shadow := $add.i32($i56.shadow,$i59.shadow);
  call {:cexpr "B"} boogie_si_record_i32($i60);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 109, 24} true;
  $i61 := $add.i32($i39,1);
  $i61.shadow := $add.i32($i39.shadow,1);
  call {:cexpr "j"} boogie_si_record_i32($i61);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 109, 24} true;
  $i62 := $add.i32($i40,1);
  $i62.shadow := $add.i32($i40.shadow,1);
  call {:cexpr "k"} boogie_si_record_i32($i62);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 109, 24} true;
  $i39, $i40, $i41 := $i61, $i62, $i60;
  $i39.shadow, $i40.shadow, $i41.shadow := $i61.shadow, $i62.shadow, $i60.shadow;
  goto $bb7;
$bb9:
  assume !($i42 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 112, 5} true;
  $i63 := $sub.i32($i18,$i41);
  $i63.shadow := $sub.i32($i18.shadow,$i41.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 112, 5} true;
  $i64 := $ugt.i32($i41,$i18);
  $i64.shadow := $ugt.i32($i41.shadow,$i18.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 112, 5} true;
  $i65 := $zext.i1.i32($i64);
  $i65.shadow := $zext.i1.i32($i64.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 112, 5} true;
  $i66 := $sub.i32($i63,$i65);
  $i66.shadow := $sub.i32($i63.shadow,$i65.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 112, 5} true;
  $p67 := $add.ref(z,$mul.ref($i0,4));
  $p67.shadow := $add.ref(z.shadow,$mul.ref($i0.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 112, 5} true;
  $shadow_ok := ($shadow_ok && ($p67 == $p67.shadow));
  $M.16 := $store.i32($M.16,$p67,$i66);
  $M.16.shadow := $store.i32($M.16.shadow,$p67.shadow,$i66.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 100, 22} true;
  $i68 := $add.i32($i0,1);
  $i68.shadow := $add.i32($i0.shadow,1);
  call {:cexpr "i"} boogie_si_record_i32($i68);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 100, 22} true;
  $i0 := $i68;
  $i0.shadow := $i68.shadow;
  goto $bb1;
}
procedure {:inline 2} nussbaumer_fft(z: ref, z.shadow: ref, x: ref, x.shadow: ref, y: ref, y.shadow: ref, ctx: ref, ctx.shadow: ref)
{
  var $i100: i32;
  var $i100.shadow: i32;
  var $i102: i32;
  var $i102.shadow: i32;
  var $i106: i32;
  var $i106.shadow: i32;
  var $i107: i1;
  var $i107.shadow: i1;
  var $i108: i32;
  var $i108.shadow: i32;
  var $i109: i32;
  var $i109.shadow: i32;
  var $i11: i32;
  var $i11.shadow: i32;
  var $i116: i32;
  var $i116.shadow: i32;
  var $i118: i32;
  var $i118.shadow: i32;
  var $i119: i32;
  var $i119.shadow: i32;
  var $i123: i32;
  var $i123.shadow: i32;
  var $i124: i1;
  var $i124.shadow: i1;
  var $i125: i32;
  var $i125.shadow: i32;
  var $i126: i32;
  var $i126.shadow: i32;
  var $i130: i32;
  var $i130.shadow: i32;
  var $i131: i32;
  var $i131.shadow: i32;
  var $i132: i1;
  var $i132.shadow: i1;
  var $i133: i32;
  var $i133.shadow: i32;
  var $i137: i32;
  var $i137.shadow: i32;
  var $i139: i32;
  var $i139.shadow: i32;
  var $i140: i32;
  var $i140.shadow: i32;
  var $i141: i1;
  var $i141.shadow: i1;
  var $i142: i32;
  var $i142.shadow: i32;
  var $i143: i32;
  var $i143.shadow: i32;
  var $i147: i32;
  var $i147.shadow: i32;
  var $i148: i32;
  var $i148.shadow: i32;
  var $i15: i32;
  var $i15.shadow: i32;
  var $i151: i32;
  var $i151.shadow: i32;
  var $i153: i32;
  var $i153.shadow: i32;
  var $i154: i1;
  var $i154.shadow: i1;
  var $i155: i32;
  var $i155.shadow: i32;
  var $i156: i32;
  var $i156.shadow: i32;
  var $i158: i32;
  var $i158.shadow: i32;
  var $i159: i32;
  var $i159.shadow: i32;
  var $i16: i32;
  var $i16.shadow: i32;
  var $i160: i1;
  var $i160.shadow: i1;
  var $i164: i32;
  var $i164.shadow: i32;
  var $i166: i32;
  var $i166.shadow: i32;
  var $i167: i32;
  var $i167.shadow: i32;
  var $i169: i32;
  var $i169.shadow: i32;
  var $i173: i32;
  var $i173.shadow: i32;
  var $i174: i1;
  var $i174.shadow: i1;
  var $i175: i32;
  var $i175.shadow: i32;
  var $i176: i32;
  var $i176.shadow: i32;
  var $i18: i32;
  var $i18.shadow: i32;
  var $i183: i32;
  var $i183.shadow: i32;
  var $i185: i32;
  var $i185.shadow: i32;
  var $i186: i32;
  var $i186.shadow: i32;
  var $i19: i32;
  var $i19.shadow: i32;
  var $i190: i32;
  var $i190.shadow: i32;
  var $i191: i1;
  var $i191.shadow: i1;
  var $i192: i32;
  var $i192.shadow: i32;
  var $i193: i32;
  var $i193.shadow: i32;
  var $i197: i32;
  var $i197.shadow: i32;
  var $i198: i32;
  var $i198.shadow: i32;
  var $i199: i32;
  var $i199.shadow: i32;
  var $i200: i32;
  var $i200.shadow: i32;
  var $i201: i1;
  var $i201.shadow: i1;
  var $i208: i32;
  var $i208.shadow: i32;
  var $i209: i32;
  var $i209.shadow: i32;
  var $i210: i1;
  var $i210.shadow: i1;
  var $i211: i32;
  var $i211.shadow: i32;
  var $i212: i32;
  var $i212.shadow: i32;
  var $i213: i32;
  var $i213.shadow: i32;
  var $i214: i32;
  var $i214.shadow: i32;
  var $i215: i1;
  var $i215.shadow: i1;
  var $i216: i32;
  var $i216.shadow: i32;
  var $i217: i32;
  var $i217.shadow: i32;
  var $i218: i32;
  var $i218.shadow: i32;
  var $i219: i1;
  var $i219.shadow: i1;
  var $i220: i32;
  var $i220.shadow: i32;
  var $i221: i32;
  var $i221.shadow: i32;
  var $i222: i32;
  var $i222.shadow: i32;
  var $i223: i32;
  var $i223.shadow: i32;
  var $i224: i32;
  var $i224.shadow: i32;
  var $i225: i32;
  var $i225.shadow: i32;
  var $i226: i32;
  var $i226.shadow: i32;
  var $i227: i32;
  var $i227.shadow: i32;
  var $i228: i32;
  var $i228.shadow: i32;
  var $i229: i32;
  var $i229.shadow: i32;
  var $i23: i32;
  var $i23.shadow: i32;
  var $i230: i1;
  var $i230.shadow: i1;
  var $i234: i32;
  var $i234.shadow: i32;
  var $i238: i32;
  var $i238.shadow: i32;
  var $i239: i32;
  var $i239.shadow: i32;
  var $i24: i32;
  var $i24.shadow: i32;
  var $i243: i32;
  var $i243.shadow: i32;
  var $i247: i32;
  var $i247.shadow: i32;
  var $i248: i1;
  var $i248.shadow: i1;
  var $i249: i32;
  var $i249.shadow: i32;
  var $i250: i32;
  var $i250.shadow: i32;
  var $i253: i32;
  var $i253.shadow: i32;
  var $i255: i32;
  var $i255.shadow: i32;
  var $i256: i1;
  var $i256.shadow: i1;
  var $i257: i32;
  var $i257.shadow: i32;
  var $i258: i32;
  var $i258.shadow: i32;
  var $i26: i32;
  var $i26.shadow: i32;
  var $i261: i32;
  var $i261.shadow: i32;
  var $i262: i64;
  var $i262.shadow: i64;
  var $i264: i32;
  var $i264.shadow: i32;
  var $i265: i32;
  var $i265.shadow: i32;
  var $i266: i32;
  var $i266.shadow: i32;
  var $i267: i64;
  var $i267.shadow: i64;
  var $i268: i64;
  var $i268.shadow: i64;
  var $i269: i64;
  var $i269.shadow: i64;
  var $i270: i32;
  var $i270.shadow: i32;
  var $i275: i32;
  var $i275.shadow: i32;
  var $i279: i32;
  var $i279.shadow: i32;
  var $i280: i32;
  var $i280.shadow: i32;
  var $i284: i32;
  var $i284.shadow: i32;
  var $i285: i1;
  var $i285.shadow: i1;
  var $i286: i32;
  var $i286.shadow: i32;
  var $i287: i32;
  var $i287.shadow: i32;
  var $i294: i32;
  var $i294.shadow: i32;
  var $i298: i32;
  var $i298.shadow: i32;
  var $i299: i1;
  var $i299.shadow: i1;
  var $i30: i32;
  var $i30.shadow: i32;
  var $i300: i32;
  var $i300.shadow: i32;
  var $i301: i32;
  var $i301.shadow: i32;
  var $i308: i32;
  var $i308.shadow: i32;
  var $i309: i64;
  var $i309.shadow: i64;
  var $i31: i32;
  var $i31.shadow: i32;
  var $i313: i32;
  var $i313.shadow: i32;
  var $i314: i32;
  var $i314.shadow: i32;
  var $i315: i32;
  var $i315.shadow: i32;
  var $i316: i64;
  var $i316.shadow: i64;
  var $i317: i64;
  var $i317.shadow: i64;
  var $i318: i64;
  var $i318.shadow: i64;
  var $i319: i32;
  var $i319.shadow: i32;
  var $i323: i32;
  var $i323.shadow: i32;
  var $i324: i32;
  var $i324.shadow: i32;
  var $i325: i32;
  var $i325.shadow: i32;
  var $i326: i1;
  var $i326.shadow: i1;
  var $i327: i32;
  var $i327.shadow: i32;
  var $i329: i32;
  var $i329.shadow: i32;
  var $i33: i32;
  var $i33.shadow: i32;
  var $i333: i32;
  var $i333.shadow: i32;
  var $i334: i32;
  var $i334.shadow: i32;
  var $i335: i32;
  var $i335.shadow: i32;
  var $i336: i1;
  var $i336.shadow: i1;
  var $i337: i32;
  var $i337.shadow: i32;
  var $i338: i32;
  var $i338.shadow: i32;
  var $i34: i32;
  var $i34.shadow: i32;
  var $i340: i32;
  var $i340.shadow: i32;
  var $i341: i32;
  var $i341.shadow: i32;
  var $i348: i32;
  var $i348.shadow: i32;
  var $i352: i32;
  var $i352.shadow: i32;
  var $i353: i1;
  var $i353.shadow: i1;
  var $i354: i32;
  var $i354.shadow: i32;
  var $i355: i32;
  var $i355.shadow: i32;
  var $i359: i32;
  var $i359.shadow: i32;
  var $i360: i32;
  var $i360.shadow: i32;
  var $i361: i32;
  var $i361.shadow: i32;
  var $i362: i32;
  var $i362.shadow: i32;
  var $i363: i1;
  var $i363.shadow: i1;
  var $i367: i32;
  var $i367.shadow: i32;
  var $i368: i32;
  var $i368.shadow: i32;
  var $i372: i32;
  var $i372.shadow: i32;
  var $i373: i32;
  var $i373.shadow: i32;
  var $i374: i32;
  var $i374.shadow: i32;
  var $i378: i32;
  var $i378.shadow: i32;
  var $i38: i32;
  var $i38.shadow: i32;
  var $i382: i32;
  var $i382.shadow: i32;
  var $i383: i1;
  var $i383.shadow: i1;
  var $i384: i32;
  var $i384.shadow: i32;
  var $i385: i32;
  var $i385.shadow: i32;
  var $i387: i32;
  var $i387.shadow: i32;
  var $i388: i1;
  var $i388.shadow: i1;
  var $i39: i32;
  var $i39.shadow: i32;
  var $i392: i32;
  var $i392.shadow: i32;
  var $i393: i32;
  var $i393.shadow: i32;
  var $i394: i32;
  var $i394.shadow: i32;
  var $i398: i32;
  var $i398.shadow: i32;
  var $i399: i32;
  var $i399.shadow: i32;
  var $i4: i32;
  var $i4.shadow: i32;
  var $i403: i32;
  var $i403.shadow: i32;
  var $i404: i1;
  var $i404.shadow: i1;
  var $i405: i32;
  var $i405.shadow: i32;
  var $i406: i32;
  var $i406.shadow: i32;
  var $i407: i32;
  var $i407.shadow: i32;
  var $i408: i32;
  var $i408.shadow: i32;
  var $i410: i32;
  var $i410.shadow: i32;
  var $i411: i32;
  var $i411.shadow: i32;
  var $i44: i32;
  var $i44.shadow: i32;
  var $i45: i1;
  var $i45.shadow: i1;
  var $i46: i32;
  var $i46.shadow: i32;
  var $i47: i32;
  var $i47.shadow: i32;
  var $i48: i32;
  var $i48.shadow: i32;
  var $i49: i32;
  var $i49.shadow: i32;
  var $i5: i1;
  var $i5.shadow: i1;
  var $i50: i1;
  var $i50.shadow: i1;
  var $i51: i32;
  var $i51.shadow: i32;
  var $i52: i32;
  var $i52.shadow: i32;
  var $i53: i32;
  var $i53.shadow: i32;
  var $i54: i1;
  var $i54.shadow: i1;
  var $i55: i32;
  var $i55.shadow: i32;
  var $i56: i32;
  var $i56.shadow: i32;
  var $i57: i32;
  var $i57.shadow: i32;
  var $i58: i32;
  var $i58.shadow: i32;
  var $i59: i32;
  var $i59.shadow: i32;
  var $i6: i32;
  var $i6.shadow: i32;
  var $i60: i32;
  var $i60.shadow: i32;
  var $i61: i32;
  var $i61.shadow: i32;
  var $i62: i32;
  var $i62.shadow: i32;
  var $i63: i32;
  var $i63.shadow: i32;
  var $i64: i32;
  var $i64.shadow: i32;
  var $i65: i1;
  var $i65.shadow: i1;
  var $i66: i32;
  var $i66.shadow: i32;
  var $i7: i1;
  var $i7.shadow: i1;
  var $i70: i32;
  var $i70.shadow: i32;
  var $i72: i32;
  var $i72.shadow: i32;
  var $i73: i32;
  var $i73.shadow: i32;
  var $i74: i1;
  var $i74.shadow: i1;
  var $i75: i32;
  var $i75.shadow: i32;
  var $i76: i32;
  var $i76.shadow: i32;
  var $i8: i32;
  var $i8.shadow: i32;
  var $i80: i32;
  var $i80.shadow: i32;
  var $i81: i32;
  var $i81.shadow: i32;
  var $i84: i32;
  var $i84.shadow: i32;
  var $i86: i32;
  var $i86.shadow: i32;
  var $i87: i1;
  var $i87.shadow: i1;
  var $i88: i32;
  var $i88.shadow: i32;
  var $i89: i32;
  var $i89.shadow: i32;
  var $i9: i32;
  var $i9.shadow: i32;
  var $i91: i32;
  var $i91.shadow: i32;
  var $i92: i32;
  var $i92.shadow: i32;
  var $i93: i1;
  var $i93.shadow: i1;
  var $i97: i32;
  var $i97.shadow: i32;
  var $i99: i32;
  var $i99.shadow: i32;
  var $p0: ref;
  var $p0.shadow: ref;
  var $p1: ref;
  var $p1.shadow: ref;
  var $p10: ref;
  var $p10.shadow: ref;
  var $p101: ref;
  var $p101.shadow: ref;
  var $p103: ref;
  var $p103.shadow: ref;
  var $p104: ref;
  var $p104.shadow: ref;
  var $p105: ref;
  var $p105.shadow: ref;
  var $p110: ref;
  var $p110.shadow: ref;
  var $p111: ref;
  var $p111.shadow: ref;
  var $p112: ref;
  var $p112.shadow: ref;
  var $p113: ref;
  var $p113.shadow: ref;
  var $p114: ref;
  var $p114.shadow: ref;
  var $p115: ref;
  var $p115.shadow: ref;
  var $p117: ref;
  var $p117.shadow: ref;
  var $p12: ref;
  var $p12.shadow: ref;
  var $p120: ref;
  var $p120.shadow: ref;
  var $p121: ref;
  var $p121.shadow: ref;
  var $p122: ref;
  var $p122.shadow: ref;
  var $p127: ref;
  var $p127.shadow: ref;
  var $p128: ref;
  var $p128.shadow: ref;
  var $p129: ref;
  var $p129.shadow: ref;
  var $p13: ref;
  var $p13.shadow: ref;
  var $p134: ref;
  var $p134.shadow: ref;
  var $p135: ref;
  var $p135.shadow: ref;
  var $p136: ref;
  var $p136.shadow: ref;
  var $p138: ref;
  var $p138.shadow: ref;
  var $p14: ref;
  var $p14.shadow: ref;
  var $p144: ref;
  var $p144.shadow: ref;
  var $p145: ref;
  var $p145.shadow: ref;
  var $p146: ref;
  var $p146.shadow: ref;
  var $p149: ref;
  var $p149.shadow: ref;
  var $p150: ref;
  var $p150.shadow: ref;
  var $p152: ref;
  var $p152.shadow: ref;
  var $p157: ref;
  var $p157.shadow: ref;
  var $p161: ref;
  var $p161.shadow: ref;
  var $p162: ref;
  var $p162.shadow: ref;
  var $p163: ref;
  var $p163.shadow: ref;
  var $p165: ref;
  var $p165.shadow: ref;
  var $p168: ref;
  var $p168.shadow: ref;
  var $p17: ref;
  var $p17.shadow: ref;
  var $p170: ref;
  var $p170.shadow: ref;
  var $p171: ref;
  var $p171.shadow: ref;
  var $p172: ref;
  var $p172.shadow: ref;
  var $p177: ref;
  var $p177.shadow: ref;
  var $p178: ref;
  var $p178.shadow: ref;
  var $p179: ref;
  var $p179.shadow: ref;
  var $p180: ref;
  var $p180.shadow: ref;
  var $p181: ref;
  var $p181.shadow: ref;
  var $p182: ref;
  var $p182.shadow: ref;
  var $p184: ref;
  var $p184.shadow: ref;
  var $p187: ref;
  var $p187.shadow: ref;
  var $p188: ref;
  var $p188.shadow: ref;
  var $p189: ref;
  var $p189.shadow: ref;
  var $p194: ref;
  var $p194.shadow: ref;
  var $p195: ref;
  var $p195.shadow: ref;
  var $p196: ref;
  var $p196.shadow: ref;
  var $p2: ref;
  var $p2.shadow: ref;
  var $p20: ref;
  var $p20.shadow: ref;
  var $p202: ref;
  var $p202.shadow: ref;
  var $p203: ref;
  var $p203.shadow: ref;
  var $p204: ref;
  var $p204.shadow: ref;
  var $p205: ref;
  var $p205.shadow: ref;
  var $p206: ref;
  var $p206.shadow: ref;
  var $p207: ref;
  var $p207.shadow: ref;
  var $p21: ref;
  var $p21.shadow: ref;
  var $p22: ref;
  var $p22.shadow: ref;
  var $p231: ref;
  var $p231.shadow: ref;
  var $p232: ref;
  var $p232.shadow: ref;
  var $p233: ref;
  var $p233.shadow: ref;
  var $p235: ref;
  var $p235.shadow: ref;
  var $p236: ref;
  var $p236.shadow: ref;
  var $p237: ref;
  var $p237.shadow: ref;
  var $p240: ref;
  var $p240.shadow: ref;
  var $p241: ref;
  var $p241.shadow: ref;
  var $p242: ref;
  var $p242.shadow: ref;
  var $p244: ref;
  var $p244.shadow: ref;
  var $p245: ref;
  var $p245.shadow: ref;
  var $p246: ref;
  var $p246.shadow: ref;
  var $p25: ref;
  var $p25.shadow: ref;
  var $p251: ref;
  var $p251.shadow: ref;
  var $p252: ref;
  var $p252.shadow: ref;
  var $p254: ref;
  var $p254.shadow: ref;
  var $p259: ref;
  var $p259.shadow: ref;
  var $p260: ref;
  var $p260.shadow: ref;
  var $p263: ref;
  var $p263.shadow: ref;
  var $p27: ref;
  var $p27.shadow: ref;
  var $p271: ref;
  var $p271.shadow: ref;
  var $p272: ref;
  var $p272.shadow: ref;
  var $p273: ref;
  var $p273.shadow: ref;
  var $p274: ref;
  var $p274.shadow: ref;
  var $p276: ref;
  var $p276.shadow: ref;
  var $p277: ref;
  var $p277.shadow: ref;
  var $p278: ref;
  var $p278.shadow: ref;
  var $p28: ref;
  var $p28.shadow: ref;
  var $p281: ref;
  var $p281.shadow: ref;
  var $p282: ref;
  var $p282.shadow: ref;
  var $p283: ref;
  var $p283.shadow: ref;
  var $p288: ref;
  var $p288.shadow: ref;
  var $p289: ref;
  var $p289.shadow: ref;
  var $p29: ref;
  var $p29.shadow: ref;
  var $p290: ref;
  var $p290.shadow: ref;
  var $p291: ref;
  var $p291.shadow: ref;
  var $p292: ref;
  var $p292.shadow: ref;
  var $p293: ref;
  var $p293.shadow: ref;
  var $p295: ref;
  var $p295.shadow: ref;
  var $p296: ref;
  var $p296.shadow: ref;
  var $p297: ref;
  var $p297.shadow: ref;
  var $p3: ref;
  var $p3.shadow: ref;
  var $p302: ref;
  var $p302.shadow: ref;
  var $p303: ref;
  var $p303.shadow: ref;
  var $p304: ref;
  var $p304.shadow: ref;
  var $p305: ref;
  var $p305.shadow: ref;
  var $p306: ref;
  var $p306.shadow: ref;
  var $p307: ref;
  var $p307.shadow: ref;
  var $p310: ref;
  var $p310.shadow: ref;
  var $p311: ref;
  var $p311.shadow: ref;
  var $p312: ref;
  var $p312.shadow: ref;
  var $p32: ref;
  var $p32.shadow: ref;
  var $p320: ref;
  var $p320.shadow: ref;
  var $p321: ref;
  var $p321.shadow: ref;
  var $p322: ref;
  var $p322.shadow: ref;
  var $p328: ref;
  var $p328.shadow: ref;
  var $p330: ref;
  var $p330.shadow: ref;
  var $p331: ref;
  var $p331.shadow: ref;
  var $p332: ref;
  var $p332.shadow: ref;
  var $p339: ref;
  var $p339.shadow: ref;
  var $p342: ref;
  var $p342.shadow: ref;
  var $p343: ref;
  var $p343.shadow: ref;
  var $p344: ref;
  var $p344.shadow: ref;
  var $p345: ref;
  var $p345.shadow: ref;
  var $p346: ref;
  var $p346.shadow: ref;
  var $p347: ref;
  var $p347.shadow: ref;
  var $p349: ref;
  var $p349.shadow: ref;
  var $p35: ref;
  var $p35.shadow: ref;
  var $p350: ref;
  var $p350.shadow: ref;
  var $p351: ref;
  var $p351.shadow: ref;
  var $p356: ref;
  var $p356.shadow: ref;
  var $p357: ref;
  var $p357.shadow: ref;
  var $p358: ref;
  var $p358.shadow: ref;
  var $p36: ref;
  var $p36.shadow: ref;
  var $p364: ref;
  var $p364.shadow: ref;
  var $p365: ref;
  var $p365.shadow: ref;
  var $p366: ref;
  var $p366.shadow: ref;
  var $p369: ref;
  var $p369.shadow: ref;
  var $p37: ref;
  var $p37.shadow: ref;
  var $p370: ref;
  var $p370.shadow: ref;
  var $p371: ref;
  var $p371.shadow: ref;
  var $p375: ref;
  var $p375.shadow: ref;
  var $p376: ref;
  var $p376.shadow: ref;
  var $p377: ref;
  var $p377.shadow: ref;
  var $p379: ref;
  var $p379.shadow: ref;
  var $p380: ref;
  var $p380.shadow: ref;
  var $p381: ref;
  var $p381.shadow: ref;
  var $p386: ref;
  var $p386.shadow: ref;
  var $p389: ref;
  var $p389.shadow: ref;
  var $p390: ref;
  var $p390.shadow: ref;
  var $p391: ref;
  var $p391.shadow: ref;
  var $p395: ref;
  var $p395.shadow: ref;
  var $p396: ref;
  var $p396.shadow: ref;
  var $p397: ref;
  var $p397.shadow: ref;
  var $p40: ref;
  var $p40.shadow: ref;
  var $p400: ref;
  var $p400.shadow: ref;
  var $p401: ref;
  var $p401.shadow: ref;
  var $p402: ref;
  var $p402.shadow: ref;
  var $p409: ref;
  var $p409.shadow: ref;
  var $p41: ref;
  var $p41.shadow: ref;
  var $p42: ref;
  var $p42.shadow: ref;
  var $p43: ref;
  var $p43.shadow: ref;
  var $p67: ref;
  var $p67.shadow: ref;
  var $p68: ref;
  var $p68.shadow: ref;
  var $p69: ref;
  var $p69.shadow: ref;
  var $p71: ref;
  var $p71.shadow: ref;
  var $p77: ref;
  var $p77.shadow: ref;
  var $p78: ref;
  var $p78.shadow: ref;
  var $p79: ref;
  var $p79.shadow: ref;
  var $p82: ref;
  var $p82.shadow: ref;
  var $p83: ref;
  var $p83.shadow: ref;
  var $p85: ref;
  var $p85.shadow: ref;
  var $p90: ref;
  var $p90.shadow: ref;
  var $p94: ref;
  var $p94.shadow: ref;
  var $p95: ref;
  var $p95.shadow: ref;
  var $p96: ref;
  var $p96.shadow: ref;
  var $p98: ref;
  var $p98.shadow: ref;
$bb0:
  call {:cexpr "z"} boogie_si_record_ref(z);
  call {:cexpr "x"} boogie_si_record_ref(x);
  call {:cexpr "y"} boogie_si_record_ref(y);
  call {:cexpr "ctx"} boogie_si_record_ref(ctx);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 124, 3} true;
  $p0 := ctx;
  $p0.shadow := ctx.shadow;
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 124, 3} true;
  $shadow_ok := ($shadow_ok && ($p0 == $p0.shadow));
  $p1 := $load.ref($M.4,$p0);
  $p1.shadow := $load.ref($M.4.shadow,$p0.shadow);
  call {:cexpr "X1"} boogie_si_record_ref($p1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 125, 3} true;
  $p2 := $add.ref(ctx,4);
  $p2.shadow := $add.ref(ctx.shadow,4);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 125, 3} true;
  $shadow_ok := ($shadow_ok && ($p2 == $p2.shadow));
  $p3 := $load.ref($M.5,$p2);
  $p3.shadow := $load.ref($M.5.shadow,$p2.shadow);
  call {:cexpr "Y1"} boogie_si_record_ref($p3);
  call {:cexpr "i"} boogie_si_record_i32(0);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 127, 8} true;
  $i4 := 0;
  $i4.shadow := 0;
  goto $bb1;
$bb1:
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 127, 8} true;
  $i5 := $ult.i32($i4,32);
  $i5.shadow := $ult.i32($i4.shadow,32);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 127, 8} true;
  assume {:branchcond $i5} true;
  $shadow_ok := ($shadow_ok && ($i5 == $i5.shadow));
  goto $bb2, $bb3;
$bb2:
  assume ($i5 == 1);
  call {:cexpr "j"} boogie_si_record_i32(0);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 128, 10} true;
  $i6 := 0;
  $i6.shadow := 0;
  goto $bb4;
$bb3:
  assume !($i5 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 137, 3} true;
  $p40 := $add.ref(ctx,8);
  $p40.shadow := $add.ref(ctx.shadow,8);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 137, 3} true;
  $shadow_ok := ($shadow_ok && ($p40 == $p40.shadow));
  $p41 := $load.ref($M.12,$p40);
  $p41.shadow := $load.ref($M.12.shadow,$p40.shadow);
  call {:cexpr "Z1"} boogie_si_record_ref($p41);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 138, 3} true;
  $p42 := $add.ref(ctx,12);
  $p42.shadow := $add.ref(ctx.shadow,12);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 138, 3} true;
  $shadow_ok := ($shadow_ok && ($p42 == $p42.shadow));
  $p43 := $load.ref($M.13,$p42);
  $p43.shadow := $load.ref($M.13.shadow,$p42.shadow);
  call {:cexpr "T1"} boogie_si_record_ref($p43);
  call {:cexpr "j"} boogie_si_record_i32(4);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 140, 8} true;
  $i44 := 4;
  $i44.shadow := 4;
  goto $bb7;
$bb4:
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 128, 10} true;
  $i7 := $slt.i32($i6,32);
  $i7.shadow := $slt.i32($i6.shadow,32);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 128, 10} true;
  assume {:branchcond $i7} true;
  $shadow_ok := ($shadow_ok && ($i7 == $i7.shadow));
  goto $bb5, $bb6;
$bb5:
  assume ($i7 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 129, 7} true;
  $i8 := $mul.i32(32,$i6);
  $i8.shadow := $mul.i32(32,$i6.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 129, 7} true;
  $i9 := $add.i32($i8,$i4);
  $i9.shadow := $add.i32($i8.shadow,$i4.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 129, 7} true;
  $p10 := $add.ref(x,$mul.ref($i9,4));
  $p10.shadow := $add.ref(x.shadow,$mul.ref($i9.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 129, 7} true;
  $shadow_ok := ($shadow_ok && ($p10 == $p10.shadow));
  $i11 := $load.i32($M.6,$p10);
  $i11.shadow := $load.i32($M.6.shadow,$p10.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 129, 7} true;
  $p12 := $add.ref($p1,$mul.ref($i4,4));
  $p12.shadow := $add.ref($p1.shadow,$mul.ref($i4.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 129, 7} true;
  $shadow_ok := ($shadow_ok && ($p12 == $p12.shadow));
  $p13 := $load.ref($M.7,$p12);
  $p13.shadow := $load.ref($M.7.shadow,$p12.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 129, 7} true;
  $p14 := $add.ref($p13,$mul.ref($i6,4));
  $p14.shadow := $add.ref($p13.shadow,$mul.ref($i6.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 129, 7} true;
  $shadow_ok := ($shadow_ok && ($p14 == $p14.shadow));
  $M.8 := $store.i32($M.8,$p14,$i11);
  $M.8.shadow := $store.i32($M.8.shadow,$p14.shadow,$i11.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 130, 7} true;
  $i15 := $mul.i32(32,$i6);
  $i15.shadow := $mul.i32(32,$i6.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 130, 7} true;
  $i16 := $add.i32($i15,$i4);
  $i16.shadow := $add.i32($i15.shadow,$i4.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 130, 7} true;
  $p17 := $add.ref(x,$mul.ref($i16,4));
  $p17.shadow := $add.ref(x.shadow,$mul.ref($i16.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 130, 7} true;
  $shadow_ok := ($shadow_ok && ($p17 == $p17.shadow));
  $i18 := $load.i32($M.6,$p17);
  $i18.shadow := $load.i32($M.6.shadow,$p17.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 130, 7} true;
  $i19 := $add.i32($i4,32);
  $i19.shadow := $add.i32($i4.shadow,32);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 130, 7} true;
  $p20 := $add.ref($p1,$mul.ref($i19,4));
  $p20.shadow := $add.ref($p1.shadow,$mul.ref($i19.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 130, 7} true;
  $shadow_ok := ($shadow_ok && ($p20 == $p20.shadow));
  $p21 := $load.ref($M.7,$p20);
  $p21.shadow := $load.ref($M.7.shadow,$p20.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 130, 7} true;
  $p22 := $add.ref($p21,$mul.ref($i6,4));
  $p22.shadow := $add.ref($p21.shadow,$mul.ref($i6.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 130, 7} true;
  $shadow_ok := ($shadow_ok && ($p22 == $p22.shadow));
  $M.8 := $store.i32($M.8,$p22,$i18);
  $M.8.shadow := $store.i32($M.8.shadow,$p22.shadow,$i18.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 132, 7} true;
  $i23 := $mul.i32(32,$i6);
  $i23.shadow := $mul.i32(32,$i6.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 132, 7} true;
  $i24 := $add.i32($i23,$i4);
  $i24.shadow := $add.i32($i23.shadow,$i4.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 132, 7} true;
  $p25 := $add.ref(y,$mul.ref($i24,4));
  $p25.shadow := $add.ref(y.shadow,$mul.ref($i24.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 132, 7} true;
  $shadow_ok := ($shadow_ok && ($p25 == $p25.shadow));
  $i26 := $load.i32($M.9,$p25);
  $i26.shadow := $load.i32($M.9.shadow,$p25.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 132, 7} true;
  $p27 := $add.ref($p3,$mul.ref($i4,4));
  $p27.shadow := $add.ref($p3.shadow,$mul.ref($i4.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 132, 7} true;
  $shadow_ok := ($shadow_ok && ($p27 == $p27.shadow));
  $p28 := $load.ref($M.10,$p27);
  $p28.shadow := $load.ref($M.10.shadow,$p27.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 132, 7} true;
  $p29 := $add.ref($p28,$mul.ref($i6,4));
  $p29.shadow := $add.ref($p28.shadow,$mul.ref($i6.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 132, 7} true;
  $shadow_ok := ($shadow_ok && ($p29 == $p29.shadow));
  $M.11 := $store.i32($M.11,$p29,$i26);
  $M.11.shadow := $store.i32($M.11.shadow,$p29.shadow,$i26.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 133, 7} true;
  $i30 := $mul.i32(32,$i6);
  $i30.shadow := $mul.i32(32,$i6.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 133, 7} true;
  $i31 := $add.i32($i30,$i4);
  $i31.shadow := $add.i32($i30.shadow,$i4.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 133, 7} true;
  $p32 := $add.ref(y,$mul.ref($i31,4));
  $p32.shadow := $add.ref(y.shadow,$mul.ref($i31.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 133, 7} true;
  $shadow_ok := ($shadow_ok && ($p32 == $p32.shadow));
  $i33 := $load.i32($M.9,$p32);
  $i33.shadow := $load.i32($M.9.shadow,$p32.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 133, 7} true;
  $i34 := $add.i32($i4,32);
  $i34.shadow := $add.i32($i4.shadow,32);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 133, 7} true;
  $p35 := $add.ref($p3,$mul.ref($i34,4));
  $p35.shadow := $add.ref($p3.shadow,$mul.ref($i34.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 133, 7} true;
  $shadow_ok := ($shadow_ok && ($p35 == $p35.shadow));
  $p36 := $load.ref($M.10,$p35);
  $p36.shadow := $load.ref($M.10.shadow,$p35.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 133, 7} true;
  $p37 := $add.ref($p36,$mul.ref($i6,4));
  $p37.shadow := $add.ref($p36.shadow,$mul.ref($i6.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 133, 7} true;
  $shadow_ok := ($shadow_ok && ($p37 == $p37.shadow));
  $M.11 := $store.i32($M.11,$p37,$i33);
  $M.11.shadow := $store.i32($M.11.shadow,$p37.shadow,$i33.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 128, 25} true;
  $i38 := $add.i32($i6,1);
  $i38.shadow := $add.i32($i6.shadow,1);
  call {:cexpr "j"} boogie_si_record_i32($i38);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 128, 25} true;
  $i6 := $i38;
  $i6.shadow := $i38.shadow;
  goto $bb4;
$bb6:
  assume !($i7 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 127, 23} true;
  $i39 := $add.i32($i4,1);
  $i39.shadow := $add.i32($i4.shadow,1);
  call {:cexpr "i"} boogie_si_record_i32($i39);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 127, 23} true;
  $i4 := $i39;
  $i4.shadow := $i39.shadow;
  goto $bb1;
$bb7:
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 140, 8} true;
  $i45 := $sge.i32($i44,0);
  $i45.shadow := $sge.i32($i44.shadow,0);
  call {:cexpr "i"} boogie_si_record_i32(0);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 140, 8} true;
  $i46, $i47 := 0, 0;
  $i46.shadow, $i47.shadow := 0, 0;
  assume {:branchcond $i45} true;
  $shadow_ok := ($shadow_ok && ($i45 == $i45.shadow));
  goto $bb8, $bb10;
$bb8:
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 140, 8} true;
  assume ($i45 == 1);
  goto $bb9;
$bb9:
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 141, 10} true;
  $i48 := $sub.i32(5,$i44);
  $i48.shadow := $sub.i32(5,$i44.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 141, 10} true;
  $i49 := $shl.i32(1,$i48);
  $i49.shadow := $shl.i32(1,$i48.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 141, 10} true;
  $i50 := $ult.i32($i46,$i49);
  $i50.shadow := $ult.i32($i46.shadow,$i49.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 141, 10} true;
  assume {:branchcond $i50} true;
  $shadow_ok := ($shadow_ok && ($i50 == $i50.shadow));
  goto $bb12, $bb13;
$bb10:
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 140, 8} true;
  assume !($i45 == 1);
  goto $bb11;
$bb11:
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 182, 8} true;
  $i201 := $ult.i32($i47,64);
  $i201.shadow := $ult.i32($i47.shadow,64);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 182, 8} true;
  assume {:branchcond $i201} true;
  $shadow_ok := ($shadow_ok && ($i201 == $i201.shadow));
  goto $bb35, $bb36;
$bb12:
  assume ($i50 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 142, 29} true;
  call $i51, $i51.shadow := reverse($i46, $i46.shadow);
  call {:cexpr "ssr"} boogie_si_record_i32($i51);
  call {:cexpr "t"} boogie_si_record_i32(0);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 143, 12} true;
  $i52 := 0;
  $i52.shadow := 0;
  goto $bb14;
$bb13:
  assume !($i50 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 140, 23} true;
  $i200 := $add.i32($i44,$sub.i32(0,1));
  $i200.shadow := $add.i32($i44.shadow,$sub.i32(0,1));
  call {:cexpr "j"} boogie_si_record_i32($i200);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 140, 23} true;
  $i44 := $i200;
  $i44.shadow := $i200.shadow;
  goto $bb7;
$bb14:
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 143, 12} true;
  $i53 := $shl.i32(1,$i44);
  $i53.shadow := $shl.i32(1,$i44.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 143, 12} true;
  $i54 := $ult.i32($i52,$i53);
  $i54.shadow := $ult.i32($i52.shadow,$i53.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 143, 12} true;
  assume {:branchcond $i54} true;
  $shadow_ok := ($shadow_ok && ($i54 == $i54.shadow));
  goto $bb15, $bb16;
$bb15:
  assume ($i54 == 1);
  call {:cexpr "s"} boogie_si_record_i32($i46);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 146, 9} true;
  $i55 := $add.i32(27,$i44);
  $i55.shadow := $add.i32(27,$i44.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 146, 9} true;
  $i56 := $lshr.i32($i51,$i55);
  $i56.shadow := $lshr.i32($i51.shadow,$i55.shadow);
  call {:cexpr "sr"} boogie_si_record_i32($i56);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 147, 9} true;
  $i57 := $shl.i32($i56,$i44);
  $i57.shadow := $shl.i32($i56.shadow,$i44.shadow);
  call {:cexpr "sr"} boogie_si_record_i32($i57);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 148, 9} true;
  $i58 := $add.i32($i44,1);
  $i58.shadow := $add.i32($i44.shadow,1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 148, 9} true;
  $i59 := $shl.i32($i46,$i58);
  $i59.shadow := $shl.i32($i46.shadow,$i58.shadow);
  call {:cexpr "s"} boogie_si_record_i32($i59);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 153, 9} true;
  $i60 := $add.i32($i59,$i52);
  $i60.shadow := $add.i32($i59.shadow,$i52.shadow);
  call {:cexpr "I"} boogie_si_record_i32($i60);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 153, 9} true;
  $i61 := $add.i32($i59,$i52);
  $i61.shadow := $add.i32($i59.shadow,$i52.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 153, 9} true;
  $i62 := $shl.i32(1,$i44);
  $i62.shadow := $shl.i32(1,$i44.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 153, 9} true;
  $i63 := $add.i32($i61,$i62);
  $i63.shadow := $add.i32($i61.shadow,$i62.shadow);
  call {:cexpr "L"} boogie_si_record_i32($i63);
  call {:cexpr "a"} boogie_si_record_i32($i57);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 155, 14} true;
  $i64 := $i57;
  $i64.shadow := $i57.shadow;
  goto $bb17;
$bb16:
  assume !($i54 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 141, 38} true;
  $i199 := $add.i32($i46,1);
  $i199.shadow := $add.i32($i46.shadow,1);
  call {:cexpr "i"} boogie_si_record_i32($i199);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 141, 38} true;
  $i46 := $i199;
  $i46.shadow := $i199.shadow;
  goto $bb9;
$bb17:
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 155, 14} true;
  $i65 := $ult.i32($i64,32);
  $i65.shadow := $ult.i32($i64.shadow,32);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 155, 14} true;
  assume {:branchcond $i65} true;
  $shadow_ok := ($shadow_ok && ($i65 == $i65.shadow));
  goto $bb18, $bb19;
$bb18:
  assume ($i65 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 156, 11} true;
  $i66 := $sub.i32($i64,$i57);
  $i66.shadow := $sub.i32($i64.shadow,$i57.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 156, 11} true;
  $p67 := $add.ref($p1,$mul.ref($i63,4));
  $p67.shadow := $add.ref($p1.shadow,$mul.ref($i63.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 156, 11} true;
  $shadow_ok := ($shadow_ok && ($p67 == $p67.shadow));
  $p68 := $load.ref($M.7,$p67);
  $p68.shadow := $load.ref($M.7.shadow,$p67.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 156, 11} true;
  $p69 := $add.ref($p68,$mul.ref($i66,4));
  $p69.shadow := $add.ref($p68.shadow,$mul.ref($i66.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 156, 11} true;
  $shadow_ok := ($shadow_ok && ($p69 == $p69.shadow));
  $i70 := $load.i32($M.8,$p69);
  $i70.shadow := $load.i32($M.8.shadow,$p69.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 156, 11} true;
  $p71 := $add.ref($p43,$mul.ref($i64,4));
  $p71.shadow := $add.ref($p43.shadow,$mul.ref($i64.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 156, 11} true;
  $shadow_ok := ($shadow_ok && ($p71 == $p71.shadow));
  $M.14 := $store.i32($M.14,$p71,$i70);
  $M.14.shadow := $store.i32($M.14.shadow,$p71.shadow,$i70.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 155, 30} true;
  $i72 := $add.i32($i64,1);
  $i72.shadow := $add.i32($i64.shadow,1);
  call {:cexpr "a"} boogie_si_record_i32($i72);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 155, 30} true;
  $i64 := $i72;
  $i64.shadow := $i72.shadow;
  goto $bb17;
$bb19:
  assume !($i65 == 1);
  call {:cexpr "a"} boogie_si_record_i32(0);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 158, 14} true;
  $i73 := 0;
  $i73.shadow := 0;
  goto $bb20;
$bb20:
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 158, 14} true;
  $i74 := $ult.i32($i73,$i57);
  $i74.shadow := $ult.i32($i73.shadow,$i57.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 158, 14} true;
  assume {:branchcond $i74} true;
  $shadow_ok := ($shadow_ok && ($i74 == $i74.shadow));
  goto $bb21, $bb22;
$bb21:
  assume ($i74 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 159, 11} true;
  $i75 := $add.i32(32,$i73);
  $i75.shadow := $add.i32(32,$i73.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 159, 11} true;
  $i76 := $sub.i32($i75,$i57);
  $i76.shadow := $sub.i32($i75.shadow,$i57.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 159, 11} true;
  $p77 := $add.ref($p1,$mul.ref($i63,4));
  $p77.shadow := $add.ref($p1.shadow,$mul.ref($i63.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 159, 11} true;
  $shadow_ok := ($shadow_ok && ($p77 == $p77.shadow));
  $p78 := $load.ref($M.7,$p77);
  $p78.shadow := $load.ref($M.7.shadow,$p77.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 159, 11} true;
  $p79 := $add.ref($p78,$mul.ref($i76,4));
  $p79.shadow := $add.ref($p78.shadow,$mul.ref($i76.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 159, 11} true;
  $shadow_ok := ($shadow_ok && ($p79 == $p79.shadow));
  $i80 := $load.i32($M.8,$p79);
  $i80.shadow := $load.i32($M.8.shadow,$p79.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 159, 11} true;
  $i81 := $sub.i32($sub.i32(0,1),$i80);
  $i81.shadow := $sub.i32($sub.i32(0,1),$i80.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 159, 11} true;
  $p82 := $add.ref($p43,$mul.ref($i73,4));
  $p82.shadow := $add.ref($p43.shadow,$mul.ref($i73.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 159, 11} true;
  $shadow_ok := ($shadow_ok && ($p82 == $p82.shadow));
  $M.14 := $store.i32($M.14,$p82,$i81);
  $M.14.shadow := $store.i32($M.14.shadow,$p82.shadow,$i81.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 159, 11} true;
  $p83 := $add.ref($p43,$mul.ref($i73,4));
  $p83.shadow := $add.ref($p43.shadow,$mul.ref($i73.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 159, 11} true;
  $shadow_ok := ($shadow_ok && ($p83 == $p83.shadow));
  $i84 := $load.i32($M.14,$p83);
  $i84.shadow := $load.i32($M.14.shadow,$p83.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 159, 11} true;
  $p85 := $add.ref($p43,$mul.ref($i73,4));
  $p85.shadow := $add.ref($p43.shadow,$mul.ref($i73.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 159, 11} true;
  $shadow_ok := ($shadow_ok && ($p85 == $p85.shadow));
  $i86 := $load.i32($M.14,$p85);
  $i86.shadow := $load.i32($M.14.shadow,$p85.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 159, 11} true;
  $i87 := $eq.i32($i86,$sub.i32(0,1));
  $i87.shadow := $eq.i32($i86.shadow,$sub.i32(0,1));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 159, 11} true;
  $i88 := $zext.i1.i32($i87);
  $i88.shadow := $zext.i1.i32($i87.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 159, 11} true;
  $i89 := $add.i32($i84,$i88);
  $i89.shadow := $add.i32($i84.shadow,$i88.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 159, 11} true;
  $p90 := $add.ref($p43,$mul.ref($i73,4));
  $p90.shadow := $add.ref($p43.shadow,$mul.ref($i73.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 159, 11} true;
  $shadow_ok := ($shadow_ok && ($p90 == $p90.shadow));
  $M.14 := $store.i32($M.14,$p90,$i89);
  $M.14.shadow := $store.i32($M.14.shadow,$p90.shadow,$i89.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 158, 29} true;
  $i91 := $add.i32($i73,1);
  $i91.shadow := $add.i32($i73.shadow,1);
  call {:cexpr "a"} boogie_si_record_i32($i91);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 158, 29} true;
  $i73 := $i91;
  $i73.shadow := $i91.shadow;
  goto $bb20;
$bb22:
  assume !($i74 == 1);
  call {:cexpr "a"} boogie_si_record_i32(0);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 162, 14} true;
  $i92 := 0;
  $i92.shadow := 0;
  goto $bb23;
$bb23:
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 162, 14} true;
  $i93 := $ult.i32($i92,32);
  $i93.shadow := $ult.i32($i92.shadow,32);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 162, 14} true;
  assume {:branchcond $i93} true;
  $shadow_ok := ($shadow_ok && ($i93 == $i93.shadow));
  goto $bb24, $bb25;
$bb24:
  assume ($i93 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 163, 11} true;
  $p94 := $add.ref($p1,$mul.ref($i60,4));
  $p94.shadow := $add.ref($p1.shadow,$mul.ref($i60.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 163, 11} true;
  $shadow_ok := ($shadow_ok && ($p94 == $p94.shadow));
  $p95 := $load.ref($M.7,$p94);
  $p95.shadow := $load.ref($M.7.shadow,$p94.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 163, 11} true;
  $p96 := $add.ref($p95,$mul.ref($i92,4));
  $p96.shadow := $add.ref($p95.shadow,$mul.ref($i92.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 163, 11} true;
  $shadow_ok := ($shadow_ok && ($p96 == $p96.shadow));
  $i97 := $load.i32($M.8,$p96);
  $i97.shadow := $load.i32($M.8.shadow,$p96.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 163, 11} true;
  $p98 := $add.ref($p43,$mul.ref($i92,4));
  $p98.shadow := $add.ref($p43.shadow,$mul.ref($i92.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 163, 11} true;
  $shadow_ok := ($shadow_ok && ($p98 == $p98.shadow));
  $i99 := $load.i32($M.14,$p98);
  $i99.shadow := $load.i32($M.14.shadow,$p98.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 163, 11} true;
  $i100 := $sub.i32($i97,$i99);
  $i100.shadow := $sub.i32($i97.shadow,$i99.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 163, 11} true;
  $p101 := $add.ref($p43,$mul.ref($i92,4));
  $p101.shadow := $add.ref($p43.shadow,$mul.ref($i92.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 163, 11} true;
  $shadow_ok := ($shadow_ok && ($p101 == $p101.shadow));
  $i102 := $load.i32($M.14,$p101);
  $i102.shadow := $load.i32($M.14.shadow,$p101.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 163, 11} true;
  $p103 := $add.ref($p1,$mul.ref($i60,4));
  $p103.shadow := $add.ref($p1.shadow,$mul.ref($i60.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 163, 11} true;
  $shadow_ok := ($shadow_ok && ($p103 == $p103.shadow));
  $p104 := $load.ref($M.7,$p103);
  $p104.shadow := $load.ref($M.7.shadow,$p103.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 163, 11} true;
  $p105 := $add.ref($p104,$mul.ref($i92,4));
  $p105.shadow := $add.ref($p104.shadow,$mul.ref($i92.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 163, 11} true;
  $shadow_ok := ($shadow_ok && ($p105 == $p105.shadow));
  $i106 := $load.i32($M.8,$p105);
  $i106.shadow := $load.i32($M.8.shadow,$p105.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 163, 11} true;
  $i107 := $ugt.i32($i102,$i106);
  $i107.shadow := $ugt.i32($i102.shadow,$i106.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 163, 11} true;
  $i108 := $zext.i1.i32($i107);
  $i108.shadow := $zext.i1.i32($i107.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 163, 11} true;
  $i109 := $sub.i32($i100,$i108);
  $i109.shadow := $sub.i32($i100.shadow,$i108.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 163, 11} true;
  $p110 := $add.ref($p1,$mul.ref($i63,4));
  $p110.shadow := $add.ref($p1.shadow,$mul.ref($i63.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 163, 11} true;
  $shadow_ok := ($shadow_ok && ($p110 == $p110.shadow));
  $p111 := $load.ref($M.7,$p110);
  $p111.shadow := $load.ref($M.7.shadow,$p110.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 163, 11} true;
  $p112 := $add.ref($p111,$mul.ref($i92,4));
  $p112.shadow := $add.ref($p111.shadow,$mul.ref($i92.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 163, 11} true;
  $shadow_ok := ($shadow_ok && ($p112 == $p112.shadow));
  $M.8 := $store.i32($M.8,$p112,$i109);
  $M.8.shadow := $store.i32($M.8.shadow,$p112.shadow,$i109.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 164, 11} true;
  $p113 := $add.ref($p1,$mul.ref($i60,4));
  $p113.shadow := $add.ref($p1.shadow,$mul.ref($i60.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 164, 11} true;
  $shadow_ok := ($shadow_ok && ($p113 == $p113.shadow));
  $p114 := $load.ref($M.7,$p113);
  $p114.shadow := $load.ref($M.7.shadow,$p113.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 164, 11} true;
  $p115 := $add.ref($p114,$mul.ref($i92,4));
  $p115.shadow := $add.ref($p114.shadow,$mul.ref($i92.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 164, 11} true;
  $shadow_ok := ($shadow_ok && ($p115 == $p115.shadow));
  $i116 := $load.i32($M.8,$p115);
  $i116.shadow := $load.i32($M.8.shadow,$p115.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 164, 11} true;
  $p117 := $add.ref($p43,$mul.ref($i92,4));
  $p117.shadow := $add.ref($p43.shadow,$mul.ref($i92.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 164, 11} true;
  $shadow_ok := ($shadow_ok && ($p117 == $p117.shadow));
  $i118 := $load.i32($M.14,$p117);
  $i118.shadow := $load.i32($M.14.shadow,$p117.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 164, 11} true;
  $i119 := $add.i32($i116,$i118);
  $i119.shadow := $add.i32($i116.shadow,$i118.shadow);
  call {:cexpr "_t"} boogie_si_record_i32($i119);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 164, 11} true;
  $p120 := $add.ref($p1,$mul.ref($i60,4));
  $p120.shadow := $add.ref($p1.shadow,$mul.ref($i60.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 164, 11} true;
  $shadow_ok := ($shadow_ok && ($p120 == $p120.shadow));
  $p121 := $load.ref($M.7,$p120);
  $p121.shadow := $load.ref($M.7.shadow,$p120.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 164, 11} true;
  $p122 := $add.ref($p121,$mul.ref($i92,4));
  $p122.shadow := $add.ref($p121.shadow,$mul.ref($i92.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 164, 11} true;
  $shadow_ok := ($shadow_ok && ($p122 == $p122.shadow));
  $i123 := $load.i32($M.8,$p122);
  $i123.shadow := $load.i32($M.8.shadow,$p122.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 164, 11} true;
  $i124 := $ult.i32($i119,$i123);
  $i124.shadow := $ult.i32($i119.shadow,$i123.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 164, 11} true;
  $i125 := $zext.i1.i32($i124);
  $i125.shadow := $zext.i1.i32($i124.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 164, 11} true;
  $i126 := $add.i32($i119,$i125);
  $i126.shadow := $add.i32($i119.shadow,$i125.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 164, 11} true;
  $p127 := $add.ref($p1,$mul.ref($i60,4));
  $p127.shadow := $add.ref($p1.shadow,$mul.ref($i60.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 164, 11} true;
  $shadow_ok := ($shadow_ok && ($p127 == $p127.shadow));
  $p128 := $load.ref($M.7,$p127);
  $p128.shadow := $load.ref($M.7.shadow,$p127.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 164, 11} true;
  $p129 := $add.ref($p128,$mul.ref($i92,4));
  $p129.shadow := $add.ref($p128.shadow,$mul.ref($i92.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 164, 11} true;
  $shadow_ok := ($shadow_ok && ($p129 == $p129.shadow));
  $M.8 := $store.i32($M.8,$p129,$i126);
  $M.8.shadow := $store.i32($M.8.shadow,$p129.shadow,$i126.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 162, 29} true;
  $i130 := $add.i32($i92,1);
  $i130.shadow := $add.i32($i92.shadow,1);
  call {:cexpr "a"} boogie_si_record_i32($i130);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 162, 29} true;
  $i92 := $i130;
  $i92.shadow := $i130.shadow;
  goto $bb23;
$bb25:
  assume !($i93 == 1);
  call {:cexpr "a"} boogie_si_record_i32($i57);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 167, 14} true;
  $i131 := $i57;
  $i131.shadow := $i57.shadow;
  goto $bb26;
$bb26:
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 167, 14} true;
  $i132 := $ult.i32($i131,32);
  $i132.shadow := $ult.i32($i131.shadow,32);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 167, 14} true;
  assume {:branchcond $i132} true;
  $shadow_ok := ($shadow_ok && ($i132 == $i132.shadow));
  goto $bb27, $bb28;
$bb27:
  assume ($i132 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 168, 11} true;
  $i133 := $sub.i32($i131,$i57);
  $i133.shadow := $sub.i32($i131.shadow,$i57.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 168, 11} true;
  $p134 := $add.ref($p3,$mul.ref($i63,4));
  $p134.shadow := $add.ref($p3.shadow,$mul.ref($i63.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 168, 11} true;
  $shadow_ok := ($shadow_ok && ($p134 == $p134.shadow));
  $p135 := $load.ref($M.10,$p134);
  $p135.shadow := $load.ref($M.10.shadow,$p134.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 168, 11} true;
  $p136 := $add.ref($p135,$mul.ref($i133,4));
  $p136.shadow := $add.ref($p135.shadow,$mul.ref($i133.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 168, 11} true;
  $shadow_ok := ($shadow_ok && ($p136 == $p136.shadow));
  $i137 := $load.i32($M.11,$p136);
  $i137.shadow := $load.i32($M.11.shadow,$p136.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 168, 11} true;
  $p138 := $add.ref($p43,$mul.ref($i131,4));
  $p138.shadow := $add.ref($p43.shadow,$mul.ref($i131.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 168, 11} true;
  $shadow_ok := ($shadow_ok && ($p138 == $p138.shadow));
  $M.14 := $store.i32($M.14,$p138,$i137);
  $M.14.shadow := $store.i32($M.14.shadow,$p138.shadow,$i137.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 167, 30} true;
  $i139 := $add.i32($i131,1);
  $i139.shadow := $add.i32($i131.shadow,1);
  call {:cexpr "a"} boogie_si_record_i32($i139);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 167, 30} true;
  $i131 := $i139;
  $i131.shadow := $i139.shadow;
  goto $bb26;
$bb28:
  assume !($i132 == 1);
  call {:cexpr "a"} boogie_si_record_i32(0);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 170, 14} true;
  $i140 := 0;
  $i140.shadow := 0;
  goto $bb29;
$bb29:
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 170, 14} true;
  $i141 := $ult.i32($i140,$i57);
  $i141.shadow := $ult.i32($i140.shadow,$i57.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 170, 14} true;
  assume {:branchcond $i141} true;
  $shadow_ok := ($shadow_ok && ($i141 == $i141.shadow));
  goto $bb30, $bb31;
$bb30:
  assume ($i141 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 171, 11} true;
  $i142 := $add.i32(32,$i140);
  $i142.shadow := $add.i32(32,$i140.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 171, 11} true;
  $i143 := $sub.i32($i142,$i57);
  $i143.shadow := $sub.i32($i142.shadow,$i57.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 171, 11} true;
  $p144 := $add.ref($p3,$mul.ref($i63,4));
  $p144.shadow := $add.ref($p3.shadow,$mul.ref($i63.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 171, 11} true;
  $shadow_ok := ($shadow_ok && ($p144 == $p144.shadow));
  $p145 := $load.ref($M.10,$p144);
  $p145.shadow := $load.ref($M.10.shadow,$p144.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 171, 11} true;
  $p146 := $add.ref($p145,$mul.ref($i143,4));
  $p146.shadow := $add.ref($p145.shadow,$mul.ref($i143.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 171, 11} true;
  $shadow_ok := ($shadow_ok && ($p146 == $p146.shadow));
  $i147 := $load.i32($M.11,$p146);
  $i147.shadow := $load.i32($M.11.shadow,$p146.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 171, 11} true;
  $i148 := $sub.i32($sub.i32(0,1),$i147);
  $i148.shadow := $sub.i32($sub.i32(0,1),$i147.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 171, 11} true;
  $p149 := $add.ref($p43,$mul.ref($i140,4));
  $p149.shadow := $add.ref($p43.shadow,$mul.ref($i140.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 171, 11} true;
  $shadow_ok := ($shadow_ok && ($p149 == $p149.shadow));
  $M.14 := $store.i32($M.14,$p149,$i148);
  $M.14.shadow := $store.i32($M.14.shadow,$p149.shadow,$i148.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 171, 11} true;
  $p150 := $add.ref($p43,$mul.ref($i140,4));
  $p150.shadow := $add.ref($p43.shadow,$mul.ref($i140.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 171, 11} true;
  $shadow_ok := ($shadow_ok && ($p150 == $p150.shadow));
  $i151 := $load.i32($M.14,$p150);
  $i151.shadow := $load.i32($M.14.shadow,$p150.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 171, 11} true;
  $p152 := $add.ref($p43,$mul.ref($i140,4));
  $p152.shadow := $add.ref($p43.shadow,$mul.ref($i140.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 171, 11} true;
  $shadow_ok := ($shadow_ok && ($p152 == $p152.shadow));
  $i153 := $load.i32($M.14,$p152);
  $i153.shadow := $load.i32($M.14.shadow,$p152.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 171, 11} true;
  $i154 := $eq.i32($i153,$sub.i32(0,1));
  $i154.shadow := $eq.i32($i153.shadow,$sub.i32(0,1));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 171, 11} true;
  $i155 := $zext.i1.i32($i154);
  $i155.shadow := $zext.i1.i32($i154.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 171, 11} true;
  $i156 := $add.i32($i151,$i155);
  $i156.shadow := $add.i32($i151.shadow,$i155.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 171, 11} true;
  $p157 := $add.ref($p43,$mul.ref($i140,4));
  $p157.shadow := $add.ref($p43.shadow,$mul.ref($i140.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 171, 11} true;
  $shadow_ok := ($shadow_ok && ($p157 == $p157.shadow));
  $M.14 := $store.i32($M.14,$p157,$i156);
  $M.14.shadow := $store.i32($M.14.shadow,$p157.shadow,$i156.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 170, 29} true;
  $i158 := $add.i32($i140,1);
  $i158.shadow := $add.i32($i140.shadow,1);
  call {:cexpr "a"} boogie_si_record_i32($i158);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 170, 29} true;
  $i140 := $i158;
  $i140.shadow := $i158.shadow;
  goto $bb29;
$bb31:
  assume !($i141 == 1);
  call {:cexpr "a"} boogie_si_record_i32(0);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 174, 14} true;
  $i159 := 0;
  $i159.shadow := 0;
  goto $bb32;
$bb32:
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 174, 14} true;
  $i160 := $ult.i32($i159,32);
  $i160.shadow := $ult.i32($i159.shadow,32);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 174, 14} true;
  assume {:branchcond $i160} true;
  $shadow_ok := ($shadow_ok && ($i160 == $i160.shadow));
  goto $bb33, $bb34;
$bb33:
  assume ($i160 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 175, 11} true;
  $p161 := $add.ref($p3,$mul.ref($i60,4));
  $p161.shadow := $add.ref($p3.shadow,$mul.ref($i60.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 175, 11} true;
  $shadow_ok := ($shadow_ok && ($p161 == $p161.shadow));
  $p162 := $load.ref($M.10,$p161);
  $p162.shadow := $load.ref($M.10.shadow,$p161.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 175, 11} true;
  $p163 := $add.ref($p162,$mul.ref($i159,4));
  $p163.shadow := $add.ref($p162.shadow,$mul.ref($i159.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 175, 11} true;
  $shadow_ok := ($shadow_ok && ($p163 == $p163.shadow));
  $i164 := $load.i32($M.11,$p163);
  $i164.shadow := $load.i32($M.11.shadow,$p163.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 175, 11} true;
  $p165 := $add.ref($p43,$mul.ref($i159,4));
  $p165.shadow := $add.ref($p43.shadow,$mul.ref($i159.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 175, 11} true;
  $shadow_ok := ($shadow_ok && ($p165 == $p165.shadow));
  $i166 := $load.i32($M.14,$p165);
  $i166.shadow := $load.i32($M.14.shadow,$p165.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 175, 11} true;
  $i167 := $sub.i32($i164,$i166);
  $i167.shadow := $sub.i32($i164.shadow,$i166.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 175, 11} true;
  $p168 := $add.ref($p43,$mul.ref($i159,4));
  $p168.shadow := $add.ref($p43.shadow,$mul.ref($i159.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 175, 11} true;
  $shadow_ok := ($shadow_ok && ($p168 == $p168.shadow));
  $i169 := $load.i32($M.14,$p168);
  $i169.shadow := $load.i32($M.14.shadow,$p168.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 175, 11} true;
  $p170 := $add.ref($p3,$mul.ref($i60,4));
  $p170.shadow := $add.ref($p3.shadow,$mul.ref($i60.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 175, 11} true;
  $shadow_ok := ($shadow_ok && ($p170 == $p170.shadow));
  $p171 := $load.ref($M.10,$p170);
  $p171.shadow := $load.ref($M.10.shadow,$p170.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 175, 11} true;
  $p172 := $add.ref($p171,$mul.ref($i159,4));
  $p172.shadow := $add.ref($p171.shadow,$mul.ref($i159.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 175, 11} true;
  $shadow_ok := ($shadow_ok && ($p172 == $p172.shadow));
  $i173 := $load.i32($M.11,$p172);
  $i173.shadow := $load.i32($M.11.shadow,$p172.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 175, 11} true;
  $i174 := $ugt.i32($i169,$i173);
  $i174.shadow := $ugt.i32($i169.shadow,$i173.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 175, 11} true;
  $i175 := $zext.i1.i32($i174);
  $i175.shadow := $zext.i1.i32($i174.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 175, 11} true;
  $i176 := $sub.i32($i167,$i175);
  $i176.shadow := $sub.i32($i167.shadow,$i175.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 175, 11} true;
  $p177 := $add.ref($p3,$mul.ref($i63,4));
  $p177.shadow := $add.ref($p3.shadow,$mul.ref($i63.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 175, 11} true;
  $shadow_ok := ($shadow_ok && ($p177 == $p177.shadow));
  $p178 := $load.ref($M.10,$p177);
  $p178.shadow := $load.ref($M.10.shadow,$p177.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 175, 11} true;
  $p179 := $add.ref($p178,$mul.ref($i159,4));
  $p179.shadow := $add.ref($p178.shadow,$mul.ref($i159.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 175, 11} true;
  $shadow_ok := ($shadow_ok && ($p179 == $p179.shadow));
  $M.11 := $store.i32($M.11,$p179,$i176);
  $M.11.shadow := $store.i32($M.11.shadow,$p179.shadow,$i176.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 176, 11} true;
  $p180 := $add.ref($p3,$mul.ref($i60,4));
  $p180.shadow := $add.ref($p3.shadow,$mul.ref($i60.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 176, 11} true;
  $shadow_ok := ($shadow_ok && ($p180 == $p180.shadow));
  $p181 := $load.ref($M.10,$p180);
  $p181.shadow := $load.ref($M.10.shadow,$p180.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 176, 11} true;
  $p182 := $add.ref($p181,$mul.ref($i159,4));
  $p182.shadow := $add.ref($p181.shadow,$mul.ref($i159.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 176, 11} true;
  $shadow_ok := ($shadow_ok && ($p182 == $p182.shadow));
  $i183 := $load.i32($M.11,$p182);
  $i183.shadow := $load.i32($M.11.shadow,$p182.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 176, 11} true;
  $p184 := $add.ref($p43,$mul.ref($i159,4));
  $p184.shadow := $add.ref($p43.shadow,$mul.ref($i159.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 176, 11} true;
  $shadow_ok := ($shadow_ok && ($p184 == $p184.shadow));
  $i185 := $load.i32($M.14,$p184);
  $i185.shadow := $load.i32($M.14.shadow,$p184.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 176, 11} true;
  $i186 := $add.i32($i183,$i185);
  $i186.shadow := $add.i32($i183.shadow,$i185.shadow);
  call {:cexpr "_t"} boogie_si_record_i32($i186);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 176, 11} true;
  $p187 := $add.ref($p3,$mul.ref($i60,4));
  $p187.shadow := $add.ref($p3.shadow,$mul.ref($i60.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 176, 11} true;
  $shadow_ok := ($shadow_ok && ($p187 == $p187.shadow));
  $p188 := $load.ref($M.10,$p187);
  $p188.shadow := $load.ref($M.10.shadow,$p187.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 176, 11} true;
  $p189 := $add.ref($p188,$mul.ref($i159,4));
  $p189.shadow := $add.ref($p188.shadow,$mul.ref($i159.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 176, 11} true;
  $shadow_ok := ($shadow_ok && ($p189 == $p189.shadow));
  $i190 := $load.i32($M.11,$p189);
  $i190.shadow := $load.i32($M.11.shadow,$p189.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 176, 11} true;
  $i191 := $ult.i32($i186,$i190);
  $i191.shadow := $ult.i32($i186.shadow,$i190.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 176, 11} true;
  $i192 := $zext.i1.i32($i191);
  $i192.shadow := $zext.i1.i32($i191.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 176, 11} true;
  $i193 := $add.i32($i186,$i192);
  $i193.shadow := $add.i32($i186.shadow,$i192.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 176, 11} true;
  $p194 := $add.ref($p3,$mul.ref($i60,4));
  $p194.shadow := $add.ref($p3.shadow,$mul.ref($i60.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 176, 11} true;
  $shadow_ok := ($shadow_ok && ($p194 == $p194.shadow));
  $p195 := $load.ref($M.10,$p194);
  $p195.shadow := $load.ref($M.10.shadow,$p194.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 176, 11} true;
  $p196 := $add.ref($p195,$mul.ref($i159,4));
  $p196.shadow := $add.ref($p195.shadow,$mul.ref($i159.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 176, 11} true;
  $shadow_ok := ($shadow_ok && ($p196 == $p196.shadow));
  $M.11 := $store.i32($M.11,$p196,$i193);
  $M.11.shadow := $store.i32($M.11.shadow,$p196.shadow,$i193.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 174, 29} true;
  $i197 := $add.i32($i159,1);
  $i197.shadow := $add.i32($i159.shadow,1);
  call {:cexpr "a"} boogie_si_record_i32($i197);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 174, 29} true;
  $i159 := $i197;
  $i159.shadow := $i197.shadow;
  goto $bb32;
$bb34:
  assume !($i160 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 143, 34} true;
  $i198 := $add.i32($i52,1);
  $i198.shadow := $add.i32($i52.shadow,1);
  call {:cexpr "t"} boogie_si_record_i32($i198);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 143, 34} true;
  $i52 := $i198;
  $i52.shadow := $i198.shadow;
  goto $bb14;
$bb35:
  assume ($i201 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 183, 5} true;
  $p202 := $add.ref($p41,$mul.ref($i47,4));
  $p202.shadow := $add.ref($p41.shadow,$mul.ref($i47.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 183, 5} true;
  $shadow_ok := ($shadow_ok && ($p202 == $p202.shadow));
  $p203 := $load.ref($M.15,$p202);
  $p203.shadow := $load.ref($M.15.shadow,$p202.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 183, 5} true;
  $p204 := $add.ref($p1,$mul.ref($i47,4));
  $p204.shadow := $add.ref($p1.shadow,$mul.ref($i47.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 183, 5} true;
  $shadow_ok := ($shadow_ok && ($p204 == $p204.shadow));
  $p205 := $load.ref($M.7,$p204);
  $p205.shadow := $load.ref($M.7.shadow,$p204.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 183, 5} true;
  $p206 := $add.ref($p3,$mul.ref($i47,4));
  $p206.shadow := $add.ref($p3.shadow,$mul.ref($i47.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 183, 5} true;
  $shadow_ok := ($shadow_ok && ($p206 == $p206.shadow));
  $p207 := $load.ref($M.10,$p206);
  $p207.shadow := $load.ref($M.10.shadow,$p206.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 183, 5} true;
  call naive($p203, $p203.shadow, $p205, $p205.shadow, $p207, $p207.shadow, 32, 32);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 182, 27} true;
  $i208 := $add.i32($i47,1);
  $i208.shadow := $add.i32($i47.shadow,1);
  call {:cexpr "i"} boogie_si_record_i32($i208);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 182, 27} true;
  $i47 := $i208;
  $i47.shadow := $i208.shadow;
  goto $bb11;
$bb36:
  assume !($i201 == 1);
  call {:cexpr "j"} boogie_si_record_i32(0);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 186, 8} true;
  $i209 := 0;
  $i209.shadow := 0;
  goto $bb37;
$bb37:
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 186, 8} true;
  $i210 := $sle.i32($i209,5);
  $i210.shadow := $sle.i32($i209.shadow,5);
  call {:cexpr "i"} boogie_si_record_i32(0);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 186, 8} true;
  $i211, $i212 := 0, 0;
  $i211.shadow, $i212.shadow := 0, 0;
  assume {:branchcond $i210} true;
  $shadow_ok := ($shadow_ok && ($i210 == $i210.shadow));
  goto $bb38, $bb40;
$bb38:
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 186, 8} true;
  assume ($i210 == 1);
  goto $bb39;
$bb39:
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 187, 10} true;
  $i213 := $sub.i32(5,$i209);
  $i213.shadow := $sub.i32(5,$i209.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 187, 10} true;
  $i214 := $shl.i32(1,$i213);
  $i214.shadow := $shl.i32(1,$i213.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 187, 10} true;
  $i215 := $ult.i32($i211,$i214);
  $i215.shadow := $ult.i32($i211.shadow,$i214.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 187, 10} true;
  assume {:branchcond $i215} true;
  $shadow_ok := ($shadow_ok && ($i215 == $i215.shadow));
  goto $bb42, $bb43;
$bb40:
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 186, 8} true;
  assume !($i210 == 1);
  goto $bb41;
$bb41:
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 216, 8} true;
  $i363 := $ult.i32($i212,32);
  $i363.shadow := $ult.i32($i212.shadow,32);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 216, 8} true;
  assume {:branchcond $i363} true;
  $shadow_ok := ($shadow_ok && ($i363 == $i363.shadow));
  goto $bb56, $bb57;
$bb42:
  assume ($i215 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 188, 29} true;
  call $i216, $i216.shadow := reverse($i211, $i211.shadow);
  call {:cexpr "ssr"} boogie_si_record_i32($i216);
  call {:cexpr "t"} boogie_si_record_i32(0);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 189, 12} true;
  $i217 := 0;
  $i217.shadow := 0;
  goto $bb44;
$bb43:
  assume !($i215 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 186, 29} true;
  $i362 := $add.i32($i209,1);
  $i362.shadow := $add.i32($i209.shadow,1);
  call {:cexpr "j"} boogie_si_record_i32($i362);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 186, 29} true;
  $i209 := $i362;
  $i209.shadow := $i362.shadow;
  goto $bb37;
$bb44:
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 189, 12} true;
  $i218 := $shl.i32(1,$i209);
  $i218.shadow := $shl.i32(1,$i209.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 189, 12} true;
  $i219 := $ult.i32($i217,$i218);
  $i219.shadow := $ult.i32($i217.shadow,$i218.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 189, 12} true;
  assume {:branchcond $i219} true;
  $shadow_ok := ($shadow_ok && ($i219 == $i219.shadow));
  goto $bb45, $bb46;
$bb45:
  assume ($i219 == 1);
  call {:cexpr "s"} boogie_si_record_i32($i211);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 192, 9} true;
  $i220 := $add.i32(27,$i209);
  $i220.shadow := $add.i32(27,$i209.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 192, 9} true;
  $i221 := $lshr.i32($i216,$i220);
  $i221.shadow := $lshr.i32($i216.shadow,$i220.shadow);
  call {:cexpr "sr"} boogie_si_record_i32($i221);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 193, 9} true;
  $i222 := $shl.i32($i221,$i209);
  $i222.shadow := $shl.i32($i221.shadow,$i209.shadow);
  call {:cexpr "sr"} boogie_si_record_i32($i222);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 194, 9} true;
  $i223 := $add.i32($i209,1);
  $i223.shadow := $add.i32($i209.shadow,1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 194, 9} true;
  $i224 := $shl.i32($i211,$i223);
  $i224.shadow := $shl.i32($i211.shadow,$i223.shadow);
  call {:cexpr "s"} boogie_si_record_i32($i224);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 196, 9} true;
  $i225 := $add.i32($i224,$i217);
  $i225.shadow := $add.i32($i224.shadow,$i217.shadow);
  call {:cexpr "A"} boogie_si_record_i32($i225);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 197, 9} true;
  $i226 := $add.i32($i224,$i217);
  $i226.shadow := $add.i32($i224.shadow,$i217.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 197, 9} true;
  $i227 := $shl.i32(1,$i209);
  $i227.shadow := $shl.i32(1,$i209.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 197, 9} true;
  $i228 := $add.i32($i226,$i227);
  $i228.shadow := $add.i32($i226.shadow,$i227.shadow);
  call {:cexpr "B"} boogie_si_record_i32($i228);
  call {:cexpr "a"} boogie_si_record_i32(0);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 198, 14} true;
  $i229 := 0;
  $i229.shadow := 0;
  goto $bb47;
$bb46:
  assume !($i219 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 187, 38} true;
  $i361 := $add.i32($i211,1);
  $i361.shadow := $add.i32($i211.shadow,1);
  call {:cexpr "i"} boogie_si_record_i32($i361);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 187, 38} true;
  $i211 := $i361;
  $i211.shadow := $i361.shadow;
  goto $bb39;
$bb47:
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 198, 14} true;
  $i230 := $ult.i32($i229,32);
  $i230.shadow := $ult.i32($i229.shadow,32);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 198, 14} true;
  assume {:branchcond $i230} true;
  $shadow_ok := ($shadow_ok && ($i230 == $i230.shadow));
  goto $bb48, $bb49;
$bb48:
  assume ($i230 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 199, 11} true;
  $p231 := $add.ref($p41,$mul.ref($i225,4));
  $p231.shadow := $add.ref($p41.shadow,$mul.ref($i225.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 199, 11} true;
  $shadow_ok := ($shadow_ok && ($p231 == $p231.shadow));
  $p232 := $load.ref($M.15,$p231);
  $p232.shadow := $load.ref($M.15.shadow,$p231.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 199, 11} true;
  $p233 := $add.ref($p232,$mul.ref($i229,4));
  $p233.shadow := $add.ref($p232.shadow,$mul.ref($i229.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 199, 11} true;
  $shadow_ok := ($shadow_ok && ($p233 == $p233.shadow));
  $i234 := $load.i32($M.16,$p233);
  $i234.shadow := $load.i32($M.16.shadow,$p233.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 199, 11} true;
  $p235 := $add.ref($p41,$mul.ref($i228,4));
  $p235.shadow := $add.ref($p41.shadow,$mul.ref($i228.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 199, 11} true;
  $shadow_ok := ($shadow_ok && ($p235 == $p235.shadow));
  $p236 := $load.ref($M.15,$p235);
  $p236.shadow := $load.ref($M.15.shadow,$p235.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 199, 11} true;
  $p237 := $add.ref($p236,$mul.ref($i229,4));
  $p237.shadow := $add.ref($p236.shadow,$mul.ref($i229.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 199, 11} true;
  $shadow_ok := ($shadow_ok && ($p237 == $p237.shadow));
  $i238 := $load.i32($M.16,$p237);
  $i238.shadow := $load.i32($M.16.shadow,$p237.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 199, 11} true;
  $i239 := $sub.i32($i234,$i238);
  $i239.shadow := $sub.i32($i234.shadow,$i238.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 199, 11} true;
  $p240 := $add.ref($p41,$mul.ref($i228,4));
  $p240.shadow := $add.ref($p41.shadow,$mul.ref($i228.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 199, 11} true;
  $shadow_ok := ($shadow_ok && ($p240 == $p240.shadow));
  $p241 := $load.ref($M.15,$p240);
  $p241.shadow := $load.ref($M.15.shadow,$p240.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 199, 11} true;
  $p242 := $add.ref($p241,$mul.ref($i229,4));
  $p242.shadow := $add.ref($p241.shadow,$mul.ref($i229.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 199, 11} true;
  $shadow_ok := ($shadow_ok && ($p242 == $p242.shadow));
  $i243 := $load.i32($M.16,$p242);
  $i243.shadow := $load.i32($M.16.shadow,$p242.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 199, 11} true;
  $p244 := $add.ref($p41,$mul.ref($i225,4));
  $p244.shadow := $add.ref($p41.shadow,$mul.ref($i225.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 199, 11} true;
  $shadow_ok := ($shadow_ok && ($p244 == $p244.shadow));
  $p245 := $load.ref($M.15,$p244);
  $p245.shadow := $load.ref($M.15.shadow,$p244.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 199, 11} true;
  $p246 := $add.ref($p245,$mul.ref($i229,4));
  $p246.shadow := $add.ref($p245.shadow,$mul.ref($i229.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 199, 11} true;
  $shadow_ok := ($shadow_ok && ($p246 == $p246.shadow));
  $i247 := $load.i32($M.16,$p246);
  $i247.shadow := $load.i32($M.16.shadow,$p246.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 199, 11} true;
  $i248 := $ugt.i32($i243,$i247);
  $i248.shadow := $ugt.i32($i243.shadow,$i247.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 199, 11} true;
  $i249 := $zext.i1.i32($i248);
  $i249.shadow := $zext.i1.i32($i248.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 199, 11} true;
  $i250 := $sub.i32($i239,$i249);
  $i250.shadow := $sub.i32($i239.shadow,$i249.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 199, 11} true;
  $p251 := $add.ref($p43,$mul.ref($i229,4));
  $p251.shadow := $add.ref($p43.shadow,$mul.ref($i229.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 199, 11} true;
  $shadow_ok := ($shadow_ok && ($p251 == $p251.shadow));
  $M.14 := $store.i32($M.14,$p251,$i250);
  $M.14.shadow := $store.i32($M.14.shadow,$p251.shadow,$i250.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 200, 11} true;
  $p252 := $add.ref($p43,$mul.ref($i229,4));
  $p252.shadow := $add.ref($p43.shadow,$mul.ref($i229.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 200, 11} true;
  $shadow_ok := ($shadow_ok && ($p252 == $p252.shadow));
  $i253 := $load.i32($M.14,$p252);
  $i253.shadow := $load.i32($M.14.shadow,$p252.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 200, 11} true;
  $p254 := $add.ref($p43,$mul.ref($i229,4));
  $p254.shadow := $add.ref($p43.shadow,$mul.ref($i229.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 200, 11} true;
  $shadow_ok := ($shadow_ok && ($p254 == $p254.shadow));
  $i255 := $load.i32($M.14,$p254);
  $i255.shadow := $load.i32($M.14.shadow,$p254.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 200, 11} true;
  $i256 := $eq.i32($i255,$sub.i32(0,1));
  $i256.shadow := $eq.i32($i255.shadow,$sub.i32(0,1));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 200, 11} true;
  $i257 := $zext.i1.i32($i256);
  $i257.shadow := $zext.i1.i32($i256.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 200, 11} true;
  $i258 := $add.i32($i253,$i257);
  $i258.shadow := $add.i32($i253.shadow,$i257.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 200, 11} true;
  $p259 := $add.ref($p43,$mul.ref($i229,4));
  $p259.shadow := $add.ref($p43.shadow,$mul.ref($i229.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 200, 11} true;
  $shadow_ok := ($shadow_ok && ($p259 == $p259.shadow));
  $M.14 := $store.i32($M.14,$p259,$i258);
  $M.14.shadow := $store.i32($M.14.shadow,$p259.shadow,$i258.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 200, 11} true;
  $p260 := $add.ref($p43,$mul.ref($i229,4));
  $p260.shadow := $add.ref($p43.shadow,$mul.ref($i229.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 200, 11} true;
  $shadow_ok := ($shadow_ok && ($p260 == $p260.shadow));
  $i261 := $load.i32($M.14,$p260);
  $i261.shadow := $load.i32($M.14.shadow,$p260.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 200, 11} true;
  $i262 := $zext.i32.i64($i261);
  $i262.shadow := $zext.i32.i64($i261.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 200, 11} true;
  $p263 := $add.ref($p43,$mul.ref($i229,4));
  $p263.shadow := $add.ref($p43.shadow,$mul.ref($i229.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 200, 11} true;
  $shadow_ok := ($shadow_ok && ($p263 == $p263.shadow));
  $i264 := $load.i32($M.14,$p263);
  $i264.shadow := $load.i32($M.14.shadow,$p263.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 200, 11} true;
  $i265 := $and.i32($i264,1);
  $i265.shadow := $and.i32($i264.shadow,1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 200, 11} true;
  $i266 := $sub.i32(0,$i265);
  $i266.shadow := $sub.i32(0,$i265.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 200, 11} true;
  $i267 := $zext.i32.i64($i266);
  $i267.shadow := $zext.i32.i64($i266.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 200, 11} true;
  $i268 := $add.i64($i262,$i267);
  $i268.shadow := $add.i64($i262.shadow,$i267.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 200, 11} true;
  $i269 := $lshr.i64($i268,1);
  $i269.shadow := $lshr.i64($i268.shadow,1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 200, 11} true;
  $i270 := $trunc.i64.i32($i269);
  $i270.shadow := $trunc.i64.i32($i269.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 200, 11} true;
  $p271 := $add.ref($p43,$mul.ref($i229,4));
  $p271.shadow := $add.ref($p43.shadow,$mul.ref($i229.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 200, 11} true;
  $shadow_ok := ($shadow_ok && ($p271 == $p271.shadow));
  $M.14 := $store.i32($M.14,$p271,$i270);
  $M.14.shadow := $store.i32($M.14.shadow,$p271.shadow,$i270.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 201, 11} true;
  $p272 := $add.ref($p41,$mul.ref($i225,4));
  $p272.shadow := $add.ref($p41.shadow,$mul.ref($i225.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 201, 11} true;
  $shadow_ok := ($shadow_ok && ($p272 == $p272.shadow));
  $p273 := $load.ref($M.15,$p272);
  $p273.shadow := $load.ref($M.15.shadow,$p272.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 201, 11} true;
  $p274 := $add.ref($p273,$mul.ref($i229,4));
  $p274.shadow := $add.ref($p273.shadow,$mul.ref($i229.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 201, 11} true;
  $shadow_ok := ($shadow_ok && ($p274 == $p274.shadow));
  $i275 := $load.i32($M.16,$p274);
  $i275.shadow := $load.i32($M.16.shadow,$p274.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 201, 11} true;
  $p276 := $add.ref($p41,$mul.ref($i228,4));
  $p276.shadow := $add.ref($p41.shadow,$mul.ref($i228.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 201, 11} true;
  $shadow_ok := ($shadow_ok && ($p276 == $p276.shadow));
  $p277 := $load.ref($M.15,$p276);
  $p277.shadow := $load.ref($M.15.shadow,$p276.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 201, 11} true;
  $p278 := $add.ref($p277,$mul.ref($i229,4));
  $p278.shadow := $add.ref($p277.shadow,$mul.ref($i229.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 201, 11} true;
  $shadow_ok := ($shadow_ok && ($p278 == $p278.shadow));
  $i279 := $load.i32($M.16,$p278);
  $i279.shadow := $load.i32($M.16.shadow,$p278.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 201, 11} true;
  $i280 := $add.i32($i275,$i279);
  $i280.shadow := $add.i32($i275.shadow,$i279.shadow);
  call {:cexpr "_t"} boogie_si_record_i32($i280);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 201, 11} true;
  $p281 := $add.ref($p41,$mul.ref($i225,4));
  $p281.shadow := $add.ref($p41.shadow,$mul.ref($i225.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 201, 11} true;
  $shadow_ok := ($shadow_ok && ($p281 == $p281.shadow));
  $p282 := $load.ref($M.15,$p281);
  $p282.shadow := $load.ref($M.15.shadow,$p281.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 201, 11} true;
  $p283 := $add.ref($p282,$mul.ref($i229,4));
  $p283.shadow := $add.ref($p282.shadow,$mul.ref($i229.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 201, 11} true;
  $shadow_ok := ($shadow_ok && ($p283 == $p283.shadow));
  $i284 := $load.i32($M.16,$p283);
  $i284.shadow := $load.i32($M.16.shadow,$p283.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 201, 11} true;
  $i285 := $ult.i32($i280,$i284);
  $i285.shadow := $ult.i32($i280.shadow,$i284.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 201, 11} true;
  $i286 := $zext.i1.i32($i285);
  $i286.shadow := $zext.i1.i32($i285.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 201, 11} true;
  $i287 := $add.i32($i280,$i286);
  $i287.shadow := $add.i32($i280.shadow,$i286.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 201, 11} true;
  $p288 := $add.ref($p41,$mul.ref($i225,4));
  $p288.shadow := $add.ref($p41.shadow,$mul.ref($i225.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 201, 11} true;
  $shadow_ok := ($shadow_ok && ($p288 == $p288.shadow));
  $p289 := $load.ref($M.15,$p288);
  $p289.shadow := $load.ref($M.15.shadow,$p288.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 201, 11} true;
  $p290 := $add.ref($p289,$mul.ref($i229,4));
  $p290.shadow := $add.ref($p289.shadow,$mul.ref($i229.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 201, 11} true;
  $shadow_ok := ($shadow_ok && ($p290 == $p290.shadow));
  $M.16 := $store.i32($M.16,$p290,$i287);
  $M.16.shadow := $store.i32($M.16.shadow,$p290.shadow,$i287.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $p291 := $add.ref($p41,$mul.ref($i225,4));
  $p291.shadow := $add.ref($p41.shadow,$mul.ref($i225.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $shadow_ok := ($shadow_ok && ($p291 == $p291.shadow));
  $p292 := $load.ref($M.15,$p291);
  $p292.shadow := $load.ref($M.15.shadow,$p291.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $p293 := $add.ref($p292,$mul.ref($i229,4));
  $p293.shadow := $add.ref($p292.shadow,$mul.ref($i229.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $shadow_ok := ($shadow_ok && ($p293 == $p293.shadow));
  $i294 := $load.i32($M.16,$p293);
  $i294.shadow := $load.i32($M.16.shadow,$p293.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $p295 := $add.ref($p41,$mul.ref($i225,4));
  $p295.shadow := $add.ref($p41.shadow,$mul.ref($i225.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $shadow_ok := ($shadow_ok && ($p295 == $p295.shadow));
  $p296 := $load.ref($M.15,$p295);
  $p296.shadow := $load.ref($M.15.shadow,$p295.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $p297 := $add.ref($p296,$mul.ref($i229,4));
  $p297.shadow := $add.ref($p296.shadow,$mul.ref($i229.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $shadow_ok := ($shadow_ok && ($p297 == $p297.shadow));
  $i298 := $load.i32($M.16,$p297);
  $i298.shadow := $load.i32($M.16.shadow,$p297.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $i299 := $eq.i32($i298,$sub.i32(0,1));
  $i299.shadow := $eq.i32($i298.shadow,$sub.i32(0,1));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $i300 := $zext.i1.i32($i299);
  $i300.shadow := $zext.i1.i32($i299.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $i301 := $add.i32($i294,$i300);
  $i301.shadow := $add.i32($i294.shadow,$i300.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $p302 := $add.ref($p41,$mul.ref($i225,4));
  $p302.shadow := $add.ref($p41.shadow,$mul.ref($i225.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $shadow_ok := ($shadow_ok && ($p302 == $p302.shadow));
  $p303 := $load.ref($M.15,$p302);
  $p303.shadow := $load.ref($M.15.shadow,$p302.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $p304 := $add.ref($p303,$mul.ref($i229,4));
  $p304.shadow := $add.ref($p303.shadow,$mul.ref($i229.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $shadow_ok := ($shadow_ok && ($p304 == $p304.shadow));
  $M.16 := $store.i32($M.16,$p304,$i301);
  $M.16.shadow := $store.i32($M.16.shadow,$p304.shadow,$i301.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $p305 := $add.ref($p41,$mul.ref($i225,4));
  $p305.shadow := $add.ref($p41.shadow,$mul.ref($i225.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $shadow_ok := ($shadow_ok && ($p305 == $p305.shadow));
  $p306 := $load.ref($M.15,$p305);
  $p306.shadow := $load.ref($M.15.shadow,$p305.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $p307 := $add.ref($p306,$mul.ref($i229,4));
  $p307.shadow := $add.ref($p306.shadow,$mul.ref($i229.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $shadow_ok := ($shadow_ok && ($p307 == $p307.shadow));
  $i308 := $load.i32($M.16,$p307);
  $i308.shadow := $load.i32($M.16.shadow,$p307.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $i309 := $zext.i32.i64($i308);
  $i309.shadow := $zext.i32.i64($i308.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $p310 := $add.ref($p41,$mul.ref($i225,4));
  $p310.shadow := $add.ref($p41.shadow,$mul.ref($i225.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $shadow_ok := ($shadow_ok && ($p310 == $p310.shadow));
  $p311 := $load.ref($M.15,$p310);
  $p311.shadow := $load.ref($M.15.shadow,$p310.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $p312 := $add.ref($p311,$mul.ref($i229,4));
  $p312.shadow := $add.ref($p311.shadow,$mul.ref($i229.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $shadow_ok := ($shadow_ok && ($p312 == $p312.shadow));
  $i313 := $load.i32($M.16,$p312);
  $i313.shadow := $load.i32($M.16.shadow,$p312.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $i314 := $and.i32($i313,1);
  $i314.shadow := $and.i32($i313.shadow,1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $i315 := $sub.i32(0,$i314);
  $i315.shadow := $sub.i32(0,$i314.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $i316 := $zext.i32.i64($i315);
  $i316.shadow := $zext.i32.i64($i315.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $i317 := $add.i64($i309,$i316);
  $i317.shadow := $add.i64($i309.shadow,$i316.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $i318 := $lshr.i64($i317,1);
  $i318.shadow := $lshr.i64($i317.shadow,1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $i319 := $trunc.i64.i32($i318);
  $i319.shadow := $trunc.i64.i32($i318.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $p320 := $add.ref($p41,$mul.ref($i225,4));
  $p320.shadow := $add.ref($p41.shadow,$mul.ref($i225.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $shadow_ok := ($shadow_ok && ($p320 == $p320.shadow));
  $p321 := $load.ref($M.15,$p320);
  $p321.shadow := $load.ref($M.15.shadow,$p320.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $p322 := $add.ref($p321,$mul.ref($i229,4));
  $p322.shadow := $add.ref($p321.shadow,$mul.ref($i229.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 202, 11} true;
  $shadow_ok := ($shadow_ok && ($p322 == $p322.shadow));
  $M.16 := $store.i32($M.16,$p322,$i319);
  $M.16.shadow := $store.i32($M.16.shadow,$p322.shadow,$i319.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 198, 29} true;
  $i323 := $add.i32($i229,1);
  $i323.shadow := $add.i32($i229.shadow,1);
  call {:cexpr "a"} boogie_si_record_i32($i323);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 198, 29} true;
  $i229 := $i323;
  $i229.shadow := $i323.shadow;
  goto $bb47;
$bb49:
  assume !($i230 == 1);
  call {:cexpr "a"} boogie_si_record_i32(0);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 206, 14} true;
  $i324 := 0;
  $i324.shadow := 0;
  goto $bb50;
$bb50:
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 206, 14} true;
  $i325 := $sub.i32(32,$i222);
  $i325.shadow := $sub.i32(32,$i222.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 206, 14} true;
  $i326 := $ult.i32($i324,$i325);
  $i326.shadow := $ult.i32($i324.shadow,$i325.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 206, 14} true;
  assume {:branchcond $i326} true;
  $shadow_ok := ($shadow_ok && ($i326 == $i326.shadow));
  goto $bb51, $bb52;
$bb51:
  assume ($i326 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 207, 11} true;
  $i327 := $add.i32($i324,$i222);
  $i327.shadow := $add.i32($i324.shadow,$i222.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 207, 11} true;
  $p328 := $add.ref($p43,$mul.ref($i327,4));
  $p328.shadow := $add.ref($p43.shadow,$mul.ref($i327.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 207, 11} true;
  $shadow_ok := ($shadow_ok && ($p328 == $p328.shadow));
  $i329 := $load.i32($M.14,$p328);
  $i329.shadow := $load.i32($M.14.shadow,$p328.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 207, 11} true;
  $p330 := $add.ref($p41,$mul.ref($i228,4));
  $p330.shadow := $add.ref($p41.shadow,$mul.ref($i228.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 207, 11} true;
  $shadow_ok := ($shadow_ok && ($p330 == $p330.shadow));
  $p331 := $load.ref($M.15,$p330);
  $p331.shadow := $load.ref($M.15.shadow,$p330.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 207, 11} true;
  $p332 := $add.ref($p331,$mul.ref($i324,4));
  $p332.shadow := $add.ref($p331.shadow,$mul.ref($i324.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 207, 11} true;
  $shadow_ok := ($shadow_ok && ($p332 == $p332.shadow));
  $M.16 := $store.i32($M.16,$p332,$i329);
  $M.16.shadow := $store.i32($M.16.shadow,$p332.shadow,$i329.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 206, 34} true;
  $i333 := $add.i32($i324,1);
  $i333.shadow := $add.i32($i324.shadow,1);
  call {:cexpr "a"} boogie_si_record_i32($i333);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 206, 34} true;
  $i324 := $i333;
  $i324.shadow := $i333.shadow;
  goto $bb50;
$bb52:
  assume !($i326 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 209, 14} true;
  $i334 := $sub.i32(32,$i222);
  $i334.shadow := $sub.i32(32,$i222.shadow);
  call {:cexpr "a"} boogie_si_record_i32($i334);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 209, 14} true;
  $i335 := $i334;
  $i335.shadow := $i334.shadow;
  goto $bb53;
$bb53:
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 209, 14} true;
  $i336 := $ult.i32($i335,32);
  $i336.shadow := $ult.i32($i335.shadow,32);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 209, 14} true;
  assume {:branchcond $i336} true;
  $shadow_ok := ($shadow_ok && ($i336 == $i336.shadow));
  goto $bb54, $bb55;
$bb54:
  assume ($i336 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 210, 11} true;
  $i337 := $sub.i32(32,$i222);
  $i337.shadow := $sub.i32(32,$i222.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 210, 11} true;
  $i338 := $sub.i32($i335,$i337);
  $i338.shadow := $sub.i32($i335.shadow,$i337.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 210, 11} true;
  $p339 := $add.ref($p43,$mul.ref($i338,4));
  $p339.shadow := $add.ref($p43.shadow,$mul.ref($i338.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 210, 11} true;
  $shadow_ok := ($shadow_ok && ($p339 == $p339.shadow));
  $i340 := $load.i32($M.14,$p339);
  $i340.shadow := $load.i32($M.14.shadow,$p339.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 210, 11} true;
  $i341 := $sub.i32($sub.i32(0,1),$i340);
  $i341.shadow := $sub.i32($sub.i32(0,1),$i340.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 210, 11} true;
  $p342 := $add.ref($p41,$mul.ref($i228,4));
  $p342.shadow := $add.ref($p41.shadow,$mul.ref($i228.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 210, 11} true;
  $shadow_ok := ($shadow_ok && ($p342 == $p342.shadow));
  $p343 := $load.ref($M.15,$p342);
  $p343.shadow := $load.ref($M.15.shadow,$p342.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 210, 11} true;
  $p344 := $add.ref($p343,$mul.ref($i335,4));
  $p344.shadow := $add.ref($p343.shadow,$mul.ref($i335.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 210, 11} true;
  $shadow_ok := ($shadow_ok && ($p344 == $p344.shadow));
  $M.16 := $store.i32($M.16,$p344,$i341);
  $M.16.shadow := $store.i32($M.16.shadow,$p344.shadow,$i341.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 210, 11} true;
  $p345 := $add.ref($p41,$mul.ref($i228,4));
  $p345.shadow := $add.ref($p41.shadow,$mul.ref($i228.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 210, 11} true;
  $shadow_ok := ($shadow_ok && ($p345 == $p345.shadow));
  $p346 := $load.ref($M.15,$p345);
  $p346.shadow := $load.ref($M.15.shadow,$p345.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 210, 11} true;
  $p347 := $add.ref($p346,$mul.ref($i335,4));
  $p347.shadow := $add.ref($p346.shadow,$mul.ref($i335.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 210, 11} true;
  $shadow_ok := ($shadow_ok && ($p347 == $p347.shadow));
  $i348 := $load.i32($M.16,$p347);
  $i348.shadow := $load.i32($M.16.shadow,$p347.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 210, 11} true;
  $p349 := $add.ref($p41,$mul.ref($i228,4));
  $p349.shadow := $add.ref($p41.shadow,$mul.ref($i228.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 210, 11} true;
  $shadow_ok := ($shadow_ok && ($p349 == $p349.shadow));
  $p350 := $load.ref($M.15,$p349);
  $p350.shadow := $load.ref($M.15.shadow,$p349.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 210, 11} true;
  $p351 := $add.ref($p350,$mul.ref($i335,4));
  $p351.shadow := $add.ref($p350.shadow,$mul.ref($i335.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 210, 11} true;
  $shadow_ok := ($shadow_ok && ($p351 == $p351.shadow));
  $i352 := $load.i32($M.16,$p351);
  $i352.shadow := $load.i32($M.16.shadow,$p351.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 210, 11} true;
  $i353 := $eq.i32($i352,$sub.i32(0,1));
  $i353.shadow := $eq.i32($i352.shadow,$sub.i32(0,1));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 210, 11} true;
  $i354 := $zext.i1.i32($i353);
  $i354.shadow := $zext.i1.i32($i353.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 210, 11} true;
  $i355 := $add.i32($i348,$i354);
  $i355.shadow := $add.i32($i348.shadow,$i354.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 210, 11} true;
  $p356 := $add.ref($p41,$mul.ref($i228,4));
  $p356.shadow := $add.ref($p41.shadow,$mul.ref($i228.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 210, 11} true;
  $shadow_ok := ($shadow_ok && ($p356 == $p356.shadow));
  $p357 := $load.ref($M.15,$p356);
  $p357.shadow := $load.ref($M.15.shadow,$p356.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 210, 11} true;
  $p358 := $add.ref($p357,$mul.ref($i335,4));
  $p358.shadow := $add.ref($p357.shadow,$mul.ref($i335.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 210, 11} true;
  $shadow_ok := ($shadow_ok && ($p358 == $p358.shadow));
  $M.16 := $store.i32($M.16,$p358,$i355);
  $M.16.shadow := $store.i32($M.16.shadow,$p358.shadow,$i355.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 209, 35} true;
  $i359 := $add.i32($i335,1);
  $i359.shadow := $add.i32($i335.shadow,1);
  call {:cexpr "a"} boogie_si_record_i32($i359);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 209, 35} true;
  $i335 := $i359;
  $i335.shadow := $i359.shadow;
  goto $bb53;
$bb55:
  assume !($i336 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 189, 34} true;
  $i360 := $add.i32($i217,1);
  $i360.shadow := $add.i32($i217.shadow,1);
  call {:cexpr "t"} boogie_si_record_i32($i360);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 189, 34} true;
  $i217 := $i360;
  $i217.shadow := $i360.shadow;
  goto $bb44;
$bb56:
  assume ($i363 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 217, 5} true;
  $p364 := $add.ref($p41,$mul.ref($i212,4));
  $p364.shadow := $add.ref($p41.shadow,$mul.ref($i212.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 217, 5} true;
  $shadow_ok := ($shadow_ok && ($p364 == $p364.shadow));
  $p365 := $load.ref($M.15,$p364);
  $p365.shadow := $load.ref($M.15.shadow,$p364.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 217, 5} true;
  $p366 := $p365;
  $p366.shadow := $p365.shadow;
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 217, 5} true;
  $shadow_ok := ($shadow_ok && ($p366 == $p366.shadow));
  $i367 := $load.i32($M.16,$p366);
  $i367.shadow := $load.i32($M.16.shadow,$p366.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 217, 5} true;
  $i368 := $add.i32(32,$i212);
  $i368.shadow := $add.i32(32,$i212.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 217, 5} true;
  $p369 := $add.ref($p41,$mul.ref($i368,4));
  $p369.shadow := $add.ref($p41.shadow,$mul.ref($i368.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 217, 5} true;
  $shadow_ok := ($shadow_ok && ($p369 == $p369.shadow));
  $p370 := $load.ref($M.15,$p369);
  $p370.shadow := $load.ref($M.15.shadow,$p369.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 217, 5} true;
  $p371 := $add.ref($p370,124);
  $p371.shadow := $add.ref($p370.shadow,124);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 217, 5} true;
  $shadow_ok := ($shadow_ok && ($p371 == $p371.shadow));
  $i372 := $load.i32($M.16,$p371);
  $i372.shadow := $load.i32($M.16.shadow,$p371.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 217, 5} true;
  $i373 := $sub.i32($i367,$i372);
  $i373.shadow := $sub.i32($i367.shadow,$i372.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 217, 5} true;
  $i374 := $add.i32(32,$i212);
  $i374.shadow := $add.i32(32,$i212.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 217, 5} true;
  $p375 := $add.ref($p41,$mul.ref($i374,4));
  $p375.shadow := $add.ref($p41.shadow,$mul.ref($i374.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 217, 5} true;
  $shadow_ok := ($shadow_ok && ($p375 == $p375.shadow));
  $p376 := $load.ref($M.15,$p375);
  $p376.shadow := $load.ref($M.15.shadow,$p375.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 217, 5} true;
  $p377 := $add.ref($p376,124);
  $p377.shadow := $add.ref($p376.shadow,124);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 217, 5} true;
  $shadow_ok := ($shadow_ok && ($p377 == $p377.shadow));
  $i378 := $load.i32($M.16,$p377);
  $i378.shadow := $load.i32($M.16.shadow,$p377.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 217, 5} true;
  $p379 := $add.ref($p41,$mul.ref($i212,4));
  $p379.shadow := $add.ref($p41.shadow,$mul.ref($i212.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 217, 5} true;
  $shadow_ok := ($shadow_ok && ($p379 == $p379.shadow));
  $p380 := $load.ref($M.15,$p379);
  $p380.shadow := $load.ref($M.15.shadow,$p379.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 217, 5} true;
  $p381 := $p380;
  $p381.shadow := $p380.shadow;
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 217, 5} true;
  $shadow_ok := ($shadow_ok && ($p381 == $p381.shadow));
  $i382 := $load.i32($M.16,$p381);
  $i382.shadow := $load.i32($M.16.shadow,$p381.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 217, 5} true;
  $i383 := $ugt.i32($i378,$i382);
  $i383.shadow := $ugt.i32($i378.shadow,$i382.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 217, 5} true;
  $i384 := $zext.i1.i32($i383);
  $i384.shadow := $zext.i1.i32($i383.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 217, 5} true;
  $i385 := $sub.i32($i373,$i384);
  $i385.shadow := $sub.i32($i373.shadow,$i384.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 217, 5} true;
  $p386 := $add.ref(z,$mul.ref($i212,4));
  $p386.shadow := $add.ref(z.shadow,$mul.ref($i212.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 217, 5} true;
  $shadow_ok := ($shadow_ok && ($p386 == $p386.shadow));
  $M.17 := $store.i32($M.17,$p386,$i385);
  $M.17.shadow := $store.i32($M.17.shadow,$p386.shadow,$i385.shadow);
  call {:cexpr "j"} boogie_si_record_i32(1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 218, 10} true;
  $i387 := 1;
  $i387.shadow := 1;
  goto $bb58;
$bb57:
  assume !($i363 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 222, 1} true;
  $exn := false;
  $exn.shadow := false;
  return;
$bb58:
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 218, 10} true;
  $i388 := $slt.i32($i387,32);
  $i388.shadow := $slt.i32($i387.shadow,32);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 218, 10} true;
  assume {:branchcond $i388} true;
  $shadow_ok := ($shadow_ok && ($i388 == $i388.shadow));
  goto $bb59, $bb60;
$bb59:
  assume ($i388 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 219, 7} true;
  $p389 := $add.ref($p41,$mul.ref($i212,4));
  $p389.shadow := $add.ref($p41.shadow,$mul.ref($i212.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 219, 7} true;
  $shadow_ok := ($shadow_ok && ($p389 == $p389.shadow));
  $p390 := $load.ref($M.15,$p389);
  $p390.shadow := $load.ref($M.15.shadow,$p389.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 219, 7} true;
  $p391 := $add.ref($p390,$mul.ref($i387,4));
  $p391.shadow := $add.ref($p390.shadow,$mul.ref($i387.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 219, 7} true;
  $shadow_ok := ($shadow_ok && ($p391 == $p391.shadow));
  $i392 := $load.i32($M.16,$p391);
  $i392.shadow := $load.i32($M.16.shadow,$p391.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 219, 7} true;
  $i393 := $sub.i32($i387,1);
  $i393.shadow := $sub.i32($i387.shadow,1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 219, 7} true;
  $i394 := $add.i32(32,$i212);
  $i394.shadow := $add.i32(32,$i212.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 219, 7} true;
  $p395 := $add.ref($p41,$mul.ref($i394,4));
  $p395.shadow := $add.ref($p41.shadow,$mul.ref($i394.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 219, 7} true;
  $shadow_ok := ($shadow_ok && ($p395 == $p395.shadow));
  $p396 := $load.ref($M.15,$p395);
  $p396.shadow := $load.ref($M.15.shadow,$p395.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 219, 7} true;
  $p397 := $add.ref($p396,$mul.ref($i393,4));
  $p397.shadow := $add.ref($p396.shadow,$mul.ref($i393.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 219, 7} true;
  $shadow_ok := ($shadow_ok && ($p397 == $p397.shadow));
  $i398 := $load.i32($M.16,$p397);
  $i398.shadow := $load.i32($M.16.shadow,$p397.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 219, 7} true;
  $i399 := $add.i32($i392,$i398);
  $i399.shadow := $add.i32($i392.shadow,$i398.shadow);
  call {:cexpr "_t"} boogie_si_record_i32($i399);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 219, 7} true;
  $p400 := $add.ref($p41,$mul.ref($i212,4));
  $p400.shadow := $add.ref($p41.shadow,$mul.ref($i212.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 219, 7} true;
  $shadow_ok := ($shadow_ok && ($p400 == $p400.shadow));
  $p401 := $load.ref($M.15,$p400);
  $p401.shadow := $load.ref($M.15.shadow,$p400.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 219, 7} true;
  $p402 := $add.ref($p401,$mul.ref($i387,4));
  $p402.shadow := $add.ref($p401.shadow,$mul.ref($i387.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 219, 7} true;
  $shadow_ok := ($shadow_ok && ($p402 == $p402.shadow));
  $i403 := $load.i32($M.16,$p402);
  $i403.shadow := $load.i32($M.16.shadow,$p402.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 219, 7} true;
  $i404 := $ult.i32($i399,$i403);
  $i404.shadow := $ult.i32($i399.shadow,$i403.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 219, 7} true;
  $i405 := $zext.i1.i32($i404);
  $i405.shadow := $zext.i1.i32($i404.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 219, 7} true;
  $i406 := $add.i32($i399,$i405);
  $i406.shadow := $add.i32($i399.shadow,$i405.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 219, 7} true;
  $i407 := $mul.i32(32,$i387);
  $i407.shadow := $mul.i32(32,$i387.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 219, 7} true;
  $i408 := $add.i32($i407,$i212);
  $i408.shadow := $add.i32($i407.shadow,$i212.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 219, 7} true;
  $p409 := $add.ref(z,$mul.ref($i408,4));
  $p409.shadow := $add.ref(z.shadow,$mul.ref($i408.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 219, 7} true;
  $shadow_ok := ($shadow_ok && ($p409 == $p409.shadow));
  $M.17 := $store.i32($M.17,$p409,$i406);
  $M.17.shadow := $store.i32($M.17.shadow,$p409.shadow,$i406.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 218, 25} true;
  $i410 := $add.i32($i387,1);
  $i410.shadow := $add.i32($i387.shadow,1);
  call {:cexpr "j"} boogie_si_record_i32($i410);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 218, 25} true;
  $i387 := $i410;
  $i387.shadow := $i410.shadow;
  goto $bb58;
$bb60:
  assume !($i388 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 216, 23} true;
  $i411 := $add.i32($i212,1);
  $i411.shadow := $add.i32($i212.shadow,1);
  call {:cexpr "i"} boogie_si_record_i32($i411);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 216, 23} true;
  $i212 := $i411;
  $i212.shadow := $i411.shadow;
  goto $bb41;
}
procedure {:inline 2} public_in_value($p0: ref, $p0.shadow: ref);
procedure {:inline 2} random() returns ($r: i32, $r.shadow: i32);
procedure {:inline 2} reverse(x: i32, x.shadow: i32) returns ($r: i32, $r.shadow: i32)
{
  var $i0: i32;
  var $i0.shadow: i32;
  var $i1: i32;
  var $i1.shadow: i32;
  var $i10: i32;
  var $i10.shadow: i32;
  var $i11: i32;
  var $i11.shadow: i32;
  var $i12: i32;
  var $i12.shadow: i32;
  var $i13: i32;
  var $i13.shadow: i32;
  var $i14: i32;
  var $i14.shadow: i32;
  var $i15: i32;
  var $i15.shadow: i32;
  var $i16: i32;
  var $i16.shadow: i32;
  var $i17: i32;
  var $i17.shadow: i32;
  var $i18: i32;
  var $i18.shadow: i32;
  var $i19: i32;
  var $i19.shadow: i32;
  var $i2: i32;
  var $i2.shadow: i32;
  var $i20: i32;
  var $i20.shadow: i32;
  var $i21: i32;
  var $i21.shadow: i32;
  var $i22: i32;
  var $i22.shadow: i32;
  var $i3: i32;
  var $i3.shadow: i32;
  var $i4: i32;
  var $i4.shadow: i32;
  var $i5: i32;
  var $i5.shadow: i32;
  var $i6: i32;
  var $i6.shadow: i32;
  var $i7: i32;
  var $i7.shadow: i32;
  var $i8: i32;
  var $i8.shadow: i32;
  var $i9: i32;
  var $i9.shadow: i32;
$bb0:
  call {:cexpr "x"} boogie_si_record_i32(x);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 80, 3} true;
  $i0 := $and.i32(x,$sub.i32(0,1431655766));
  $i0.shadow := $and.i32(x.shadow,$sub.i32(0,1431655766));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 80, 3} true;
  $i1 := $lshr.i32($i0,1);
  $i1.shadow := $lshr.i32($i0.shadow,1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 80, 3} true;
  $i2 := $and.i32(x,1431655765);
  $i2.shadow := $and.i32(x.shadow,1431655765);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 80, 3} true;
  $i3 := $shl.i32($i2,1);
  $i3.shadow := $shl.i32($i2.shadow,1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 80, 3} true;
  $i4 := $or.i32($i1,$i3);
  $i4.shadow := $or.i32($i1.shadow,$i3.shadow);
  call {:cexpr "x"} boogie_si_record_i32($i4);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 81, 3} true;
  $i5 := $and.i32($i4,$sub.i32(0,858993460));
  $i5.shadow := $and.i32($i4.shadow,$sub.i32(0,858993460));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 81, 3} true;
  $i6 := $lshr.i32($i5,2);
  $i6.shadow := $lshr.i32($i5.shadow,2);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 81, 3} true;
  $i7 := $and.i32($i4,858993459);
  $i7.shadow := $and.i32($i4.shadow,858993459);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 81, 3} true;
  $i8 := $shl.i32($i7,2);
  $i8.shadow := $shl.i32($i7.shadow,2);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 81, 3} true;
  $i9 := $or.i32($i6,$i8);
  $i9.shadow := $or.i32($i6.shadow,$i8.shadow);
  call {:cexpr "x"} boogie_si_record_i32($i9);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 82, 3} true;
  $i10 := $and.i32($i9,$sub.i32(0,252645136));
  $i10.shadow := $and.i32($i9.shadow,$sub.i32(0,252645136));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 82, 3} true;
  $i11 := $lshr.i32($i10,4);
  $i11.shadow := $lshr.i32($i10.shadow,4);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 82, 3} true;
  $i12 := $and.i32($i9,252645135);
  $i12.shadow := $and.i32($i9.shadow,252645135);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 82, 3} true;
  $i13 := $shl.i32($i12,4);
  $i13.shadow := $shl.i32($i12.shadow,4);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 82, 3} true;
  $i14 := $or.i32($i11,$i13);
  $i14.shadow := $or.i32($i11.shadow,$i13.shadow);
  call {:cexpr "x"} boogie_si_record_i32($i14);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 83, 3} true;
  $i15 := $and.i32($i14,$sub.i32(0,16711936));
  $i15.shadow := $and.i32($i14.shadow,$sub.i32(0,16711936));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 83, 3} true;
  $i16 := $lshr.i32($i15,8);
  $i16.shadow := $lshr.i32($i15.shadow,8);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 83, 3} true;
  $i17 := $and.i32($i14,16711935);
  $i17.shadow := $and.i32($i14.shadow,16711935);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 83, 3} true;
  $i18 := $shl.i32($i17,8);
  $i18.shadow := $shl.i32($i17.shadow,8);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 83, 3} true;
  $i19 := $or.i32($i16,$i18);
  $i19.shadow := $or.i32($i16.shadow,$i18.shadow);
  call {:cexpr "x"} boogie_si_record_i32($i19);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 84, 3} true;
  $i20 := $lshr.i32($i19,16);
  $i20.shadow := $lshr.i32($i19.shadow,16);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 84, 3} true;
  $i21 := $shl.i32($i19,16);
  $i21.shadow := $shl.i32($i19.shadow,16);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 84, 3} true;
  $i22 := $or.i32($i20,$i21);
  $i22.shadow := $or.i32($i20.shadow,$i21.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/fft.c", 84, 3} true;
  $r := $i22;
  $r.shadow := $i22.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
}
procedure {:inline 2} sample_ct(s: ref, s.shadow: ref, rand_ctx: ref, rand_ctx.shadow: ref)
{
  var $i1: i32;
  var $i1.shadow: i32;
  var $i10: i64;
  var $i10.shadow: i64;
  var $i12: i32;
  var $i12.shadow: i32;
  var $i13: i32;
  var $i13.shadow: i32;
  var $i14: i32;
  var $i14.shadow: i32;
  var $i16: i32;
  var $i16.shadow: i32;
  var $i17: i32;
  var $i17.shadow: i32;
  var $i19: i32;
  var $i19.shadow: i32;
  var $i2: i1;
  var $i2.shadow: i1;
  var $i20: i32;
  var $i20.shadow: i32;
  var $i21: i64;
  var $i21.shadow: i64;
  var $i22: i32;
  var $i22.shadow: i32;
  var $i23: i32;
  var $i23.shadow: i32;
  var $i25: i32;
  var $i25.shadow: i32;
  var $i26: i64;
  var $i26.shadow: i64;
  var $i27: i64;
  var $i27.shadow: i64;
  var $i28: i64;
  var $i28.shadow: i64;
  var $i29: i64;
  var $i29.shadow: i64;
  var $i3: i64;
  var $i3.shadow: i64;
  var $i30: i32;
  var $i30.shadow: i32;
  var $i31: i32;
  var $i31.shadow: i32;
  var $i32: i32;
  var $i32.shadow: i32;
  var $i34: i32;
  var $i34.shadow: i32;
  var $i35: i32;
  var $i35.shadow: i32;
  var $i4: i32;
  var $i4.shadow: i32;
  var $i5: i64;
  var $i5.shadow: i64;
  var $i6: i1;
  var $i6.shadow: i1;
  var $i8: i64;
  var $i8.shadow: i64;
  var $i9: i32;
  var $i9.shadow: i32;
  var $p0: ref;
  var $p0.shadow: ref;
  var $p11: ref;
  var $p11.shadow: ref;
  var $p15: ref;
  var $p15.shadow: ref;
  var $p18: ref;
  var $p18.shadow: ref;
  var $p24: ref;
  var $p24.shadow: ref;
  var $p33: ref;
  var $p33.shadow: ref;
  var $p7: ref;
  var $p7.shadow: ref;
$bb0:
  $shadow_ok := ($shadow_ok && ($mul.ref(24,1) == $mul.ref(24,1)));
  call $p0 := $alloc($mul.ref(24,1));
  $p0.shadow := $p0;
  call {:cexpr "s"} boogie_si_record_ref(s);
  call {:cexpr "rand_ctx"} boogie_si_record_ref(rand_ctx);
  call {:cexpr "i"} boogie_si_record_i32(0);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 147, 8} true;
  $i1 := 0;
  $i1.shadow := 0;
  goto $bb1;
$bb1:
  assert {:manual} ($shadow_ok);
  assert {:manual} ($i1 == $i1.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 147, 8} true;
  $i2 := $slt.i32($i1,16);
  $i2.shadow := $slt.i32($i1.shadow,16);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 147, 8} true;
  assume {:branchcond $i2} true;
  $shadow_ok := ($shadow_ok && ($i2 == $i2.shadow));
  goto $bb2, $bb3;
$bb2:
  assume ($i2 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 148, 18} true;
  call $i3, $i3.shadow := RANDOM64(rand_ctx, rand_ctx.shadow);
  call {:cexpr "r"} boogie_si_record_i64($i3);
  call {:cexpr "j"} boogie_si_record_i32(0);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 149, 10} true;
  $i4, $i5 := 0, $i3;
  $i4.shadow, $i5.shadow := 0, $i3.shadow;
  goto $bb4;
$bb3:
  assume !($i2 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 162, 1} true;
  $exn := false;
  $exn.shadow := false;
  return;
$bb4:
  assert {:manual} ($shadow_ok);
  assert {:manual} ($i4 == $i4.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 149, 10} true;
  $i6 := $slt.i32($i4,64);
  $i6.shadow := $slt.i32($i4.shadow,64);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 149, 10} true;
  assume {:branchcond $i6} true;
  $shadow_ok := ($shadow_ok && ($i6 == $i6.shadow));
  goto $bb5, $bb6;
$bb5:
  assume ($i6 == 1);
  assume true;
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 153, 7} true;
  $p7 := $p0;
  $p7.shadow := $p0.shadow;
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 153, 7} true;
  call RANDOM192($p7, $p7.shadow, rand_ctx, rand_ctx.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 154, 7} true;
  $i8 := $and.i64($i5,1);
  $i8.shadow := $and.i64($i5.shadow,1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 154, 7} true;
  $i9 := $trunc.i64.i32($i8);
  $i9.shadow := $trunc.i64.i32($i8.shadow);
  call {:cexpr "m"} boogie_si_record_i32($i9);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 155, 7} true;
  $i10 := $lshr.i64($i5,1);
  $i10.shadow := $lshr.i64($i5.shadow,1);
  call {:cexpr "r"} boogie_si_record_i64($i10);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 157, 23} true;
  $p11 := $p0;
  $p11.shadow := $p0.shadow;
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 157, 23} true;
  call $i12, $i12.shadow := single_sample_ct($p11, $p11.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 157, 23} true;
  $i13 := $mul.i32($i1,64);
  $i13.shadow := $mul.i32($i1.shadow,64);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 157, 23} true;
  $i14 := $add.i32($i13,$i4);
  $i14.shadow := $add.i32($i13.shadow,$i4.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 157, 23} true;
  $p15 := $add.ref(s,$mul.ref($i14,4));
  $p15.shadow := $add.ref(s.shadow,$mul.ref($i14.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 157, 23} true;
  $shadow_ok := ($shadow_ok && ($p15 == $p15.shadow));
  $M.18 := $store.i32($M.18,$p15,$i12);
  $M.18.shadow := $store.i32($M.18.shadow,$p15.shadow,$i12.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 158, 7} true;
  $i16 := $mul.i32($i1,64);
  $i16.shadow := $mul.i32($i1.shadow,64);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 158, 7} true;
  $i17 := $add.i32($i16,$i4);
  $i17.shadow := $add.i32($i16.shadow,$i4.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 158, 7} true;
  $p18 := $add.ref(s,$mul.ref($i17,4));
  $p18.shadow := $add.ref(s.shadow,$mul.ref($i17.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 158, 7} true;
  $shadow_ok := ($shadow_ok && ($p18 == $p18.shadow));
  $i19 := $load.i32($M.18,$p18);
  $i19.shadow := $load.i32($M.18.shadow,$p18.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 158, 7} true;
  $i20 := $sub.i32($sub.i32(0,1),$i19);
  $i20.shadow := $sub.i32($sub.i32(0,1),$i19.shadow);
  call {:cexpr "t"} boogie_si_record_i32($i20);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 159, 23} true;
  $i21 := $zext.i32.i64($i20);
  $i21.shadow := $zext.i32.i64($i20.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 159, 23} true;
  $i22 := $mul.i32($i1,64);
  $i22.shadow := $mul.i32($i1.shadow,64);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 159, 23} true;
  $i23 := $add.i32($i22,$i4);
  $i23.shadow := $add.i32($i22.shadow,$i4.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 159, 23} true;
  $p24 := $add.ref(s,$mul.ref($i23,4));
  $p24.shadow := $add.ref(s.shadow,$mul.ref($i23.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 159, 23} true;
  $shadow_ok := ($shadow_ok && ($p24 == $p24.shadow));
  $i25 := $load.i32($M.18,$p24);
  $i25.shadow := $load.i32($M.18.shadow,$p24.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 159, 23} true;
  $i26 := $zext.i32.i64($i25);
  $i26.shadow := $zext.i32.i64($i25.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 159, 55} true;
  $i27 := $zext.i32.i64($i9);
  $i27.shadow := $zext.i32.i64($i9.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 159, 55} true;
  call $i28, $i28.shadow := ct_eq_u64($i27, $i27.shadow, 0, 0);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 159, 23} true;
  call $i29, $i29.shadow := ct_select_u64($i21, $i21.shadow, $i26, $i26.shadow, $i28, $i28.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 159, 23} true;
  $i30 := $trunc.i64.i32($i29);
  $i30.shadow := $trunc.i64.i32($i29.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 159, 23} true;
  $i31 := $mul.i32($i1,64);
  $i31.shadow := $mul.i32($i1.shadow,64);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 159, 23} true;
  $i32 := $add.i32($i31,$i4);
  $i32.shadow := $add.i32($i31.shadow,$i4.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 159, 23} true;
  $p33 := $add.ref(s,$mul.ref($i32,4));
  $p33.shadow := $add.ref(s.shadow,$mul.ref($i32.shadow,4));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 159, 23} true;
  $shadow_ok := ($shadow_ok && ($p33 == $p33.shadow));
  $M.18 := $store.i32($M.18,$p33,$i30);
  $M.18.shadow := $store.i32($M.18.shadow,$p33.shadow,$i30.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 149, 25} true;
  $i34 := $add.i32($i4,1);
  $i34.shadow := $add.i32($i4.shadow,1);
  call {:cexpr "j"} boogie_si_record_i32($i34);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 149, 25} true;
  $i4, $i5 := $i34, $i10;
  $i4.shadow, $i5.shadow := $i34.shadow, $i10.shadow;
  goto $bb4;
$bb6:
  assume !($i6 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 147, 23} true;
  $i35 := $add.i32($i1,1);
  $i35.shadow := $add.i32($i1.shadow,1);
  call {:cexpr "i"} boogie_si_record_i32($i35);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 147, 23} true;
  $i1 := $i35;
  $i1.shadow := $i35.shadow;
  goto $bb1;
}
procedure {:entrypoint} sample_ct_wrapper({:public_in_value} s: ref, s.shadow: ref, {:public_in_value} rand_ctx: ref, rand_ctx.shadow: ref)
requires (s == s.shadow);
requires (rand_ctx == rand_ctx.shadow);
{
  var $i2: i1;
  var $i2.shadow: i1;
  var $i3: i1;
  var $i3.shadow: i1;
  var $i6: i1;
  var $i6.shadow: i1;
  var $i7: i32;
  var $i7.shadow: i32;
  var $p0: ref;
  var $p0.shadow: ref;
  var $p1: ref;
  var $p1.shadow: ref;
  var $p4: ref;
  var $p4.shadow: ref;
  var $p5: ref;
  var $p5.shadow: ref;
  var $p8: ref;
  var $p8.shadow: ref;
  var $p9: ref;
  var $p9.shadow: ref;
$bb0:
  $shadow_ok := true;
  call $initialize();
  call {:cexpr "s"} boogie_si_record_ref(s);
  call {:cexpr "rand_ctx"} boogie_si_record_ref(rand_ctx);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/sample_ct.c", 6, 3} true;
  $p0 := $bitcast.ref.ref(s);
  $p0.shadow := $bitcast.ref.ref(s.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/sample_ct.c", 6, 3} true;
  $p1 := $add.ref($p0,4096);
  $p1.shadow := $add.ref($p0.shadow,4096);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/sample_ct.c", 6, 3} true;
  $i2 := $ult.ref($p1,rand_ctx);
  $i2.shadow := $ult.ref($p1.shadow,rand_ctx.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/sample_ct.c", 6, 3} true;
  $i3 := 1;
  $i3.shadow := 1;
  assume {:branchcond $i2} true;
  $shadow_ok := ($shadow_ok && ($i2 == $i2.shadow));
  goto $bb1, $bb3;
$bb1:
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/sample_ct.c", 6, 3} true;
  assume ($i2 == 1);
  goto $bb2;
$bb2:
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/sample_ct.c", 6, 3} true;
  $i7 := $zext.i1.i32($i3);
  $i7.shadow := $zext.i1.i32($i3.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/sample_ct.c", 6, 3} true;
  call __VERIFIER_assume($i7);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/sample_ct.c", 8, 19} true;
  call $p8, $p8.shadow := __SMACK_value.ref(s, s.shadow);
  assume $isExternal($p8);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/sample_ct.c", 8, 3} true;
  call public_in_value($p8, $p8.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/sample_ct.c", 9, 19} true;
  call $p9, $p9.shadow := __SMACK_value.ref(rand_ctx, rand_ctx.shadow);
  assume $isExternal($p9);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/sample_ct.c", 9, 3} true;
  call public_in_value($p9, $p9.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/sample_ct.c", 11, 3} true;
  call sample_ct(s, s.shadow, rand_ctx, rand_ctx.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/sample_ct.c", 12, 1} true;
  $exn := false;
  $exn.shadow := false;
  assert $shadow_ok;
  return;
$bb3:
  assume !($i2 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/sample_ct.c", 6, 3} true;
  $p4 := $add.ref(rand_ctx,1);
  $p4.shadow := $add.ref(rand_ctx.shadow,1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/sample_ct.c", 6, 3} true;
  $p5 := $bitcast.ref.ref(s);
  $p5.shadow := $bitcast.ref.ref(s.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/sample_ct.c", 6, 3} true;
  $i6 := $ult.ref($p4,$p5);
  $i6.shadow := $ult.ref($p4.shadow,$p5.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/sample_ct.c", 6, 3} true;
  $i3 := $i6;
  $i3.shadow := $i6.shadow;
  goto $bb2;
}
procedure {:inline 2} single_sample(in: ref, in.shadow: ref) returns ($r: i32, $r.shadow: i32)
{
  var $i0: i32;
  var $i0.shadow: i32;
  var $i1: i32;
  var $i1.shadow: i32;
  var $i10: i32;
  var $i10.shadow: i32;
  var $i11: i32;
  var $i11.shadow: i32;
  var $i12: i32;
  var $i12.shadow: i32;
  var $i13: i32;
  var $i13.shadow: i32;
  var $i2: i32;
  var $i2.shadow: i32;
  var $i3: i32;
  var $i3.shadow: i32;
  var $i4: i1;
  var $i4.shadow: i1;
  var $i7: i32;
  var $i7.shadow: i32;
  var $i8: i1;
  var $i8.shadow: i1;
  var $i9: i32;
  var $i9.shadow: i32;
  var $p5: ref;
  var $p5.shadow: ref;
  var $p6: ref;
  var $p6.shadow: ref;
$bb0:
  call {:cexpr "in"} boogie_si_record_ref(in);
  call {:cexpr "lower_index"} boogie_si_record_i32(0);
  call {:cexpr "this_index"} boogie_si_record_i32(32);
  call {:cexpr "upper_index"} boogie_si_record_i32(64);
  call {:cexpr "i"} boogie_si_record_i32(0);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 125, 8} true;
  $i0, $i1, $i2, $i3 := 64, 32, 0, 0;
  $i0.shadow, $i1.shadow, $i2.shadow, $i3.shadow := 64, 32, 0, 0;
  goto $bb1;
$bb1:
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 125, 8} true;
  $i4 := $slt.i32($i3,6);
  $i4.shadow := $slt.i32($i3.shadow,6);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 125, 8} true;
  assume {:branchcond $i4} true;
  $shadow_ok := ($shadow_ok && ($i4 == $i4.shadow));
  goto $bb2, $bb3;
$bb2:
  assume ($i4 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 126, 9} true;
  $p5 := $add.ref(rlwe_table,$mul.ref($i1,24));
  $p5.shadow := $add.ref(rlwe_table,$mul.ref($i1.shadow,24));
  $p6 := $add.ref(rlwe_table,$mul.ref($i1,24));
  $p6.shadow := $add.ref(rlwe_table,$mul.ref($i1.shadow,24));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 126, 9} true;
  call $i7, $i7.shadow := cmplt_ct(in, in.shadow, $p6, $p6.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 126, 9} true;
  $i8 := $ne.i32($i7,0);
  $i8.shadow := $ne.i32($i7.shadow,0);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 126, 9} true;
  assume {:branchcond $i8} true;
  $shadow_ok := ($shadow_ok && ($i8 == $i8.shadow));
  goto $bb4, $bb5;
$bb3:
  assume !($i4 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 133, 3} true;
  $r := $i2;
  $r.shadow := $i2.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
$bb4:
  assume ($i8 == 1);
  call {:cexpr "upper_index"} boogie_si_record_i32($i1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 128, 5} true;
  $i9, $i10 := $i1, $i2;
  $i9.shadow, $i10.shadow := $i1.shadow, $i2.shadow;
  goto $bb6;
$bb5:
  assume !($i8 == 1);
  call {:cexpr "lower_index"} boogie_si_record_i32($i1);
  $i9, $i10 := $i0, $i1;
  $i9.shadow, $i10.shadow := $i0.shadow, $i1.shadow;
  goto $bb6;
$bb6:
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 131, 5} true;
  $i11 := $add.i32($i10,$i9);
  $i11.shadow := $add.i32($i10.shadow,$i9.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 131, 5} true;
  $i12 := $udiv.i32($i11,2);
  $i12.shadow := $udiv.i32($i11.shadow,2);
  call {:cexpr "this_index"} boogie_si_record_i32($i12);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 125, 22} true;
  $i13 := $add.i32($i3,1);
  $i13.shadow := $add.i32($i3.shadow,1);
  call {:cexpr "i"} boogie_si_record_i32($i13);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 125, 22} true;
  $i0, $i1, $i2, $i3 := $i9, $i12, $i10, $i13;
  $i0.shadow, $i1.shadow, $i2.shadow, $i3.shadow := $i9.shadow, $i12.shadow, $i10.shadow, $i13.shadow;
  goto $bb1;
}
procedure {:inline 2} single_sample_ct(in: ref, in.shadow: ref) returns ($r: i32, $r.shadow: i32)
{
  var $i0: i32;
  var $i0.shadow: i32;
  var $i1: i32;
  var $i1.shadow: i32;
  var $i10: i32;
  var $i10.shadow: i32;
  var $i11: i32;
  var $i11.shadow: i32;
  var $i2: i1;
  var $i2.shadow: i1;
  var $i3: i64;
  var $i3.shadow: i64;
  var $i4: i64;
  var $i4.shadow: i64;
  var $i7: i32;
  var $i7.shadow: i32;
  var $i8: i64;
  var $i8.shadow: i64;
  var $i9: i64;
  var $i9.shadow: i64;
  var $p5: ref;
  var $p5.shadow: ref;
  var $p6: ref;
  var $p6.shadow: ref;
$bb0:
  call {:cexpr "in"} boogie_si_record_ref(in);
  call {:cexpr "index"} boogie_si_record_i32(0);
  call {:cexpr "i"} boogie_si_record_i32(0);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 139, 8} true;
  $i0, $i1 := 0, 0;
  $i0.shadow, $i1.shadow := 0, 0;
  goto $bb1;
$bb1:
  assert {:manual} ($shadow_ok);
  assert {:manual} ($i1 == $i1.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 139, 8} true;
  $i2 := $ult.i32($i1,52);
  $i2.shadow := $ult.i32($i1.shadow,52);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 139, 8} true;
  assume {:branchcond $i2} true;
  $shadow_ok := ($shadow_ok && ($i2 == $i2.shadow));
  goto $bb2, $bb3;
$bb2:
  assume ($i2 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 140, 13} true;
  $i3 := $zext.i32.i64($i0);
  $i3.shadow := $zext.i32.i64($i0.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 140, 13} true;
  $i4 := $zext.i32.i64($i1);
  $i4.shadow := $zext.i32.i64($i1.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 140, 37} true;
  $p5 := $add.ref(rlwe_table,$mul.ref($i1,24));
  $p5.shadow := $add.ref(rlwe_table,$mul.ref($i1.shadow,24));
  $p6 := $add.ref(rlwe_table,$mul.ref($i1,24));
  $p6.shadow := $add.ref(rlwe_table,$mul.ref($i1.shadow,24));
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 140, 37} true;
  call $i7, $i7.shadow := cmplt_ct(in, in.shadow, $p6, $p6.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 140, 37} true;
  $i8 := $sext.i32.i64($i7);
  $i8.shadow := $sext.i32.i64($i7.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 140, 13} true;
  call $i9, $i9.shadow := ct_select_u64($i3, $i3.shadow, $i4, $i4.shadow, $i8, $i8.shadow);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 140, 13} true;
  $i10 := $trunc.i64.i32($i9);
  $i10.shadow := $trunc.i64.i32($i9.shadow);
  call {:cexpr "index"} boogie_si_record_i32($i10);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 139, 23} true;
  $i11 := $add.i32($i1,1);
  $i11.shadow := $add.i32($i1.shadow,1);
  call {:cexpr "i"} boogie_si_record_i32($i11);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 139, 23} true;
  $i0, $i1 := $i10, $i11;
  $i0.shadow, $i1.shadow := $i10.shadow, $i11.shadow;
  goto $bb1;
$bb3:
  assume !($i2 == 1);
  assume {:sourceloc "/home/francois/repositories/ct-verif/examples/rlwe/rlwekex/rlwe.c", 142, 3} true;
  $r := $i0;
  $r.shadow := $i0.shadow;
  $exn := false;
  $exn.shadow := false;
  return;
}
axiom (.str1 == $sub.ref(0,16));
axiom (.str2 == $sub.ref(0,30));
axiom (.str3 == $sub.ref(0,44));
axiom (rlwe_table == $sub.ref(0,1292));
axiom (__VERIFIER_assume == $sub.ref(0,1296));
axiom (llvm.dbg.declare == $sub.ref(0,1300));
axiom (__SMACK_dummy == $sub.ref(0,1304));
axiom (__SMACK_code == $sub.ref(0,1308));
axiom (__VERIFIER_nondet_unsigned_char == $sub.ref(0,1312));
axiom (__VERIFIER_nondet_unsigned_short == $sub.ref(0,1316));
axiom (__VERIFIER_nondet_unsigned_int == $sub.ref(0,1320));
axiom (__VERIFIER_nondet_unsigned_long == $sub.ref(0,1324));
axiom (__VERIFIER_nondet == $sub.ref(0,1328));
axiom (__SMACK_decls == $sub.ref(0,1332));
axiom (__SMACK_top_decl == $sub.ref(0,1336));
axiom (__SMACK_init_func_memory_model == $sub.ref(0,1340));
axiom (random == $sub.ref(0,1344));
axiom (RANDOM32 == $sub.ref(0,1348));
axiom (RANDOM64 == $sub.ref(0,1352));
axiom (RANDOM192 == $sub.ref(0,1356));
axiom (FFT_mul == $sub.ref(0,1360));
axiom (FFT_add == $sub.ref(0,1364));
axiom (malloc == $sub.ref(0,1368));
axiom (llvm.memset.p0i8.i32 == $sub.ref(0,1372));
axiom (free_ == $sub.ref(0,1376));
axiom (nussbaumer_fft == $sub.ref(0,1380));
axiom (naive == $sub.ref(0,1384));
axiom (reverse == $sub.ref(0,1388));
axiom (sample_ct == $sub.ref(0,1392));
axiom (dbl == $sub.ref(0,1396));
axiom (single_sample_ct == $sub.ref(0,1400));
axiom (ct_eq_u64 == $sub.ref(0,1404));
axiom (ct_select_u64 == $sub.ref(0,1408));
axiom (single_sample == $sub.ref(0,1412));
axiom (ct_ge_u64 == $sub.ref(0,1416));
axiom (ct_le_u64 == $sub.ref(0,1420));
axiom (ct_gt_u64 == $sub.ref(0,1424));
axiom (ct_lt_u64 == $sub.ref(0,1428));
axiom (cmplt_ct == $sub.ref(0,1432));
axiom (ct_ne_u64 == $sub.ref(0,1436));
axiom (ct_mask_u64 == $sub.ref(0,1440));
axiom (ct_isnonzero_u64 == $sub.ref(0,1444));
axiom (sample_ct_wrapper == $sub.ref(0,1448));
axiom (public_in_value == $sub.ref(0,1452));
axiom (__SMACK_value == $sub.ref(0,1456));
axiom (llvm.dbg.value == $sub.ref(0,1460));
axiom (__SMACK_static_init == $sub.ref(0,1464));
axiom ($and.i1(0,0) == 0);
axiom ($and.i1(0,1) == 0);
axiom ($and.i1(1,0) == 0);
axiom ($and.i1(1,1) == 1);
axiom ($or.i1(0,0) == 0);
axiom ($or.i1(0,1) == 1);
axiom ($or.i1(1,0) == 1);
axiom ($or.i1(1,1) == 1);
axiom ($xor.i1(0,0) == 0);
axiom ($xor.i1(0,1) == 1);
axiom ($xor.i1(1,0) == 1);
axiom ($xor.i1(1,1) == 0);
axiom (forall f1, f2: float :: ((f1 != f2) || $foeq.bool(f1,f2)));
axiom (forall f: float :: ($si2fp.i128.float($fp2si.float.i128(f)) == f));
axiom (forall f: float :: ($si2fp.i16.float($fp2si.float.i16(f)) == f));
axiom (forall f: float :: ($si2fp.i24.float($fp2si.float.i24(f)) == f));
axiom (forall f: float :: ($si2fp.i32.float($fp2si.float.i32(f)) == f));
axiom (forall f: float :: ($si2fp.i64.float($fp2si.float.i64(f)) == f));
axiom (forall f: float :: ($si2fp.i8.float($fp2si.float.i8(f)) == f));
axiom (forall f: float :: ($si2fp.i96.float($fp2si.float.i96(f)) == f));
axiom (forall f: float :: ($ui2fp.i128.float($fp2ui.float.i128(f)) == f));
axiom (forall f: float :: ($ui2fp.i16.float($fp2ui.float.i16(f)) == f));
axiom (forall f: float :: ($ui2fp.i24.float($fp2ui.float.i24(f)) == f));
axiom (forall f: float :: ($ui2fp.i32.float($fp2ui.float.i32(f)) == f));
axiom (forall f: float :: ($ui2fp.i64.float($fp2ui.float.i64(f)) == f));
axiom (forall f: float :: ($ui2fp.i8.float($fp2ui.float.i8(f)) == f));
axiom (forall f: float :: ($ui2fp.i96.float($fp2ui.float.i96(f)) == f));
axiom (forall i: i128 :: ($fp2si.float.i128($si2fp.i128.float(i)) == i));
axiom (forall i: i128 :: ($fp2ui.float.i128($ui2fp.i128.float(i)) == i));
axiom (forall i: i16 :: ($fp2si.float.i16($si2fp.i16.float(i)) == i));
axiom (forall i: i16 :: ($fp2ui.float.i16($ui2fp.i16.float(i)) == i));
axiom (forall i: i24 :: ($fp2si.float.i24($si2fp.i24.float(i)) == i));
axiom (forall i: i24 :: ($fp2ui.float.i24($ui2fp.i24.float(i)) == i));
axiom (forall i: i32 :: ($fp2si.float.i32($si2fp.i32.float(i)) == i));
axiom (forall i: i32 :: ($fp2ui.float.i32($ui2fp.i32.float(i)) == i));
axiom (forall i: i64 :: ($fp2si.float.i64($si2fp.i64.float(i)) == i));
axiom (forall i: i64 :: ($fp2ui.float.i64($ui2fp.i64.float(i)) == i));
axiom (forall i: i8 :: ($fp2si.float.i8($si2fp.i8.float(i)) == i));
axiom (forall i: i8 :: ($fp2ui.float.i8($ui2fp.i8.float(i)) == i));
axiom (forall i: i96 :: ($fp2si.float.i96($si2fp.i96.float(i)) == i));
axiom (forall i: i96 :: ($fp2ui.float.i96($ui2fp.i96.float(i)) == i));
const $EXTERNS_BOTTOM: ref;
const $GLOBALS_BOTTOM: ref;
const $MALLOC_TOP: ref;
const $MOP: $mop;
function $and.i1(i1: i1, i2: i1) returns (i1);
function $and.i128(i1: i128, i2: i128) returns (i128);
function $and.i16(i1: i16, i2: i16) returns (i16);
function $and.i24(i1: i24, i2: i24) returns (i24);
function $and.i32(i1: i32, i2: i32) returns (i32);
function $and.i64(i1: i64, i2: i64) returns (i64);
function $and.i8(i1: i8, i2: i8) returns (i8);
function $and.i96(i1: i96, i2: i96) returns (i96);
function $ashr.i1(i1: i1, i2: i1) returns (i1);
function $ashr.i128(i1: i128, i2: i128) returns (i128);
function $ashr.i16(i1: i16, i2: i16) returns (i16);
function $ashr.i24(i1: i24, i2: i24) returns (i24);
function $ashr.i32(i1: i32, i2: i32) returns (i32);
function $ashr.i64(i1: i64, i2: i64) returns (i64);
function $ashr.i8(i1: i8, i2: i8) returns (i8);
function $ashr.i96(i1: i96, i2: i96) returns (i96);
function $base(ref) returns (ref);
function $extractvalue(p: int, i: int) returns (int);
function $fadd.float(f1: float, f2: float) returns (float);
function $fdiv.float(f1: float, f2: float) returns (float);
function $ffalse.float(f1: float, f2: float) returns (i1);
function $fmul.float(f1: float, f2: float) returns (float);
function $foeq.bool(f1: float, f2: float) returns (bool);
function $foge.float(f1: float, f2: float) returns (i1);
function $fogt.float(f1: float, f2: float) returns (i1);
function $fole.float(f1: float, f2: float) returns (i1);
function $folt.float(f1: float, f2: float) returns (i1);
function $fone.float(f1: float, f2: float) returns (i1);
function $ford.float(f1: float, f2: float) returns (i1);
function $fp(ipart: int, fpart: int, epart: int) returns (float);
function $fp2si.float.bv128(f: float) returns (bv128);
function $fp2si.float.bv16(f: float) returns (bv16);
function $fp2si.float.bv24(f: float) returns (bv24);
function $fp2si.float.bv32(f: float) returns (bv32);
function $fp2si.float.bv64(f: float) returns (bv64);
function $fp2si.float.bv8(f: float) returns (bv8);
function $fp2si.float.bv96(f: float) returns (bv96);
function $fp2si.float.i128(f: float) returns (i128);
function $fp2si.float.i16(f: float) returns (i16);
function $fp2si.float.i24(f: float) returns (i24);
function $fp2si.float.i32(f: float) returns (i32);
function $fp2si.float.i64(f: float) returns (i64);
function $fp2si.float.i8(f: float) returns (i8);
function $fp2si.float.i96(f: float) returns (i96);
function $fp2ui.float.bv128(f: float) returns (bv128);
function $fp2ui.float.bv16(f: float) returns (bv16);
function $fp2ui.float.bv24(f: float) returns (bv24);
function $fp2ui.float.bv32(f: float) returns (bv32);
function $fp2ui.float.bv64(f: float) returns (bv64);
function $fp2ui.float.bv8(f: float) returns (bv8);
function $fp2ui.float.bv96(f: float) returns (bv96);
function $fp2ui.float.i128(f: float) returns (i128);
function $fp2ui.float.i16(f: float) returns (i16);
function $fp2ui.float.i24(f: float) returns (i24);
function $fp2ui.float.i32(f: float) returns (i32);
function $fp2ui.float.i64(f: float) returns (i64);
function $fp2ui.float.i8(f: float) returns (i8);
function $fp2ui.float.i96(f: float) returns (i96);
function $fpext.float.float(f: float) returns (float);
function $fptrunc.float.float(f: float) returns (float);
function $frem.float(f1: float, f2: float) returns (float);
function $fsub.float(f1: float, f2: float) returns (float);
function $ftrue.float(f1: float, f2: float) returns (i1);
function $fueq.float(f1: float, f2: float) returns (i1);
function $fuge.float(f1: float, f2: float) returns (i1);
function $fugt.float(f1: float, f2: float) returns (i1);
function $fule.float(f1: float, f2: float) returns (i1);
function $fult.float(f1: float, f2: float) returns (i1);
function $fune.float(f1: float, f2: float) returns (i1);
function $funo.float(f1: float, f2: float) returns (i1);
function $lshr.i1(i1: i1, i2: i1) returns (i1);
function $lshr.i128(i1: i128, i2: i128) returns (i128);
function $lshr.i16(i1: i16, i2: i16) returns (i16);
function $lshr.i24(i1: i24, i2: i24) returns (i24);
function $lshr.i32(i1: i32, i2: i32) returns (i32);
function $lshr.i64(i1: i64, i2: i64) returns (i64);
function $lshr.i8(i1: i8, i2: i8) returns (i8);
function $lshr.i96(i1: i96, i2: i96) returns (i96);
function $nand.i1(i1: i1, i2: i1) returns (i1);
function $nand.i128(i1: i128, i2: i128) returns (i128);
function $nand.i16(i1: i16, i2: i16) returns (i16);
function $nand.i24(i1: i24, i2: i24) returns (i24);
function $nand.i32(i1: i32, i2: i32) returns (i32);
function $nand.i64(i1: i64, i2: i64) returns (i64);
function $nand.i8(i1: i8, i2: i8) returns (i8);
function $nand.i96(i1: i96, i2: i96) returns (i96);
function $not.i1(i: i1) returns (i1);
function $not.i128(i: i128) returns (i128);
function $not.i16(i: i16) returns (i16);
function $not.i24(i: i24) returns (i24);
function $not.i32(i: i32) returns (i32);
function $not.i64(i: i64) returns (i64);
function $not.i8(i: i8) returns (i8);
function $not.i96(i: i96) returns (i96);
function $or.i1(i1: i1, i2: i1) returns (i1);
function $or.i128(i1: i128, i2: i128) returns (i128);
function $or.i16(i1: i16, i2: i16) returns (i16);
function $or.i24(i1: i24, i2: i24) returns (i24);
function $or.i32(i1: i32, i2: i32) returns (i32);
function $or.i64(i1: i64, i2: i64) returns (i64);
function $or.i8(i1: i8, i2: i8) returns (i8);
function $or.i96(i1: i96, i2: i96) returns (i96);
function $shl.i1(i1: i1, i2: i1) returns (i1);
function $shl.i128(i1: i128, i2: i128) returns (i128);
function $shl.i16(i1: i16, i2: i16) returns (i16);
function $shl.i24(i1: i24, i2: i24) returns (i24);
function $shl.i32(i1: i32, i2: i32) returns (i32);
function $shl.i64(i1: i64, i2: i64) returns (i64);
function $shl.i8(i1: i8, i2: i8) returns (i8);
function $shl.i96(i1: i96, i2: i96) returns (i96);
function $si2fp.bv128.float(i: bv128) returns (float);
function $si2fp.bv16.float(i: bv16) returns (float);
function $si2fp.bv24.float(i: bv24) returns (float);
function $si2fp.bv32.float(i: bv32) returns (float);
function $si2fp.bv64.float(i: bv64) returns (float);
function $si2fp.bv8.float(i: bv8) returns (float);
function $si2fp.bv96.float(i: bv96) returns (float);
function $si2fp.i128.float(i: i128) returns (float);
function $si2fp.i16.float(i: i16) returns (float);
function $si2fp.i24.float(i: i24) returns (float);
function $si2fp.i32.float(i: i32) returns (float);
function $si2fp.i64.float(i: i64) returns (float);
function $si2fp.i8.float(i: i8) returns (float);
function $si2fp.i96.float(i: i96) returns (float);
function $ui2fp.bv128.float(i: bv128) returns (float);
function $ui2fp.bv16.float(i: bv16) returns (float);
function $ui2fp.bv24.float(i: bv24) returns (float);
function $ui2fp.bv32.float(i: bv32) returns (float);
function $ui2fp.bv64.float(i: bv64) returns (float);
function $ui2fp.bv8.float(i: bv8) returns (float);
function $ui2fp.bv96.float(i: bv96) returns (float);
function $ui2fp.i128.float(i: i128) returns (float);
function $ui2fp.i16.float(i: i16) returns (float);
function $ui2fp.i24.float(i: i24) returns (float);
function $ui2fp.i32.float(i: i32) returns (float);
function $ui2fp.i64.float(i: i64) returns (float);
function $ui2fp.i8.float(i: i8) returns (float);
function $ui2fp.i96.float(i: i96) returns (float);
function $xor.i1(i1: i1, i2: i1) returns (i1);
function $xor.i128(i1: i128, i2: i128) returns (i128);
function $xor.i16(i1: i16, i2: i16) returns (i16);
function $xor.i24(i1: i24, i2: i24) returns (i24);
function $xor.i32(i1: i32, i2: i32) returns (i32);
function $xor.i64(i1: i64, i2: i64) returns (i64);
function $xor.i8(i1: i8, i2: i8) returns (i8);
function $xor.i96(i1: i96, i2: i96) returns (i96);
function {:builtin "div"} $div(i1: int, i2: int) returns (int);
function {:builtin "div"} $sdiv.i1(i1: i1, i2: i1) returns (i1);
function {:builtin "div"} $sdiv.i128(i1: i128, i2: i128) returns (i128);
function {:builtin "div"} $sdiv.i16(i1: i16, i2: i16) returns (i16);
function {:builtin "div"} $sdiv.i24(i1: i24, i2: i24) returns (i24);
function {:builtin "div"} $sdiv.i32(i1: i32, i2: i32) returns (i32);
function {:builtin "div"} $sdiv.i64(i1: i64, i2: i64) returns (i64);
function {:builtin "div"} $sdiv.i8(i1: i8, i2: i8) returns (i8);
function {:builtin "div"} $sdiv.i96(i1: i96, i2: i96) returns (i96);
function {:builtin "div"} $udiv.i1(i1: i1, i2: i1) returns (i1);
function {:builtin "div"} $udiv.i128(i1: i128, i2: i128) returns (i128);
function {:builtin "div"} $udiv.i16(i1: i16, i2: i16) returns (i16);
function {:builtin "div"} $udiv.i24(i1: i24, i2: i24) returns (i24);
function {:builtin "div"} $udiv.i32(i1: i32, i2: i32) returns (i32);
function {:builtin "div"} $udiv.i64(i1: i64, i2: i64) returns (i64);
function {:builtin "div"} $udiv.i8(i1: i8, i2: i8) returns (i8);
function {:builtin "div"} $udiv.i96(i1: i96, i2: i96) returns (i96);
function {:builtin "mod"} $mod(i1: int, i2: int) returns (int);
function {:builtin "mod"} $smod.i1(i1: i1, i2: i1) returns (i1);
function {:builtin "mod"} $smod.i128(i1: i128, i2: i128) returns (i128);
function {:builtin "mod"} $smod.i16(i1: i16, i2: i16) returns (i16);
function {:builtin "mod"} $smod.i24(i1: i24, i2: i24) returns (i24);
function {:builtin "mod"} $smod.i32(i1: i32, i2: i32) returns (i32);
function {:builtin "mod"} $smod.i64(i1: i64, i2: i64) returns (i64);
function {:builtin "mod"} $smod.i8(i1: i8, i2: i8) returns (i8);
function {:builtin "mod"} $smod.i96(i1: i96, i2: i96) returns (i96);
function {:builtin "rem"} $rem(i1: int, i2: int) returns (int);
function {:builtin "rem"} $srem.i1(i1: i1, i2: i1) returns (i1);
function {:builtin "rem"} $srem.i128(i1: i128, i2: i128) returns (i128);
function {:builtin "rem"} $srem.i16(i1: i16, i2: i16) returns (i16);
function {:builtin "rem"} $srem.i24(i1: i24, i2: i24) returns (i24);
function {:builtin "rem"} $srem.i32(i1: i32, i2: i32) returns (i32);
function {:builtin "rem"} $srem.i64(i1: i64, i2: i64) returns (i64);
function {:builtin "rem"} $srem.i8(i1: i8, i2: i8) returns (i8);
function {:builtin "rem"} $srem.i96(i1: i96, i2: i96) returns (i96);
function {:builtin "rem"} $urem.i1(i1: i1, i2: i1) returns (i1);
function {:builtin "rem"} $urem.i128(i1: i128, i2: i128) returns (i128);
function {:builtin "rem"} $urem.i16(i1: i16, i2: i16) returns (i16);
function {:builtin "rem"} $urem.i24(i1: i24, i2: i24) returns (i24);
function {:builtin "rem"} $urem.i32(i1: i32, i2: i32) returns (i32);
function {:builtin "rem"} $urem.i64(i1: i64, i2: i64) returns (i64);
function {:builtin "rem"} $urem.i8(i1: i8, i2: i8) returns (i8);
function {:builtin "rem"} $urem.i96(i1: i96, i2: i96) returns (i96);
function {:bvbuiltin "(_ sign_extend 104)"} $sext.bv24.bv128(i: bv24) returns (bv128);
function {:bvbuiltin "(_ sign_extend 112)"} $sext.bv16.bv128(i: bv16) returns (bv128);
function {:bvbuiltin "(_ sign_extend 120)"} $sext.bv8.bv128(i: bv8) returns (bv128);
function {:bvbuiltin "(_ sign_extend 16)"} $sext.bv16.bv32(i: bv16) returns (bv32);
function {:bvbuiltin "(_ sign_extend 16)"} $sext.bv8.bv24(i: bv8) returns (bv24);
function {:bvbuiltin "(_ sign_extend 24)"} $sext.bv8.bv32(i: bv8) returns (bv32);
function {:bvbuiltin "(_ sign_extend 32)"} $sext.bv32.bv64(i: bv32) returns (bv64);
function {:bvbuiltin "(_ sign_extend 32)"} $sext.bv64.bv96(i: bv64) returns (bv96);
function {:bvbuiltin "(_ sign_extend 32)"} $sext.bv96.bv128(i: bv96) returns (bv128);
function {:bvbuiltin "(_ sign_extend 40)"} $sext.bv24.bv64(i: bv24) returns (bv64);
function {:bvbuiltin "(_ sign_extend 48)"} $sext.bv16.bv64(i: bv16) returns (bv64);
function {:bvbuiltin "(_ sign_extend 56)"} $sext.bv8.bv64(i: bv8) returns (bv64);
function {:bvbuiltin "(_ sign_extend 64)"} $sext.bv32.bv96(i: bv32) returns (bv96);
function {:bvbuiltin "(_ sign_extend 64)"} $sext.bv64.bv128(i: bv64) returns (bv128);
function {:bvbuiltin "(_ sign_extend 72)"} $sext.bv24.bv96(i: bv24) returns (bv96);
function {:bvbuiltin "(_ sign_extend 8)"} $sext.bv16.bv24(i: bv16) returns (bv24);
function {:bvbuiltin "(_ sign_extend 8)"} $sext.bv24.bv32(i: bv24) returns (bv32);
function {:bvbuiltin "(_ sign_extend 8)"} $sext.bv8.bv16(i: bv8) returns (bv16);
function {:bvbuiltin "(_ sign_extend 80)"} $sext.bv16.bv96(i: bv16) returns (bv96);
function {:bvbuiltin "(_ sign_extend 88)"} $sext.bv8.bv96(i: bv8) returns (bv96);
function {:bvbuiltin "(_ sign_extend 96)"} $sext.bv32.bv128(i: bv32) returns (bv128);
function {:bvbuiltin "(_ zero_extend 104)"} $zext.bv24.bv128(i: bv24) returns (bv128);
function {:bvbuiltin "(_ zero_extend 112)"} $zext.bv16.bv128(i: bv16) returns (bv128);
function {:bvbuiltin "(_ zero_extend 120)"} $zext.bv8.bv128(i: bv8) returns (bv128);
function {:bvbuiltin "(_ zero_extend 16)"} $zext.bv16.bv32(i: bv16) returns (bv32);
function {:bvbuiltin "(_ zero_extend 16)"} $zext.bv8.bv24(i: bv8) returns (bv24);
function {:bvbuiltin "(_ zero_extend 24)"} $zext.bv8.bv32(i: bv8) returns (bv32);
function {:bvbuiltin "(_ zero_extend 32)"} $zext.bv32.bv64(i: bv32) returns (bv64);
function {:bvbuiltin "(_ zero_extend 32)"} $zext.bv64.bv96(i: bv64) returns (bv96);
function {:bvbuiltin "(_ zero_extend 32)"} $zext.bv96.bv128(i: bv96) returns (bv128);
function {:bvbuiltin "(_ zero_extend 40)"} $zext.bv24.bv64(i: bv24) returns (bv64);
function {:bvbuiltin "(_ zero_extend 48)"} $zext.bv16.bv64(i: bv16) returns (bv64);
function {:bvbuiltin "(_ zero_extend 56)"} $zext.bv8.bv64(i: bv8) returns (bv64);
function {:bvbuiltin "(_ zero_extend 64)"} $zext.bv32.bv96(i: bv32) returns (bv96);
function {:bvbuiltin "(_ zero_extend 64)"} $zext.bv64.bv128(i: bv64) returns (bv128);
function {:bvbuiltin "(_ zero_extend 72)"} $zext.bv24.bv96(i: bv24) returns (bv96);
function {:bvbuiltin "(_ zero_extend 8)"} $zext.bv16.bv24(i: bv16) returns (bv24);
function {:bvbuiltin "(_ zero_extend 8)"} $zext.bv24.bv32(i: bv24) returns (bv32);
function {:bvbuiltin "(_ zero_extend 8)"} $zext.bv8.bv16(i: bv8) returns (bv16);
function {:bvbuiltin "(_ zero_extend 80)"} $zext.bv16.bv96(i: bv16) returns (bv96);
function {:bvbuiltin "(_ zero_extend 88)"} $zext.bv8.bv96(i: bv8) returns (bv96);
function {:bvbuiltin "(_ zero_extend 96)"} $zext.bv32.bv128(i: bv32) returns (bv128);
function {:bvbuiltin "bvadd"} $add.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvadd"} $add.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvadd"} $add.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvadd"} $add.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvadd"} $add.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvadd"} $add.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvadd"} $add.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvadd"} $add.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvand"} $and.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvand"} $and.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvand"} $and.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvand"} $and.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvand"} $and.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvand"} $and.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvand"} $and.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvand"} $and.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvashr"} $ashr.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvashr"} $ashr.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvashr"} $ashr.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvashr"} $ashr.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvashr"} $ashr.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvashr"} $ashr.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvashr"} $ashr.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvashr"} $ashr.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvlshr"} $lshr.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvlshr"} $lshr.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvlshr"} $lshr.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvlshr"} $lshr.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvlshr"} $lshr.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvlshr"} $lshr.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvlshr"} $lshr.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvlshr"} $lshr.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvmul"} $mul.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvmul"} $mul.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvmul"} $mul.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvmul"} $mul.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvmul"} $mul.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvmul"} $mul.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvmul"} $mul.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvmul"} $mul.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvnand"} $nand.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvnand"} $nand.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvnand"} $nand.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvnand"} $nand.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvnand"} $nand.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvnand"} $nand.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvnand"} $nand.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvnand"} $nand.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvnot"} $not.bv1(i: bv1) returns (bv1);
function {:bvbuiltin "bvnot"} $not.bv128(i: bv128) returns (bv128);
function {:bvbuiltin "bvnot"} $not.bv16(i: bv16) returns (bv16);
function {:bvbuiltin "bvnot"} $not.bv24(i: bv24) returns (bv24);
function {:bvbuiltin "bvnot"} $not.bv32(i: bv32) returns (bv32);
function {:bvbuiltin "bvnot"} $not.bv64(i: bv64) returns (bv64);
function {:bvbuiltin "bvnot"} $not.bv8(i: bv8) returns (bv8);
function {:bvbuiltin "bvnot"} $not.bv96(i: bv96) returns (bv96);
function {:bvbuiltin "bvor"} $or.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvor"} $or.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvor"} $or.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvor"} $or.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvor"} $or.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvor"} $or.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvor"} $or.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvor"} $or.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvsdiv"} $sdiv.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvsdiv"} $sdiv.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvsdiv"} $sdiv.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvsdiv"} $sdiv.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvsdiv"} $sdiv.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvsdiv"} $sdiv.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvsdiv"} $sdiv.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvsdiv"} $sdiv.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvsge"} $sge.bv1.bool(i1: bv1, i2: bv1) returns (bool);
function {:inline} $sge.bv1(i1: bv1, i2: bv1) returns (bv1) { (if $sge.bv1.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsge"} $sge.bv128.bool(i1: bv128, i2: bv128) returns (bool);
function {:inline} $sge.bv128(i1: bv128, i2: bv128) returns (bv1) { (if $sge.bv128.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsge"} $sge.bv16.bool(i1: bv16, i2: bv16) returns (bool);
function {:inline} $sge.bv16(i1: bv16, i2: bv16) returns (bv1) { (if $sge.bv16.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsge"} $sge.bv24.bool(i1: bv24, i2: bv24) returns (bool);
function {:inline} $sge.bv24(i1: bv24, i2: bv24) returns (bv1) { (if $sge.bv24.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsge"} $sge.bv32.bool(i1: bv32, i2: bv32) returns (bool);
function {:inline} $sge.bv32(i1: bv32, i2: bv32) returns (bv1) { (if $sge.bv32.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsge"} $sge.bv64.bool(i1: bv64, i2: bv64) returns (bool);
function {:inline} $sge.bv64(i1: bv64, i2: bv64) returns (bv1) { (if $sge.bv64.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsge"} $sge.bv8.bool(i1: bv8, i2: bv8) returns (bool);
function {:inline} $sge.bv8(i1: bv8, i2: bv8) returns (bv1) { (if $sge.bv8.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsge"} $sge.bv96.bool(i1: bv96, i2: bv96) returns (bool);
function {:inline} $sge.bv96(i1: bv96, i2: bv96) returns (bv1) { (if $sge.bv96.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsgt"} $sgt.bv1.bool(i1: bv1, i2: bv1) returns (bool);
function {:inline} $sgt.bv1(i1: bv1, i2: bv1) returns (bv1) { (if $sgt.bv1.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsgt"} $sgt.bv128.bool(i1: bv128, i2: bv128) returns (bool);
function {:inline} $sgt.bv128(i1: bv128, i2: bv128) returns (bv1) { (if $sgt.bv128.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsgt"} $sgt.bv16.bool(i1: bv16, i2: bv16) returns (bool);
function {:inline} $sgt.bv16(i1: bv16, i2: bv16) returns (bv1) { (if $sgt.bv16.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsgt"} $sgt.bv24.bool(i1: bv24, i2: bv24) returns (bool);
function {:inline} $sgt.bv24(i1: bv24, i2: bv24) returns (bv1) { (if $sgt.bv24.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsgt"} $sgt.bv32.bool(i1: bv32, i2: bv32) returns (bool);
function {:inline} $sgt.bv32(i1: bv32, i2: bv32) returns (bv1) { (if $sgt.bv32.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsgt"} $sgt.bv64.bool(i1: bv64, i2: bv64) returns (bool);
function {:inline} $sgt.bv64(i1: bv64, i2: bv64) returns (bv1) { (if $sgt.bv64.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsgt"} $sgt.bv8.bool(i1: bv8, i2: bv8) returns (bool);
function {:inline} $sgt.bv8(i1: bv8, i2: bv8) returns (bv1) { (if $sgt.bv8.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsgt"} $sgt.bv96.bool(i1: bv96, i2: bv96) returns (bool);
function {:inline} $sgt.bv96(i1: bv96, i2: bv96) returns (bv1) { (if $sgt.bv96.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvshl"} $shl.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvshl"} $shl.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvshl"} $shl.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvshl"} $shl.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvshl"} $shl.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvshl"} $shl.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvshl"} $shl.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvshl"} $shl.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvsle"} $sle.bv1.bool(i1: bv1, i2: bv1) returns (bool);
function {:inline} $sle.bv1(i1: bv1, i2: bv1) returns (bv1) { (if $sle.bv1.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsle"} $sle.bv128.bool(i1: bv128, i2: bv128) returns (bool);
function {:inline} $sle.bv128(i1: bv128, i2: bv128) returns (bv1) { (if $sle.bv128.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsle"} $sle.bv16.bool(i1: bv16, i2: bv16) returns (bool);
function {:inline} $sle.bv16(i1: bv16, i2: bv16) returns (bv1) { (if $sle.bv16.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsle"} $sle.bv24.bool(i1: bv24, i2: bv24) returns (bool);
function {:inline} $sle.bv24(i1: bv24, i2: bv24) returns (bv1) { (if $sle.bv24.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsle"} $sle.bv32.bool(i1: bv32, i2: bv32) returns (bool);
function {:inline} $sle.bv32(i1: bv32, i2: bv32) returns (bv1) { (if $sle.bv32.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsle"} $sle.bv64.bool(i1: bv64, i2: bv64) returns (bool);
function {:inline} $sle.bv64(i1: bv64, i2: bv64) returns (bv1) { (if $sle.bv64.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsle"} $sle.bv8.bool(i1: bv8, i2: bv8) returns (bool);
function {:inline} $sle.bv8(i1: bv8, i2: bv8) returns (bv1) { (if $sle.bv8.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsle"} $sle.bv96.bool(i1: bv96, i2: bv96) returns (bool);
function {:inline} $sle.bv96(i1: bv96, i2: bv96) returns (bv1) { (if $sle.bv96.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvslt"} $slt.bv1.bool(i1: bv1, i2: bv1) returns (bool);
function {:inline} $slt.bv1(i1: bv1, i2: bv1) returns (bv1) { (if $slt.bv1.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvslt"} $slt.bv128.bool(i1: bv128, i2: bv128) returns (bool);
function {:inline} $slt.bv128(i1: bv128, i2: bv128) returns (bv1) { (if $slt.bv128.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvslt"} $slt.bv16.bool(i1: bv16, i2: bv16) returns (bool);
function {:inline} $slt.bv16(i1: bv16, i2: bv16) returns (bv1) { (if $slt.bv16.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvslt"} $slt.bv24.bool(i1: bv24, i2: bv24) returns (bool);
function {:inline} $slt.bv24(i1: bv24, i2: bv24) returns (bv1) { (if $slt.bv24.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvslt"} $slt.bv32.bool(i1: bv32, i2: bv32) returns (bool);
function {:inline} $slt.bv32(i1: bv32, i2: bv32) returns (bv1) { (if $slt.bv32.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvslt"} $slt.bv64.bool(i1: bv64, i2: bv64) returns (bool);
function {:inline} $slt.bv64(i1: bv64, i2: bv64) returns (bv1) { (if $slt.bv64.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvslt"} $slt.bv8.bool(i1: bv8, i2: bv8) returns (bool);
function {:inline} $slt.bv8(i1: bv8, i2: bv8) returns (bv1) { (if $slt.bv8.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvslt"} $slt.bv96.bool(i1: bv96, i2: bv96) returns (bool);
function {:inline} $slt.bv96(i1: bv96, i2: bv96) returns (bv1) { (if $slt.bv96.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvsmod"} $smod.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvsmod"} $smod.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvsmod"} $smod.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvsmod"} $smod.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvsmod"} $smod.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvsmod"} $smod.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvsmod"} $smod.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvsmod"} $smod.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvsrem"} $srem.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvsrem"} $srem.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvsrem"} $srem.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvsrem"} $srem.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvsrem"} $srem.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvsrem"} $srem.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvsrem"} $srem.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvsrem"} $srem.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvsub"} $sub.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvsub"} $sub.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvsub"} $sub.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvsub"} $sub.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvsub"} $sub.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvsub"} $sub.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvsub"} $sub.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvsub"} $sub.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvudiv"} $udiv.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvudiv"} $udiv.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvudiv"} $udiv.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvudiv"} $udiv.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvudiv"} $udiv.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvudiv"} $udiv.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvudiv"} $udiv.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvudiv"} $udiv.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvuge"} $uge.bv1.bool(i1: bv1, i2: bv1) returns (bool);
function {:inline} $uge.bv1(i1: bv1, i2: bv1) returns (bv1) { (if $uge.bv1.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvuge"} $uge.bv128.bool(i1: bv128, i2: bv128) returns (bool);
function {:inline} $uge.bv128(i1: bv128, i2: bv128) returns (bv1) { (if $uge.bv128.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvuge"} $uge.bv16.bool(i1: bv16, i2: bv16) returns (bool);
function {:inline} $uge.bv16(i1: bv16, i2: bv16) returns (bv1) { (if $uge.bv16.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvuge"} $uge.bv24.bool(i1: bv24, i2: bv24) returns (bool);
function {:inline} $uge.bv24(i1: bv24, i2: bv24) returns (bv1) { (if $uge.bv24.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvuge"} $uge.bv32.bool(i1: bv32, i2: bv32) returns (bool);
function {:inline} $uge.bv32(i1: bv32, i2: bv32) returns (bv1) { (if $uge.bv32.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvuge"} $uge.bv64.bool(i1: bv64, i2: bv64) returns (bool);
function {:inline} $uge.bv64(i1: bv64, i2: bv64) returns (bv1) { (if $uge.bv64.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvuge"} $uge.bv8.bool(i1: bv8, i2: bv8) returns (bool);
function {:inline} $uge.bv8(i1: bv8, i2: bv8) returns (bv1) { (if $uge.bv8.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvuge"} $uge.bv96.bool(i1: bv96, i2: bv96) returns (bool);
function {:inline} $uge.bv96(i1: bv96, i2: bv96) returns (bv1) { (if $uge.bv96.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvugt"} $ugt.bv1.bool(i1: bv1, i2: bv1) returns (bool);
function {:inline} $ugt.bv1(i1: bv1, i2: bv1) returns (bv1) { (if $ugt.bv1.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvugt"} $ugt.bv128.bool(i1: bv128, i2: bv128) returns (bool);
function {:inline} $ugt.bv128(i1: bv128, i2: bv128) returns (bv1) { (if $ugt.bv128.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvugt"} $ugt.bv16.bool(i1: bv16, i2: bv16) returns (bool);
function {:inline} $ugt.bv16(i1: bv16, i2: bv16) returns (bv1) { (if $ugt.bv16.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvugt"} $ugt.bv24.bool(i1: bv24, i2: bv24) returns (bool);
function {:inline} $ugt.bv24(i1: bv24, i2: bv24) returns (bv1) { (if $ugt.bv24.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvugt"} $ugt.bv32.bool(i1: bv32, i2: bv32) returns (bool);
function {:inline} $ugt.bv32(i1: bv32, i2: bv32) returns (bv1) { (if $ugt.bv32.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvugt"} $ugt.bv64.bool(i1: bv64, i2: bv64) returns (bool);
function {:inline} $ugt.bv64(i1: bv64, i2: bv64) returns (bv1) { (if $ugt.bv64.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvugt"} $ugt.bv8.bool(i1: bv8, i2: bv8) returns (bool);
function {:inline} $ugt.bv8(i1: bv8, i2: bv8) returns (bv1) { (if $ugt.bv8.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvugt"} $ugt.bv96.bool(i1: bv96, i2: bv96) returns (bool);
function {:inline} $ugt.bv96(i1: bv96, i2: bv96) returns (bv1) { (if $ugt.bv96.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvule"} $ule.bv1.bool(i1: bv1, i2: bv1) returns (bool);
function {:inline} $ule.bv1(i1: bv1, i2: bv1) returns (bv1) { (if $ule.bv1.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvule"} $ule.bv128.bool(i1: bv128, i2: bv128) returns (bool);
function {:inline} $ule.bv128(i1: bv128, i2: bv128) returns (bv1) { (if $ule.bv128.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvule"} $ule.bv16.bool(i1: bv16, i2: bv16) returns (bool);
function {:inline} $ule.bv16(i1: bv16, i2: bv16) returns (bv1) { (if $ule.bv16.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvule"} $ule.bv24.bool(i1: bv24, i2: bv24) returns (bool);
function {:inline} $ule.bv24(i1: bv24, i2: bv24) returns (bv1) { (if $ule.bv24.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvule"} $ule.bv32.bool(i1: bv32, i2: bv32) returns (bool);
function {:inline} $ule.bv32(i1: bv32, i2: bv32) returns (bv1) { (if $ule.bv32.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvule"} $ule.bv64.bool(i1: bv64, i2: bv64) returns (bool);
function {:inline} $ule.bv64(i1: bv64, i2: bv64) returns (bv1) { (if $ule.bv64.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvule"} $ule.bv8.bool(i1: bv8, i2: bv8) returns (bool);
function {:inline} $ule.bv8(i1: bv8, i2: bv8) returns (bv1) { (if $ule.bv8.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvule"} $ule.bv96.bool(i1: bv96, i2: bv96) returns (bool);
function {:inline} $ule.bv96(i1: bv96, i2: bv96) returns (bv1) { (if $ule.bv96.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvult"} $ult.bv1.bool(i1: bv1, i2: bv1) returns (bool);
function {:inline} $ult.bv1(i1: bv1, i2: bv1) returns (bv1) { (if $ult.bv1.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvult"} $ult.bv128.bool(i1: bv128, i2: bv128) returns (bool);
function {:inline} $ult.bv128(i1: bv128, i2: bv128) returns (bv1) { (if $ult.bv128.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvult"} $ult.bv16.bool(i1: bv16, i2: bv16) returns (bool);
function {:inline} $ult.bv16(i1: bv16, i2: bv16) returns (bv1) { (if $ult.bv16.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvult"} $ult.bv24.bool(i1: bv24, i2: bv24) returns (bool);
function {:inline} $ult.bv24(i1: bv24, i2: bv24) returns (bv1) { (if $ult.bv24.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvult"} $ult.bv32.bool(i1: bv32, i2: bv32) returns (bool);
function {:inline} $ult.bv32(i1: bv32, i2: bv32) returns (bv1) { (if $ult.bv32.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvult"} $ult.bv64.bool(i1: bv64, i2: bv64) returns (bool);
function {:inline} $ult.bv64(i1: bv64, i2: bv64) returns (bv1) { (if $ult.bv64.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvult"} $ult.bv8.bool(i1: bv8, i2: bv8) returns (bool);
function {:inline} $ult.bv8(i1: bv8, i2: bv8) returns (bv1) { (if $ult.bv8.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvult"} $ult.bv96.bool(i1: bv96, i2: bv96) returns (bool);
function {:inline} $ult.bv96(i1: bv96, i2: bv96) returns (bv1) { (if $ult.bv96.bool(i1,i2) then 1bv1 else 0bv1) }
function {:bvbuiltin "bvurem"} $urem.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvurem"} $urem.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvurem"} $urem.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvurem"} $urem.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvurem"} $urem.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvurem"} $urem.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvurem"} $urem.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvurem"} $urem.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvxor"} $xor.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvxor"} $xor.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvxor"} $xor.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvxor"} $xor.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvxor"} $xor.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvxor"} $xor.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvxor"} $xor.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvxor"} $xor.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:inline} $add.i1(i1: i1, i2: i1) returns (i1) { (i1 + i2) }
function {:inline} $add.i128(i1: i128, i2: i128) returns (i128) { (i1 + i2) }
function {:inline} $add.i16(i1: i16, i2: i16) returns (i16) { (i1 + i2) }
function {:inline} $add.i24(i1: i24, i2: i24) returns (i24) { (i1 + i2) }
function {:inline} $add.i32(i1: i32, i2: i32) returns (i32) { (i1 + i2) }
function {:inline} $add.i64(i1: i64, i2: i64) returns (i64) { (i1 + i2) }
function {:inline} $add.i8(i1: i8, i2: i8) returns (i8) { (i1 + i2) }
function {:inline} $add.i96(i1: i96, i2: i96) returns (i96) { (i1 + i2) }
function {:inline} $bitcast.ref.ref(i: ref) returns (ref) { i }
function {:inline} $eq.bv1.bool(i1: bv1, i2: bv1) returns (bool) { (i1 == i2) }
function {:inline} $eq.bv1(i1: bv1, i2: bv1) returns (bv1) { (if (i1 == i2) then 1bv1 else 0bv1) }
function {:inline} $eq.bv128.bool(i1: bv128, i2: bv128) returns (bool) { (i1 == i2) }
function {:inline} $eq.bv128(i1: bv128, i2: bv128) returns (bv1) { (if (i1 == i2) then 1bv1 else 0bv1) }
function {:inline} $eq.bv16.bool(i1: bv16, i2: bv16) returns (bool) { (i1 == i2) }
function {:inline} $eq.bv16(i1: bv16, i2: bv16) returns (bv1) { (if (i1 == i2) then 1bv1 else 0bv1) }
function {:inline} $eq.bv24.bool(i1: bv24, i2: bv24) returns (bool) { (i1 == i2) }
function {:inline} $eq.bv24(i1: bv24, i2: bv24) returns (bv1) { (if (i1 == i2) then 1bv1 else 0bv1) }
function {:inline} $eq.bv32.bool(i1: bv32, i2: bv32) returns (bool) { (i1 == i2) }
function {:inline} $eq.bv32(i1: bv32, i2: bv32) returns (bv1) { (if (i1 == i2) then 1bv1 else 0bv1) }
function {:inline} $eq.bv64.bool(i1: bv64, i2: bv64) returns (bool) { (i1 == i2) }
function {:inline} $eq.bv64(i1: bv64, i2: bv64) returns (bv1) { (if (i1 == i2) then 1bv1 else 0bv1) }
function {:inline} $eq.bv8.bool(i1: bv8, i2: bv8) returns (bool) { (i1 == i2) }
function {:inline} $eq.bv8(i1: bv8, i2: bv8) returns (bv1) { (if (i1 == i2) then 1bv1 else 0bv1) }
function {:inline} $eq.bv96.bool(i1: bv96, i2: bv96) returns (bool) { (i1 == i2) }
function {:inline} $eq.bv96(i1: bv96, i2: bv96) returns (bv1) { (if (i1 == i2) then 1bv1 else 0bv1) }
function {:inline} $eq.i1.bool(i1: i1, i2: i1) returns (bool) { (i1 == i2) }
function {:inline} $eq.i1(i1: i1, i2: i1) returns (i1) { (if (i1 == i2) then 1 else 0) }
function {:inline} $eq.i128.bool(i1: i128, i2: i128) returns (bool) { (i1 == i2) }
function {:inline} $eq.i128(i1: i128, i2: i128) returns (i1) { (if (i1 == i2) then 1 else 0) }
function {:inline} $eq.i16.bool(i1: i16, i2: i16) returns (bool) { (i1 == i2) }
function {:inline} $eq.i16(i1: i16, i2: i16) returns (i1) { (if (i1 == i2) then 1 else 0) }
function {:inline} $eq.i24.bool(i1: i24, i2: i24) returns (bool) { (i1 == i2) }
function {:inline} $eq.i24(i1: i24, i2: i24) returns (i1) { (if (i1 == i2) then 1 else 0) }
function {:inline} $eq.i32.bool(i1: i32, i2: i32) returns (bool) { (i1 == i2) }
function {:inline} $eq.i32(i1: i32, i2: i32) returns (i1) { (if (i1 == i2) then 1 else 0) }
function {:inline} $eq.i64.bool(i1: i64, i2: i64) returns (bool) { (i1 == i2) }
function {:inline} $eq.i64(i1: i64, i2: i64) returns (i1) { (if (i1 == i2) then 1 else 0) }
function {:inline} $eq.i8.bool(i1: i8, i2: i8) returns (bool) { (i1 == i2) }
function {:inline} $eq.i8(i1: i8, i2: i8) returns (i1) { (if (i1 == i2) then 1 else 0) }
function {:inline} $eq.i96.bool(i1: i96, i2: i96) returns (bool) { (i1 == i2) }
function {:inline} $eq.i96(i1: i96, i2: i96) returns (i1) { (if (i1 == i2) then 1 else 0) }
function {:inline} $foeq.float(f1: float, f2: float) returns (i1) { (if $foeq.bool(f1,f2) then 1 else 0) }
function {:inline} $isExternal(p: ref) returns (bool) { $slt.ref.bool(p,$EXTERNS_BOTTOM) }
function {:inline} $load.bv128(M: [ref] bv128, p: ref) returns (bv128) { M[p] }
function {:inline} $load.bv16(M: [ref] bv16, p: ref) returns (bv16) { M[p] }
function {:inline} $load.bv24(M: [ref] bv24, p: ref) returns (bv24) { M[p] }
function {:inline} $load.bv32(M: [ref] bv32, p: ref) returns (bv32) { M[p] }
function {:inline} $load.bv64(M: [ref] bv64, p: ref) returns (bv64) { M[p] }
function {:inline} $load.bv8(M: [ref] bv8, p: ref) returns (bv8) { M[p] }
function {:inline} $load.bv96(M: [ref] bv96, p: ref) returns (bv96) { M[p] }
function {:inline} $load.bytes.bv128(M: [ref] bv8, p: ref) returns (bv128) { ($load.bytes.bv64(M,$add.ref(p,$4.ref)) ++ $load.bytes.bv64(M,p)) }
function {:inline} $load.bytes.bv16(M: [ref] bv8, p: ref) returns (bv16) { (M[$add.ref(p,$1.ref)] ++ M[p]) }
function {:inline} $load.bytes.bv24(M: [ref] bv8, p: ref) returns (bv24) { ((M[$add.ref(p,$2.ref)] ++ M[$add.ref(p,$1.ref)]) ++ M[p]) }
function {:inline} $load.bytes.bv32(M: [ref] bv8, p: ref) returns (bv32) { (((M[$add.ref(p,$3.ref)] ++ M[$add.ref(p,$2.ref)]) ++ M[$add.ref(p,$1.ref)]) ++ M[p]) }
function {:inline} $load.bytes.bv64(M: [ref] bv8, p: ref) returns (bv64) { ($load.bytes.bv32(M,$add.ref(p,$4.ref)) ++ $load.bytes.bv32(M,p)) }
function {:inline} $load.bytes.bv8(M: [ref] bv8, p: ref) returns (bv8) { M[p] }
function {:inline} $load.bytes.bv96(M: [ref] bv8, p: ref) returns (bv96) { ($load.bytes.bv64(M,$add.ref(p,$4.ref)) ++ $load.bytes.bv32(M,p)) }
function {:inline} $load.float(M: [ref] float, p: ref) returns (float) { M[p] }
function {:inline} $load.i128(M: [ref] i128, p: ref) returns (i128) { M[p] }
function {:inline} $load.i16(M: [ref] i16, p: ref) returns (i16) { M[p] }
function {:inline} $load.i24(M: [ref] i24, p: ref) returns (i24) { M[p] }
function {:inline} $load.i32(M: [ref] i32, p: ref) returns (i32) { M[p] }
function {:inline} $load.i64(M: [ref] i64, p: ref) returns (i64) { M[p] }
function {:inline} $load.i8(M: [ref] i8, p: ref) returns (i8) { M[p] }
function {:inline} $load.i96(M: [ref] i96, p: ref) returns (i96) { M[p] }
function {:inline} $load.ref(M: [ref] ref, p: ref) returns (ref) { M[p] }
function {:inline} $max(i1: int, i2: int) returns (int) { (if (i1 > i2) then i1 else i2) }
function {:inline} $max.bv1(i1: bv1, i2: bv1) returns (bv1) { (if $sgt.bv1.bool(i1,i2) then i1 else i2) }
function {:inline} $max.bv128(i1: bv128, i2: bv128) returns (bv128) { (if $sgt.bv128.bool(i1,i2) then i1 else i2) }
function {:inline} $max.bv16(i1: bv16, i2: bv16) returns (bv16) { (if $sgt.bv16.bool(i1,i2) then i1 else i2) }
function {:inline} $max.bv24(i1: bv24, i2: bv24) returns (bv24) { (if $sgt.bv24.bool(i1,i2) then i1 else i2) }
function {:inline} $max.bv32(i1: bv32, i2: bv32) returns (bv32) { (if $sgt.bv32.bool(i1,i2) then i1 else i2) }
function {:inline} $max.bv64(i1: bv64, i2: bv64) returns (bv64) { (if $sgt.bv64.bool(i1,i2) then i1 else i2) }
function {:inline} $max.bv8(i1: bv8, i2: bv8) returns (bv8) { (if $sgt.bv8.bool(i1,i2) then i1 else i2) }
function {:inline} $max.bv96(i1: bv96, i2: bv96) returns (bv96) { (if $sgt.bv96.bool(i1,i2) then i1 else i2) }
function {:inline} $min(i1: int, i2: int) returns (int) { (if (i1 < i2) then i1 else i2) }
function {:inline} $min.bv1(i1: bv1, i2: bv1) returns (bv1) { (if $slt.bv1.bool(i1,i2) then i1 else i2) }
function {:inline} $min.bv128(i1: bv128, i2: bv128) returns (bv128) { (if $slt.bv128.bool(i1,i2) then i1 else i2) }
function {:inline} $min.bv16(i1: bv16, i2: bv16) returns (bv16) { (if $slt.bv16.bool(i1,i2) then i1 else i2) }
function {:inline} $min.bv24(i1: bv24, i2: bv24) returns (bv24) { (if $slt.bv24.bool(i1,i2) then i1 else i2) }
function {:inline} $min.bv32(i1: bv32, i2: bv32) returns (bv32) { (if $slt.bv32.bool(i1,i2) then i1 else i2) }
function {:inline} $min.bv64(i1: bv64, i2: bv64) returns (bv64) { (if $slt.bv64.bool(i1,i2) then i1 else i2) }
function {:inline} $min.bv8(i1: bv8, i2: bv8) returns (bv8) { (if $slt.bv8.bool(i1,i2) then i1 else i2) }
function {:inline} $min.bv96(i1: bv96, i2: bv96) returns (bv96) { (if $slt.bv96.bool(i1,i2) then i1 else i2) }
function {:inline} $mul.i1(i1: i1, i2: i1) returns (i1) { (i1 * i2) }
function {:inline} $mul.i128(i1: i128, i2: i128) returns (i128) { (i1 * i2) }
function {:inline} $mul.i16(i1: i16, i2: i16) returns (i16) { (i1 * i2) }
function {:inline} $mul.i24(i1: i24, i2: i24) returns (i24) { (i1 * i2) }
function {:inline} $mul.i32(i1: i32, i2: i32) returns (i32) { (i1 * i2) }
function {:inline} $mul.i64(i1: i64, i2: i64) returns (i64) { (i1 * i2) }
function {:inline} $mul.i8(i1: i8, i2: i8) returns (i8) { (i1 * i2) }
function {:inline} $mul.i96(i1: i96, i2: i96) returns (i96) { (i1 * i2) }
function {:inline} $ne.bv1.bool(i1: bv1, i2: bv1) returns (bool) { (i1 != i2) }
function {:inline} $ne.bv1(i1: bv1, i2: bv1) returns (bv1) { (if (i1 != i2) then 1bv1 else 0bv1) }
function {:inline} $ne.bv128.bool(i1: bv128, i2: bv128) returns (bool) { (i1 != i2) }
function {:inline} $ne.bv128(i1: bv128, i2: bv128) returns (bv1) { (if (i1 != i2) then 1bv1 else 0bv1) }
function {:inline} $ne.bv16.bool(i1: bv16, i2: bv16) returns (bool) { (i1 != i2) }
function {:inline} $ne.bv16(i1: bv16, i2: bv16) returns (bv1) { (if (i1 != i2) then 1bv1 else 0bv1) }
function {:inline} $ne.bv24.bool(i1: bv24, i2: bv24) returns (bool) { (i1 != i2) }
function {:inline} $ne.bv24(i1: bv24, i2: bv24) returns (bv1) { (if (i1 != i2) then 1bv1 else 0bv1) }
function {:inline} $ne.bv32.bool(i1: bv32, i2: bv32) returns (bool) { (i1 != i2) }
function {:inline} $ne.bv32(i1: bv32, i2: bv32) returns (bv1) { (if (i1 != i2) then 1bv1 else 0bv1) }
function {:inline} $ne.bv64.bool(i1: bv64, i2: bv64) returns (bool) { (i1 != i2) }
function {:inline} $ne.bv64(i1: bv64, i2: bv64) returns (bv1) { (if (i1 != i2) then 1bv1 else 0bv1) }
function {:inline} $ne.bv8.bool(i1: bv8, i2: bv8) returns (bool) { (i1 != i2) }
function {:inline} $ne.bv8(i1: bv8, i2: bv8) returns (bv1) { (if (i1 != i2) then 1bv1 else 0bv1) }
function {:inline} $ne.bv96.bool(i1: bv96, i2: bv96) returns (bool) { (i1 != i2) }
function {:inline} $ne.bv96(i1: bv96, i2: bv96) returns (bv1) { (if (i1 != i2) then 1bv1 else 0bv1) }
function {:inline} $ne.i1.bool(i1: i1, i2: i1) returns (bool) { (i1 != i2) }
function {:inline} $ne.i1(i1: i1, i2: i1) returns (i1) { (if (i1 != i2) then 1 else 0) }
function {:inline} $ne.i128.bool(i1: i128, i2: i128) returns (bool) { (i1 != i2) }
function {:inline} $ne.i128(i1: i128, i2: i128) returns (i1) { (if (i1 != i2) then 1 else 0) }
function {:inline} $ne.i16.bool(i1: i16, i2: i16) returns (bool) { (i1 != i2) }
function {:inline} $ne.i16(i1: i16, i2: i16) returns (i1) { (if (i1 != i2) then 1 else 0) }
function {:inline} $ne.i24.bool(i1: i24, i2: i24) returns (bool) { (i1 != i2) }
function {:inline} $ne.i24(i1: i24, i2: i24) returns (i1) { (if (i1 != i2) then 1 else 0) }
function {:inline} $ne.i32.bool(i1: i32, i2: i32) returns (bool) { (i1 != i2) }
function {:inline} $ne.i32(i1: i32, i2: i32) returns (i1) { (if (i1 != i2) then 1 else 0) }
function {:inline} $ne.i64.bool(i1: i64, i2: i64) returns (bool) { (i1 != i2) }
function {:inline} $ne.i64(i1: i64, i2: i64) returns (i1) { (if (i1 != i2) then 1 else 0) }
function {:inline} $ne.i8.bool(i1: i8, i2: i8) returns (bool) { (i1 != i2) }
function {:inline} $ne.i8(i1: i8, i2: i8) returns (i1) { (if (i1 != i2) then 1 else 0) }
function {:inline} $ne.i96.bool(i1: i96, i2: i96) returns (bool) { (i1 != i2) }
function {:inline} $ne.i96(i1: i96, i2: i96) returns (i1) { (if (i1 != i2) then 1 else 0) }
function {:inline} $sext.bv1.bv128(i: bv1) returns (bv128) { (if (i == 0bv1) then 0bv128 else 340282366920938463463374607431768211455bv128) }
function {:inline} $sext.bv1.bv16(i: bv1) returns (bv16) { (if (i == 0bv1) then 0bv16 else 65535bv16) }
function {:inline} $sext.bv1.bv24(i: bv1) returns (bv24) { (if (i == 0bv1) then 0bv24 else 16777215bv24) }
function {:inline} $sext.bv1.bv32(i: bv1) returns (bv32) { (if (i == 0bv1) then 0bv32 else 4294967295bv32) }
function {:inline} $sext.bv1.bv64(i: bv1) returns (bv64) { (if (i == 0bv1) then 0bv64 else 18446744073709551615bv64) }
function {:inline} $sext.bv1.bv8(i: bv1) returns (bv8) { (if (i == 0bv1) then 0bv8 else 255bv8) }
function {:inline} $sext.bv1.bv96(i: bv1) returns (bv96) { (if (i == 0bv1) then 0bv96 else 79228162514264337593543950335bv96) }
function {:inline} $sext.i1.i128(i: i1) returns (i128) { i }
function {:inline} $sext.i1.i16(i: i1) returns (i16) { i }
function {:inline} $sext.i1.i24(i: i1) returns (i24) { i }
function {:inline} $sext.i1.i32(i: i1) returns (i32) { i }
function {:inline} $sext.i1.i64(i: i1) returns (i64) { i }
function {:inline} $sext.i1.i8(i: i1) returns (i8) { i }
function {:inline} $sext.i1.i96(i: i1) returns (i96) { i }
function {:inline} $sext.i16.i128(i: i16) returns (i128) { i }
function {:inline} $sext.i16.i24(i: i16) returns (i24) { i }
function {:inline} $sext.i16.i32(i: i16) returns (i32) { i }
function {:inline} $sext.i16.i64(i: i16) returns (i64) { i }
function {:inline} $sext.i16.i96(i: i16) returns (i96) { i }
function {:inline} $sext.i24.i128(i: i24) returns (i128) { i }
function {:inline} $sext.i24.i32(i: i24) returns (i32) { i }
function {:inline} $sext.i24.i64(i: i24) returns (i64) { i }
function {:inline} $sext.i24.i96(i: i24) returns (i96) { i }
function {:inline} $sext.i32.i128(i: i32) returns (i128) { i }
function {:inline} $sext.i32.i64(i: i32) returns (i64) { i }
function {:inline} $sext.i32.i96(i: i32) returns (i96) { i }
function {:inline} $sext.i64.i128(i: i64) returns (i128) { i }
function {:inline} $sext.i64.i96(i: i64) returns (i96) { i }
function {:inline} $sext.i8.i128(i: i8) returns (i128) { i }
function {:inline} $sext.i8.i16(i: i8) returns (i16) { i }
function {:inline} $sext.i8.i24(i: i8) returns (i24) { i }
function {:inline} $sext.i8.i32(i: i8) returns (i32) { i }
function {:inline} $sext.i8.i64(i: i8) returns (i64) { i }
function {:inline} $sext.i8.i96(i: i8) returns (i96) { i }
function {:inline} $sext.i96.i128(i: i96) returns (i128) { i }
function {:inline} $sge.i1.bool(i1: i1, i2: i1) returns (bool) { (i1 >= i2) }
function {:inline} $sge.i1(i1: i1, i2: i1) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $sge.i128.bool(i1: i128, i2: i128) returns (bool) { (i1 >= i2) }
function {:inline} $sge.i128(i1: i128, i2: i128) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $sge.i16.bool(i1: i16, i2: i16) returns (bool) { (i1 >= i2) }
function {:inline} $sge.i16(i1: i16, i2: i16) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $sge.i24.bool(i1: i24, i2: i24) returns (bool) { (i1 >= i2) }
function {:inline} $sge.i24(i1: i24, i2: i24) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $sge.i32.bool(i1: i32, i2: i32) returns (bool) { (i1 >= i2) }
function {:inline} $sge.i32(i1: i32, i2: i32) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $sge.i64.bool(i1: i64, i2: i64) returns (bool) { (i1 >= i2) }
function {:inline} $sge.i64(i1: i64, i2: i64) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $sge.i8.bool(i1: i8, i2: i8) returns (bool) { (i1 >= i2) }
function {:inline} $sge.i8(i1: i8, i2: i8) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $sge.i96.bool(i1: i96, i2: i96) returns (bool) { (i1 >= i2) }
function {:inline} $sge.i96(i1: i96, i2: i96) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $sgt.i1.bool(i1: i1, i2: i1) returns (bool) { (i1 > i2) }
function {:inline} $sgt.i1(i1: i1, i2: i1) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $sgt.i128.bool(i1: i128, i2: i128) returns (bool) { (i1 > i2) }
function {:inline} $sgt.i128(i1: i128, i2: i128) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $sgt.i16.bool(i1: i16, i2: i16) returns (bool) { (i1 > i2) }
function {:inline} $sgt.i16(i1: i16, i2: i16) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $sgt.i24.bool(i1: i24, i2: i24) returns (bool) { (i1 > i2) }
function {:inline} $sgt.i24(i1: i24, i2: i24) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $sgt.i32.bool(i1: i32, i2: i32) returns (bool) { (i1 > i2) }
function {:inline} $sgt.i32(i1: i32, i2: i32) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $sgt.i64.bool(i1: i64, i2: i64) returns (bool) { (i1 > i2) }
function {:inline} $sgt.i64(i1: i64, i2: i64) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $sgt.i8.bool(i1: i8, i2: i8) returns (bool) { (i1 > i2) }
function {:inline} $sgt.i8(i1: i8, i2: i8) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $sgt.i96.bool(i1: i96, i2: i96) returns (bool) { (i1 > i2) }
function {:inline} $sgt.i96(i1: i96, i2: i96) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $sle.i1.bool(i1: i1, i2: i1) returns (bool) { (i1 <= i2) }
function {:inline} $sle.i1(i1: i1, i2: i1) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $sle.i128.bool(i1: i128, i2: i128) returns (bool) { (i1 <= i2) }
function {:inline} $sle.i128(i1: i128, i2: i128) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $sle.i16.bool(i1: i16, i2: i16) returns (bool) { (i1 <= i2) }
function {:inline} $sle.i16(i1: i16, i2: i16) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $sle.i24.bool(i1: i24, i2: i24) returns (bool) { (i1 <= i2) }
function {:inline} $sle.i24(i1: i24, i2: i24) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $sle.i32.bool(i1: i32, i2: i32) returns (bool) { (i1 <= i2) }
function {:inline} $sle.i32(i1: i32, i2: i32) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $sle.i64.bool(i1: i64, i2: i64) returns (bool) { (i1 <= i2) }
function {:inline} $sle.i64(i1: i64, i2: i64) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $sle.i8.bool(i1: i8, i2: i8) returns (bool) { (i1 <= i2) }
function {:inline} $sle.i8(i1: i8, i2: i8) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $sle.i96.bool(i1: i96, i2: i96) returns (bool) { (i1 <= i2) }
function {:inline} $sle.i96(i1: i96, i2: i96) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $slt.i1.bool(i1: i1, i2: i1) returns (bool) { (i1 < i2) }
function {:inline} $slt.i1(i1: i1, i2: i1) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $slt.i128.bool(i1: i128, i2: i128) returns (bool) { (i1 < i2) }
function {:inline} $slt.i128(i1: i128, i2: i128) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $slt.i16.bool(i1: i16, i2: i16) returns (bool) { (i1 < i2) }
function {:inline} $slt.i16(i1: i16, i2: i16) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $slt.i24.bool(i1: i24, i2: i24) returns (bool) { (i1 < i2) }
function {:inline} $slt.i24(i1: i24, i2: i24) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $slt.i32.bool(i1: i32, i2: i32) returns (bool) { (i1 < i2) }
function {:inline} $slt.i32(i1: i32, i2: i32) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $slt.i64.bool(i1: i64, i2: i64) returns (bool) { (i1 < i2) }
function {:inline} $slt.i64(i1: i64, i2: i64) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $slt.i8.bool(i1: i8, i2: i8) returns (bool) { (i1 < i2) }
function {:inline} $slt.i8(i1: i8, i2: i8) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $slt.i96.bool(i1: i96, i2: i96) returns (bool) { (i1 < i2) }
function {:inline} $slt.i96(i1: i96, i2: i96) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $smax.i1(i1: i1, i2: i1) returns (i1) { $max(i1,i2) }
function {:inline} $smax.i128(i1: i128, i2: i128) returns (i128) { $max(i1,i2) }
function {:inline} $smax.i16(i1: i16, i2: i16) returns (i16) { $max(i1,i2) }
function {:inline} $smax.i24(i1: i24, i2: i24) returns (i24) { $max(i1,i2) }
function {:inline} $smax.i32(i1: i32, i2: i32) returns (i32) { $max(i1,i2) }
function {:inline} $smax.i64(i1: i64, i2: i64) returns (i64) { $max(i1,i2) }
function {:inline} $smax.i8(i1: i8, i2: i8) returns (i8) { $max(i1,i2) }
function {:inline} $smax.i96(i1: i96, i2: i96) returns (i96) { $max(i1,i2) }
function {:inline} $smin.i1(i1: i1, i2: i1) returns (i1) { $min(i1,i2) }
function {:inline} $smin.i128(i1: i128, i2: i128) returns (i128) { $min(i1,i2) }
function {:inline} $smin.i16(i1: i16, i2: i16) returns (i16) { $min(i1,i2) }
function {:inline} $smin.i24(i1: i24, i2: i24) returns (i24) { $min(i1,i2) }
function {:inline} $smin.i32(i1: i32, i2: i32) returns (i32) { $min(i1,i2) }
function {:inline} $smin.i64(i1: i64, i2: i64) returns (i64) { $min(i1,i2) }
function {:inline} $smin.i8(i1: i8, i2: i8) returns (i8) { $min(i1,i2) }
function {:inline} $smin.i96(i1: i96, i2: i96) returns (i96) { $min(i1,i2) }
function {:inline} $store.bv128(M: [ref] bv128, p: ref, v: bv128) returns ([ref] bv128) { M[p := v] }
function {:inline} $store.bv16(M: [ref] bv16, p: ref, v: bv16) returns ([ref] bv16) { M[p := v] }
function {:inline} $store.bv24(M: [ref] bv24, p: ref, v: bv24) returns ([ref] bv24) { M[p := v] }
function {:inline} $store.bv32(M: [ref] bv32, p: ref, v: bv32) returns ([ref] bv32) { M[p := v] }
function {:inline} $store.bv64(M: [ref] bv64, p: ref, v: bv64) returns ([ref] bv64) { M[p := v] }
function {:inline} $store.bv8(M: [ref] bv8, p: ref, v: bv8) returns ([ref] bv8) { M[p := v] }
function {:inline} $store.bv96(M: [ref] bv96, p: ref, v: bv96) returns ([ref] bv96) { M[p := v] }
function {:inline} $store.bytes.bv128(M: [ref] bv8, p: ref, v: bv128) returns ([ref] bv8) { M[p := v[8:0]][$add.ref(p,$1.ref) := v[16:8]][$add.ref(p,$2.ref) := v[24:16]][$add.ref(p,$3.ref) := v[32:24]][$add.ref(p,$4.ref) := v[40:32]][$add.ref(p,$5.ref) := v[48:40]][$add.ref(p,$6.ref) := v[56:48]][$add.ref(p,$7.ref) := v[64:56]][$add.ref(p,$7.ref) := v[72:64]][$add.ref(p,$8.ref) := v[80:72]][$add.ref(p,$9.ref) := v[88:80]][$add.ref(p,$10.ref) := v[96:88]][$add.ref(p,$11.ref) := v[104:96]][$add.ref(p,$12.ref) := v[112:104]][$add.ref(p,$13.ref) := v[120:112]][$add.ref(p,$14.ref) := v[128:120]] }
function {:inline} $store.bytes.bv16(M: [ref] bv8, p: ref, v: bv16) returns ([ref] bv8) { M[p := v[8:0]][$add.ref(p,$1.ref) := v[16:8]] }
function {:inline} $store.bytes.bv24(M: [ref] bv8, p: ref, v: bv24) returns ([ref] bv8) { M[p := v[8:0]][$add.ref(p,$1.ref) := v[16:8]][$add.ref(p,$2.ref) := v[24:16]] }
function {:inline} $store.bytes.bv32(M: [ref] bv8, p: ref, v: bv32) returns ([ref] bv8) { M[p := v[8:0]][$add.ref(p,$1.ref) := v[16:8]][$add.ref(p,$2.ref) := v[24:16]][$add.ref(p,$3.ref) := v[32:24]] }
function {:inline} $store.bytes.bv64(M: [ref] bv8, p: ref, v: bv64) returns ([ref] bv8) { M[p := v[8:0]][$add.ref(p,$1.ref) := v[16:8]][$add.ref(p,$2.ref) := v[24:16]][$add.ref(p,$3.ref) := v[32:24]][$add.ref(p,$4.ref) := v[40:32]][$add.ref(p,$5.ref) := v[48:40]][$add.ref(p,$6.ref) := v[56:48]][$add.ref(p,$7.ref) := v[64:56]] }
function {:inline} $store.bytes.bv8(M: [ref] bv8, p: ref, v: bv8) returns ([ref] bv8) { M[p := v] }
function {:inline} $store.bytes.bv96(M: [ref] bv8, p: ref, v: bv96) returns ([ref] bv8) { M[p := v[8:0]][$add.ref(p,$1.ref) := v[16:8]][$add.ref(p,$2.ref) := v[24:16]][$add.ref(p,$3.ref) := v[32:24]][$add.ref(p,$4.ref) := v[40:32]][$add.ref(p,$5.ref) := v[48:40]][$add.ref(p,$6.ref) := v[56:48]][$add.ref(p,$7.ref) := v[64:56]][$add.ref(p,$7.ref) := v[72:64]][$add.ref(p,$8.ref) := v[80:72]][$add.ref(p,$9.ref) := v[88:80]][$add.ref(p,$10.ref) := v[96:88]] }
function {:inline} $store.float(M: [ref] float, p: ref, v: float) returns ([ref] float) { M[p := v] }
function {:inline} $store.i128(M: [ref] i128, p: ref, v: i128) returns ([ref] i128) { M[p := v] }
function {:inline} $store.i16(M: [ref] i16, p: ref, v: i16) returns ([ref] i16) { M[p := v] }
function {:inline} $store.i24(M: [ref] i24, p: ref, v: i24) returns ([ref] i24) { M[p := v] }
function {:inline} $store.i32(M: [ref] i32, p: ref, v: i32) returns ([ref] i32) { M[p := v] }
function {:inline} $store.i64(M: [ref] i64, p: ref, v: i64) returns ([ref] i64) { M[p := v] }
function {:inline} $store.i8(M: [ref] i8, p: ref, v: i8) returns ([ref] i8) { M[p := v] }
function {:inline} $store.i96(M: [ref] i96, p: ref, v: i96) returns ([ref] i96) { M[p := v] }
function {:inline} $store.ref(M: [ref] ref, p: ref, v: ref) returns ([ref] ref) { M[p := v] }
function {:inline} $sub.i1(i1: i1, i2: i1) returns (i1) { (i1 - i2) }
function {:inline} $sub.i128(i1: i128, i2: i128) returns (i128) { (i1 - i2) }
function {:inline} $sub.i16(i1: i16, i2: i16) returns (i16) { (i1 - i2) }
function {:inline} $sub.i24(i1: i24, i2: i24) returns (i24) { (i1 - i2) }
function {:inline} $sub.i32(i1: i32, i2: i32) returns (i32) { (i1 - i2) }
function {:inline} $sub.i64(i1: i64, i2: i64) returns (i64) { (i1 - i2) }
function {:inline} $sub.i8(i1: i8, i2: i8) returns (i8) { (i1 - i2) }
function {:inline} $sub.i96(i1: i96, i2: i96) returns (i96) { (i1 - i2) }
function {:inline} $trunc.bv128.bv1(i: bv128) returns (bv1) { i[1:0] }
function {:inline} $trunc.bv128.bv16(i: bv128) returns (bv16) { i[16:0] }
function {:inline} $trunc.bv128.bv24(i: bv128) returns (bv24) { i[24:0] }
function {:inline} $trunc.bv128.bv32(i: bv128) returns (bv32) { i[32:0] }
function {:inline} $trunc.bv128.bv64(i: bv128) returns (bv64) { i[64:0] }
function {:inline} $trunc.bv128.bv8(i: bv128) returns (bv8) { i[8:0] }
function {:inline} $trunc.bv128.bv96(i: bv128) returns (bv96) { i[96:0] }
function {:inline} $trunc.bv16.bv1(i: bv16) returns (bv1) { i[1:0] }
function {:inline} $trunc.bv16.bv8(i: bv16) returns (bv8) { i[8:0] }
function {:inline} $trunc.bv24.bv1(i: bv24) returns (bv1) { i[1:0] }
function {:inline} $trunc.bv24.bv16(i: bv24) returns (bv16) { i[16:0] }
function {:inline} $trunc.bv24.bv8(i: bv24) returns (bv8) { i[8:0] }
function {:inline} $trunc.bv32.bv1(i: bv32) returns (bv1) { i[1:0] }
function {:inline} $trunc.bv32.bv16(i: bv32) returns (bv16) { i[16:0] }
function {:inline} $trunc.bv32.bv24(i: bv32) returns (bv24) { i[24:0] }
function {:inline} $trunc.bv32.bv8(i: bv32) returns (bv8) { i[8:0] }
function {:inline} $trunc.bv64.bv1(i: bv64) returns (bv1) { i[1:0] }
function {:inline} $trunc.bv64.bv16(i: bv64) returns (bv16) { i[16:0] }
function {:inline} $trunc.bv64.bv24(i: bv64) returns (bv24) { i[24:0] }
function {:inline} $trunc.bv64.bv32(i: bv64) returns (bv32) { i[32:0] }
function {:inline} $trunc.bv64.bv8(i: bv64) returns (bv8) { i[8:0] }
function {:inline} $trunc.bv8.bv1(i: bv8) returns (bv1) { i[1:0] }
function {:inline} $trunc.bv96.bv1(i: bv96) returns (bv1) { i[1:0] }
function {:inline} $trunc.bv96.bv16(i: bv96) returns (bv16) { i[16:0] }
function {:inline} $trunc.bv96.bv24(i: bv96) returns (bv24) { i[24:0] }
function {:inline} $trunc.bv96.bv32(i: bv96) returns (bv32) { i[32:0] }
function {:inline} $trunc.bv96.bv64(i: bv96) returns (bv64) { i[64:0] }
function {:inline} $trunc.bv96.bv8(i: bv96) returns (bv8) { i[8:0] }
function {:inline} $trunc.i128.i1(i: i128) returns (i1) { i }
function {:inline} $trunc.i128.i16(i: i128) returns (i16) { i }
function {:inline} $trunc.i128.i24(i: i128) returns (i24) { i }
function {:inline} $trunc.i128.i32(i: i128) returns (i32) { i }
function {:inline} $trunc.i128.i64(i: i128) returns (i64) { i }
function {:inline} $trunc.i128.i8(i: i128) returns (i8) { i }
function {:inline} $trunc.i128.i96(i: i128) returns (i96) { i }
function {:inline} $trunc.i16.i1(i: i16) returns (i1) { i }
function {:inline} $trunc.i16.i8(i: i16) returns (i8) { i }
function {:inline} $trunc.i24.i1(i: i24) returns (i1) { i }
function {:inline} $trunc.i24.i16(i: i24) returns (i16) { i }
function {:inline} $trunc.i24.i8(i: i24) returns (i8) { i }
function {:inline} $trunc.i32.i1(i: i32) returns (i1) { i }
function {:inline} $trunc.i32.i16(i: i32) returns (i16) { i }
function {:inline} $trunc.i32.i24(i: i32) returns (i24) { i }
function {:inline} $trunc.i32.i8(i: i32) returns (i8) { i }
function {:inline} $trunc.i64.i1(i: i64) returns (i1) { i }
function {:inline} $trunc.i64.i16(i: i64) returns (i16) { i }
function {:inline} $trunc.i64.i24(i: i64) returns (i24) { i }
function {:inline} $trunc.i64.i32(i: i64) returns (i32) { i }
function {:inline} $trunc.i64.i8(i: i64) returns (i8) { i }
function {:inline} $trunc.i8.i1(i: i8) returns (i1) { i }
function {:inline} $trunc.i96.i1(i: i96) returns (i1) { i }
function {:inline} $trunc.i96.i16(i: i96) returns (i16) { i }
function {:inline} $trunc.i96.i24(i: i96) returns (i24) { i }
function {:inline} $trunc.i96.i32(i: i96) returns (i32) { i }
function {:inline} $trunc.i96.i64(i: i96) returns (i64) { i }
function {:inline} $trunc.i96.i8(i: i96) returns (i8) { i }
function {:inline} $uge.i1.bool(i1: i1, i2: i1) returns (bool) { (i1 >= i2) }
function {:inline} $uge.i1(i1: i1, i2: i1) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $uge.i128.bool(i1: i128, i2: i128) returns (bool) { (i1 >= i2) }
function {:inline} $uge.i128(i1: i128, i2: i128) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $uge.i16.bool(i1: i16, i2: i16) returns (bool) { (i1 >= i2) }
function {:inline} $uge.i16(i1: i16, i2: i16) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $uge.i24.bool(i1: i24, i2: i24) returns (bool) { (i1 >= i2) }
function {:inline} $uge.i24(i1: i24, i2: i24) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $uge.i32.bool(i1: i32, i2: i32) returns (bool) { (i1 >= i2) }
function {:inline} $uge.i32(i1: i32, i2: i32) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $uge.i64.bool(i1: i64, i2: i64) returns (bool) { (i1 >= i2) }
function {:inline} $uge.i64(i1: i64, i2: i64) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $uge.i8.bool(i1: i8, i2: i8) returns (bool) { (i1 >= i2) }
function {:inline} $uge.i8(i1: i8, i2: i8) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $uge.i96.bool(i1: i96, i2: i96) returns (bool) { (i1 >= i2) }
function {:inline} $uge.i96(i1: i96, i2: i96) returns (i1) { (if (i1 >= i2) then 1 else 0) }
function {:inline} $ugt.i1.bool(i1: i1, i2: i1) returns (bool) { (i1 > i2) }
function {:inline} $ugt.i1(i1: i1, i2: i1) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $ugt.i128.bool(i1: i128, i2: i128) returns (bool) { (i1 > i2) }
function {:inline} $ugt.i128(i1: i128, i2: i128) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $ugt.i16.bool(i1: i16, i2: i16) returns (bool) { (i1 > i2) }
function {:inline} $ugt.i16(i1: i16, i2: i16) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $ugt.i24.bool(i1: i24, i2: i24) returns (bool) { (i1 > i2) }
function {:inline} $ugt.i24(i1: i24, i2: i24) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $ugt.i32.bool(i1: i32, i2: i32) returns (bool) { (i1 > i2) }
function {:inline} $ugt.i32(i1: i32, i2: i32) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $ugt.i64.bool(i1: i64, i2: i64) returns (bool) { (i1 > i2) }
function {:inline} $ugt.i64(i1: i64, i2: i64) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $ugt.i8.bool(i1: i8, i2: i8) returns (bool) { (i1 > i2) }
function {:inline} $ugt.i8(i1: i8, i2: i8) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $ugt.i96.bool(i1: i96, i2: i96) returns (bool) { (i1 > i2) }
function {:inline} $ugt.i96(i1: i96, i2: i96) returns (i1) { (if (i1 > i2) then 1 else 0) }
function {:inline} $ule.i1.bool(i1: i1, i2: i1) returns (bool) { (i1 <= i2) }
function {:inline} $ule.i1(i1: i1, i2: i1) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $ule.i128.bool(i1: i128, i2: i128) returns (bool) { (i1 <= i2) }
function {:inline} $ule.i128(i1: i128, i2: i128) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $ule.i16.bool(i1: i16, i2: i16) returns (bool) { (i1 <= i2) }
function {:inline} $ule.i16(i1: i16, i2: i16) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $ule.i24.bool(i1: i24, i2: i24) returns (bool) { (i1 <= i2) }
function {:inline} $ule.i24(i1: i24, i2: i24) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $ule.i32.bool(i1: i32, i2: i32) returns (bool) { (i1 <= i2) }
function {:inline} $ule.i32(i1: i32, i2: i32) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $ule.i64.bool(i1: i64, i2: i64) returns (bool) { (i1 <= i2) }
function {:inline} $ule.i64(i1: i64, i2: i64) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $ule.i8.bool(i1: i8, i2: i8) returns (bool) { (i1 <= i2) }
function {:inline} $ule.i8(i1: i8, i2: i8) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $ule.i96.bool(i1: i96, i2: i96) returns (bool) { (i1 <= i2) }
function {:inline} $ule.i96(i1: i96, i2: i96) returns (i1) { (if (i1 <= i2) then 1 else 0) }
function {:inline} $ult.i1.bool(i1: i1, i2: i1) returns (bool) { (i1 < i2) }
function {:inline} $ult.i1(i1: i1, i2: i1) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $ult.i128.bool(i1: i128, i2: i128) returns (bool) { (i1 < i2) }
function {:inline} $ult.i128(i1: i128, i2: i128) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $ult.i16.bool(i1: i16, i2: i16) returns (bool) { (i1 < i2) }
function {:inline} $ult.i16(i1: i16, i2: i16) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $ult.i24.bool(i1: i24, i2: i24) returns (bool) { (i1 < i2) }
function {:inline} $ult.i24(i1: i24, i2: i24) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $ult.i32.bool(i1: i32, i2: i32) returns (bool) { (i1 < i2) }
function {:inline} $ult.i32(i1: i32, i2: i32) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $ult.i64.bool(i1: i64, i2: i64) returns (bool) { (i1 < i2) }
function {:inline} $ult.i64(i1: i64, i2: i64) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $ult.i8.bool(i1: i8, i2: i8) returns (bool) { (i1 < i2) }
function {:inline} $ult.i8(i1: i8, i2: i8) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $ult.i96.bool(i1: i96, i2: i96) returns (bool) { (i1 < i2) }
function {:inline} $ult.i96(i1: i96, i2: i96) returns (i1) { (if (i1 < i2) then 1 else 0) }
function {:inline} $umax.bv1(i1: bv1, i2: bv1) returns (bv1) { (if $ugt.bv1.bool(i1,i2) then i1 else i2) }
function {:inline} $umax.bv128(i1: bv128, i2: bv128) returns (bv128) { (if $ugt.bv128.bool(i1,i2) then i1 else i2) }
function {:inline} $umax.bv16(i1: bv16, i2: bv16) returns (bv16) { (if $ugt.bv16.bool(i1,i2) then i1 else i2) }
function {:inline} $umax.bv24(i1: bv24, i2: bv24) returns (bv24) { (if $ugt.bv24.bool(i1,i2) then i1 else i2) }
function {:inline} $umax.bv32(i1: bv32, i2: bv32) returns (bv32) { (if $ugt.bv32.bool(i1,i2) then i1 else i2) }
function {:inline} $umax.bv64(i1: bv64, i2: bv64) returns (bv64) { (if $ugt.bv64.bool(i1,i2) then i1 else i2) }
function {:inline} $umax.bv8(i1: bv8, i2: bv8) returns (bv8) { (if $ugt.bv8.bool(i1,i2) then i1 else i2) }
function {:inline} $umax.bv96(i1: bv96, i2: bv96) returns (bv96) { (if $ugt.bv96.bool(i1,i2) then i1 else i2) }
function {:inline} $umax.i1(i1: i1, i2: i1) returns (i1) { $max(i1,i2) }
function {:inline} $umax.i128(i1: i128, i2: i128) returns (i128) { $max(i1,i2) }
function {:inline} $umax.i16(i1: i16, i2: i16) returns (i16) { $max(i1,i2) }
function {:inline} $umax.i24(i1: i24, i2: i24) returns (i24) { $max(i1,i2) }
function {:inline} $umax.i32(i1: i32, i2: i32) returns (i32) { $max(i1,i2) }
function {:inline} $umax.i64(i1: i64, i2: i64) returns (i64) { $max(i1,i2) }
function {:inline} $umax.i8(i1: i8, i2: i8) returns (i8) { $max(i1,i2) }
function {:inline} $umax.i96(i1: i96, i2: i96) returns (i96) { $max(i1,i2) }
function {:inline} $umin.bv1(i1: bv1, i2: bv1) returns (bv1) { (if $ult.bv1.bool(i1,i2) then i1 else i2) }
function {:inline} $umin.bv128(i1: bv128, i2: bv128) returns (bv128) { (if $ult.bv128.bool(i1,i2) then i1 else i2) }
function {:inline} $umin.bv16(i1: bv16, i2: bv16) returns (bv16) { (if $ult.bv16.bool(i1,i2) then i1 else i2) }
function {:inline} $umin.bv24(i1: bv24, i2: bv24) returns (bv24) { (if $ult.bv24.bool(i1,i2) then i1 else i2) }
function {:inline} $umin.bv32(i1: bv32, i2: bv32) returns (bv32) { (if $ult.bv32.bool(i1,i2) then i1 else i2) }
function {:inline} $umin.bv64(i1: bv64, i2: bv64) returns (bv64) { (if $ult.bv64.bool(i1,i2) then i1 else i2) }
function {:inline} $umin.bv8(i1: bv8, i2: bv8) returns (bv8) { (if $ult.bv8.bool(i1,i2) then i1 else i2) }
function {:inline} $umin.bv96(i1: bv96, i2: bv96) returns (bv96) { (if $ult.bv96.bool(i1,i2) then i1 else i2) }
function {:inline} $umin.i1(i1: i1, i2: i1) returns (i1) { $min(i1,i2) }
function {:inline} $umin.i128(i1: i128, i2: i128) returns (i128) { $min(i1,i2) }
function {:inline} $umin.i16(i1: i16, i2: i16) returns (i16) { $min(i1,i2) }
function {:inline} $umin.i24(i1: i24, i2: i24) returns (i24) { $min(i1,i2) }
function {:inline} $umin.i32(i1: i32, i2: i32) returns (i32) { $min(i1,i2) }
function {:inline} $umin.i64(i1: i64, i2: i64) returns (i64) { $min(i1,i2) }
function {:inline} $umin.i8(i1: i8, i2: i8) returns (i8) { $min(i1,i2) }
function {:inline} $umin.i96(i1: i96, i2: i96) returns (i96) { $min(i1,i2) }
function {:inline} $zext.bv1.bv128(i: bv1) returns (bv128) { (if (i == 0bv1) then 0bv128 else 1bv128) }
function {:inline} $zext.bv1.bv16(i: bv1) returns (bv16) { (if (i == 0bv1) then 0bv16 else 1bv16) }
function {:inline} $zext.bv1.bv24(i: bv1) returns (bv24) { (if (i == 0bv1) then 0bv24 else 1bv24) }
function {:inline} $zext.bv1.bv32(i: bv1) returns (bv32) { (if (i == 0bv1) then 0bv32 else 1bv32) }
function {:inline} $zext.bv1.bv64(i: bv1) returns (bv64) { (if (i == 0bv1) then 0bv64 else 1bv64) }
function {:inline} $zext.bv1.bv8(i: bv1) returns (bv8) { (if (i == 0bv1) then 0bv8 else 1bv8) }
function {:inline} $zext.bv1.bv96(i: bv1) returns (bv96) { (if (i == 0bv1) then 0bv96 else 1bv96) }
function {:inline} $zext.i1.i128(i: i1) returns (i128) { i }
function {:inline} $zext.i1.i16(i: i1) returns (i16) { i }
function {:inline} $zext.i1.i24(i: i1) returns (i24) { i }
function {:inline} $zext.i1.i32(i: i1) returns (i32) { i }
function {:inline} $zext.i1.i64(i: i1) returns (i64) { i }
function {:inline} $zext.i1.i8(i: i1) returns (i8) { i }
function {:inline} $zext.i1.i96(i: i1) returns (i96) { i }
function {:inline} $zext.i16.i128(i: i16) returns (i128) { i }
function {:inline} $zext.i16.i24(i: i16) returns (i24) { i }
function {:inline} $zext.i16.i32(i: i16) returns (i32) { i }
function {:inline} $zext.i16.i64(i: i16) returns (i64) { i }
function {:inline} $zext.i16.i96(i: i16) returns (i96) { i }
function {:inline} $zext.i24.i128(i: i24) returns (i128) { i }
function {:inline} $zext.i24.i32(i: i24) returns (i32) { i }
function {:inline} $zext.i24.i64(i: i24) returns (i64) { i }
function {:inline} $zext.i24.i96(i: i24) returns (i96) { i }
function {:inline} $zext.i32.i128(i: i32) returns (i128) { i }
function {:inline} $zext.i32.i64(i: i32) returns (i64) { i }
function {:inline} $zext.i32.i96(i: i32) returns (i96) { i }
function {:inline} $zext.i64.i128(i: i64) returns (i128) { i }
function {:inline} $zext.i64.i96(i: i64) returns (i96) { i }
function {:inline} $zext.i8.i128(i: i8) returns (i128) { i }
function {:inline} $zext.i8.i16(i: i8) returns (i16) { i }
function {:inline} $zext.i8.i24(i: i8) returns (i24) { i }
function {:inline} $zext.i8.i32(i: i8) returns (i32) { i }
function {:inline} $zext.i8.i64(i: i8) returns (i64) { i }
function {:inline} $zext.i8.i96(i: i8) returns (i96) { i }
function {:inline} $zext.i96.i128(i: i96) returns (i128) { i }
procedure {:inline 1} $alloc(n: ref) returns (p: ref)
modifies $CurrAddr, $Alloc;
{
  assume $sgt.ref.bool($CurrAddr,$0.ref);
  p := $CurrAddr;
  if ($sgt.ref.bool(n,$0.ref)) {
    $CurrAddr := $add.ref($CurrAddr,n);
  }
  $Alloc[p] := true;
}
procedure {:inline 1} $free(p: ref)
modifies $Alloc;
{
  $Alloc[p] := false;
}
procedure {:inline 2} boogie_si_record_bool(i: bool);
procedure {:inline 2} boogie_si_record_bv1(i: bv1);
procedure {:inline 2} boogie_si_record_bv128(i: bv128);
procedure {:inline 2} boogie_si_record_bv16(i: bv16);
procedure {:inline 2} boogie_si_record_bv24(i: bv24);
procedure {:inline 2} boogie_si_record_bv32(i: bv32);
procedure {:inline 2} boogie_si_record_bv64(i: bv64);
procedure {:inline 2} boogie_si_record_bv8(i: bv8);
procedure {:inline 2} boogie_si_record_bv96(i: bv96);
procedure {:inline 2} boogie_si_record_float(i: float);
procedure {:inline 2} boogie_si_record_i1(i: i1);
procedure {:inline 2} boogie_si_record_i128(i: i128);
procedure {:inline 2} boogie_si_record_i16(i: i16);
procedure {:inline 2} boogie_si_record_i24(i: i24);
procedure {:inline 2} boogie_si_record_i32(i: i32);
procedure {:inline 2} boogie_si_record_i64(i: i64);
procedure {:inline 2} boogie_si_record_i8(i: i8);
procedure {:inline 2} boogie_si_record_i96(i: i96);
procedure {:inline 2} boogie_si_record_mop(m: $mop);
procedure {:inline 2} boogie_si_record_ref(i: ref);
type $mop;
type float;
var $Alloc: [ref] bool;
var $Alloc.shadow: [ref] bool;
var $CurrAddr: ref;
var $CurrAddr.shadow: ref;
var $exn: bool;
var $exn.shadow: bool;
var $exnv: int;
var $exnv.shadow: int;
var $shadow_ok: bool;