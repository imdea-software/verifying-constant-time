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

/* Our security annotations talk about memory regions. We keep them
   abstract and allow them to be specified from address and length */
typedef struct __SMACK_region __SMACK_region;
__SMACK_region* mem_region(const void*, size_t);

/* Some wrappers to define the memory regions covered by actual
   variables and by fields of a struct or union */
__SMACK_region* of_var(void*);
#define region_of_var(__v) of_var((void*) __v)

#define region_of_field(__s,__f)\
  mem_region(&(__s.__f)), sizeof(__s.__f))

/* Define memory regions related to the function's return value */
__SMACK_region* ret_region(size_t);
__SMACK_region* region_of_ret();

/* The abstract prototypes that form our annotation language */
void public_in(__SMACK_region*);

void public_out(__SMACK_region*);
void declassified_out(__SMACK_region*);

void disjoint_regions(__SMACK_region*, __SMACK_region*);
