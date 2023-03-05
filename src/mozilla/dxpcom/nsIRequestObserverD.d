/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRequestObserver.idl
 */

module mozilla.dxpcom.nsIRequestObserverD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIRequestObserver;


public import mozilla.dxpcom.nsIRequestObserverD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIRequest;

public import mozilla.dxpcom.nsIRequestD;


/* starting wrapper class:    nsIRequestObserver */
/**
 * nsIRequestObserver
 *
 * @status FROZEN
 */
class nsIRequestObserverD : public nsISupportsD {

  static const nsIID IID = NS_IREQUESTOBSERVER_IID;


  alias nsIRequestObserver InnerType;

  this(nsIRequestObserver intr){
    super(intr);
    this.inner = intr;
  }

  nsIRequestObserver opCast() {
    return inner;
  }

  void opAssign(nsIRequestObserver value) {
    inner = value;
  }

  /**
     * Called to signify the beginning of an asynchronous request.
     *
     * @param aRequest request being observed
     * @param aContext user defined context
     *
     * An exception thrown from onStartRequest has the side-effect of
     * causing the request to be canceled.
     */
  /* void onStartRequest (in nsIRequest aRequest, in nsISupports aContext); */
  void OnStartRequest(nsIRequestD aRequest, nsISupportsD aContext){
    nsresult __result = inner.OnStartRequest(aRequest ? cast(nsIRequest)aRequest : null, aContext ? cast(nsISupports)aContext : null);
    CheckException(__result);
  }

  /**
     * Called to signify the end of an asynchronous request.  This
     * call is always preceded by a call to onStartRequest.
     *
     * @param aRequest request being observed
     * @param aContext user defined context
     * @param aStatusCode reason for stopping (NS_OK if completed successfully)
     *
     * An exception thrown from onStopRequest is generally ignored.
     */
  /* void onStopRequest (in nsIRequest aRequest, in nsISupports aContext, in nsresult aStatusCode); */
  void OnStopRequest(nsIRequestD aRequest, nsISupportsD aContext, nsresult aStatusCode){
    nsresult __result = inner.OnStopRequest(aRequest ? cast(nsIRequest)aRequest : null, aContext ? cast(nsISupports)aContext : null, aStatusCode);
    CheckException(__result);
  }

private:
  nsIRequestObserver inner;

}

