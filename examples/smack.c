#include "smack.h"

__SMACK_region mem_region(const void* addr,size_t len) { return 0; }

void public_in(__SMACK_region r) { return; }

void public_out(__SMACK_region r) { return; }
void declassified_out(__SMACK_region r) { return; }

void public_return() { return; }
void declassified_return() { return; }
