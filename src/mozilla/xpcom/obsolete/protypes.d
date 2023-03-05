/* Converted to D from protypes.h by htod */
module mozilla.xpcom.obsolete.protypes;
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
 * This header typedefs the old 'native' types to the new PR<type>s.
 * These definitions are scheduled to be eliminated at the earliest
 * possible time. The NSPR API is implemented and documented using
 * the new definitions.
 */

//C     #if !defined(PROTYPES_H)
//C     #define PROTYPES_H

//C     typedef PRUintn uintn;
//C     #ifndef _XP_Core_
//C     typedef PRIntn intn;
//C     #endif
alias uint uintn;
alias int intn;

/*
 * It is trickier to define uint, int8, uint8, int16, uint16,
 * int32, uint32, int64, and uint64 because some of these int
 * types are defined by standard header files on some platforms.
 * Our strategy here is to include all such standard headers
 * first, and then define these int types only if they are not
 * defined by those standard headers.
 */

/*
 * BeOS defines all the int types below in its standard header
 * file SupportDefs.h.
 */
//C     #ifdef XP_BEOS
//C     #include <support/SupportDefs.h>
//C     #endif

/*
 * OpenVMS defines all the int types below in its standard
 * header files ints.h and types.h.
 */
//C     #ifdef VMS
//C     #include <ints.h>
//C     #include <types.h>
//C     #endif

/*
 * SVR4 typedef of uint is commonly found on UNIX machines.
 *
 * On AIX 4.3, sys/inttypes.h (which is included by sys/types.h)
 * defines the types int8, int16, int32, and int64.
 */
//C     #ifdef XP_UNIX
//C     #include <sys/types.h>
//C     #endif

/* model.h on HP-UX defines int8, int16, and int32. */
//C     #ifdef HPUX
//C     #include <model.h>
//C     #endif

/*
 * uint
 */

//C     #if !defined(XP_BEOS) && !defined(VMS)     && !defined(XP_UNIX) || defined(NTO)
//C     typedef PRUintn uint;
//C     #endif

/*
 * uint64
 */

//C     #if !defined(XP_BEOS) && !defined(VMS)
//C     typedef PRUint64 uint64;
//C     #endif
alias ulong uint64;

/*
 * uint32
 */

//C     #if !defined(XP_BEOS) && !defined(VMS)
//C     #if !defined(XP_MAC) && !defined(_WIN32) && !defined(XP_OS2) && !defined(NTO)
//C     typedef PRUint32 uint32;
//C     #else
//C     typedef unsigned long uint32;
//C     #endif
//C     #endif
alias uint uint32;

/*
 * uint16
 */

//C     #if !defined(XP_BEOS) && !defined(VMS)
//C     typedef PRUint16 uint16;
//C     #endif
alias ushort uint16;

/*
 * uint8
 */

//C     #if !defined(XP_BEOS) && !defined(VMS)
//C     typedef PRUint8 uint8;
alias ubyte uint8;
