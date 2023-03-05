/* Converted to D from prcpucfg.h by htod */
module mozilla.xpcom.prcpucfg;
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

//C     #ifndef nspr_cpucfg___
//C     #define nspr_cpucfg___

//C     #ifndef XP_PC
//C     #define XP_PC
//C     #endif

//C     #ifndef WIN32
//C     #define WIN32
//C     #endif

//C     #ifndef WIN95
//C     #define WIN95
//C     #endif

//C     #define PR_AF_INET6 23  /* same as AF_INET6 */

const PR_AF_INET6 = 23;
//C     #if defined(_M_IX86) || defined(_X86_)

//C     #define IS_LITTLE_ENDIAN 1
//C     #undef  IS_BIG_ENDIAN
const IS_LITTLE_ENDIAN = 1;

//C     #define PR_BYTES_PER_BYTE   1
//C     #define PR_BYTES_PER_SHORT  2
const PR_BYTES_PER_BYTE = 1;
//C     #define PR_BYTES_PER_INT    4
const PR_BYTES_PER_SHORT = 2;
//C     #define PR_BYTES_PER_INT64  8
const PR_BYTES_PER_INT = 4;
//C     #define PR_BYTES_PER_LONG   4
const PR_BYTES_PER_INT64 = 8;
//C     #define PR_BYTES_PER_FLOAT  4
const PR_BYTES_PER_LONG = 4;
//C     #define PR_BYTES_PER_WORD	4
const PR_BYTES_PER_FLOAT = 4;
//C     #define PR_BYTES_PER_DWORD	8
const PR_BYTES_PER_WORD = 4;
//C     #define PR_BYTES_PER_DOUBLE 8
const PR_BYTES_PER_DWORD = 8;

const PR_BYTES_PER_DOUBLE = 8;
//C     #define PR_BITS_PER_BYTE    8
//C     #define PR_BITS_PER_SHORT   16
const PR_BITS_PER_BYTE = 8;
//C     #define PR_BITS_PER_INT     32
const PR_BITS_PER_SHORT = 16;
//C     #define PR_BITS_PER_INT64   64
const PR_BITS_PER_INT = 32;
//C     #define PR_BITS_PER_LONG    32
const PR_BITS_PER_INT64 = 64;
//C     #define PR_BITS_PER_FLOAT   32
const PR_BITS_PER_LONG = 32;
//C     #define PR_BITS_PER_WORD	32
const PR_BITS_PER_FLOAT = 32;
//C     #define PR_BITS_PER_DWORD	64
const PR_BITS_PER_WORD = 32;
//C     #define PR_BITS_PER_DOUBLE  64
const PR_BITS_PER_DWORD = 64;

const PR_BITS_PER_DOUBLE = 64;
//C     #define PR_BITS_PER_BYTE_LOG2   3
//C     #define PR_BITS_PER_SHORT_LOG2  4
const PR_BITS_PER_BYTE_LOG2 = 3;
//C     #define PR_BITS_PER_INT_LOG2    5
const PR_BITS_PER_SHORT_LOG2 = 4;
//C     #define PR_BITS_PER_INT64_LOG2  6
const PR_BITS_PER_INT_LOG2 = 5;
//C     #define PR_BITS_PER_LONG_LOG2   5
const PR_BITS_PER_INT64_LOG2 = 6;
//C     #define PR_BITS_PER_FLOAT_LOG2  5
const PR_BITS_PER_LONG_LOG2 = 5;
//C     #define PR_BITS_PER_WORD_LOG2	5
const PR_BITS_PER_FLOAT_LOG2 = 5;
//C     #define PR_BITS_PER_DWORD_LOG2	6
const PR_BITS_PER_WORD_LOG2 = 5;
//C     #define PR_BITS_PER_DOUBLE_LOG2 6
const PR_BITS_PER_DWORD_LOG2 = 6;

const PR_BITS_PER_DOUBLE_LOG2 = 6;
//C     #define PR_ALIGN_OF_SHORT   2
//C     #define PR_ALIGN_OF_INT     4
const PR_ALIGN_OF_SHORT = 2;
//C     #define PR_ALIGN_OF_LONG    4
const PR_ALIGN_OF_INT = 4;
//C     #define PR_ALIGN_OF_INT64   8
const PR_ALIGN_OF_LONG = 4;
//C     #define PR_ALIGN_OF_FLOAT   4
const PR_ALIGN_OF_INT64 = 8;
//C     #define PR_ALIGN_OF_WORD	4
const PR_ALIGN_OF_FLOAT = 4;
//C     #define PR_ALIGN_OF_DWORD	8
const PR_ALIGN_OF_WORD = 4;
//C     #define PR_ALIGN_OF_DOUBLE  4
const PR_ALIGN_OF_DWORD = 8;
//C     #define PR_ALIGN_OF_POINTER 4
const PR_ALIGN_OF_DOUBLE = 4;

const PR_ALIGN_OF_POINTER = 4;
//C     #define PR_BYTES_PER_WORD_LOG2	2
//C     #define PR_BYTES_PER_DWORD_LOG2	2
const PR_BYTES_PER_WORD_LOG2 = 2;

const PR_BYTES_PER_DWORD_LOG2 = 2;
//C     #elif defined(_ALPHA_)

//C     #define IS_LITTLE_ENDIAN 1
//C     #undef  IS_BIG_ENDIAN

//C     #define PR_BYTES_PER_BYTE   1
//C     #define PR_BYTES_PER_SHORT  2
//C     #define PR_BYTES_PER_INT    4
//C     #define PR_BYTES_PER_INT64  8
//C     #define PR_BYTES_PER_LONG   4
//C     #define PR_BYTES_PER_FLOAT  4
//C     #define PR_BYTES_PER_DOUBLE 8
//C     #define PR_BYTES_PER_WORD   4
//C     #define PR_BYTES_PER_DWORD  8

//C     #define PR_BITS_PER_BYTE    8
//C     #define PR_BITS_PER_SHORT   16
//C     #define PR_BITS_PER_INT     32
//C     #define PR_BITS_PER_INT64   64
//C     #define PR_BITS_PER_LONG    32
//C     #define PR_BITS_PER_FLOAT   32
//C     #define PR_BITS_PER_DOUBLE  64
//C     #define PR_BITS_PER_WORD    32

//C     #define PR_BITS_PER_BYTE_LOG2   3
//C     #define PR_BITS_PER_SHORT_LOG2  4
//C     #define PR_BITS_PER_INT_LOG2    5
//C     #define PR_BITS_PER_INT64_LOG2  6
//C     #define PR_BITS_PER_LONG_LOG2   5
//C     #define PR_BITS_PER_FLOAT_LOG2  5
//C     #define PR_BITS_PER_DOUBLE_LOG2 6
//C     #define PR_BITS_PER_WORD_LOG2   5

//C     #define PR_BYTES_PER_WORD_LOG2  2
//C     #define PR_BYTES_PER_DWORD_LOG2 3

//C     #define PR_ALIGN_OF_SHORT   2
//C     #define PR_ALIGN_OF_INT     4
//C     #define PR_ALIGN_OF_LONG    4
//C     #define PR_ALIGN_OF_INT64   8
//C     #define PR_ALIGN_OF_FLOAT   4
//C     #define PR_ALIGN_OF_DOUBLE  8
//C     #define PR_ALIGN_OF_POINTER 4

//C     #else /* defined(_M_IX86) || defined(_X86_) */

//C     #error unknown processor architecture

//C     #endif /* defined(_M_IX86) || defined(_X86_) */

//C     #define HAVE_LONG_LONG

//C     #ifndef NO_NSPR_10_SUPPORT

//C     #define BYTES_PER_BYTE      PR_BYTES_PER_BYTE
//C     #define BYTES_PER_SHORT     PR_BYTES_PER_SHORT
alias PR_BYTES_PER_BYTE BYTES_PER_BYTE;
//C     #define BYTES_PER_INT       PR_BYTES_PER_INT
alias PR_BYTES_PER_SHORT BYTES_PER_SHORT;
//C     #define BYTES_PER_INT64     PR_BYTES_PER_INT64
alias PR_BYTES_PER_INT BYTES_PER_INT;
//C     #define BYTES_PER_LONG      PR_BYTES_PER_LONG
alias PR_BYTES_PER_INT64 BYTES_PER_INT64;
//C     #define BYTES_PER_FLOAT     PR_BYTES_PER_FLOAT
alias PR_BYTES_PER_LONG BYTES_PER_LONG;
//C     #define BYTES_PER_DOUBLE    PR_BYTES_PER_DOUBLE
alias PR_BYTES_PER_FLOAT BYTES_PER_FLOAT;
//C     #define BYTES_PER_WORD      PR_BYTES_PER_WORD
alias PR_BYTES_PER_DOUBLE BYTES_PER_DOUBLE;
//C     #define BYTES_PER_DWORD     PR_BYTES_PER_DWORD
alias PR_BYTES_PER_WORD BYTES_PER_WORD;

alias PR_BYTES_PER_DWORD BYTES_PER_DWORD;
//C     #define BITS_PER_BYTE       PR_BITS_PER_BYTE
//C     #define BITS_PER_SHORT      PR_BITS_PER_SHORT
alias PR_BITS_PER_BYTE BITS_PER_BYTE;
//C     #define BITS_PER_INT        PR_BITS_PER_INT
alias PR_BITS_PER_SHORT BITS_PER_SHORT;
//C     #define BITS_PER_INT64      PR_BITS_PER_INT64
alias PR_BITS_PER_INT BITS_PER_INT;
//C     #define BITS_PER_LONG       PR_BITS_PER_LONG
alias PR_BITS_PER_INT64 BITS_PER_INT64;
//C     #define BITS_PER_FLOAT      PR_BITS_PER_FLOAT
alias PR_BITS_PER_LONG BITS_PER_LONG;
//C     #define BITS_PER_DOUBLE     PR_BITS_PER_DOUBLE
alias PR_BITS_PER_FLOAT BITS_PER_FLOAT;
//C     #define BITS_PER_WORD       PR_BITS_PER_WORD
alias PR_BITS_PER_DOUBLE BITS_PER_DOUBLE;

alias PR_BITS_PER_WORD BITS_PER_WORD;
//C     #define BITS_PER_BYTE_LOG2  PR_BITS_PER_BYTE_LOG2
//C     #define BITS_PER_SHORT_LOG2 PR_BITS_PER_SHORT_LOG2
alias PR_BITS_PER_BYTE_LOG2 BITS_PER_BYTE_LOG2;
//C     #define BITS_PER_INT_LOG2   PR_BITS_PER_INT_LOG2
alias PR_BITS_PER_SHORT_LOG2 BITS_PER_SHORT_LOG2;
//C     #define BITS_PER_INT64_LOG2 PR_BITS_PER_INT64_LOG2
alias PR_BITS_PER_INT_LOG2 BITS_PER_INT_LOG2;
//C     #define BITS_PER_LONG_LOG2  PR_BITS_PER_LONG_LOG2
alias PR_BITS_PER_INT64_LOG2 BITS_PER_INT64_LOG2;
//C     #define BITS_PER_FLOAT_LOG2 PR_BITS_PER_FLOAT_LOG2
alias PR_BITS_PER_LONG_LOG2 BITS_PER_LONG_LOG2;
//C     #define BITS_PER_DOUBLE_LOG2    PR_BITS_PER_DOUBLE_LOG2
alias PR_BITS_PER_FLOAT_LOG2 BITS_PER_FLOAT_LOG2;
//C     #define BITS_PER_WORD_LOG2  PR_BITS_PER_WORD_LOG2
alias PR_BITS_PER_DOUBLE_LOG2 BITS_PER_DOUBLE_LOG2;

alias PR_BITS_PER_WORD_LOG2 BITS_PER_WORD_LOG2;
//C     #define ALIGN_OF_SHORT      PR_ALIGN_OF_SHORT
//C     #define ALIGN_OF_INT        PR_ALIGN_OF_INT
alias PR_ALIGN_OF_SHORT ALIGN_OF_SHORT;
//C     #define ALIGN_OF_LONG       PR_ALIGN_OF_LONG
alias PR_ALIGN_OF_INT ALIGN_OF_INT;
//C     #define ALIGN_OF_INT64      PR_ALIGN_OF_INT64
alias PR_ALIGN_OF_LONG ALIGN_OF_LONG;
//C     #define ALIGN_OF_FLOAT      PR_ALIGN_OF_FLOAT
alias PR_ALIGN_OF_INT64 ALIGN_OF_INT64;
//C     #define ALIGN_OF_DOUBLE     PR_ALIGN_OF_DOUBLE
alias PR_ALIGN_OF_FLOAT ALIGN_OF_FLOAT;
//C     #define ALIGN_OF_POINTER    PR_ALIGN_OF_POINTER
alias PR_ALIGN_OF_DOUBLE ALIGN_OF_DOUBLE;
//C     #define ALIGN_OF_WORD       PR_ALIGN_OF_WORD
alias PR_ALIGN_OF_POINTER ALIGN_OF_POINTER;

alias PR_ALIGN_OF_WORD ALIGN_OF_WORD;
//C     #define BYTES_PER_WORD_LOG2		PR_BYTES_PER_WORD_LOG2
//C     #define BYTES_PER_DWORD_LOG2    PR_BYTES_PER_DWORD_LOG2
alias PR_BYTES_PER_WORD_LOG2 BYTES_PER_WORD_LOG2;
//C     #define WORDS_PER_DWORD_LOG2    PR_WORDS_PER_DWORD_LOG2
alias PR_BYTES_PER_DWORD_LOG2 BYTES_PER_DWORD_LOG2;

//alias PR_WORDS_PER_DWORD_LOG2 WORDS_PER_DWORD_LOG2;
//C     #endif /* NO_NSPR_10_SUPPORT */

//C     #endif /* nspr_cpucfg___ */
