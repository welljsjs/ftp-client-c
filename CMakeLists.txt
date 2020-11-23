cmake_minimum_required(VERSION 3.13)
project(libftp VERSION 0.1.0
				DESCRIPTION "FTP Client Library written in C"
				HOMEPAGE_URL "https://github.com/welljsjs/ftp-client-c"
				LANGUAGES C)

# include(CTest)
# enable_testing()

############################################################
# Create a library
############################################################

# Generate static library from library sources
add_library (mem STATIC
	# src/arena.c
	# src/assert.c
	# src/except.c
	# src/mem.c
	# src/memchk.c
)

target_include_directories (mem PUBLIC 
	${PROJECT_SOURCE_DIR}/include
)

set_target_properties (mem PROPERTIES 
	C_STANDARD 11
	C_EXTENSIONS OFF
	C_STANDARD_REQUIRED ON
)

target_compile_options (mem PUBLIC
  $<$<C_COMPILER_ID:MSVC>:/W4 /WX>
  $<$<NOT:$<C_COMPILER_ID:MSVC>>:-Wall -Wextra -pedantic-errors -Wmissing-prototypes -Wformat-security -Wswitch-enum>
)

include (CheckIncludeFiles)
include (CheckSymbolExists)
include (CheckTypeSize)

CHECK_INCLUDE_FILES (stdlib.h HAVE_STDLIB_H)
CHECK_SYMBOL_EXISTS (malloc stdlib.h HAVE_MALLOC)
CHECK_SYMBOL_EXISTS (calloc stdlib.h HAVE_CALLOC)
CHECK_SYMBOL_EXISTS (free stdlib.h HAVE_FREE)
CHECK_SYMBOL_EXISTS (realloc stdlib.h HAVE_REALLOC)

CHECK_INCLUDE_FILES (stdio.h HAVE_STDIO_H)
CHECK_SYMBOL_EXISTS (fprintf stdio.h HAVE_FPRINTF)

CHECK_INCLUDE_FILES (stddef.h HAVE_STDDEF_H)
CHECK_TYPE_SIZE (max_align_t MAX_ALIGN_T)

CHECK_INCLUDE_FILES (string.h HAVE_STRING_H)
CHECK_SYMBOL_EXISTS (memcpy string.h HAVE_MEMCPY)
CHECK_SYMBOL_EXISTS (memset string.h HAVE_MEMSET)
CHECK_SYMBOL_EXISTS (memmove string.h HAVE_MEMMOVE)

CHECK_INCLUDE_FILES (setjmp.h HAVE_SETJMP_H)
CHECK_SYMBOL_EXISTS (setjmp setjmp.h HAVE_SETJMP)
CHECK_SYMBOL_EXISTS (longjmp setjmp.h HAVE_LONGJMP)

CHECK_INCLUDE_FILES (malloc.h HAVE_MALLOC_H)

CHECK_INCLUDE_FILES (stdint.h HAVE_STDINT_H)
CHECK_TYPE_SIZE (uintptr_t UINTPTR_T)

CHECK_INCLUDE_FILES (stdalign.h HAVE_STDALIGN_H)
CHECK_SYMBOL_EXISTS (alignof stdalign.h HAVE_ALIGNOF)

configure_file (${CMAKE_CURRENT_SOURCE_DIR}/config.h.cmake ${CMAKE_CURRENT_SOURCE_DIR}/include/config.h ESCAPE_QUOTES)

set (CPACK_PROJECT_NAME ${PROJECT_NAME})
set (CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include (CPack)
