/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIErrorService.idl
 */

module mozilla.xpcom.nsIErrorService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIErrorService */
const char[] NS_IERRORSERVICE_IID_STR = "e72f94b2-5f85-11d4-9877-00c04fa0cf4a";

const nsIID NS_IERRORSERVICE_IID= 
  {0xe72f94b2, 0x5f85, 0x11d4, 
    [ 0x98, 0x77, 0x00, 0xc0, 0x4f, 0xa0, 0xcf, 0x4a ]};

/**
 * nsIErrorService: This is an interim service that allows nsresult codes to be mapped to 
 * string bundles that can be used to look up error messages. String bundle keys can also
 * be mapped. 
 *
 * This service will eventually get replaced by extending xpidl to allow errors to be defined.
 * (http://bugzilla.mozilla.org/show_bug.cgi?id=13423).
 */
extern(Windows)
interface nsIErrorService : nsISupports {
  static const char[] IID_STR = NS_IERRORSERVICE_IID_STR;
  static const nsIID IID = NS_IERRORSERVICE_IID;

  /**
     * Registers a string bundle URL for an error module. Error modules are obtained from
     * nsresult code with NS_ERROR_GET_MODULE.
     */
  /* void registerErrorStringBundle (in short errorModule, in string stringBundleURL); */
  nsresult RegisterErrorStringBundle(PRInt16 errorModule, char *stringBundleURL);

  /**
     * Registers a string bundle URL for an error module.
     */
  /* void unregisterErrorStringBundle (in short errorModule); */
  nsresult UnregisterErrorStringBundle(PRInt16 errorModule);

  /**
     * Retrieves a string bundle URL for an error module.
     */
  /* string getErrorStringBundle (in short errorModule); */
  nsresult GetErrorStringBundle(PRInt16 errorModule, char **_retval);

  /**
     * Registers a key in a string bundle for an nsresult error code. Only the code portion
     * of the nsresult is used (obtained with NS_ERROR_GET_CODE) in this registration. The
     * string bundle key is used to look up internationalized messages in the string bundle.
     */
  /* void registerErrorStringBundleKey (in nsresult error, in string stringBundleKey); */
  nsresult RegisterErrorStringBundleKey(nsresult error, char *stringBundleKey);

  /**
     * Unregisters a key in a string bundle for an nsresult error code. 
     */
  /* void unregisterErrorStringBundleKey (in nsresult error); */
  nsresult UnregisterErrorStringBundleKey(nsresult error);

  /**
     * Retrieves a key in a string bundle for an nsresult error code. If no key is registered
     * for the specified nsresult's code (obtained with NS_ERROR_GET_CODE), then the stringified
     * version of the nsresult code is returned.
     */
  /* string getErrorStringBundleKey (in nsresult error); */
  nsresult GetErrorStringBundleKey(nsresult error, char **_retval);

}

