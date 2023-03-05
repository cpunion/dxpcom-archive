/* Converted to D from nsXPCOM.h by htod */
module mozilla.xpcom.nsXPCOM;
/* -*- Mode: C++; tab-width: 8; indent-tabs-mode: nil; c-basic-offset: 4 -*- */
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
 * The Original Code is mozilla.org code.
 *
 * The Initial Developer of the Original Code is
 * Netscape Communications Corporation.
 * Portions created by the Initial Developer are Copyright (C) 1998
 * the Initial Developer. All Rights Reserved.
 *
 * Contributor(s):
 *   Benjamin Smedberg <benjamin@smedbergs.us>
 *
 * Alternatively, the contents of this file may be used under the terms of
 * either of the GNU General Public License Version 2 or later (the "GPL"),
 * or the GNU Lesser General Public License Version 2.1 or later (the "LGPL"),
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

//C     #ifndef nsXPCOM_h__
//C     #define nsXPCOM_h__

// Map frozen functions to private symbol names if not using strict API.
//C     #ifdef MOZILLA_INTERNAL_API
//C     # define NS_InitXPCOM2               NS_InitXPCOM2_P
//C     # define NS_InitXPCOM3               NS_InitXPCOM3_P
//C     # define NS_ShutdownXPCOM            NS_ShutdownXPCOM_P
//C     # define NS_GetServiceManager        NS_GetServiceManager_P
//C     # define NS_GetComponentManager      NS_GetComponentManager_P
//C     # define NS_GetComponentRegistrar    NS_GetComponentRegistrar_P
//C     # define NS_GetMemoryManager         NS_GetMemoryManager_P
//C     # define NS_NewLocalFile             NS_NewLocalFile_P
//C     # define NS_NewNativeLocalFile       NS_NewNativeLocalFile_P
//C     # define NS_GetDebug                 NS_GetDebug_P
//C     # define NS_GetTraceRefcnt           NS_GetTraceRefcnt_P
//C     # define NS_Alloc                    NS_Alloc_P
//C     # define NS_Realloc                  NS_Realloc_P
//C     # define NS_Free                     NS_Free_P
//C     #endif

//C     #include "nscore.h"
public import mozilla.xpcom.nscore;
//C     #include "nsXPCOMCID.h"
import mozilla.xpcom.nsXPCOMCID;

import mozilla.xpcom.nsStringAPI;
import mozilla.xpcom.nsIModule;
import mozilla.xpcom.nsIComponentManager;
import mozilla.xpcom.nsIComponentRegistrar;
import mozilla.xpcom.nsIServiceManager;
import mozilla.xpcom.nsIFile;
import mozilla.xpcom.nsILocalFile;
import mozilla.xpcom.nsIDirectoryServiceProvider;
import mozilla.xpcom.nsIMemory;
import mozilla.xpcom.nsIDebug;
import mozilla.xpcom.nsITraceRefcnt;


extern (C):
//C     class nsAString;
//C     class nsACString;

//C     class nsIModule;
//C     class nsIComponentManager;
//C     class nsIComponentRegistrar;
//C     class nsIServiceManager;
//C     class nsIFile;
//C     class nsILocalFile;
//C     class nsIDirectoryServiceProvider;
//C     class nsIMemory;
//C     class nsIDebug;
//C     class nsITraceRefcnt;

/**
 * Every XPCOM component implements this function signature, which is the
 * only entrypoint XPCOM uses to the function.
 *
 * @status FROZEN
 */
//C     typedef nsresult (PR_CALLBACK *nsGetModuleProc)(nsIComponentManager *aCompMgr,
//C                                                     nsIFile* location,
//C                                                     nsIModule** return_cobj);
alias nsresult function (nsIComponentManager, nsIFile, nsIModule*) nsGetModuleProc;

/**
 * Initialises XPCOM. You must call one of the NS_InitXPCOM methods
 * before proceeding to use xpcom. The one exception is that you may
 * call NS_NewLocalFile to create a nsIFile.
 * 
 * @status FROZEN
 *
 * @note Use <CODE>NS_NewLocalFile</CODE> or <CODE>NS_NewNativeLocalFile</CODE> 
 *       to create the file object you supply as the bin directory path in this
 *       call. The function may be safely called before the rest of XPCOM or 
 *       embedding has been initialised.
 *
 * @param result           The service manager.  You may pass null.
 *
 * @param binDirectory     The directory containing the component
 *                         registry and runtime libraries;
 *                         or use <CODE>nsnull</CODE> to use the working
 *                         directory.
 *
 * @param appFileLocationProvider The object to be used by Gecko that specifies
 *                         to Gecko where to find profiles, the component
 *                         registry preferences and so on; or use
 *                         <CODE>nsnull</CODE> for the default behaviour.
 *
 * @see NS_NewLocalFile
 * @see nsILocalFile
 * @see nsIDirectoryServiceProvider
 *
 * @return NS_OK for success;
 *         NS_ERROR_NOT_INITIALIZED if static globals were not initialized,
 *         which can happen if XPCOM is reloaded, but did not completly
 *         shutdown. Other error codes indicate a failure during
 *         initialisation.
 */
//C     extern "C" NS_COM nsresult
//C     NS_InitXPCOM2(nsIServiceManager* *result, 
//C                   nsIFile* binDirectory,
//C                   nsIDirectoryServiceProvider* appFileLocationProvider);

nsresult  NS_InitXPCOM2(
	nsIServiceManager *result,
	nsIFile binDirectory,
	nsIDirectoryServiceProvider appFileLocationProvider);

/**
 * Some clients of XPCOM have statically linked components (not dynamically
 * loaded component DLLs), which can be passed to NS_InitXPCOM3 using this
 * structure.
 *
 * @status FROZEN
 */
//C     struct nsStaticModuleInfo {
//C       const char      *name;
//C       nsGetModuleProc  getModule;
//C     };
struct nsStaticModuleInfo
{
    char *name;
    nsGetModuleProc getModule;
}

/**
 * Initialises XPCOM with static components. You must call one of the
 * NS_InitXPCOM methods before proceeding to use xpcom. The one
 * exception is that you may call NS_NewLocalFile to create a nsIFile.
 * 
 * @status FROZEN
 *
 * @note Use <CODE>NS_NewLocalFile</CODE> or <CODE>NS_NewNativeLocalFile</CODE> 
 *       to create the file object you supply as the bin directory path in this
 *       call. The function may be safely called before the rest of XPCOM or 
 *       embedding has been initialised.
 *
 * @param result           The service manager.  You may pass null.
 *
 * @param binDirectory     The directory containing the component
 *                         registry and runtime libraries;
 *                         or use <CODE>nsnull</CODE> to use the working
 *                         directory.
 *
 * @param appFileLocationProvider The object to be used by Gecko that specifies
 *                         to Gecko where to find profiles, the component
 *                         registry preferences and so on; or use
 *                         <CODE>nsnull</CODE> for the default behaviour.
 *
 * @param staticComponents An array of static components. Passing null causes
 *                         default (builtin) components to be registered, if
 *                         present.
 * @param componentCount   Number of elements in staticComponents
 *
 * @see NS_NewLocalFile
 * @see nsILocalFile
 * @see nsIDirectoryServiceProvider
 * @see XRE_GetStaticComponents
 *
 * @return NS_OK for success;
 *         NS_ERROR_NOT_INITIALIZED if static globals were not initialized,
 *         which can happen if XPCOM is reloaded, but did not completly
 *         shutdown. Other error codes indicate a failure during
 *         initialisation.
 */
//C     extern "C" NS_COM nsresult
//C     NS_InitXPCOM3(nsIServiceManager* *result, 
//C                   nsIFile* binDirectory,
//C                   nsIDirectoryServiceProvider* appFileLocationProvider,
//C                   nsStaticModuleInfo const *staticComponents,
//C                   PRUint32 componentCount);
nsresult  NS_InitXPCOM3(
	nsIServiceManager *result,
	nsIFile binDirectory,
	nsIDirectoryServiceProvider appFileLocationProvider,
	nsStaticModuleInfo* staticComponents,
	PRUint32 componentCount);

/**
 * Shutdown XPCOM. You must call this method after you are finished
 * using xpcom. 
 *
 * @status FROZEN
 *
 * @param servMgr           The service manager which was returned by NS_InitXPCOM.
 *                          This will release servMgr.  You may pass null.
 *
 * @return NS_OK for success;
 *         other error codes indicate a failure during initialisation.
 *
 */
//C     extern "C" NS_COM nsresult
//C     NS_ShutdownXPCOM(nsIServiceManager* servMgr);
nsresult  NS_ShutdownXPCOM(nsIServiceManager servMgr);


/**
 * Public Method to access to the service manager.
 * 
 * @status FROZEN
 * @param result Interface pointer to the service manager 
 *
 * @return NS_OK for success;
 *         other error codes indicate a failure during initialisation.
 *
 */
//C     extern "C" NS_COM nsresult
//C     NS_GetServiceManager(nsIServiceManager* *result);
nsresult  NS_GetServiceManager(nsIServiceManager *result);

/**
 * Public Method to access to the component manager.
 * 
 * @status FROZEN
 * @param result Interface pointer to the service 
 *
 * @return NS_OK for success;
 *         other error codes indicate a failure during initialisation.
 *
 */
//C     extern "C" NS_COM nsresult
//C     NS_GetComponentManager(nsIComponentManager* *result);
nsresult  NS_GetComponentManager(nsIComponentManager *result);

/**
 * Public Method to access to the component registration manager.
 * 
 * @status FROZEN
 * @param result Interface pointer to the service 
 *
 * @return NS_OK for success;
 *         other error codes indicate a failure during initialisation.
 *
 */
//C     extern "C" NS_COM nsresult
//C     NS_GetComponentRegistrar(nsIComponentRegistrar* *result);
nsresult  NS_GetComponentRegistrar(nsIComponentRegistrar *result);

/**
 * Public Method to access to the memory manager.  See nsIMemory
 * 
 * @status FROZEN
 * @param result Interface pointer to the memory manager 
 *
 * @return NS_OK for success;
 *         other error codes indicate a failure during initialisation.
 *
 */
//C     extern "C" NS_COM nsresult
//C     NS_GetMemoryManager(nsIMemory* *result);
nsresult  NS_GetMemoryManager(nsIMemory *result);

/**
 * Public Method to create an instance of a nsILocalFile.  This function
 * may be called prior to NS_InitXPCOM.
 * 
 * @status FROZEN
 * 
 *   @param path       
 *       A string which specifies a full file path to a 
 *       location.  Relative paths will be treated as an
 *       error (NS_ERROR_FILE_UNRECOGNIZED_PATH).       
 *       |NS_NewNativeLocalFile|'s path must be in the 
 *       filesystem charset.
 *   @param followLinks
 *       This attribute will determine if the nsLocalFile will auto
 *       resolve symbolic links.  By default, this value will be false
 *       on all non unix systems.  On unix, this attribute is effectively
 *       a noop.  
 * @param result Interface pointer to a new instance of an nsILocalFile 
 *
 * @return NS_OK for success;
 *         other error codes indicate a failure.
 */

//C     extern "C" NS_COM nsresult
//C     NS_NewLocalFile(const nsAString &path, 
//C                     PRBool followLinks, 
//C                     nsILocalFile* *result);
nsresult  NS_NewLocalFile(nsAString path, PRBool followLinks, nsILocalFile *result);

//C     extern "C" NS_COM nsresult
//C     NS_NewNativeLocalFile(const nsACString &path, 
//C                           PRBool followLinks, 
//C                           nsILocalFile* *result);
nsresult  NS_NewNativeLocalFile(nsACString path, PRBool followLinks, nsILocalFile *result);

/**
 * Allocates a block of memory of a particular size. If the memory cannot
 * be allocated (because of an out-of-memory condition), null is returned.
 *
 * @status FROZEN
 *
 * @param size   The size of the block to allocate
 * @result       The block of memory
 * @note         This function is thread-safe.
 */
//C     extern "C" NS_COM void*
//C     NS_Alloc(PRSize size);
void * NS_Alloc(PRSize size);

/**
 * Reallocates a block of memory to a new size.
 *
 * @status FROZEN
 *
 * @param ptr     The block of memory to reallocate. This block must originally
                  have been allocated by NS_Alloc or NS_Realloc
 * @param size    The new size. If 0, frees the block like NS_Free
 * @result        The reallocated block of memory
 * @note          This function is thread-safe.
 *
 * If ptr is null, this function behaves like NS_Alloc.
 * If s is the size of the block to which ptr points, the first min(s, size)
 * bytes of ptr's block are copied to the new block. If the allocation
 * succeeds, ptr is freed and a pointer to the new block is returned. If the
 * allocation fails, ptr is not freed and null is returned. The returned
 * value may be the same as ptr.
 */
//C     extern "C" NS_COM void*
//C     NS_Realloc(void* ptr, PRSize size);
void * NS_Realloc(void *ptr, PRSize size);

/**
 * Frees a block of memory. Null is a permissible value, in which case no
 * action is taken.
 *
 * @status FROZEN
 *
 * @param ptr   The block of memory to free. This block must originally have
 *              been allocated by NS_Alloc or NS_Realloc
 * @note        This function is thread-safe.
 */
//C     extern "C" NS_COM void
//C     NS_Free(void* ptr);
void  NS_Free(void *ptr);


/**
 * Categories (in the category manager service) used by XPCOM:
 */

/**
 * A category which is read after component registration but before
 * the "xpcom-startup" notifications. Each category entry is treated
 * as the contract ID of a service which implements
 * nsIDirectoryServiceProvider. Each directory service provider is
 * installed in the global directory service.
 *
 * @status FROZEN
 */
//C     #define XPCOM_DIRECTORY_PROVIDER_CATEGORY "xpcom-directory-providers"

/**
 * A category which is read after component registration but before
 * NS_InitXPCOM returns. Each category entry is treated as the contractID of
 * a service: each service is instantiated, and if it implements nsIObserver
 * the nsIObserver.observe method is called with the "xpcom-startup" topic.
 *
 * @status FROZEN
 */
//C     #define NS_XPCOM_STARTUP_CATEGORY "xpcom-startup"


/**
 * Observer topics (in the observer service) used by XPCOM:
 */

/**
 * At XPCOM startup after component registration is complete, the
 * following topic is notified. In order to receive this notification,
 * component must register their contract ID in the category manager,
 *
 * @see NS_XPCOM_STARTUP_CATEGORY
 * @status FROZEN
 */
//C     #define NS_XPCOM_STARTUP_OBSERVER_ID "xpcom-startup"

/**
 * At XPCOM shutdown, this topic is notified. All components must
 * release any interface references to objects in other modules when
 * this topic is notified.
 *
 * @status FROZEN
 */
//C     #define NS_XPCOM_SHUTDOWN_OBSERVER_ID "xpcom-shutdown"

/**
 * This topic is notified when an entry was added to a category in the
 * category manager. The subject of the notification will be the name of
 * the added entry as an nsISupportsCString, and the data will be the
 * name of the category.
 *
 * @status FROZEN
 */
//C     #define NS_XPCOM_CATEGORY_ENTRY_ADDED_OBSERVER_ID   "xpcom-category-entry-added"

/**
 * This topic is notified when an entry was removed from a category in the
 * category manager. The subject of the notification will be the name of
 * the removed entry as an nsISupportsCString, and the data will be the
 * name of the category.
 *
 * @status FROZEN
 */
//C     #define NS_XPCOM_CATEGORY_ENTRY_REMOVED_OBSERVER_ID   "xpcom-category-entry-removed"

/**
 * This topic is notified when an a category was cleared in the category
 * manager. The subject of the notification will be the category manager,
 * and the data will be the name of the cleared category.
 *
 * @status FROZEN
 */
//C     #define NS_XPCOM_CATEGORY_CLEARED_OBSERVER_ID "xpcom-category-cleared"

//C     extern "C" NS_COM nsresult
//C     NS_GetDebug(nsIDebug* *result);
nsresult  NS_GetDebug(nsIDebug **result);

//C     extern "C" NS_COM nsresult
//C     NS_GetTraceRefcnt(nsITraceRefcnt* *result);
nsresult  NS_GetTraceRefcnt(nsITraceRefcnt *result);

//C     #endif
