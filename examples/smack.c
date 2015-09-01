#include "smack.h"

struct __SMACK_region {
  unsigned char dummy;
};

__SMACK_region* mem_region(const void* addr,size_t len) { return NULL; }
__SMACK_region* of_var(void* v) { return NULL; }

__SMACK_region* ret_region(size_t len) { return NULL; }
__SMACK_region* region_of_ret() { return NULL; }

void public_in(__SMACK_region* r) { return; }

void public_out(__SMACK_region* r) { return; }
void declassified_out(__SMACK_region* r) { return; }
