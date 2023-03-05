/* Converted to D from prlink.h by htod */
module mozilla.xpcom.prlink;
/* -*- Mode: C++; tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 2 -*- */
/* ***** BEGIN LICENSE BLOCK *****
 * Version: MPL 1.1/GPL 2.0/LGPL 2.1
 *
 * The contents of this file are subject to the Mozilla Public License Version
 * 1.1 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 * http://www.mozilla.org/MPL/
 *
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
 * for the specific language governing rights and limitations under the
 * License.
 *
 * The Original Code is the Netscape Portable Runtime (NSPR).
 *
 * The Initial Developer of the Original Code is
 * Netscape Communications Corporation.
 * Portions created by the Initial Developer are Copyright (C) 1998-2000
 * the Initial Developer. All Rights Reserved.
 *
 * Contributor(s):
 *
 * Alternatively, the contents of this file may be used under the terms of
 * either the GNU General Public License Version 2 or later (the "GPL"), or
 * the GNU Lesser General Public License Version 2.1 or later (the "LGPL"),
 * in which case the provisions of the GPL or the LGPL are applicable instead
 * of those above. If you wish to allow use of your version of this file only
 * under the terms of either the GPL or the LGPL, and not to allow others to
 * use your version of this file under the terms of the MPL, indicate your
 * decision by deleting the provisions above and replace them with the notice
 * and other provisions required by the GPL or the LGPL. If you do not delete
 * the provisions above, a recipient may use your version of this file under
 * the terms of any one of the MPL, the GPL or the LGPL.
 *
 * ***** END LICENSE BLOCK ***** */

//C     #ifndef prlink_h___
//C     #define prlink_h___

/*
** API to static and dynamic linking.
*/
//C     #include "prtypes.h"
import mozilla.xpcom.prtypes;

//C     PR_BEGIN_EXTERN_C

//C     typedef struct PRLibrary PRLibrary;

//C     typedef struct PRStaticLinkTable {
//C         const char *name;
//C         void (*fp)();
//C     } PRStaticLinkTable;
struct PRStaticLinkTable
{
    char *name;
    void  function()fp;
}

/*
** Change the default library path to the given string. The string is
** copied. This call will fail if it runs out of memory.
**
** The string provided as 'path' is copied. The caller can do whatever is
** convenient with the argument when the function is complete.
*/
//C     NSPR_API(PRStatus) PR_SetLibraryPath(const char *path);
extern (Windows):
PRStatus  PR_SetLibraryPath(char *path);

/*
** Return a character string which contains the path used to search for
** dynamically loadable libraries.
**
** The returned value is basically a copy of a PR_SetLibraryPath().
** The storage is allocated by the runtime and becomes the responsibilty
** of the caller.
*/
//C     NSPR_API(char*) PR_GetLibraryPath(void);
char * PR_GetLibraryPath();

/*
** Given a directory name "dir" and a library name "lib" construct a full
** path name that will refer to the actual dynamically loaded
** library. This does not test for existance of said file, it just
** constructs the full filename. The name constructed is system dependent
** and prepared for PR_LoadLibrary. The result must be free'd when the
** caller is done with it.
**
** The storage for the result is allocated by the runtime and becomes the
** responsibility of the caller.
*/
//C     NSPR_API(char*) PR_GetLibraryName(const char *dir, const char *lib);
char * PR_GetLibraryName(char *dir, char *lib);

/*
**
** Free the memory allocated, for the caller, by PR_GetLibraryName
*/
//C     NSPR_API(void) PR_FreeLibraryName(char *mem);
void  PR_FreeLibraryName(char *mem);

/*
** Given a library "name" try to load the library. The argument "name"
** is a machine-dependent name for the library, such as the full pathname
** returned by PR_GetLibraryName.  If the library is already loaded,
** this function will avoid loading the library twice.
**
** If the library is loaded successfully, then a pointer to the PRLibrary
** structure representing the library is returned.  Otherwise, NULL is
** returned.
**
** This increments the reference count of the library.
*/
//C     NSPR_API(PRLibrary*) PR_LoadLibrary(const char *name);
alias void PRLibrary;
PRLibrary * PR_LoadLibrary(char *name);

/*
** Each operating system has its preferred way of specifying
** a file in the file system.  Most operating systems use
** a pathname.  Mac OS, on the other hand, uses the FSSpec
** structure to specify a file. PRLibSpec allows NSPR clients
** to use the type of file specification that is most efficient
** for a particular platform.
**
** On some operating systems such as Mac OS, a shared library may
** contain code fragments that can be individually loaded.
** PRLibSpec also allows NSPR clients to identify a code fragment
** in a library, if code fragments are supported by the OS.
** A code fragment can be specified by name or by an integer index.
**
** Right now PRLibSpec supports three types of library specification:
** a pathname, a Mac code fragment by name, and a Mac code fragment
** by index.
*/

//C     typedef enum PRLibSpecType {
//C         PR_LibSpec_Pathname,
//C         PR_LibSpec_MacNamedFragment,   /* obsolete (for Mac OS Classic) */
//C         PR_LibSpec_MacIndexedFragment  /* obsolete (for Mac OS Classic) */
//C     } PRLibSpecType;
enum PRLibSpecType
{
    PR_LibSpec_Pathname,
    PR_LibSpec_MacNamedFragment,
    PR_LibSpec_MacIndexedFragment,
}

//C     struct FSSpec; /* Mac OS FSSpec */

//C     typedef struct PRLibSpec {
//C         PRLibSpecType type;
//C         union {
        /* if type is PR_LibSpec_Pathname */
//C             const char *pathname;

        /* if type is PR_LibSpec_MacNamedFragment */
//C             struct {
//C                 const struct FSSpec *fsspec;
//C                 const char *name;
//C             } mac_named_fragment;      /* obsolete (for Mac OS Classic) */
alias void FSSpec;
struct _N3
{
    FSSpec *fsspec;
    char *name;
}

        /* if type is PR_LibSpec_MacIndexedFragment */
//C             struct {
//C                 const struct FSSpec *fsspec;
//C                 PRUint32 index;
//C             } mac_indexed_fragment;    /* obsolete (for Mac OS Classic) */
struct _N4
{
    FSSpec *fsspec;
    PRUint32 index;
}
//C         } value;
union _N2
{
    char *pathname;
    struct _N3
    {
        FSSpec *fsspec;
        char *name;
    }
    _N3 mac_named_fragment;
    struct _N4
    {
        FSSpec *fsspec;
        PRUint32 index;
    }
    _N4 mac_indexed_fragment;
}
//C     } PRLibSpec;
struct PRLibSpec
{
    int type;
    union _N2
    {
        char *pathname;
        struct _N3
        {
            FSSpec *fsspec;
            char *name;
        }
        _N3 mac_named_fragment;
        struct _N4
        {
            FSSpec *fsspec;
            PRUint32 index;
        }
        _N4 mac_indexed_fragment;
    }
    _N2 value;
}

/*
** The following bit flags may be or'd together and passed
** as the 'flags' argument to PR_LoadLibraryWithFlags.
** Flags not supported by the underlying OS are ignored.
*/

//C     #define PR_LD_LAZY   0x1  /* equivalent to RTLD_LAZY on Unix */
//C     #define PR_LD_NOW    0x2  /* equivalent to RTLD_NOW on Unix */
const PR_LD_LAZY = 0x1;
//C     #define PR_LD_GLOBAL 0x4  /* equivalent to RTLD_GLOBAL on Unix */
const PR_LD_NOW = 0x2;
//C     #define PR_LD_LOCAL  0x8  /* equivalent to RTLD_LOCAL on Unix */
const PR_LD_GLOBAL = 0x4;

const PR_LD_LOCAL = 0x8;
/*
** Load the specified library, in the manner specified by 'flags'.
*/

//C     NSPR_API(PRLibrary *)
//C     PR_LoadLibraryWithFlags(
//C         PRLibSpec libSpec,    /* the shared library */
//C         PRIntn flags          /* flags that affect the loading */
//C     );
PRLibrary * PR_LoadLibraryWithFlags(PRLibSpec libSpec, PRIntn flags);

/*
** Unload a previously loaded library. If the library was a static
** library then the static link table will no longer be referenced. The
** associated PRLibrary object is freed.
**
** PR_FAILURE is returned if the library cannot be unloaded.
**
** This function decrements the reference count of the library.
*/
//C     NSPR_API(PRStatus) PR_UnloadLibrary(PRLibrary *lib);
PRStatus  PR_UnloadLibrary(PRLibrary *lib);

/*
** Given the name of a procedure, return the address of the function that
** implements the procedure, or NULL if no such function can be
** found. This does not find symbols in the main program (the ".exe");
** use PR_LoadStaticLibrary to register symbols in the main program.
**
** This function does not modify the reference count of the library.
*/
//C     NSPR_API(void*) PR_FindSymbol(PRLibrary *lib, const char *name);
void * PR_FindSymbol(PRLibrary *lib, char *name);

/*
** Similar to PR_FindSymbol, except that the return value is a pointer to
** a function, and not a pointer to void. Casting between a data pointer
** and a function pointer is not portable according to the C standard.
** Any function pointer can be cast to any other function pointer.
**
** This function does not modify the reference count of the library.
*/
//C     typedef void (*PRFuncPtr)();
alias void  function()PRFuncPtr;
//C     NSPR_API(PRFuncPtr) PR_FindFunctionSymbol(PRLibrary *lib, const char *name);
PRFuncPtr  PR_FindFunctionSymbol(PRLibrary *lib, char *name);

/*
** Finds a symbol in one of the currently loaded libraries. Given the
** name of a procedure, return the address of the function that
** implements the procedure, and return the library that contains that
** symbol, or NULL if no such function can be found. This does not find
** symbols in the main program (the ".exe"); use PR_AddStaticLibrary to
** register symbols in the main program.  
**
** This increments the reference count of the library.
*/
//C     NSPR_API(void*) PR_FindSymbolAndLibrary(const char *name,
//C     						      PRLibrary* *lib);
void * PR_FindSymbolAndLibrary(char *name, PRLibrary **lib);

/*
** Similar to PR_FindSymbolAndLibrary, except that the return value is
** a pointer to a function, and not a pointer to void. Casting between a
** data pointer and a function pointer is not portable according to the C
** standard. Any function pointer can be cast to any other function pointer.
**
** This increments the reference count of the library.
*/
//C     NSPR_API(PRFuncPtr) PR_FindFunctionSymbolAndLibrary(const char *name,
//C     						      PRLibrary* *lib);
PRFuncPtr  PR_FindFunctionSymbolAndLibrary(char *name, PRLibrary **lib);

/*
** Register a static link table with the runtime under the name
** "name". The symbols present in the static link table will be made
** available to PR_FindSymbol. If "name" is null then the symbols will be
** made available to the library which represents the executable. The
** tables are not copied.
**
** Returns the library object if successful, null otherwise.
**
** This increments the reference count of the library.
*/
//C     NSPR_API(PRLibrary*) PR_LoadStaticLibrary(
//C         const char *name, const PRStaticLinkTable *table);
PRLibrary * PR_LoadStaticLibrary(char *name, PRStaticLinkTable *table);

/*
** Return the pathname of the file that the library "name" was loaded
** from. "addr" is the address of a function defined in the library.
**
** The caller is responsible for freeing the result with PR_Free.
*/
//C     NSPR_API(char *) PR_GetLibraryFilePathname(const char *name, PRFuncPtr addr);
char * PR_GetLibraryFilePathname(char *name, PRFuncPtr addr);

//C     PR_END_EXTERN_C

//C     #endif /* prlink_h___ */
