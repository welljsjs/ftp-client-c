#ifndef CONFIG_H_INCLUDED
#define CONFIG_H_INCLUDED

/*
 These values are automatically set according to their cmake variables.
*/

/* stdlib.h */
#define HAVE_STDLIB_H 1
#define HAVE_MALLOC 1
#define HAVE_CALLOC 1
#define HAVE_FREE 1
#define HAVE_REALLOC 1

/* stdio.h */
#define HAVE_STDIO_H 1
#define HAVE_FPRINTF 1

/* stddef.h */
#define HAVE_STDDEF_H 1
#define HAVE_MAX_ALIGN_T 1

/* string.h */
#define HAVE_STRING_H 1
#define HAVE_MEMCPY 1
#define HAVE_MEMSET 1
#define HAVE_MEMMOVE 1

/* setjmp.h */
#define HAVE_SETJMP_H 1
#define HAVE_SETJMP 1
#define HAVE_LONGJMP 1

/* malloc.h */
/* #undef HAVE_MALLOC_H */

/* stdint.h */
#define HAVE_STDINT_H 1
#define HAVE_UINTPTR_T 1

/* stdalign.h */
#define HAVE_STDALIGN_H 1
#define HAVE_ALIGNOF 1

#endif /* CONFIG_H_INCLUDED */
