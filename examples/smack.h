#include <stdlib.h>

/*
Security levels are the following.

For inputs:
- public - function requires (assumes) these to be equal.
- private - no requirement (allowed to vary freely)

For outputs (both by reference and return values):
- public - function ensures these are equal
           can be used on left-hand side of implications everywhere
- private - no guarantee (allowed to vary freely)
- declassified - we only analyse executions in which these
                 possibly private values are fixed.

We omit annotations for private since nothing needs to be generated
 for them. We may need to add them back in for modular analyses.
*/

/* The abstract prototypes that form our annotation language */
void public_in_value(smack_value_t);
void public_out_value(smack_value_t);
void declassified_out_value(smack_value_t);

void public_in_object(smack_object_t);
void public_out_object(smack_object_t);
void declassified_out_object(smack_object_t);

#define __disjoint_regions(addr1,len1,addr2,len2) \
  assume(addr1 + len1 * sizeof(*addr1) < addr2 || \
         addr2 + len2 * sizeof(*addr2) < addr1)
