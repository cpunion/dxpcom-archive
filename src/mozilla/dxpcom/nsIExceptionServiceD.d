/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIExceptionService.idl
 */

module mozilla.dxpcom.nsIExceptionServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIExceptionService;


public import mozilla.dxpcom.nsIExceptionServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIException;
public import mozilla.dxpcom.nsIExceptionD;


/* starting wrapper class:    nsIExceptionProvider */
class nsIExceptionProviderD : public nsISupportsD {

  static const nsIID IID = NS_IEXCEPTIONPROVIDER_IID;


  alias nsIExceptionProvider InnerType;

  this(nsIExceptionProvider intr){
    super(intr);
    this.inner = intr;
  }

  nsIExceptionProvider opCast() {
    return inner;
  }

  void opAssign(nsIExceptionProvider value) {
    inner = value;
  }

  /** Gets an nsIException or returns NULL if not possible. **/
  /* nsIException getException (in nsresult result, in nsIException defaultException); */
  nsIExceptionD  GetException(nsresult result, nsIExceptionD defaultException){
    nsIException _retval;
    nsresult __result = inner.GetException(result, defaultException ? cast(nsIException)defaultException : null, &_retval);
    CheckException(__result);
    return new nsIExceptionD(_retval);
  }

private:
  nsIExceptionProvider inner;

}


/* starting wrapper class:    nsIExceptionManager */
class nsIExceptionManagerD : public nsISupportsD {

  static const nsIID IID = NS_IEXCEPTIONMANAGER_IID;


  alias nsIExceptionManager InnerType;

  this(nsIExceptionManager intr){
    super(intr);
    this.inner = intr;
  }

  nsIExceptionManager opCast() {
    return inner;
  }

  void opAssign(nsIExceptionManager value) {
    inner = value;
  }

  /** Sets (or clears with nsnull) the current error on the this thread. */
  /* void setCurrentException (in nsIException error); */
  void SetCurrentException(nsIExceptionD error){
    nsresult __result = inner.SetCurrentException(error ? cast(nsIException)error : null);
    CheckException(__result);
  }

  /** Gets the current error for the current thread, or NULL if no error */
  /* nsIException getCurrentException (); */
  nsIExceptionD  GetCurrentException(){
    nsIException _retval;
    nsresult __result = inner.GetCurrentException(&_retval);
    CheckException(__result);
    return new nsIExceptionD(_retval);
  }

  /** Gets an exception from a registered exception provider..
        This has no effect on the "current exception" */
  /* nsIException getExceptionFromProvider (in nsresult rc, in nsIException defaultException); */
  nsIExceptionD  GetExceptionFromProvider(nsresult rc, nsIExceptionD defaultException){
    nsIException _retval;
    nsresult __result = inner.GetExceptionFromProvider(rc, defaultException ? cast(nsIException)defaultException : null, &_retval);
    CheckException(__result);
    return new nsIExceptionD(_retval);
  }

private:
  nsIExceptionManager inner;

}


/* starting wrapper class:    nsIExceptionService */
class nsIExceptionServiceD : public nsIExceptionManagerD {

  static const nsIID IID = NS_IEXCEPTIONSERVICE_IID;


  alias nsIExceptionService InnerType;

  this(nsIExceptionService intr){
    super(intr);
    this.inner = intr;
  }

  nsIExceptionService opCast() {
    return inner;
  }

  void opAssign(nsIExceptionService value) {
    inner = value;
  }

  /** Obtains an exception manager for the current thread. */
  /* readonly attribute nsIExceptionManager currentExceptionManager; */
  nsIExceptionManagerD  CurrentExceptionManager(){
    nsIExceptionManager value;
    nsresult __result = inner.GetCurrentExceptionManager(&value);
    CheckException(__result);
    return new nsIExceptionManagerD(value);
  }

  /** Installs an "exception provider" which is capable of
        translating an nsresult into an exception.  This enables
        error providers to return simple nsresults and only provide
        rich errors when specifically requested. It also has the
        advantage of allowing code like the DOM to handle all errors
        in a single function rather than at each XPCOM entry point.
        NOTE: This interface must be thread-safe - it will be called
        on whatever thread needs the error translation performed.*/
  /* void registerExceptionProvider (in nsIExceptionProvider provider, in PRUint32 moduleCode); */
  void RegisterExceptionProvider(nsIExceptionProviderD provider, PRUint32 moduleCode){
    nsresult __result = inner.RegisterExceptionProvider(provider ? cast(nsIExceptionProvider)provider : null, moduleCode);
    CheckException(__result);
  }

  /* void unregisterExceptionProvider (in nsIExceptionProvider provider, in PRUint32 moduleCode); */
  void UnregisterExceptionProvider(nsIExceptionProviderD provider, PRUint32 moduleCode){
    nsresult __result = inner.UnregisterExceptionProvider(provider ? cast(nsIExceptionProvider)provider : null, moduleCode);
    CheckException(__result);
  }

private:
  nsIExceptionService inner;

}

