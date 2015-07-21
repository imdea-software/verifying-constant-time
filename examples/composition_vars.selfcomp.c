/*

Throughout we will consider all pointers passed to
and returned from functions are public. Distinctions
can only be made for the contents of pointed to 
memory regions. We also only consider one level of
indirection.

These assumptions may be removable later on.

For every function, parameters must be tagged as to their
security level when operating as inputs and possibly as
outputs. The function output must always be tagged for
security.

Security levels are the following.

For inputs:
- public - function requires (assumes) these to be equal.
           needs assertion before call
- private - no requirement (allowed to vary freely)

For outputs (both parameters passed by refence and return values):
- public - function ensures these are equal
           can be used on left-hand side of implications everywhere
- private - no guarantee (assumed to be able to vary freely)
- declassified - we will only analyse executions in which these 
                 possibly private values are fixed.
                 needs assertion on return

All ensure clauses will be moved to the end and 
asserted as implications. Low inputs and declassified outputs
being fixed must imply that low outputs are fixed, that 
all branching conditions are fixed, and that all addresses
are fixed.

*/

#include "smack.h"
#include "asserts.h"


// out -> privin -> privout
// in -> privin -> privout
// res -> decout
void sort2(int *_T0_, int *_m___T0_, int _o___T0_, 
           int *out2, int *_m__out2, int _o__out2,
           int *in2, int *_m__in2, int _o__in2)
{
  int a;
  int _m__a;
  int b;
  int _m__b;
  /*skip*/;
  AssertPtr(in2 + 0 , _m__in2 + 0, _o__in2);
  a = *(in2 + 0);
  _m__a = *(_m__in2 + 0);
  /*skip*/;
  AssertPtr(in2 + 1 , _m__in2 + 1, _o__in2);
  b = *(in2 + 1);
  _m__b = *(_m__in2 + 1);
  /*skip*/;
  //AssertExpr(a < b , _m__a < _m__b); (* In SSA all of these can go to the end. Commented out by hand. *)
  if (a < b) {
    /*skip*/;
    AssertPtr(out2 + 0 , _m__out2 + 0, _o__out2);
    AssertPtr(in2 + 0 , _m__in2 + 0, _o__in2);
    *(out2 + 0) = *(in2 + 0);
    *(_m__out2 + 0) = *(_m__in2 + 0);
    /*skip*/;
    AssertPtr(out2 + 1 , _m__out2 + 1, _o__out2);
    AssertPtr(in2 + 1 , _m__in2 + 1, _o__in2);
    *(out2 + 1) = *(in2 + 1);
    *(_m__out2 + 1) = *(_m__in2 + 1);
  } else {
    /*skip*/;
    AssertPtr(out2 + 0 , _m__out2 + 0, _o__out2);
    AssertPtr(in2 + 1 , _m__in2 + 1, _o__in2);
    *(out2 + 0) = *(in2 + 1);
    *(_m__out2 + 0) = *(_m__in2 + 1);
    /*skip*/;
    AssertPtr(out2 + 1 , _m__out2 + 1, _o__out2);
    AssertPtr(in2 + 0 , _m__in2 + 0, _o__in2);
    *(out2 + 1) = *(in2 + 0);
    *(_m__out2 + 1) = *(_m__in2 + 0);
  }
  /*skip*/;
  *_T0_ = a < b;
  *_m___T0_ = _m__a < _m__b;
  /* Assertion bellow was added by hand to reflect declass res */
  assert(!(*_T0_ == *_m___T0_) || (a < b == _m__a < _m__b));
  return;
}

// out -> privin -> privout
// in -> privin -> privout
// conds -> privin -> decout
void sort3(int *conds, int *_m__conds, int _o__conds, int *out3, int *_m__out3, int _o__out3, int *in3, int *_m__in3, int _o__in3)
{
  int _T1_;
  int _m___T1_;
  int _T2_;
  int _m___T2_;
  int _T3_;
  int _m___T3_;
  /*skip*/;
  AssertPtr(conds + 0 , _m__conds + 0, _o__conds);
  AssertPtr(&_T1_, &_m___T1_, AddDiff(&_T1_,&_m___T1_)); // added by hand for call
  AssertPtr(out3, _m__out3, _o__out3); // added by hand for call
  AssertPtr(in3, _m__in3, _o__in3); // added by hand for call
  sort2(&_T1_, &_m___T1_, AddDiff(&_T1_,&_m___T1_), out3, _m__out3, _o__out3, in3, _m__in3, _o__in3);
  // here we should assert that values known to be fixed forwards and backwards imply fixed declass res
  // this means all _T2_,_T3_, and all of *conds. If there were public inputs, then these should also
  // appear on the lefthand side (recall we assume ssa, so this is asserted in the end)
  *(conds + 0) = _T1_;
  *(_m__conds + 0) = _m___T1_;
  /* The following assertion was added by hand, but it should be in the end. Smack does not validate this one in the end */
  assert( !( *(conds + 2) ==  *(_m__conds + 2) && 
            *(conds + 1) ==  *(_m__conds + 1) && 
            *(conds + 0) ==  *(_m__conds + 0) && 
            _T2_ == _m___T2_ &&
            _T3_ == _m___T3_) || (_T1_ == _m___T1_));
  /*skip*/;
  AssertPtr(in3 + 1 , _m__in3 + 1, _o__in3);
  AssertPtr(out3 + 1 , _m__out3 + 1, _o__out3);
  *(in3 + 1) = *(out3 + 1);
  *(_m__in3 + 1) = *(_m__out3 + 1);
  /*skip*/;
  AssertPtr(conds + 1 , _m__conds + 1, _o__conds);
  AssertPtr(&_T2_, &_m___T2_, AddDiff(&_T2_,&_m___T2_)); // added by hand for call
  AssertPtr(out3 + 1, _m__out3 + 1, _o__out3); // added by hand for call
  AssertPtr(in3 + 1, _m__in3 + 1, _o__in3); // added by hand for call
  sort2(&_T2_, &_m___T2_, AddDiff(&_T2_,&_m___T2_), out3 + 1, _m__out3 + 1, _o__out3, in3 + 1, _m__in3 + 1, _o__in3);
  // here we should assert that values known to be fixed forwards and backwards imply fixed declass res
  // this means all _T1_,_T3_, and all of *conds. If there were public inputs, then these should also
  // appear on the lefthand side  (recall we assume ssa, so this is asserted in the end)
  *(conds + 1) = _T2_;
  *(_m__conds + 1) = _m___T2_;
  /* The following assertion was added by hand, but it should be in the end. Smack does not validate this one in the end */
  assert( !( *(conds + 2) ==  *(_m__conds + 2) && 
            *(conds + 1) ==  *(_m__conds + 1) && 
            *(conds + 0) ==  *(_m__conds + 0) && 
            _T1_ == _m___T1_ &&
            _T3_ == _m___T3_) || (_T2_ == _m___T2_));
  /*skip*/;
  AssertPtr(in3 + 0 , _m__in3 + 0, _o__in3);
  AssertPtr(out3 + 0 , _m__out3 + 0, _o__out3);
  *(in3 + 0) = *(out3 + 0);
  *(_m__in3 + 0) = *(_m__out3 + 0);
  /*skip*/;
  AssertPtr(in3 + 1 , _m__in3 + 1, _o__in3);
  AssertPtr(out3 + 1 , _m__out3 + 1, _o__out3);
  *(in3 + 1) = *(out3 + 1);
  *(_m__in3 + 1) = *(_m__out3 + 1);
  /*skip*/;
  AssertPtr(conds + 2 , _m__conds + 2, _o__conds);
  AssertPtr(&_T3_, &_m___T3_, AddDiff(&_T3_,&_m___T3_)); // added by hand for call
  AssertPtr(out3 + 2, _m__out3 + 2, _o__out3); // added by hand for call
  AssertPtr(in3 + 2, _m__in3 + 2, _o__in3); // added by hand for call
  sort2(&_T3_, &_m___T3_, AddDiff(&_T3_,&_m___T3_), out3, _m__out3, _o__out3, in3, _m__in3, _o__in3);
  // here we should assert that values known to be fixed forwards and backwards imply fixed declass res
  // this means all _T1_,_T2_, and all of *conds. If there were public inputs, then these should also
  // appear on the lefthand side  (recall we assume ssa, so this is asserted in the end)
  *(conds + 2) = _T3_;
  *(_m__conds + 2) = _m___T3_;
  /* Asserts below were added by hand for declass return values of calls */
  /* The first two are not validated by smack if placed here, only the third one is 
  assert( !( *(conds + 2) ==  *(_m__conds + 2) && 
            *(conds + 1) ==  *(_m__conds + 1) && 
            *(conds + 0) ==  *(_m__conds + 0) && 
            _T2_ == _m___T2_ &&
            _T3_ == _m___T3_) || (_T1_ == _m___T1_));
  assert( !( *(conds + 2) ==  *(_m__conds + 2) && 
            *(conds + 1) ==  *(_m__conds + 1) && 
            *(conds + 0) ==  *(_m__conds + 0) && 
            _T1_ == _m___T1_ &&
            _T3_ == _m___T3_) || (_T2_ == _m___T2_)); */
  assert( !( *(conds + 2) ==  *(_m__conds + 2) && 
            *(conds + 1) ==  *(_m__conds + 1) && 
            *(conds + 0) ==  *(_m__conds + 0) && 
            _T1_ == _m___T1_ &&
            _T2_ == _m___T2_) || (_T3_ == _m___T3_)); 
}

void f() { 
  int _T0_[1];
  int _m___T0_[1];
  int in[3];
  int _m__in[3];
  int out[3];
  int _m__out[3];
  sort3(_T0_,_m___T0_,AddDiff(_T0_,_m___T0_),out,_m__out,AddDiff(out,_m__out),  
                                            in,_m__in,AddDiff(in,_m__in));
}

int main(void) { 
  f();
  return 0;
}
