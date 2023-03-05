/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIErrorService.idl
 */

module mozilla.dxpcom.nsIErrorServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIErrorService;


public import mozilla.dxpcom.nsIErrorServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIErrorService */
/**
 * nsIErrorService: This is an interim service that allows nsresult codes to be mapped to 
 * string bundles that can be used to look up error messages. String bundle keys can also
 * be mapped. 
 *
 * This service will eventually get replaced by extending xpidl to allow errors to be defined.
 * (http://bugzilla.mozilla.org/show_bug.cgi?id=13423).
 */
class nsIErrorServiceD : public nsISupportsD {

  static const nsIID IID = NS_IERRORSERVICE_IID;


  alias nsIErrorService InnerType;

  this(nsIErrorService intr){
    super(intr);
    this.inner = intr;
  }

  nsIErrorService opCast() {
    return inner;
  }

  void opAssign(nsIErrorService value) {
    inner = value;
  }

  /**
     * Registers a string bundle URL for an error module. Error modules are obtained from
     * nsresult code with NS_ERROR_GET_MODULE.
     */
  /* void registerErrorStringBundle (in short errorModule, in string stringBundleURL); */
  void RegisterErrorStringBundle(PRInt16 errorModule, char*stringBundleURL){
    nsresult __result = inner.RegisterErrorStringBundle(errorModule, stringBundleURL);
    CheckException(__result);
  }

  /**
     * Registers a string bundle URL for an error module.
     */
  /* void unregisterErrorStringBundle (in short errorModule); */
  void UnregisterErrorStringBundle(PRInt16 errorModule){
    nsresult __result = inner.UnregisterErrorStringBundle(errorModule);
    CheckException(__result);
  }

  /**
     * Retrieves a string bundle URL for an error module.
     */
  /* string getErrorStringBundle (in short errorModule); */
  char* GetErrorStringBundle(PRInt16 errorModule){
    char* _retval;
    nsresult __result = inner.GetErrorStringBundle(errorModule, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Registers a key in a string bundle for an nsresult error code. Only the code portion
     * of the nsresult is used (obtained with NS_ERROR_GET_CODE) in this registration. The
     * string bundle key is used to look up internationalized messages in the string bundle.
     */
  /* void registerErrorStringBundleKey (in nsresult error, in string stringBundleKey); */
  void RegisterErrorStringBundleKey(nsresult error, char*stringBundleKey){
    nsresult __result = inner.RegisterErrorStringBundleKey(error, stringBundleKey);
    CheckException(__result);
  }

  /**
     * Unregisters a key in a string bundle for an nsresult error code. 
     */
  /* void unregisterErrorStringBundleKey (in nsresult error); */
  void UnregisterErrorStringBundleKey(nsresult error){
    nsresult __result = inner.UnregisterErrorStringBundleKey(error);
    CheckException(__result);
  }

  /**
     * Retrieves a key in a string bundle for an nsresult error code. If no key is registered
     * for the specified nsresult's code (obtained with NS_ERROR_GET_CODE), then the stringified
     * version of the nsresult code is returned.
     */
  /* string getErrorStringBundleKey (in nsresult error); */
  char* GetErrorStringBundleKey(nsresult error){
    char* _retval;
    nsresult __result = inner.GetErrorStringBundleKey(error, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIErrorService inner;

}

