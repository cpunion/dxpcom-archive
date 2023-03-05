/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIExceptionService.idl
 */

module mozilla.xpcom.nsIExceptionService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIException;


/* starting interface:    nsIExceptionProvider */
const char[] NS_IEXCEPTIONPROVIDER_IID_STR = "0577744c-c1d2-47f2-8bcc-ce7a9e5a88fc";

const nsIID NS_IEXCEPTIONPROVIDER_IID= 
  {0x0577744c, 0xc1d2, 0x47f2, 
    [ 0x8b, 0xcc, 0xce, 0x7a, 0x9e, 0x5a, 0x88, 0xfc ]};

extern(Windows)
interface nsIExceptionProvider : nsISupports {
  static const char[] IID_STR = NS_IEXCEPTIONPROVIDER_IID_STR;
  static const nsIID IID = NS_IEXCEPTIONPROVIDER_IID;

  /** Gets an nsIException or returns NULL if not possible. **/
  /* nsIException getException (in nsresult result, in nsIException defaultException); */
  nsresult GetException(nsresult result, nsIException defaultException, nsIException *_retval);

}


/* starting interface:    nsIExceptionManager */
const char[] NS_IEXCEPTIONMANAGER_IID_STR = "efc9d00b-231c-4feb-852c-ac017266a415";

const nsIID NS_IEXCEPTIONMANAGER_IID= 
  {0xefc9d00b, 0x231c, 0x4feb, 
    [ 0x85, 0x2c, 0xac, 0x01, 0x72, 0x66, 0xa4, 0x15 ]};

extern(Windows)
interface nsIExceptionManager : nsISupports {
  static const char[] IID_STR = NS_IEXCEPTIONMANAGER_IID_STR;
  static const nsIID IID = NS_IEXCEPTIONMANAGER_IID;

  /** Sets (or clears with nsnull) the current error on the this thread. */
  /* void setCurrentException (in nsIException error); */
  nsresult SetCurrentException(nsIException error);

  /** Gets the current error for the current thread, or NULL if no error */
  /* nsIException getCurrentException (); */
  nsresult GetCurrentException(nsIException *_retval);

  /** Gets an exception from a registered exception provider..
        This has no effect on the "current exception" */
  /* nsIException getExceptionFromProvider (in nsresult rc, in nsIException defaultException); */
  nsresult GetExceptionFromProvider(nsresult rc, nsIException defaultException, nsIException *_retval);

}


/* starting interface:    nsIExceptionService */
const char[] NS_IEXCEPTIONSERVICE_IID_STR = "35a88f54-f267-4414-92a7-191f6454ab52";

const nsIID NS_IEXCEPTIONSERVICE_IID= 
  {0x35a88f54, 0xf267, 0x4414, 
    [ 0x92, 0xa7, 0x19, 0x1f, 0x64, 0x54, 0xab, 0x52 ]};

extern(Windows)
interface nsIExceptionService : nsIExceptionManager {
  static const char[] IID_STR = NS_IEXCEPTIONSERVICE_IID_STR;
  static const nsIID IID = NS_IEXCEPTIONSERVICE_IID;

  /** Obtains an exception manager for the current thread. */
  /* readonly attribute nsIExceptionManager currentExceptionManager; */
  nsresult GetCurrentExceptionManager(nsIExceptionManager  *aCurrentExceptionManager);

  /** Installs an "exception provider" which is capable of
        translating an nsresult into an exception.  This enables
        error providers to return simple nsresults and only provide
        rich errors when specifically requested. It also has the
        advantage of allowing code like the DOM to handle all errors
        in a single function rather than at each XPCOM entry point.
        NOTE: This interface must be thread-safe - it will be called
        on whatever thread needs the error translation performed.*/
  /* void registerExceptionProvider (in nsIExceptionProvider provider, in PRUint32 moduleCode); */
  nsresult RegisterExceptionProvider(nsIExceptionProvider provider, PRUint32 moduleCode);

  /* void unregisterExceptionProvider (in nsIExceptionProvider provider, in PRUint32 moduleCode); */
  nsresult UnregisterExceptionProvider(nsIExceptionProvider provider, PRUint32 moduleCode);

}

