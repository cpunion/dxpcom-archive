/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozISqlRequestObserver.idl
 */

module mozilla.dxpcom.mozISqlRequestObserverD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.mozISqlRequestObserver;


public import mozilla.dxpcom.mozISqlRequestObserverD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.mozISqlRequest;

public import mozilla.dxpcom.mozISqlRequestD;


/* starting wrapper class:    mozISqlRequestObserver */
/**
 * This observer interface is used to listen to asynchronous SQL query or
 * update requests.
 *
 * @status UNDER_REVIEW
 */
class mozISqlRequestObserverD : public nsISupportsD {

  static const nsIID IID = MOZISQLREQUESTOBSERVER_IID;


  alias mozISqlRequestObserver InnerType;

  this(mozISqlRequestObserver intr){
    super(intr);
    this.inner = intr;
  }

  mozISqlRequestObserver opCast() {
    return inner;
  }

  void opAssign(mozISqlRequestObserver value) {
    inner = value;
  }

  /**
   * This method will be called when the request is started.
   *
   * @param aRequest the request that has started
   * @param aContext a context that was supplied in the query/update call
   */
  /* void onStartRequest (in mozISqlRequest aRequest, in nsISupports aContext); */
  void OnStartRequest(mozISqlRequestD aRequest, nsISupportsD aContext){
    nsresult __result = inner.OnStartRequest(aRequest ? cast(mozISqlRequest)aRequest : null, aContext ? cast(nsISupports)aContext : null);
    CheckException(__result);
  }

  /**
   * This method will be called when the request has finished. This function
   * will be called in both success and error cases.
   *
   * @param aRequest the request that has started
   * @param aContext a context that was supplied in the query/update call
   */
  /* void onStopRequest (in mozISqlRequest aRequest, in nsISupports aContext); */
  void OnStopRequest(mozISqlRequestD aRequest, nsISupportsD aContext){
    nsresult __result = inner.OnStopRequest(aRequest ? cast(mozISqlRequest)aRequest : null, aContext ? cast(nsISupports)aContext : null);
    CheckException(__result);
  }

private:
  mozISqlRequestObserver inner;

}

