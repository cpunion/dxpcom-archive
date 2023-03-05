/* Converted to D from prtypes.h by htod */
module mozilla.xpcom.prtypes;
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

/*
** File:                prtypes.h
** Description: Definitions of NSPR's basic types
**
** Prototypes and macros used to make up for deficiencies that we have found
** in ANSI environments.
**
** Since we do not wrap <stdlib.h> and all the other standard headers, authors
** of portable code will not know in general that they need these definitions.
** Instead of requiring these authors to find the dependent uses in their code
** and take the following steps only in those C files, we take steps once here
** for all C files.
**/

//C     #ifndef prtypes_h___
//C     #define prtypes_h___

//C     #ifdef MDCPUCFG
//C     #include MDCPUCFG
//C     #else
//C     #include "prcpucfg.h"
import mozilla.xpcom.prcpucfg;
//C     #endif

//C     #include <stddef.h>
import std.c.stddef;

/***********************************************************************
** MACROS:      PR_EXTERN
**              PR_IMPLEMENT
** DESCRIPTION:
**      These are only for externally visible routines and globals.  For
**      internal routines, just use "extern" for type checking and that
**      will not export internal cross-file or forward-declared symbols.
**      Define a macro for declaring procedures return types. We use this to
**      deal with windoze specific type hackery for DLL definitions. Use
**      PR_EXTERN when the prototype for the method is declared. Use
**      PR_IMPLEMENT for the implementation of the method.
**
** Example:
**   in dowhim.h
**     PR_EXTERN( void ) DoWhatIMean( void );
**   in dowhim.c
**     PR_IMPLEMENT( void ) DoWhatIMean( void ) { return; }
**
**
***********************************************************************/
//C     #if defined(WIN32)

//C     #define PR_EXPORT(__type) extern __declspec(dllexport) __type
//C     #define PR_EXPORT_DATA(__type) extern __declspec(dllexport) __type
//C     #define PR_IMPORT(__type) __declspec(dllimport) __type
//C     #define PR_IMPORT_DATA(__type) __declspec(dllimport) __type

//C     #define PR_EXTERN(__type) extern __declspec(dllexport) __type
//C     #define PR_IMPLEMENT(__type) __declspec(dllexport) __type
//C     #define PR_EXTERN_DATA(__type) extern __declspec(dllexport) __type
//C     #define PR_IMPLEMENT_DATA(__type) __declspec(dllexport) __type

//C     #define PR_CALLBACK
//C     #define PR_CALLBACK_DECL
//C     #define PR_STATIC_CALLBACK(__x) static __x

//C     #elif defined(XP_BEOS)

//C     #define PR_EXPORT(__type) extern __declspec(dllexport) __type
//C     #define PR_EXPORT_DATA(__type) extern __declspec(dllexport) __type
//C     #define PR_IMPORT(__type) extern __declspec(dllexport) __type
//C     #define PR_IMPORT_DATA(__type) extern __declspec(dllexport) __type

//C     #define PR_EXTERN(__type) extern __declspec(dllexport) __type
//C     #define PR_IMPLEMENT(__type) __declspec(dllexport) __type
//C     #define PR_EXTERN_DATA(__type) extern __declspec(dllexport) __type
//C     #define PR_IMPLEMENT_DATA(__type) __declspec(dllexport) __type

//C     #define PR_CALLBACK
//C     #define PR_CALLBACK_DECL
//C     #define PR_STATIC_CALLBACK(__x) static __x

//C     #elif defined(WIN16)

//C     #define PR_CALLBACK_DECL        __cdecl

//C     #if defined(_WINDLL)
//C     #define PR_EXPORT(__type) extern __type _cdecl _export _loadds
//C     #define PR_IMPORT(__type) extern __type _cdecl _export _loadds
//C     #define PR_EXPORT_DATA(__type) extern __type _export
//C     #define PR_IMPORT_DATA(__type) extern __type _export

//C     #define PR_EXTERN(__type) extern __type _cdecl _export _loadds
//C     #define PR_IMPLEMENT(__type) __type _cdecl _export _loadds
//C     #define PR_EXTERN_DATA(__type) extern __type _export
//C     #define PR_IMPLEMENT_DATA(__type) __type _export

//C     #define PR_CALLBACK             __cdecl __loadds
//C     #define PR_STATIC_CALLBACK(__x) static __x PR_CALLBACK

//C     #else /* this must be .EXE */
//C     #define PR_EXPORT(__type) extern __type _cdecl _export
//C     #define PR_IMPORT(__type) extern __type _cdecl _export
//C     #define PR_EXPORT_DATA(__type) extern __type _export
//C     #define PR_IMPORT_DATA(__type) extern __type _export

//C     #define PR_EXTERN(__type) extern __type _cdecl _export
//C     #define PR_IMPLEMENT(__type) __type _cdecl _export
//C     #define PR_EXTERN_DATA(__type) extern __type _export
//C     #define PR_IMPLEMENT_DATA(__type) __type _export

//C     #define PR_CALLBACK             __cdecl __loadds
//C     #define PR_STATIC_CALLBACK(__x) __x PR_CALLBACK
//C     #endif /* _WINDLL */

//C     #elif defined(XP_MAC)

//C     #define PR_EXPORT(__type) extern __declspec(export) __type
//C     #define PR_EXPORT_DATA(__type) extern __declspec(export) __type
//C     #define PR_IMPORT(__type) extern __declspec(export) __type
//C     #define PR_IMPORT_DATA(__type) extern __declspec(export) __type

//C     #define PR_EXTERN(__type) extern __declspec(export) __type
//C     #define PR_IMPLEMENT(__type) __declspec(export) __type
//C     #define PR_EXTERN_DATA(__type) extern __declspec(export) __type
//C     #define PR_IMPLEMENT_DATA(__type) __declspec(export) __type

//C     #define PR_CALLBACK
//C     #define PR_CALLBACK_DECL
//C     #define PR_STATIC_CALLBACK(__x) static __x

//C     #elif defined(XP_OS2_VACPP) 

//C     #define PR_EXPORT(__type) extern __type
//C     #define PR_EXPORT_DATA(__type) extern __type
//C     #define PR_IMPORT(__type) extern __type
//C     #define PR_IMPORT_DATA(__type) extern __type

//C     #define PR_EXTERN(__type) extern __type
//C     #define PR_IMPLEMENT(__type) __type
//C     #define PR_EXTERN_DATA(__type) extern __type
//C     #define PR_IMPLEMENT_DATA(__type) __type
//C     #define PR_CALLBACK _Optlink
//C     #define PR_CALLBACK_DECL
//C     #define PR_STATIC_CALLBACK(__x) static __x PR_CALLBACK

//C     #else /* Unix */

//C     #ifdef HAVE_VISIBILITY_PRAGMA
//C     #define PR_VISIBILITY_DEFAULT __attribute__((visibility("default")))
//C     #else
//C     #define PR_VISIBILITY_DEFAULT
//C     #endif

//C     #define PR_EXPORT(__type) extern PR_VISIBILITY_DEFAULT __type
//C     #define PR_EXPORT_DATA(__type) extern PR_VISIBILITY_DEFAULT __type
//C     #define PR_IMPORT(__type) extern PR_VISIBILITY_DEFAULT __type
//C     #define PR_IMPORT_DATA(__type) extern PR_VISIBILITY_DEFAULT __type

//C     #define PR_EXTERN(__type) extern PR_VISIBILITY_DEFAULT __type
//C     #define PR_IMPLEMENT(__type) PR_VISIBILITY_DEFAULT __type
//C     #define PR_EXTERN_DATA(__type) extern PR_VISIBILITY_DEFAULT __type
//C     #define PR_IMPLEMENT_DATA(__type) PR_VISIBILITY_DEFAULT __type
//C     #define PR_CALLBACK
//C     #define PR_CALLBACK_DECL
//C     #define PR_STATIC_CALLBACK(__x) static __x

//C     #endif

//C     #if defined(_NSPR_BUILD_)
//C     #define NSPR_API(__type) PR_EXPORT(__type)
//C     #define NSPR_DATA_API(__type) PR_EXPORT_DATA(__type)
//C     #else
//C     #define NSPR_API(__type) PR_IMPORT(__type)
//C     #define NSPR_DATA_API(__type) PR_IMPORT_DATA(__type)
//C     #endif

/***********************************************************************
** MACROS:      PR_BEGIN_MACRO
**              PR_END_MACRO
** DESCRIPTION:
**      Macro body brackets so that macros with compound statement definitions
**      behave syntactically more like functions when called.
***********************************************************************/
//C     #define PR_BEGIN_MACRO  do {
//C     #define PR_END_MACRO    } while (0)

/***********************************************************************
** MACROS:      PR_BEGIN_EXTERN_C
**              PR_END_EXTERN_C
** DESCRIPTION:
**      Macro shorthands for conditional C++ extern block delimiters.
***********************************************************************/
//C     #ifdef __cplusplus
//C     #define PR_BEGIN_EXTERN_C       extern "C" {
//C     #define PR_END_EXTERN_C         }
//C     #else
//C     #define PR_BEGIN_EXTERN_C
//C     #define PR_END_EXTERN_C
//C     #endif

/***********************************************************************
** MACROS:      PR_BIT
**              PR_BITMASK
** DESCRIPTION:
** Bit masking macros.  XXX n must be <= 31 to be portable
***********************************************************************/
//C     #define PR_BIT(n)       ((PRUint32)1 << (n))
//C     #define PR_BITMASK(n)   (PR_BIT(n) - 1)

/***********************************************************************
** MACROS:      PR_ROUNDUP
**              PR_MIN
**              PR_MAX
**              PR_ABS
** DESCRIPTION:
**      Commonly used macros for operations on compatible types.
***********************************************************************/
//C     #define PR_ROUNDUP(x,y) ((((x)+((y)-1))/(y))*(y))
//C     #define PR_MIN(x,y)     ((x)<(y)?(x):(y))
//C     #define PR_MAX(x,y)     ((x)>(y)?(x):(y))
//C     #define PR_ABS(x)       ((x)<0?-(x):(x))

//C     PR_BEGIN_EXTERN_C

/************************************************************************
** TYPES:       PRUint8
**              PRInt8
** DESCRIPTION:
**  The int8 types are known to be 8 bits each. There is no type that
**      is equivalent to a plain "char". 
************************************************************************/
//C     #if PR_BYTES_PER_BYTE == 1
//C     typedef unsigned char PRUint8;
extern (Windows):
alias ubyte PRUint8;
/*
** Some cfront-based C++ compilers do not like 'signed char' and
** issue the warning message:
**     warning: "signed" not implemented (ignored)
** For these compilers, we have to define PRInt8 as plain 'char'.
** Make sure that plain 'char' is indeed signed under these compilers.
*/
//C     #if (defined(HPUX) && defined(__cplusplus)         && !defined(__GNUC__) && __cplusplus < 199707L)     || (defined(SCO) && defined(__cplusplus)         && !defined(__GNUC__) && __cplusplus == 1L)
//C     typedef char PRInt8;
//C     #else
//C     typedef signed char PRInt8;
alias byte PRInt8;
//C     #endif
//C     #else
//C     #error No suitable type for PRInt8/PRUint8
//C     #endif

/************************************************************************
 * MACROS:      PR_INT8_MAX
 *              PR_INT8_MIN
 *              PR_UINT8_MAX
 * DESCRIPTION:
 *  The maximum and minimum values of a PRInt8 or PRUint8.
************************************************************************/

//C     #define PR_INT8_MAX 127
//C     #define PR_INT8_MIN (-128)
const PR_INT8_MAX = 127;
//C     #define PR_UINT8_MAX 255U

const PR_UINT8_MAX = 255U;
/************************************************************************
** TYPES:       PRUint16
**              PRInt16
** DESCRIPTION:
**  The int16 types are known to be 16 bits each. 
************************************************************************/
//C     #if PR_BYTES_PER_SHORT == 2
//C     typedef unsigned short PRUint16;
alias ushort PRUint16;
//C     typedef short PRInt16;
alias short PRInt16;
//C     #else
//C     #error No suitable type for PRInt16/PRUint16
//C     #endif

/************************************************************************
 * MACROS:      PR_INT16_MAX
 *              PR_INT16_MIN
 *              PR_UINT16_MAX
 * DESCRIPTION:
 *  The maximum and minimum values of a PRInt16 or PRUint16.
************************************************************************/

//C     #define PR_INT16_MAX 32767
//C     #define PR_INT16_MIN (-32768)
const PR_INT16_MAX = 32767;
//C     #define PR_UINT16_MAX 65535U

const PR_UINT16_MAX = 65535U;
/************************************************************************
** TYPES:       PRUint32
**              PRInt32
** DESCRIPTION:
**  The int32 types are known to be 32 bits each. 
************************************************************************/
//C     #if PR_BYTES_PER_INT == 4
//C     typedef unsigned int PRUint32;
alias uint PRUint32;
//C     typedef int PRInt32;
alias int PRInt32;
//C     #define PR_INT32(x)  x
//C     #define PR_UINT32(x) x ## U
//C     #elif PR_BYTES_PER_LONG == 4
//C     typedef unsigned long PRUint32;
//C     typedef long PRInt32;
//C     #define PR_INT32(x)  x ## L
//C     #define PR_UINT32(x) x ## UL
//C     #else
//C     #error No suitable type for PRInt32/PRUint32
//C     #endif

/************************************************************************
 * MACROS:      PR_INT32_MAX
 *              PR_INT32_MIN
 *              PR_UINT32_MAX
 * DESCRIPTION:
 *  The maximum and minimum values of a PRInt32 or PRUint32.
************************************************************************/

//C     #define PR_INT32_MAX PR_INT32(2147483647)
//C     #define PR_INT32_MIN (-PR_INT32_MAX - 1)
//C     #define PR_UINT32_MAX PR_UINT32(4294967295)

/************************************************************************
** TYPES:       PRUint64
**              PRInt64
** DESCRIPTION:
**  The int64 types are known to be 64 bits each. Care must be used when
**      declaring variables of type PRUint64 or PRInt64. Different hardware
**      architectures and even different compilers have varying support for
**      64 bit values. The only guaranteed portability requires the use of
**      the LL_ macros (see prlong.h).
************************************************************************/
//C     #ifdef HAVE_LONG_LONG
//C     #if PR_BYTES_PER_LONG == 8
//C     typedef long PRInt64;
//C     typedef unsigned long PRUint64;
//C     #elif defined(WIN16)
//C     typedef __int64 PRInt64;
//C     typedef unsigned __int64 PRUint64;
//C     #elif defined(WIN32) && !defined(__GNUC__)
//C     typedef __int64  PRInt64;
alias long PRInt64;
//C     typedef unsigned __int64 PRUint64;
alias ulong PRUint64;
//C     #else
//C     typedef long long PRInt64;
//C     typedef unsigned long long PRUint64;
//C     #endif /* PR_BYTES_PER_LONG == 8 */
//C     #else  /* !HAVE_LONG_LONG */
//C     typedef struct {
//C     #ifdef IS_LITTLE_ENDIAN
//C         PRUint32 lo, hi;
//C     #else
//C         PRUint32 hi, lo;
//C     #endif
//C     } PRInt64;
//C     typedef PRInt64 PRUint64;
//C     #endif /* !HAVE_LONG_LONG */

/************************************************************************
** TYPES:       PRUintn
**              PRIntn
** DESCRIPTION:
**  The PRIntn types are most appropriate for automatic variables. They are
**      guaranteed to be at least 16 bits, though various architectures may
**      define them to be wider (e.g., 32 or even 64 bits). These types are
**      never valid for fields of a structure. 
************************************************************************/
//C     #if PR_BYTES_PER_INT >= 2
//C     typedef int PRIntn;
alias int PRIntn;
//C     typedef unsigned int PRUintn;
alias uint PRUintn;
//C     #else
//C     #error 'sizeof(int)' not sufficient for platform use
//C     #endif

/************************************************************************
** TYPES:       PRFloat64
** DESCRIPTION:
**  NSPR's floating point type is always 64 bits. 
************************************************************************/
//C     typedef double          PRFloat64;
alias double PRFloat64;

/************************************************************************
** TYPES:       PRSize
** DESCRIPTION:
**  A type for representing the size of objects. 
************************************************************************/
//C     typedef size_t PRSize;
alias size_t PRSize;


/************************************************************************
** TYPES:       PROffset32, PROffset64
** DESCRIPTION:
**  A type for representing byte offsets from some location. 
************************************************************************/
//C     typedef PRInt32 PROffset32;
alias PRInt32 PROffset32;
//C     typedef PRInt64 PROffset64;
alias PRInt64 PROffset64;

/************************************************************************
** TYPES:       PRPtrDiff
** DESCRIPTION:
**  A type for pointer difference. Variables of this type are suitable
**      for storing a pointer or pointer subtraction. 
************************************************************************/
//C     typedef ptrdiff_t PRPtrdiff;
alias ptrdiff_t PRPtrdiff;

/************************************************************************
** TYPES:       PRUptrdiff
** DESCRIPTION:
**  A type for pointer difference. Variables of this type are suitable
**      for storing a pointer or pointer sutraction. 
************************************************************************/
//C     typedef unsigned long PRUptrdiff;
alias uint PRUptrdiff;

/************************************************************************
** TYPES:       PRBool
** DESCRIPTION:
**  Use PRBool for variables and parameter types. Use PR_FALSE and PR_TRUE
**      for clarity of target type in assignments and actual arguments. Use
**      'if (bool)', 'while (!bool)', '(bool) ? x : y' etc., to test booleans
**      just as you would C int-valued conditions. 
************************************************************************/
//C     typedef PRIntn PRBool;
alias PRIntn PRBool;
//C     #define PR_TRUE 1
//C     #define PR_FALSE 0
const PR_TRUE = 1;

const PR_FALSE = 0;
/************************************************************************
** TYPES:       PRPackedBool
** DESCRIPTION:
**  Use PRPackedBool within structs where bitfields are not desirable
**      but minimum and consistant overhead matters.
************************************************************************/
//C     typedef PRUint8 PRPackedBool;
alias PRUint8 PRPackedBool;

/*
** Status code used by some routines that have a single point of failure or 
** special status return.
*/
//C     typedef enum { PR_FAILURE = -1, PR_SUCCESS = 0 } PRStatus;
enum
{
    PR_FAILURE = -1,
    PR_SUCCESS,
}
alias int PRStatus;

//C     #ifdef MOZ_UNICODE
/*
 * EXPERIMENTAL: This type may be removed in a future release.
 */
//C     #ifndef __PRUNICHAR__
//C     #define __PRUNICHAR__
//C     #if defined(WIN32) || defined(XP_MAC)
//C     typedef wchar_t PRUnichar;
//C     #else
//C     typedef PRUint16 PRUnichar;
//C     #endif
//C     #endif
//C     #endif /* MOZ_UNICODE */
alias wchar PRUnichar;

/*
** WARNING: The undocumented data types PRWord and PRUword are
** only used in the garbage collection and arena code.  Do not
** use PRWord and PRUword in new code.
**
** A PRWord is an integer that is the same size as a void*.
** It implements the notion of a "word" in the Java Virtual
** Machine.  (See Sec. 3.4 "Words", The Java Virtual Machine
** Specification, Addison-Wesley, September 1996.
** http://java.sun.com/docs/books/vmspec/index.html.)
*/
//C     typedef long PRWord;
alias int PRWord;
//C     typedef unsigned long PRUword;
alias uint PRUword;

//C     #if defined(NO_NSPR_10_SUPPORT)
//C     #else
/********* ???????????????? FIX ME       ??????????????????????????? *****/
/********************** Some old definitions until pr=>ds transition is done ***/
/********************** Also, we are still using NSPR 1.0. GC ******************/
/*
** Fundamental NSPR macros, used nearly everywhere.
*/

//C     #define PR_PUBLIC_API		PR_IMPLEMENT

//alias PR_IMPLEMENT PR_PUBLIC_API;
/*
** Macro body brackets so that macros with compound statement definitions
** behave syntactically more like functions when called.
*/
//C     #define NSPR_BEGIN_MACRO        do {
//C     #define NSPR_END_MACRO          } while (0)

/*
** Macro shorthands for conditional C++ extern block delimiters.
*/
//C     #ifdef NSPR_BEGIN_EXTERN_C
//C     #undef NSPR_BEGIN_EXTERN_C
//C     #endif
//C     #ifdef NSPR_END_EXTERN_C
//C     #undef NSPR_END_EXTERN_C
//C     #endif

//C     #ifdef __cplusplus
//C     #define NSPR_BEGIN_EXTERN_C     extern "C" {
//C     #define NSPR_END_EXTERN_C       }
//C     #else
//C     #define NSPR_BEGIN_EXTERN_C
//C     #define NSPR_END_EXTERN_C
//C     #endif

//C     #ifdef XP_MAC
//C     #include "protypes.h"
//C     #else
//C     #include "obsolete/protypes.h"
import mozilla.xpcom.obsolete.protypes;
//C     #endif

/********* ????????????? End Fix me ?????????????????????????????? *****/
//C     #endif /* NO_NSPR_10_SUPPORT */

//C     PR_END_EXTERN_C

//C     #endif /* prtypes_h___ */

