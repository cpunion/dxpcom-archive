/* Converted to D from nsStringAPI.h by htod */
module mozilla.xpcom.nsStringAPI;
/* vim:set ts=2 sw=2 et cindent: */
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
 * The Original Code is Mozilla.
 *
 * The Initial Developer of the Original Code is IBM Corporation.
 * Portions created by IBM Corporation are Copyright (C) 2003
 * IBM Corporation.  All Rights Reserved.
 *
 * Contributor(s):
 *   Darin Fisher <darin@meer.net>
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

//C     #ifndef nsStringAPI_h__
//C     #define nsStringAPI_h__

//C     #include <string.h>
import std.c.string;

/**
 * nsStringAPI.h
 *
 * This file describes a minimal API for working with XPCOM's abstract
 * string classes.  It divorces the consumer from having any run-time
 * dependency on the implementation details of the abstract string types.
 */

// Map frozen functions to private symbol names if not using strict API.
//C     #ifdef MOZILLA_INTERNAL_API
//C     # define NS_StringContainerInit           NS_StringContainerInit_P
//C     # define NS_StringContainerInit2          NS_StringContainerInit2_P
//C     # define NS_StringContainerFinish         NS_StringContainerFinish_P
//C     # define NS_StringGetData                 NS_StringGetData_P
//C     # define NS_StringGetMutableData          NS_StringGetMutableData_P
//C     # define NS_StringCloneData               NS_StringCloneData_P
//C     # define NS_StringSetData                 NS_StringSetData_P
//C     # define NS_StringSetDataRange            NS_StringSetDataRange_P
//C     # define NS_StringCopy                    NS_StringCopy_P
//C     # define NS_CStringContainerInit          NS_CStringContainerInit_P
//C     # define NS_CStringContainerInit2         NS_CStringContainerInit2_P
//C     # define NS_CStringContainerFinish        NS_CStringContainerFinish_P
//C     # define NS_CStringGetData                NS_CStringGetData_P
//C     # define NS_CStringGetMutableData         NS_CStringGetMutableData_P
//C     # define NS_CStringCloneData              NS_CStringCloneData_P
//C     # define NS_CStringSetData                NS_CStringSetData_P
//C     # define NS_CStringSetDataRange           NS_CStringSetDataRange_P
//C     # define NS_CStringCopy                   NS_CStringCopy_P
//C     # define NS_CStringToUTF16                NS_CStringToUTF16_P
//C     # define NS_UTF16ToCString                NS_UTF16ToCString_P
//C     #endif

//C     #include "nscore.h"
import mozilla.xpcom.nscore;

//C     #if defined( XPCOM_GLUE )
//C     #define NS_STRINGAPI(type) extern "C" NS_HIDDEN_(type)
//C     #elif defined( _IMPL_NS_STRINGAPI )
//C     #define NS_STRINGAPI(type) extern "C" NS_EXPORT type
//C     #else
//C     #define NS_STRINGAPI(type) extern "C" NS_IMPORT type
//C     #endif

/* The base string types */
//C     class nsAString;
//C     class nsACString;

/* ------------------------------------------------------------------------- */

/**
 * nsStringContainer
 *
 * This is an opaque data type that is large enough to hold the canonical
 * implementation of nsAString.  The binary structure of this class is an
 * implementation detail.
 *
 * The string data stored in a string container is always single fragment
 * and may be null-terminated depending on how it is initialized.
 *
 * Typically, string containers are allocated on the stack for temporary
 * use.  However, they can also be malloc'd if necessary.  In either case,
 * a string container is not useful until it has been initialized with a
 * call to NS_StringContainerInit.  The following example shows how to use
 * a string container to call a function that takes a |nsAString &| out-param.
 *
 *   NS_METHOD GetBlah(nsAString &aBlah);
 *
 *   nsresult MyCode()
 *   {
 *     nsresult rv;
 *
 *     nsStringContainer sc;
 *     rv = NS_StringContainerInit(sc);
 *     if (NS_FAILED(rv))
 *       return rv;
 *
 *     rv = GetBlah(sc);
 *     if (NS_SUCCEEDED(rv))
 *     {
 *       const PRUnichar *data;
 *       NS_StringGetData(sc, &data);
 *       //
 *       // |data| now points to the result of the GetBlah function
 *       //
 *     }
 *
 *     NS_StringContainerFinish(sc);
 *     return rv;
 *   }
 *
 * The following example show how to use a string container to pass a string
 * parameter to a function taking a |const nsAString &| in-param.
 *
 *   NS_METHOD SetBlah(const nsAString &aBlah);
 *
 *   nsresult MyCode()
 *   {
 *     nsresult rv;
 *
 *     nsStringContainer sc;
 *     rv = NS_StringContainerInit(sc);
 *     if (NS_FAILED(rv))
 *       return rv;
 *
 *     const PRUnichar kData[] = {'x','y','z','\0'};
 *     rv = NS_StringSetData(sc, kData, sizeof(kData)/2 - 1);
 *     if (NS_SUCCEEDED(rv))
 *       rv = SetBlah(sc);
 *
 *     NS_StringContainerFinish(sc);
 *     return rv;
 *   }
 */
//C     class nsStringContainer;

/**
 * Flags that may be OR'd together to pass to NS_StringContainerInit2:
 */
//C     enum {
  /* Data passed into NS_StringContainerInit2 is not copied; instead, the
   * string references the passed in data pointer directly.  The caller must
   * ensure that the data is valid for the lifetime of the string container.
   * This flag should not be combined with NS_STRING_CONTAINER_INIT_ADOPT. */
//C       NS_STRING_CONTAINER_INIT_DEPEND    = (1 << 1),

  /* Data passed into NS_StringContainerInit2 is not copied; instead, the
   * string takes ownership over the data pointer.  The caller must have
   * allocated the data array using the XPCOM memory allocator (nsMemory).
   * This flag should not be combined with NS_STRING_CONTAINER_INIT_DEPEND. */
//C       NS_STRING_CONTAINER_INIT_ADOPT     = (1 << 2),

  /* Data passed into NS_StringContainerInit2 is a substring that is not
   * null-terminated. */
//C       NS_STRING_CONTAINER_INIT_SUBSTRING = (1 << 3)
//C     };
enum
{
    NS_STRING_CONTAINER_INIT_DEPEND = 2,
    NS_STRING_CONTAINER_INIT_ADOPT = 4,
    NS_STRING_CONTAINER_INIT_SUBSTRING = 8,
}

/**
 * NS_StringContainerInit
 *
 * @param aContainer    string container reference
 * @return              NS_OK if string container successfully initialized
 *
 * This function may allocate additional memory for aContainer.  When
 * aContainer is no longer needed, NS_StringContainerFinish should be called.
 *
 * @status FROZEN
 */
//C     NS_STRINGAPI(nsresult)
//C     NS_StringContainerInit(nsStringContainer &aContainer);
extern (C):

nsresult  NS_StringContainerInit(nsStringContainer *aContainer);

/**
 * NS_StringContainerInit2
 *
 * @param aContainer    string container reference
 * @param aData         character buffer (may be null)
 * @param aDataLength   number of characters stored at aData (may pass
 *                      PR_UINT32_MAX if aData is null-terminated)
 * @param aFlags        flags affecting how the string container is
 *                      initialized.  this parameter is ignored when aData
 *                      is null.  otherwise, if this parameter is 0, then
 *                      aData is copied into the string.
 *
 * This function resembles NS_StringContainerInit but provides further
 * options that permit more efficient memory usage.  When aContainer is
 * no longer needed, NS_StringContainerFinish should be called.
 *
 * NOTE: NS_StringContainerInit2(container, nsnull, 0, 0) is equivalent to
 * NS_StringContainerInit(container).
 *
 * @status FROZEN
 */
//C     NS_STRINGAPI(nsresult)
//C     NS_StringContainerInit2
//C       (nsStringContainer &aContainer, const PRUnichar *aData = nsnull,
//C        PRUint32 aDataLength = PR_UINT32_MAX, PRUint32 aFlags = 0);
nsresult  NS_StringContainerInit2(nsStringContainer *aContainer, PRUnichar *aData, PRUint32 aDataLength, PRUint32 aFlags);

/**
 * NS_StringContainerFinish
 *
 * @param aContainer    string container reference
 *
 * This function frees any memory owned by aContainer.
 *
 * @status FROZEN
 */
//C     NS_STRINGAPI(void)
//C     NS_StringContainerFinish(nsStringContainer &aContainer);
void  NS_StringContainerFinish(nsStringContainer *aContainer);

/* ------------------------------------------------------------------------- */

/**
 * NS_StringGetData
 *
 * This function returns a const character pointer to the string's internal
 * buffer, the length of the string, and a boolean value indicating whether
 * or not the buffer is null-terminated.
 *
 * @param aStr          abstract string reference
 * @param aData         out param that will hold the address of aStr's
 *                      internal buffer
 * @param aTerminated   if non-null, this out param will be set to indicate
 *                      whether or not aStr's internal buffer is null-
 *                      terminated
 * @return              length of aStr's internal buffer
 *
 * @status FROZEN
 */
//C     NS_STRINGAPI(PRUint32)
//C     NS_StringGetData
//C       (const nsAString &aStr, const PRUnichar **aData,
//C        PRBool *aTerminated = nsnull);
PRUint32  NS_StringGetData(nsAString *aStr, PRUnichar **aData, PRBool *aTerminated);

/**
 * NS_StringGetMutableData
 *
 * This function provides mutable access to a string's internal buffer.  It
 * returns a pointer to an array of characters that may be modified.  The
 * returned pointer remains valid until the string object is passed to some
 * other string function.
 *
 * Optionally, this function may be used to resize the string's internal
 * buffer.  The aDataLength parameter specifies the requested length of the
 * string's internal buffer.  By passing some value other than PR_UINT32_MAX,
 * the caller can request that the buffer be resized to the specified number of
 * characters before returning.  The caller is not responsible for writing a
 * null-terminator.
 *
 * @param aStr          abstract string reference
 * @param aDataLength   number of characters to resize the string's internal
 *                      buffer to or PR_UINT32_MAX if no resizing is needed
 * @param aData         out param that upon return holds the address of aStr's
 *                      internal buffer or null if the function failed
 * @return              number of characters or zero if the function failed
 *
 * This function does not necessarily null-terminate aStr after resizing its
 * internal buffer.  The behavior depends on the implementation of the abstract
 * string, aStr.  If aStr is a reference to a nsStringContainer, then its data
 * will be null-terminated by this function.
 *
 * @status FROZEN
 */
//C     NS_STRINGAPI(PRUint32)
//C     NS_StringGetMutableData
//C       (nsAString &aStr, PRUint32 aDataLength, PRUnichar **aData);
PRUint32  NS_StringGetMutableData(nsAString *aStr, PRUint32 aDataLength, PRUnichar **aData);

/**
 * NS_StringCloneData
 *
 * This function returns a null-terminated copy of the string's
 * internal buffer.
 *
 * @param aStr          abstract string reference
 * @return              null-terminated copy of the string's internal buffer
 *                      (it must be free'd using using nsMemory::Free)
 *
 * @status FROZEN
 */
//C     NS_STRINGAPI(PRUnichar *)
//C     NS_StringCloneData
//C       (const nsAString &aStr);
PRUnichar * NS_StringCloneData(nsAString *aStr);

/**
 * NS_StringSetData
 *
 * This function copies aData into aStr.
 *
 * @param aStr          abstract string reference
 * @param aData         character buffer
 * @param aDataLength   number of characters to copy from source string (pass
 *                      PR_UINT32_MAX to copy until end of aData, designated by
 *                      a null character)
 * @return              NS_OK if function succeeded
 *
 * This function does not necessarily null-terminate aStr after copying data
 * from aData.  The behavior depends on the implementation of the abstract
 * string, aStr.  If aStr is a reference to a nsStringContainer, then its data
 * will be null-terminated by this function.
 *
 * @status FROZEN
 */
//C     NS_STRINGAPI(nsresult)
//C     NS_StringSetData
//C       (nsAString &aStr, const PRUnichar *aData,
//C        PRUint32 aDataLength = PR_UINT32_MAX);
nsresult  NS_StringSetData(nsAString *aStr, PRUnichar *aData, PRUint32 aDataLength);

/**
 * NS_StringSetDataRange
 *
 * This function copies aData into a section of aStr.  As a result it can be
 * used to insert new characters into the string.
 *
 * @param aStr          abstract string reference
 * @param aCutOffset    starting index where the string's existing data
 *                      is to be overwritten (pass PR_UINT32_MAX to cause
 *                      aData to be appended to the end of aStr, in which
 *                      case the value of aCutLength is ignored).
 * @param aCutLength    number of characters to overwrite starting at
 *                      aCutOffset (pass PR_UINT32_MAX to overwrite until the
 *                      end of aStr).
 * @param aData         character buffer (pass null to cause this function
 *                      to simply remove the "cut" range)
 * @param aDataLength   number of characters to copy from source string (pass
 *                      PR_UINT32_MAX to copy until end of aData, designated by
 *                      a null character)
 * @return              NS_OK if function succeeded
 *
 * This function does not necessarily null-terminate aStr after copying data
 * from aData.  The behavior depends on the implementation of the abstract
 * string, aStr.  If aStr is a reference to a nsStringContainer, then its data
 * will be null-terminated by this function.
 *
 * @status FROZEN
 */
//C     NS_STRINGAPI(nsresult)
//C     NS_StringSetDataRange
//C       (nsAString &aStr, PRUint32 aCutOffset, PRUint32 aCutLength,
//C        const PRUnichar *aData, PRUint32 aDataLength = PR_UINT32_MAX);
nsresult  NS_StringSetDataRange(nsAString *aStr, PRUint32 aCutOffset, PRUint32 aCutLength, PRUnichar *aData, PRUint32 aDataLength);

/**
 * NS_StringCopy
 *
 * This function makes aDestStr have the same value as aSrcStr.  It is
 * provided as an optimization.
 *
 * @param aDestStr      abstract string reference to be modified
 * @param aSrcStr       abstract string reference containing source string
 * @return              NS_OK if function succeeded
 *
 * This function does not necessarily null-terminate aDestStr after copying
 * data from aSrcStr.  The behavior depends on the implementation of the
 * abstract string, aDestStr.  If aDestStr is a reference to a
 * nsStringContainer, then its data will be null-terminated by this function.
 *
 * @status FROZEN
 */
//C     NS_STRINGAPI(nsresult)
//C     NS_StringCopy
//C       (nsAString &aDestStr, const nsAString &aSrcStr);
nsresult  NS_StringCopy(nsAString *aDestStr, nsAString *aSrcStr);

/**
 * NS_StringAppendData
 *
 * This function appends data to the existing value of aStr.
 *
 * @param aStr          abstract string reference to be modified
 * @param aData         character buffer
 * @param aDataLength   number of characters to append (pass PR_UINT32_MAX to
 *                      append until a null-character is encountered)
 * @return              NS_OK if function succeeded
 *
 * This function does not necessarily null-terminate aStr upon completion.
 * The behavior depends on the implementation of the abstract string, aStr.
 * If aStr is a reference to a nsStringContainer, then its data will be null-
 * terminated by this function.
 */
//C     inline NS_HIDDEN_(nsresult)
//C     NS_StringAppendData(nsAString &aStr, const PRUnichar *aData,
//C                         PRUint32 aDataLength = PR_UINT32_MAX)
//C     {
//C       return NS_StringSetDataRange(aStr, PR_UINT32_MAX, 0, aData, aDataLength);
//C     }

/**
 * NS_StringInsertData
 *
 * This function inserts data into the existing value of aStr at the specified
 * offset.
 *
 * @param aStr          abstract string reference to be modified
 * @param aOffset       specifies where in the string to insert aData
 * @param aData         character buffer
 * @param aDataLength   number of characters to append (pass PR_UINT32_MAX to
 *                      append until a null-character is encountered)
 * @return              NS_OK if function succeeded
 *
 * This function does not necessarily null-terminate aStr upon completion.
 * The behavior depends on the implementation of the abstract string, aStr.
 * If aStr is a reference to a nsStringContainer, then its data will be null-
 * terminated by this function.
 */
//C     inline NS_HIDDEN_(nsresult)
//C     NS_StringInsertData(nsAString &aStr, PRUint32 aOffset, const PRUnichar *aData,
//C                         PRUint32 aDataLength = PR_UINT32_MAX)
//C     {
//C       return NS_StringSetDataRange(aStr, aOffset, 0, aData, aDataLength);
//C     }

/**
 * NS_StringCutData
 *
 * This function shortens the existing value of aStr, by removing characters
 * at the specified offset.
 *
 * @param aStr          abstract string reference to be modified
 * @param aCutOffset    specifies where in the string to insert aData
 * @param aCutLength    number of characters to remove
 * @return              NS_OK if function succeeded
 */
//C     inline NS_HIDDEN_(nsresult)
//C     NS_StringCutData(nsAString &aStr, PRUint32 aCutOffset, PRUint32 aCutLength)
//C     {
//C       return NS_StringSetDataRange(aStr, aCutOffset, aCutLength, nsnull, 0);
//C     }

/* ------------------------------------------------------------------------- */

/**
 * nsCStringContainer
 *
 * This is an opaque data type that is large enough to hold the canonical
 * implementation of nsACString.  The binary structure of this class is an
 * implementation detail.
 *
 * The string data stored in a string container is always single fragment
 * and may be null-terminated depending on how it is initialized.
 *
 * @see nsStringContainer for use cases and further documentation.
 */
//C     class nsCStringContainer;

/**
 * Flags that may be OR'd together to pass to NS_StringContainerInit2:
 */
//C     enum {
  /* Data passed into NS_CStringContainerInit2 is not copied; instead, the
   * string references the passed in data pointer directly.  The caller must
   * ensure that the data is valid for the lifetime of the string container.
   * This flag should not be combined with NS_CSTRING_CONTAINER_INIT_ADOPT. */
//C       NS_CSTRING_CONTAINER_INIT_DEPEND    = (1 << 1),

  /* Data passed into NS_CStringContainerInit2 is not copied; instead, the
   * string takes ownership over the data pointer.  The caller must have
   * allocated the data array using the XPCOM memory allocator (nsMemory).
   * This flag should not be combined with NS_CSTRING_CONTAINER_INIT_DEPEND. */
//C       NS_CSTRING_CONTAINER_INIT_ADOPT     = (1 << 2),

  /* Data passed into NS_CStringContainerInit2 is a substring that is not
   * null-terminated. */
//C       NS_CSTRING_CONTAINER_INIT_SUBSTRING = (1 << 3)
//C     };
enum
{
    NS_CSTRING_CONTAINER_INIT_DEPEND = 2,
    NS_CSTRING_CONTAINER_INIT_ADOPT = 4,
    NS_CSTRING_CONTAINER_INIT_SUBSTRING = 8,
}

/**
 * NS_CStringContainerInit
 *
 * @param aContainer    string container reference
 * @return              NS_OK if string container successfully initialized
 *
 * This function may allocate additional memory for aContainer.  When
 * aContainer is no longer needed, NS_CStringContainerFinish should be called.
 *
 * @status FROZEN
 */
//C     NS_STRINGAPI(nsresult)
//C     NS_CStringContainerInit(nsCStringContainer &aContainer);
nsresult  NS_CStringContainerInit(nsCStringContainer *aContainer);

/**
 * NS_CStringContainerInit2
 *
 * @param aContainer    string container reference
 * @param aData         character buffer (may be null)
 * @param aDataLength   number of characters stored at aData (may pass
 *                      PR_UINT32_MAX if aData is null-terminated)
 * @param aFlags        flags affecting how the string container is
 *                      initialized.  this parameter is ignored when aData
 *                      is null.  otherwise, if this parameter is 0, then
 *                      aData is copied into the string.
 *
 * This function resembles NS_CStringContainerInit but provides further
 * options that permit more efficient memory usage.  When aContainer is
 * no longer needed, NS_CStringContainerFinish should be called.
 *
 * NOTE: NS_CStringContainerInit2(container, nsnull, 0, 0) is equivalent to
 * NS_CStringContainerInit(container).
 *
 * @status FROZEN
 */
//C     NS_STRINGAPI(nsresult)
//C     NS_CStringContainerInit2
//C       (nsCStringContainer &aContainer, const char *aData = nsnull,
//C        PRUint32 aDataLength = PR_UINT32_MAX, PRUint32 aFlags = 0);
nsresult  NS_CStringContainerInit2(nsCStringContainer *aContainer, char *aData, PRUint32 aDataLength, PRUint32 aFlags);

/**
 * NS_CStringContainerFinish
 *
 * @param aContainer    string container reference
 *
 * This function frees any memory owned by aContainer.
 *
 * @status FROZEN
 */
//C     NS_STRINGAPI(void)
//C     NS_CStringContainerFinish(nsCStringContainer &aContainer);
void  NS_CStringContainerFinish(nsCStringContainer *aContainer);

/* ------------------------------------------------------------------------- */

/**
 * NS_CStringGetData
 *
 * This function returns a const character pointer to the string's internal
 * buffer, the length of the string, and a boolean value indicating whether
 * or not the buffer is null-terminated.
 *
 * @param aStr          abstract string reference
 * @param aData         out param that will hold the address of aStr's
 *                      internal buffer
 * @param aTerminated   if non-null, this out param will be set to indicate
 *                      whether or not aStr's internal buffer is null-
 *                      terminated
 * @return              length of aStr's internal buffer
 *
 * @status FROZEN
 */
//C     NS_STRINGAPI(PRUint32)
//C     NS_CStringGetData
//C       (const nsACString &aStr, const char **aData,
//C        PRBool *aTerminated = nsnull);
PRUint32  NS_CStringGetData(nsACString *aStr, char **aData, PRBool *aTerminated);

/**
 * NS_CStringGetMutableData
 *
 * This function provides mutable access to a string's internal buffer.  It
 * returns a pointer to an array of characters that may be modified.  The
 * returned pointer remains valid until the string object is passed to some
 * other string function.
 *
 * Optionally, this function may be used to resize the string's internal
 * buffer.  The aDataLength parameter specifies the requested length of the
 * string's internal buffer.  By passing some value other than PR_UINT32_MAX,
 * the caller can request that the buffer be resized to the specified number of
 * characters before returning.  The caller is not responsible for writing a
 * null-terminator.
 *
 * @param aStr          abstract string reference
 * @param aDataLength   number of characters to resize the string's internal
 *                      buffer to or PR_UINT32_MAX if no resizing is needed
 * @param aData         out param that upon return holds the address of aStr's
 *                      internal buffer or null if the function failed
 * @return              number of characters or zero if the function failed
 *
 * This function does not necessarily null-terminate aStr after resizing its
 * internal buffer.  The behavior depends on the implementation of the abstract
 * string, aStr.  If aStr is a reference to a nsStringContainer, then its data
 * will be null-terminated by this function.
 *
 * @status FROZEN
 */
//C     NS_STRINGAPI(PRUint32)
//C     NS_CStringGetMutableData
//C       (nsACString &aStr, PRUint32 aDataLength, char **aData);
PRUint32  NS_CStringGetMutableData(nsACString *aStr, PRUint32 aDataLength, char **aData);

/**
 * NS_CStringCloneData
 *
 * This function returns a null-terminated copy of the string's
 * internal buffer.
 *
 * @param aStr          abstract string reference
 * @return              null-terminated copy of the string's internal buffer
 *                      (it must be free'd using using nsMemory::Free)
 *
 * @status FROZEN
 */
//C     NS_STRINGAPI(char *)
//C     NS_CStringCloneData
//C       (const nsACString &aStr);
char * NS_CStringCloneData(nsACString *aStr);

/**
 * NS_CStringSetData
 *
 * This function copies aData into aStr.
 *
 * @param aStr          abstract string reference
 * @param aData         character buffer
 * @param aDataLength   number of characters to copy from source string (pass
 *                      PR_UINT32_MAX to copy until end of aData, designated by
 *                      a null character)
 * @return              NS_OK if function succeeded
 *
 * This function does not necessarily null-terminate aStr after copying data
 * from aData.  The behavior depends on the implementation of the abstract
 * string, aStr.  If aStr is a reference to a nsStringContainer, then its data
 * will be null-terminated by this function.
 *
 * @status FROZEN
 */
//C     NS_STRINGAPI(nsresult)
//C     NS_CStringSetData
//C       (nsACString &aStr, const char *aData,
//C        PRUint32 aDataLength = PR_UINT32_MAX);
nsresult  NS_CStringSetData(nsACString *aStr, char *aData, PRUint32 aDataLength);

/**
 * NS_CStringSetDataRange
 *
 * This function copies aData into a section of aStr.  As a result it can be
 * used to insert new characters into the string.
 *
 * @param aStr          abstract string reference
 * @param aCutOffset    starting index where the string's existing data
 *                      is to be overwritten (pass PR_UINT32_MAX to cause
 *                      aData to be appended to the end of aStr, in which
 *                      case the value of aCutLength is ignored).
 * @param aCutLength    number of characters to overwrite starting at
 *                      aCutOffset (pass PR_UINT32_MAX to overwrite until the
 *                      end of aStr).
 * @param aData         character buffer (pass null to cause this function
 *                      to simply remove the "cut" range)
 * @param aDataLength   number of characters to copy from source string (pass
 *                      PR_UINT32_MAX to copy until end of aData, designated by
 *                      a null character)
 * @return              NS_OK if function succeeded
 *
 * This function does not necessarily null-terminate aStr after copying data
 * from aData.  The behavior depends on the implementation of the abstract
 * string, aStr.  If aStr is a reference to a nsStringContainer, then its data
 * will be null-terminated by this function.
 *
 * @status FROZEN
 */
//C     NS_STRINGAPI(nsresult)
//C     NS_CStringSetDataRange
//C       (nsACString &aStr, PRUint32 aCutOffset, PRUint32 aCutLength,
//C        const char *aData, PRUint32 aDataLength = PR_UINT32_MAX);
nsresult  NS_CStringSetDataRange(nsACString *aStr, PRUint32 aCutOffset, PRUint32 aCutLength, char *aData, PRUint32 aDataLength);

/**
 * NS_CStringCopy
 *
 * This function makes aDestStr have the same value as aSrcStr.  It is
 * provided as an optimization.
 *
 * @param aDestStr      abstract string reference to be modified
 * @param aSrcStr       abstract string reference containing source string
 * @return              NS_OK if function succeeded
 *
 * This function does not necessarily null-terminate aDestStr after copying
 * data from aSrcStr.  The behavior depends on the implementation of the
 * abstract string, aDestStr.  If aDestStr is a reference to a
 * nsStringContainer, then its data will be null-terminated by this function.
 *
 * @status FROZEN
 */
//C     NS_STRINGAPI(nsresult)
//C     NS_CStringCopy
//C       (nsACString &aDestStr, const nsACString &aSrcStr);
nsresult  NS_CStringCopy(nsACString *aDestStr, nsACString *aSrcStr);

/**
 * NS_CStringAppendData
 *
 * This function appends data to the existing value of aStr.
 *
 * @param aStr          abstract string reference to be modified
 * @param aData         character buffer
 * @param aDataLength   number of characters to append (pass PR_UINT32_MAX to
 *                      append until a null-character is encountered)
 * @return              NS_OK if function succeeded
 *
 * This function does not necessarily null-terminate aStr upon completion.
 * The behavior depends on the implementation of the abstract string, aStr.
 * If aStr is a reference to a nsStringContainer, then its data will be null-
 * terminated by this function.
 */
//C     inline NS_HIDDEN_(nsresult)
//C     NS_CStringAppendData(nsACString &aStr, const char *aData,
//C                         PRUint32 aDataLength = PR_UINT32_MAX)
//C     {
//C       return NS_CStringSetDataRange(aStr, PR_UINT32_MAX, 0, aData, aDataLength);
//C     }

/**
 * NS_CStringInsertData
 *
 * This function inserts data into the existing value of aStr at the specified
 * offset.
 *
 * @param aStr          abstract string reference to be modified
 * @param aOffset       specifies where in the string to insert aData
 * @param aData         character buffer
 * @param aDataLength   number of characters to append (pass PR_UINT32_MAX to
 *                      append until a null-character is encountered)
 * @return              NS_OK if function succeeded
 *
 * This function does not necessarily null-terminate aStr upon completion.
 * The behavior depends on the implementation of the abstract string, aStr.
 * If aStr is a reference to a nsStringContainer, then its data will be null-
 * terminated by this function.
 */
//C     inline NS_HIDDEN_(nsresult)
//C     NS_CStringInsertData(nsACString &aStr, PRUint32 aOffset, const char *aData,
//C                         PRUint32 aDataLength = PR_UINT32_MAX)
//C     {
//C       return NS_CStringSetDataRange(aStr, aOffset, 0, aData, aDataLength);
//C     }

/**
 * NS_CStringCutData
 *
 * This function shortens the existing value of aStr, by removing characters
 * at the specified offset.
 *
 * @param aStr          abstract string reference to be modified
 * @param aCutOffset    specifies where in the string to insert aData
 * @param aCutLength    number of characters to remove
 * @return              NS_OK if function succeeded
 */
//C     inline NS_HIDDEN_(nsresult)
//C     NS_CStringCutData(nsACString &aStr, PRUint32 aCutOffset, PRUint32 aCutLength)
//C     {
//C       return NS_CStringSetDataRange(aStr, aCutOffset, aCutLength, nsnull, 0);
//C     }

/* ------------------------------------------------------------------------- */

/**
 * Encodings that can be used with the following conversion routines.
 */
//C     enum nsCStringEncoding {
  /* Conversion between ASCII and UTF-16 assumes that all bytes in the source
   * string are 7-bit ASCII and can be inflated to UTF-16 by inserting null
   * bytes.  Reverse conversion is done by truncating every other byte.  The
   * conversion may result in loss and/or corruption of information if the
   * strings do not strictly contain ASCII data. */
//C       NS_CSTRING_ENCODING_ASCII = 0,

  /* Conversion between UTF-8 and UTF-16 is non-lossy. */
//C       NS_CSTRING_ENCODING_UTF8 = 1,

  /* Conversion from UTF-16 to the native filesystem charset may result in a
   * loss of information.  No attempt is made to protect against data loss in
   * this case.  The native filesystem charset applies to strings passed to
   * the "Native" method variants on nsIFile and nsILocalFile. */
//C       NS_CSTRING_ENCODING_NATIVE_FILESYSTEM = 2
//C     };
enum nsCStringEncoding
{
    NS_CSTRING_ENCODING_ASCII,
    NS_CSTRING_ENCODING_UTF8,
    NS_CSTRING_ENCODING_NATIVE_FILESYSTEM,
}

/**
 * NS_CStringToUTF16
 *
 * This function converts the characters in a nsACString to an array of UTF-16
 * characters, in the platform endianness.  The result is stored in a nsAString
 * object.
 *
 * @param aSource       abstract string reference containing source string
 * @param aSrcEncoding  character encoding of the source string
 * @param aDest         abstract string reference to hold the result
 *
 * @status FROZEN
 */
//C     NS_STRINGAPI(nsresult)
//C     NS_CStringToUTF16(const nsACString &aSource, nsCStringEncoding aSrcEncoding,
//C                       nsAString &aDest);
nsresult  NS_CStringToUTF16(nsACString *aSource, int aSrcEncoding, nsAString *aDest);

/**
 * NS_UTF16ToCString
 *
 * This function converts the UTF-16 characters in a nsAString to a single-byte
 * encoding.  The result is stored in a nsACString object.  In some cases this
 * conversion may be lossy.  In such cases, the conversion may succeed with a
 * return code indicating loss of information.  The exact behavior is not
 * specified at this time.
 *
 * @param aSource       abstract string reference containing source string
 * @param aDestEncoding character encoding of the resulting string
 * @param aDest         abstract string reference to hold the result
 *
 * @status FROZEN
 */
//C     NS_STRINGAPI(nsresult)
//C     NS_UTF16ToCString(const nsAString &aSource, nsCStringEncoding aDestEncoding,
//C                       nsACString &aDest);
nsresult  NS_UTF16ToCString(nsAString *aSource, int aDestEncoding, nsACString *aDest);

/* ------------------------------------------------------------------------- */

/**
 * Below we define nsAString and nsACString.  The "_external" suffix is an
 * implementation detail.  nsAString_external is the name of the external
 * representation of nsAString from the point of view of the Mozilla codebase.
 * To a user of this API, nsAString_external is exactly nsAString.
 *
 * These classes should be treated as abstract classes with unspecified
 * structure.  The inline methods are provided as helper functions around the
 * C-style API provided above.
 *
 * Do not try to mix these definitions of nsAString and nsACString with the
 * internal definition of these classes from nsAString.h in the Mozilla tree.
 */

//C     #ifndef MOZILLA_INTERNAL_API
//C     #define nsAString_external nsAString
//C     #define nsACString_external nsACString
alias nsAString nsAString_external;
//C     #endif
alias nsACString nsACString_external;

//C     class nsAString_external
//C     {
//C     #ifndef MOZILLA_INTERNAL_API

//C     public:
//C       typedef PRUnichar             char_type;
//C       typedef nsAString_external    self_type;
//C       typedef PRUint32              size_type;
//C       typedef PRUint32              index_type;

//C       NS_HIDDEN_(const char_type*) BeginReading() const
//C       {
//C         const char_type *data;
//C         NS_StringGetData(*this, &data);
//C         return data;
//C       }

//C       NS_HIDDEN_(const char_type*) EndReading() const
//C       {
//C         const char_type *data;
//C         PRUint32 len = NS_StringGetData(*this, &data);
//C         return data + len;
//C       }

//C       NS_HIDDEN_(char_type*) BeginWriting()
//C       {
//C         char_type *data;
//C         NS_StringGetMutableData(*this, PR_UINT32_MAX, &data);
//C         return data;
//C       }

//C       NS_HIDDEN_(PRBool) SetLength(PRUint32 aLen)
//C       {
//C         char_type *data;
//C         NS_StringGetMutableData(*this, aLen, &data);
//C         return data != nsnull;
//C       }

//C       NS_HIDDEN_(size_type) Length() const
//C       {
//C         const char_type* data;
//C         return NS_StringGetData(*this, &data);
//C       }

//C       NS_HIDDEN_(PRBool) IsEmpty() const
//C       {
//C         return Length() == 0;
//C       }

//C       NS_HIDDEN_(void) Assign(const self_type& aString)
//C       {
//C         NS_StringCopy(*this, aString);
//C       }
//C       NS_HIDDEN_(void) Assign(const char_type* aData, size_type aLength = PR_UINT32_MAX)
//C       {
//C         NS_StringSetData(*this, aData, aLength);
//C       }
//C       NS_HIDDEN_(void) Assign(char_type aChar)
//C       {
//C         NS_StringSetData(*this, &aChar, 1);
//C       }

//C       NS_HIDDEN_(self_type&) operator=(const self_type& aString) { Assign(aString);   return *this; }
//C       NS_HIDDEN_(self_type&) operator=(const char_type* aPtr)    { Assign(aPtr);      return *this; }
//C       NS_HIDDEN_(self_type&) operator=(char_type aChar)          { Assign(aChar);     return *this; }

//C       NS_HIDDEN_(void) Replace( index_type cutStart, size_type cutLength, const char_type* data, size_type length = size_type(-1) )
//C       {
//C         NS_StringSetDataRange(*this, cutStart, cutLength, data, length);
//C       }
//C       NS_HIDDEN_(void) Replace( index_type cutStart, size_type cutLength, char_type c )
//C       {
//C         Replace(cutStart, cutLength, &c, 1);
//C       }
//C       NS_HIDDEN_(void) Replace( index_type cutStart, size_type cutLength, const self_type& readable )
//C       {
//C         const char_type* data;
//C         PRUint32 dataLen = NS_StringGetData(readable, &data);
//C         NS_StringSetDataRange(*this, cutStart, cutLength, data, dataLen);
//C       }

//C       NS_HIDDEN_(void) Append( char_type c )                                                              { Replace(size_type(-1), 0, c); }
//C       NS_HIDDEN_(void) Append( const char_type* data, size_type length = size_type(-1) )                  { Replace(size_type(-1), 0, data, length); }
//C       NS_HIDDEN_(void) Append( const self_type& readable )                                                { Replace(size_type(-1), 0, readable); }

//C       NS_HIDDEN_(self_type&) operator+=( char_type c )                                                    { Append(c);        return *this; }
//C       NS_HIDDEN_(self_type&) operator+=( const char_type* data )                                          { Append(data);     return *this; }
//C       NS_HIDDEN_(self_type&) operator+=( const self_type& readable )                                      { Append(readable); return *this; }

//C       NS_HIDDEN_(void) Insert( char_type c, index_type pos )                                              { Replace(pos, 0, c); }
//C       NS_HIDDEN_(void) Insert( const char_type* data, index_type pos, size_type length = size_type(-1) )  { Replace(pos, 0, data, length); }
//C       NS_HIDDEN_(void) Insert( const self_type& readable, index_type pos )                                { Replace(pos, 0, readable); }

//C       NS_HIDDEN_(void) Cut( index_type cutStart, size_type cutLength )                                    { Replace(cutStart, cutLength, nsnull, 0); }

//C       NS_HIDDEN_(PRBool) Equals( const self_type &other ) const {
//C         const char_type *cself;
//C         const char_type *cother;
//C         PRUint32 selflen = NS_StringGetData(*this, &cself);
//C         PRUint32 otherlen = NS_StringGetData(other, &cother);

//C         if (selflen != otherlen)
//C           return PR_FALSE;

//C         return memcmp(cself, cother, selflen * sizeof(char_type)) == 0;
//C       }

//C     #endif // MOZILLA_INTERNAL_API

//C     protected:
  // Prevent people from allocating a nsAString directly.
//C       ~nsAString_external() {}

//C     private:
//C       void *v;
//C     };
struct nsAString
{
  static nsAString opCall(wchar[] s)
  {
    nsAString result;
    NS_StringSetData(&result, cast(PRUnichar*)s, uint.max);
    return result;
  }

  private:
    void *v;
}

//C     class nsACString_external
//C     {
//C     #ifndef MOZILLA_INTERNAL_API

//C     public:
//C       typedef char                  char_type;
//C       typedef nsACString_external   self_type;
//C       typedef PRUint32              size_type;
//C       typedef PRUint32              index_type;

//C       NS_HIDDEN_(const char_type*) BeginReading() const
//C       {
//C         const char_type *data;
//C         NS_CStringGetData(*this, &data);
//C         return data;
//C       }

//C       NS_HIDDEN_(const char_type*) EndReading() const
//C       {
//C         const char_type *data;
//C         PRUint32 len = NS_CStringGetData(*this, &data);
//C         return data + len;
//C       }

//C       NS_HIDDEN_(char_type*) BeginWriting()
//C       {
//C         char_type *data;
//C         NS_CStringGetMutableData(*this, PR_UINT32_MAX, &data);
//C         return data;
//C       }

//C       NS_HIDDEN_(PRBool) SetLength(PRUint32 aLen)
//C       {
//C         char_type *data;
//C         NS_CStringGetMutableData(*this, aLen, &data);
//C         return data != nsnull;
//C       }

//C       NS_HIDDEN_(size_type) Length() const
//C       {
//C         const char_type* data;
//C         return NS_CStringGetData(*this, &data);
//C       }

//C       NS_HIDDEN_(PRBool) IsEmpty() const
//C       {
//C         return Length() == 0;
//C       }

//C       NS_HIDDEN_(void) Assign(const self_type& aString)
//C       {
//C         NS_CStringCopy(*this, aString);
//C       }
//C       NS_HIDDEN_(void) Assign(const char_type* aData, size_type aLength = PR_UINT32_MAX)
//C       {
//C         NS_CStringSetData(*this, aData, aLength);
//C       }
//C       NS_HIDDEN_(void) Assign(char_type aChar)
//C       {
//C         NS_CStringSetData(*this, &aChar, 1);
//C       }

//C       NS_HIDDEN_(self_type&) operator=(const self_type& aString) { Assign(aString);   return *this; }
//C       NS_HIDDEN_(self_type&) operator=(const char_type* aPtr)    { Assign(aPtr);      return *this; }
//C       NS_HIDDEN_(self_type&) operator=(char_type aChar)          { Assign(aChar);     return *this; }

//C       NS_HIDDEN_(void) Replace( index_type cutStart, size_type cutLength, const char_type* data, size_type length = size_type(-1) )
//C       {
//C         NS_CStringSetDataRange(*this, cutStart, cutLength, data, length);
//C       }
//C       NS_HIDDEN_(void) Replace( index_type cutStart, size_type cutLength, char_type c )
//C       {
//C         Replace(cutStart, cutLength, &c, 1);
//C       }
//C       NS_HIDDEN_(void) Replace( index_type cutStart, size_type cutLength, const self_type& readable )
//C       {
//C         const char_type* data;
//C         PRUint32 dataLen = NS_CStringGetData(readable, &data);
//C         NS_CStringSetDataRange(*this, cutStart, cutLength, data, dataLen);
//C       }

//C       NS_HIDDEN_(void) Append( char_type c )                                                              { Replace(size_type(-1), 0, c); }
//C       NS_HIDDEN_(void) Append( const char_type* data, size_type length = size_type(-1) )                  { Replace(size_type(-1), 0, data, length); }
//C       NS_HIDDEN_(void) Append( const self_type& readable )                                                { Replace(size_type(-1), 0, readable); }

//C       NS_HIDDEN_(self_type&) operator+=( char_type c )                                                    { Append(c);        return *this; }
//C       NS_HIDDEN_(self_type&) operator+=( const char_type* data )                                          { Append(data);     return *this; }
//C       NS_HIDDEN_(self_type&) operator+=( const self_type& readable )                                      { Append(readable); return *this; }

//C       NS_HIDDEN_(void) Insert( char_type c, index_type pos )                                              { Replace(pos, 0, c); }
//C       NS_HIDDEN_(void) Insert( const char_type* data, index_type pos, size_type length = size_type(-1) )  { Replace(pos, 0, data, length); }
//C       NS_HIDDEN_(void) Insert( const self_type& readable, index_type pos )                                { Replace(pos, 0, readable); }

//C       NS_HIDDEN_(void) Cut( index_type cutStart, size_type cutLength )                                    { Replace(cutStart, cutLength, nsnull, 0); }

//C       NS_HIDDEN_(PRBool) Equals( const self_type &other ) const {
//C         const char_type *cself;
//C         const char_type *cother;
//C         PRUint32 selflen = NS_CStringGetData(*this, &cself);
//C         PRUint32 otherlen = NS_CStringGetData(other, &cother);

//C         if (selflen != otherlen)
//C           return PR_FALSE;
 
//C         return memcmp(cself, cother, selflen * sizeof(char_type)) == 0;
//C       }

//C     #endif // MOZILLA_INTERNAL_API

//C     protected:
  // Prevent people from allocating a nsACString directly.
//C       ~nsACString_external() {}

//C     private:
//C       void *v;
//C     };

struct nsACString
{
  static nsACString opCall(char[] s)
  {
    nsACString result;
    NS_CStringSetData(&result, cast(char*)s, uint.max);
    return result;
  }

  private:
    void *v;
}


/* ------------------------------------------------------------------------- */

/**
 * Below we define nsStringContainer and nsCStringContainer.  These classes
 * have unspecified structure.  In most cases, your code should use
 * nsEmbedString instead of these classes; however, if you prefer C-style
 * programming, then look no further...
 */

//C     class nsStringContainer : public nsAString_external
//C     {
//C     private:
//C       void     *d1;
//C       PRUint32  d2;
//C       void     *d3;

//C     public:
//C       nsStringContainer() {} // MSVC6 needs this
//C     };
struct nsStringContainer// : public nsAString
{
private:
	void* v;
	void* d1;
	uint  d2;
	void* d3;
}

//C     class nsCStringContainer : public nsACString_external
//C     {
//C     private:
//C       void    *d1;
//C       PRUint32 d2;
//C       void    *d3;

//C     public:
//C       nsCStringContainer() {} // MSVC6 needs this
//C     };
struct nsCStringContainer// : public nsACString
{
private:
	void* v;
	void* d1;
	uint  d2;
	void* d3;
}

/* ------------------------------------------------------------------------- */

/**
 * Below we define a number of inlined helper classes that make the frozen
 * string API easier to use.
 */

//C     #ifndef MOZILLA_INTERNAL_API
//C     #include "nsDebug.h"
import mozilla.xpcom.nsDebug;

/**
 * Rename symbols to avoid conflicting with internal versions.
 */
//C     #define nsString                       nsString_external
//C     #define nsCString                      nsCString_external
alias nsString_external nsString;
//C     #define nsDependentString              nsDependentString_external
alias nsCString_external nsCString;
//C     #define nsDependentCString             nsDependentCString_external
alias nsDependentString_external nsDependentString;
//C     #define NS_ConvertASCIItoUTF16         NS_ConvertASCIItoUTF16_external
alias nsDependentCString_external nsDependentCString;
//C     #define NS_ConvertUTF8toUTF16          NS_ConvertUTF8toUTF16_external
alias NS_ConvertASCIItoUTF16_external NS_ConvertASCIItoUTF16;
//C     #define NS_ConvertUTF16toUTF8          NS_ConvertUTF16toUTF8_external
alias NS_ConvertUTF8toUTF16_external NS_ConvertUTF8toUTF16;
//C     #define NS_LossyConvertUTF16toASCII    NS_LossyConvertUTF16toASCII_external
alias NS_ConvertUTF16toUTF8_external NS_ConvertUTF16toUTF8;
//C     #define nsGetterCopies                 nsGetterCopies_external
alias NS_LossyConvertUTF16toASCII_external NS_LossyConvertUTF16toASCII;
//C     #define nsCGetterCopies                nsCGetterCopies_external
alias nsGetterCopies_external nsGetterCopies;
//C     #define nsDependentSubstring           nsDependentSubstring_external
alias nsCGetterCopies_external nsCGetterCopies;
//C     #define nsDependentCSubstring          nsDependentCSubstring_external
alias nsDependentSubstring_external nsDependentSubstring;

alias nsDependentCSubstring_external nsDependentCSubstring;
/**
 * basic strings
 */

//C     class nsString : public nsStringContainer
//C     {
//C     public:
//C       typedef nsString         self_type;
//C       typedef nsAString        abstract_string_type;

//C       nsString()
//C       {
//C         NS_StringContainerInit(*this);
//C       }

//C       nsString(const self_type& aString)
//C       {
//C         NS_StringContainerInit(*this);
//C         NS_StringCopy(*this, aString);
//C       }

//C       explicit
//C       nsString(const abstract_string_type& aReadable)
//C       {
//C         NS_StringContainerInit(*this);
//C         NS_StringCopy(*this, aReadable);
//C       }

//C       explicit
//C       nsString(const char_type* aData, size_type aLength = PR_UINT32_MAX)
//C       {
//C         NS_StringContainerInit2(*this, aData, aLength, 0);
//C       }
  
//C       ~nsString()
//C       {
//C         NS_StringContainerFinish(*this);
//C       }

//C       const char_type* get() const
//C       {
//C         const char_type* data;
//C         NS_StringGetData(*this, &data);
//C         return data;
//C       }
  
//C       self_type& operator=(const self_type& aString)              { Assign(aString);   return *this; }
//C       self_type& operator=(const abstract_string_type& aReadable) { Assign(aReadable); return *this; }
//C       self_type& operator=(const char_type* aPtr)                 { Assign(aPtr);      return *this; }
//C       self_type& operator=(char_type aChar)                       { Assign(aChar);     return *this; }

//C       void Adopt(const char_type *aData, size_type aLength = PR_UINT32_MAX)
//C       {
//C         NS_StringContainerFinish(*this);
//C         NS_StringContainerInit2(*this, aData, aLength,
//C                                 NS_STRING_CONTAINER_INIT_ADOPT);
//C       }

//C     protected:
  
//C       nsString(const char_type* aData, size_type aLength, PRUint32 aFlags)
//C       {
//C         NS_StringContainerInit2(*this, aData, aLength, aFlags);
//C       }
//C     };
struct nsString_external{}

//C     class nsCString : public nsCStringContainer
//C     {
//C     public:
//C       typedef nsCString        self_type;
//C       typedef nsACString       abstract_string_type;

//C       nsCString()
//C       {
//C         NS_CStringContainerInit(*this);
//C       }

//C       nsCString(const self_type& aString)
//C       {
//C         NS_CStringContainerInit(*this);
//C         NS_CStringCopy(*this, aString);
//C       }

//C       explicit
//C       nsCString(const abstract_string_type& aReadable)
//C       {
//C         NS_CStringContainerInit(*this);
//C         NS_CStringCopy(*this, aReadable);
//C       }

//C       explicit
//C       nsCString(const char_type* aData, size_type aLength = PR_UINT32_MAX)
//C       {
//C         NS_CStringContainerInit(*this);
//C         NS_CStringSetData(*this, aData, aLength);
//C       }
  
//C       ~nsCString()
//C       {
//C         NS_CStringContainerFinish(*this);
//C       }

//C       const char_type* get() const
//C       {
//C         const char_type* data;
//C         NS_CStringGetData(*this, &data);
//C         return data;
//C       }
  
//C       self_type& operator=(const self_type& aString)              { Assign(aString);   return *this; }
//C       self_type& operator=(const abstract_string_type& aReadable) { Assign(aReadable); return *this; }
//C       self_type& operator=(const char_type* aPtr)                 { Assign(aPtr);      return *this; }
//C       self_type& operator=(char_type aChar)                       { Assign(aChar);     return *this; }

//C       void Adopt(const char_type *aData, size_type aLength = PR_UINT32_MAX)
//C       {
//C         NS_CStringContainerFinish(*this);
//C         NS_CStringContainerInit2(*this, aData, aLength,
//C                                  NS_CSTRING_CONTAINER_INIT_ADOPT);
//C       }

//C     protected:
  
//C       nsCString(const char_type* aData, size_type aLength, PRUint32 aFlags)
//C       {
//C         NS_CStringContainerInit2(*this, aData, aLength, aFlags);
//C       }
//C     };
struct nsCString_external{}


/**
 * dependent strings
 */

//C     class nsDependentString : public nsString
//C     {
//C     public:
//C       typedef nsDependentString         self_type;

//C       nsDependentString() {}

//C       explicit
//C       nsDependentString(const char_type* aData, size_type aLength = PR_UINT32_MAX)
//C         : nsString(aData, aLength, NS_CSTRING_CONTAINER_INIT_DEPEND)
//C       {}

//C       void Rebind(const char_type* aData, size_type aLength = PR_UINT32_MAX)
//C       {
//C         NS_StringContainerFinish(*this);
//C         NS_StringContainerInit2(*this, aData, aLength,
//C                                 NS_STRING_CONTAINER_INIT_DEPEND);
//C       }
  
//C     private:
//C       self_type& operator=(const self_type& aString); // NOT IMPLEMENTED
//C     };
struct nsDependentString_external{}

//C     class nsDependentCString : public nsCString
//C     {
//C     public:
//C       typedef nsDependentCString        self_type;

//C       nsDependentCString() {}

//C       explicit
//C       nsDependentCString(const char_type* aData, size_type aLength = PR_UINT32_MAX)
//C         : nsCString(aData, aLength, NS_CSTRING_CONTAINER_INIT_DEPEND)
//C       {}

//C       void Rebind(const char_type* aData, size_type aLength = PR_UINT32_MAX)
//C       {
//C         NS_CStringContainerFinish(*this);
//C         NS_CStringContainerInit2(*this, aData, aLength,
//C                                  NS_CSTRING_CONTAINER_INIT_DEPEND);
//C       }
  
//C     private:
//C       self_type& operator=(const self_type& aString); // NOT IMPLEMENTED
//C     };
struct nsDependentCString_external{}


/**
 * conversion classes
 */

//C     class NS_ConvertASCIItoUTF16 : public nsString
//C     {
//C     public:
//C       typedef NS_ConvertASCIItoUTF16    self_type;

//C       explicit
//C       NS_ConvertASCIItoUTF16(const nsACString& aStr)
//C       {
//C         NS_CStringToUTF16(aStr, NS_CSTRING_ENCODING_ASCII, *this);
//C       }

//C       explicit
//C       NS_ConvertASCIItoUTF16(const char* aData, PRUint32 aLength = PR_UINT32_MAX)
//C       {
//C         NS_CStringToUTF16(nsDependentCString(aData, aLength),
//C                           NS_CSTRING_ENCODING_ASCII, *this);
//C       }

//C     private:
//C       self_type& operator=(const self_type& aString); // NOT IMPLEMENTED
//C     };
struct NS_ConvertASCIItoUTF16_external{}

//C     class NS_ConvertUTF8toUTF16 : public nsString
//C     {
//C     public:
//C       typedef NS_ConvertUTF8toUTF16    self_type;

//C       explicit
//C       NS_ConvertUTF8toUTF16(const nsACString& aStr)
//C       {
//C         NS_CStringToUTF16(aStr, NS_CSTRING_ENCODING_UTF8, *this);
//C       }

//C       explicit
//C       NS_ConvertUTF8toUTF16(const char* aData, PRUint32 aLength = PR_UINT32_MAX)
//C       {
//C         NS_CStringToUTF16(nsDependentCString(aData, aLength),
//C                           NS_CSTRING_ENCODING_UTF8, *this);
//C       }

//C     private:
//C       self_type& operator=(const self_type& aString); // NOT IMPLEMENTED
//C     };
struct NS_ConvertUTF8toUTF16_external{}

//C     class NS_ConvertUTF16toUTF8 : public nsCString
//C     {
//C     public:
//C       typedef NS_ConvertUTF16toUTF8    self_type;

//C       explicit
//C       NS_ConvertUTF16toUTF8(const nsAString& aStr)
//C       {
//C         NS_UTF16ToCString(aStr, NS_CSTRING_ENCODING_UTF8, *this);
//C       }

//C       explicit
//C       NS_ConvertUTF16toUTF8(const PRUnichar* aData, PRUint32 aLength = PR_UINT32_MAX)
//C       {
//C         NS_UTF16ToCString(nsDependentString(aData, aLength),
//C                           NS_CSTRING_ENCODING_UTF8, *this);
//C       }

//C     private:
//C       self_type& operator=(const self_type& aString); // NOT IMPLEMENTED
//C     };
struct NS_ConvertUTF16toUTF8_external{}

//C     class NS_LossyConvertUTF16toASCII : public nsCString
//C     {
//C     public:
//C       typedef NS_LossyConvertUTF16toASCII    self_type;

//C       explicit
//C       NS_LossyConvertUTF16toASCII(const nsAString& aStr)
//C       {
//C         NS_UTF16ToCString(aStr, NS_CSTRING_ENCODING_ASCII, *this);
//C       }

//C       explicit
//C       NS_LossyConvertUTF16toASCII(const PRUnichar* aData, PRUint32 aLength = PR_UINT32_MAX)
//C       {
//C         NS_UTF16ToCString(nsDependentString(aData, aLength),
//C                           NS_CSTRING_ENCODING_ASCII, *this);
//C       }

//C     private:
//C       self_type& operator=(const self_type& aString); // NOT IMPLEMENTED
//C     };
struct NS_LossyConvertUTF16toASCII_external{}


/**
 * literal strings
 *
 * NOTE: HAVE_CPP_2BYTE_WCHAR_T may be automatically defined for some platforms
 * in nscore.h.  On other platforms, it may be defined in xpcom-config.h.
 * Under GCC, this define should only be set if compiling with -fshort-wchar.
 */

//C     #ifdef HAVE_CPP_2BYTE_WCHAR_T
//C       #define NS_LL(s)                                L##s
//C       #define NS_MULTILINE_LITERAL_STRING(s)          nsDependentString(NS_REINTERPRET_CAST(const nsAString::char_type*, s), PRUint32((sizeof(s)/sizeof(wchar_t))-1))
//C       #define NS_MULTILINE_LITERAL_STRING_INIT(n,s)   n(NS_REINTERPRET_CAST(const nsAString::char_type*, s), PRUint32((sizeof(s)/sizeof(wchar_t))-1))
//C       #define NS_NAMED_MULTILINE_LITERAL_STRING(n,s)  const nsDependentString n(NS_REINTERPRET_CAST(const nsAString::char_type*, s), PRUint32((sizeof(s)/sizeof(wchar_t))-1))
//C       typedef nsDependentString nsLiteralString;
//C     #else
//C       #define NS_LL(s)                                s
//C       #define NS_MULTILINE_LITERAL_STRING(s)          NS_ConvertASCIItoUTF16(s, PRUint32(sizeof(s)-1))
//C       #define NS_MULTILINE_LITERAL_STRING_INIT(n,s)   n(s, PRUint32(sizeof(s)-1))
//C       #define NS_NAMED_MULTILINE_LITERAL_STRING(n,s)  const NS_ConvertASCIItoUTF16 n(s, PRUint32(sizeof(s)-1))
//C       typedef NS_ConvertASCIItoUTF16 nsLiteralString;
//C     #endif

/*
 * Macro arguments used in concatenation or stringification won't be expanded.
 * Therefore, in order for |NS_L(FOO)| to work as expected (which is to expand
 * |FOO| before doing whatever |NS_L| needs to do to it) a helper macro needs
 * to be inserted in between to allow the macro argument to expand.
 * See "3.10.6 Separate Expansion of Macro Arguments" of the CPP manual for a
 * more accurate and precise explanation.
 */

//C     #define NS_L(s)                                   NS_LL(s)

//C     #define NS_LITERAL_STRING(s)                      NS_STATIC_CAST(const nsString&, NS_MULTILINE_LITERAL_STRING(NS_LL(s)))
//C     #define NS_LITERAL_STRING_INIT(n,s)               NS_MULTILINE_LITERAL_STRING_INIT(n, NS_LL(s))
//C     #define NS_NAMED_LITERAL_STRING(n,s)              NS_NAMED_MULTILINE_LITERAL_STRING(n, NS_LL(s))

//C     #define NS_LITERAL_CSTRING(s)                     NS_STATIC_CAST(const nsDependentCString&, nsDependentCString(s, PRUint32(sizeof(s)-1)))
//C     #define NS_LITERAL_CSTRING_INIT(n,s)              n(s, PRUint32(sizeof(s)-1))
//C     #define NS_NAMED_LITERAL_CSTRING(n,s)             const nsDependentCString n(s, PRUint32(sizeof(s)-1))

//C     typedef nsDependentCString nsLiteralCString;


/**
 * getter_Copies support
 *
 *    NS_IMETHOD GetBlah(PRUnichar**);
 *
 *    void some_function()
 *    {
 *      nsString blah;
 *      GetBlah(getter_Copies(blah));
 *      // ...
 *    }
 */

//C     class nsGetterCopies
//C     {
//C     public:
//C       typedef PRUnichar char_type;

//C       nsGetterCopies(nsString& aStr)
//C         : mString(aStr), mData(nsnull)
//C       {}

//C       ~nsGetterCopies()
//C       {
//C         mString.Adopt(mData);
//C       }

//C       operator char_type**()
//C       {
//C         return &mData;
//C       }

//C     private:
//C       nsString&  mString;
//C       char_type* mData;
//C     };
struct nsGetterCopies_external
{
  private:
	alias PRUnichar char_type;
    nsString_external *mString;
    char_type *mData;
}

//C     inline nsGetterCopies
//C     getter_Copies(nsString& aString)
//C     {
//C       return nsGetterCopies(aString);
//C     }

//C     class nsCGetterCopies
//C     {
//C     public:
//C       typedef char char_type;

//C       nsCGetterCopies(nsCString& aStr)
//C         : mString(aStr), mData(nsnull)
//C       {}

//C       ~nsCGetterCopies()
//C       {
//C         mString.Adopt(mData);
//C       }

//C       operator char_type**()
//C       {
//C         return &mData;
//C       }

//C     private:
//C       nsCString& mString;
//C       char_type* mData;
//C     };
struct nsCGetterCopies_external
{
  private:
	alias char char_type;
    nsCString_external *mString;
    char_type *mData;
}

//C     inline nsCGetterCopies
//C     getter_Copies(nsCString& aString)
//C     {
//C       return nsCGetterCopies(aString);
//C     }


/**
* substrings
*/

//C     class nsDependentSubstring : public nsStringContainer
//C     {
//C     public:
//C       typedef nsDependentSubstring self_type;
//C       typedef nsAString            abstract_string_type;

//C       ~nsDependentSubstring()
//C       {
//C         NS_StringContainerFinish(*this);
//C       }

//C       nsDependentSubstring()
//C       {
//C         NS_StringContainerInit(*this);
//C       }

//C       nsDependentSubstring(const char_type *aStart, PRUint32 aLength)
//C       {
//C         NS_StringContainerInit2(*this, aStart, aLength,
//C                                 NS_STRING_CONTAINER_INIT_DEPEND |
//C                                 NS_STRING_CONTAINER_INIT_SUBSTRING);
//C       }

//C       nsDependentSubstring(const abstract_string_type& aStr,
//C                            PRUint32 aStartPos)
//C       {
//C         const PRUnichar* data;
//C         PRUint32 len = NS_StringGetData(aStr, &data);
//C         NS_StringContainerInit2(*this, data + aStartPos, len - aStartPos,
//C                                 NS_STRING_CONTAINER_INIT_DEPEND |
//C                                 NS_STRING_CONTAINER_INIT_SUBSTRING);
//C       }

//C       nsDependentSubstring(const abstract_string_type& aStr,
//C                            PRUint32 aStartPos, PRUint32 aLength)
//C       {
//C         const PRUnichar* data;
//C     #ifdef DEBUG
//C         PRUint32 len =
//C     #endif
//C         NS_StringGetData(aStr, &data);
//C         NS_ASSERTION(aStartPos + aLength <= len, "bad length");
//C         NS_StringContainerInit2(*this, data + aStartPos, aLength,
//C                                 NS_STRING_CONTAINER_INIT_DEPEND |
//C                                 NS_STRING_CONTAINER_INIT_SUBSTRING);
//C       }

//C       void Rebind(const char_type *aStart, PRUint32 aLength)
//C       {
//C         NS_StringContainerFinish(*this);
//C         NS_StringContainerInit2(*this, aStart, aLength,
//C                                 NS_STRING_CONTAINER_INIT_DEPEND |
//C                                 NS_STRING_CONTAINER_INIT_SUBSTRING);
//C       }

//C     private:
//C       self_type& operator=(const self_type& aString); // NOT IMPLEMENTED
//C     };
struct nsDependentSubstring_external{}

//C     class nsDependentCSubstring : public nsCStringContainer
//C     {
//C     public:
//C       typedef nsDependentCSubstring self_type;
//C       typedef nsACString            abstract_string_type;

//C       ~nsDependentCSubstring()
//C       {
//C         NS_CStringContainerFinish(*this);
//C       }

//C       nsDependentCSubstring()
//C       {
//C         NS_CStringContainerInit(*this);
//C       }

//C       nsDependentCSubstring(const char_type *aStart, PRUint32 aLength)
//C       {
//C         NS_CStringContainerInit2(*this, aStart, aLength,
//C                                  NS_CSTRING_CONTAINER_INIT_DEPEND |
//C                                  NS_CSTRING_CONTAINER_INIT_SUBSTRING);
//C       }

//C       nsDependentCSubstring(const abstract_string_type& aStr,
//C                             PRUint32 aStartPos)
//C       {
//C         const char* data;
//C         PRUint32 len = NS_CStringGetData(aStr, &data);
//C         NS_CStringContainerInit2(*this, data + aStartPos, len - aStartPos,
//C                                  NS_CSTRING_CONTAINER_INIT_DEPEND |
//C                                  NS_CSTRING_CONTAINER_INIT_SUBSTRING);
//C       }

//C       nsDependentCSubstring(const abstract_string_type& aStr,
//C                             PRUint32 aStartPos, PRUint32 aLength)
//C       {
//C         const char* data;
//C     #ifdef DEBUG
//C         PRUint32 len =
//C     #endif
//C         NS_CStringGetData(aStr, &data);
//C         NS_ASSERTION(aStartPos + aLength <= len, "bad length");
//C         NS_CStringContainerInit2(*this, data + aStartPos, aLength,
//C                                  NS_CSTRING_CONTAINER_INIT_DEPEND |
//C                                  NS_CSTRING_CONTAINER_INIT_SUBSTRING);
//C       }

//C       void Rebind(const char_type *aStart, PRUint32 aLength)
//C       {
//C         NS_CStringContainerFinish(*this);
//C         NS_CStringContainerInit2(*this, aStart, aLength,
//C                                  NS_CSTRING_CONTAINER_INIT_DEPEND |
//C                                  NS_CSTRING_CONTAINER_INIT_SUBSTRING);
//C       }

//C     private:
//C       self_type& operator=(const self_type& aString); // NOT IMPLEMENTED
//C     };
struct nsDependentCSubstring_external{}


/**
 * Various nsDependentC?Substring constructor functions
 */

// PRUnichar
//C     inline
//C     const nsDependentSubstring
//C     Substring( const nsAString& str, PRUint32 startPos )
//C     {
//C       return nsDependentSubstring(str, startPos);
//C     }

//C     inline
//C     const nsDependentSubstring
//C     Substring( const nsAString& str, PRUint32 startPos, PRUint32 length )
//C     {
//C       return nsDependentSubstring(str, startPos, length);
//C     }

//C     inline
//C     const nsDependentSubstring
//C     Substring( const PRUnichar* start, const PRUnichar* end )
//C     {
//C       return nsDependentSubstring(start, end - start);
//C     }

//C     inline
//C     const nsDependentSubstring
//C     Substring( const PRUnichar* start, PRUint32 length )
//C     {
//C       return nsDependentSubstring(start, length);
//C     }

//C     inline
//C     const nsDependentSubstring
//C     StringHead( const nsAString& str, PRUint32 count )
//C     {
//C       return nsDependentSubstring(str, 0, count);
//C     }

//C     inline
//C     const nsDependentSubstring
//C     StringTail( const nsAString& str, PRUint32 count )
//C     {
//C       return nsDependentSubstring(str, str.Length() - count, count);
//C     }

// char
//C     inline
//C     const nsDependentCSubstring
//C     Substring( const nsACString& str, PRUint32 startPos )
//C     {
//C       return nsDependentCSubstring(str, startPos);
//C     }

//C     inline
//C     const nsDependentCSubstring
//C     Substring( const nsACString& str, PRUint32 startPos, PRUint32 length )
//C     {
//C       return nsDependentCSubstring(str, startPos, length);
//C     }

//C     inline
//C     const nsDependentCSubstring
//C     Substring( const char* start, const char* end )
//C     {
//C       return nsDependentCSubstring(start, end - start);
//C     }

//C     inline
//C     const nsDependentCSubstring
//C     Substring( const char* start, PRUint32 length )
//C     {
//C       return nsDependentCSubstring(start, length);
//C     }

//C     inline
//C     const nsDependentCSubstring
//C     StringHead( const nsACString& str, PRUint32 count )
//C     {
//C       return nsDependentCSubstring(str, 0, count);
//C     }

//C     inline
//C     const nsDependentCSubstring
//C     StringTail( const nsACString& str, PRUint32 count )
//C     {
//C       return nsDependentCSubstring(str, str.Length() - count, count);
//C     }


/*
 * Canonical empty strings
 */

//C     #define EmptyCString() nsCString()
//C     #define EmptyString() nsString()

//C     #endif // MOZILLA_INTERNAL_API

//C     #endif // nsStringAPI_h__
