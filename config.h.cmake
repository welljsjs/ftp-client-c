#ifndef CONFIG_H_INCLUDED
#define CONFIG_H_INCLUDED

/*
 These values are automatically set according to their cmake variables.
*/

/* stdlib.h */
#cmakedefine HAVE_STDLIB_H 1
#cmakedefine HAVE_MALLOC 1
#cmakedefine HAVE_CALLOC 1
#cmakedefine HAVE_FREE 1
#cmakedefine HAVE_REALLOC 1

/* stdio.h */
#cmakedefine HAVE_STDIO_H 1
#cmakedefine HAVE_FPRINTF 1

/* stddef.h */
#cmakedefine HAVE_STDDEF_H 1
#cmakedefine HAVE_MAX_ALIGN_T 1

/* string.h */
#cmakedefine HAVE_STRING_H 1
#cmakedefine HAVE_MEMCPY 1
#cmakedefine HAVE_MEMSET 1
#cmakedefine HAVE_MEMMOVE 1

/* setjmp.h */
#cmakedefine HAVE_SETJMP_H 1
#cmakedefine HAVE_SETJMP 1
#cmakedefine HAVE_LONGJMP 1

/* malloc.h */
#cmakedefine HAVE_MALLOC_H 1

/* stdint.h */
#cmakedefine HAVE_STDINT_H 1
#cmakedefine HAVE_UINTPTR_T 1

/* stdalign.h */
#cmakedefine HAVE_STDALIGN_H 1
#cmakedefine HAVE_ALIGNOF 1

#endif /* CONFIG_H_INCLUDED */