/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProtocolProxyCallback.idl
 */

module mozilla.dxpcom.nsIProtocolProxyCallbackD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIProtocolProxyCallback;


public import mozilla.dxpcom.nsIProtocolProxyCallbackD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIProxyInfo;

public import mozilla.dxpcom.nsIProxyInfoD;

public import mozilla.xpcom.nsICancelable;

public import mozilla.dxpcom.nsICancelableD;


/* starting wrapper class:    nsIProtocolProxyCallback */
/**
 * This interface servers as a closure for nsIProtocolProxyService's
 * asyncResolve method.
 *
 * @status UNDER_REVIEW
 */
class nsIProtocolProxyCallbackD : public nsISupportsD {

  static const nsIID IID = NS_IPROTOCOLPROXYCALLBACK_IID;


  alias nsIProtocolProxyCallback InnerType;

  this(nsIProtocolProxyCallback intr){
    super(intr);
    this.inner = intr;
  }

  nsIProtocolProxyCallback opCast() {
    return inner;
  }

  void opAssign(nsIProtocolProxyCallback value) {
    inner = value;
  }

  /**
   * This method is called when proxy info is available or when an error
   * in the proxy resolution occurs.
   *
   * @param aRequest
   *        The value returned from asyncResolve.
   * @param aURI
   *        The URI passed to asyncResolve.
   * @param aProxyInfo
   *        The resulting proxy info or null if there is no associated proxy
   *        info for aURI.  As with the result of nsIProtocolProxyService's
   *        resolve method, a null result implies that a direct connection
   *        should be used.
   * @param aStatus
   *        The status of the callback.  This is a failure code if the request
   *        could not be satisfied, in which case the value of aStatus
   *        indicates the reason for the failure.
   */
  /* void onProxyAvailable (in nsICancelable aRequest, in nsIURI aURI, in nsIProxyInfo aProxyInfo, in nsresult aStatus); */
  void OnProxyAvailable(nsICancelableD aRequest, nsIURID aURI, nsIProxyInfoD aProxyInfo, nsresult aStatus){
    nsresult __result = inner.OnProxyAvailable(aRequest ? cast(nsICancelable)aRequest : null, aURI ? cast(nsIURI)aURI : null, aProxyInfo ? cast(nsIProxyInfo)aProxyInfo : null, aStatus);
    CheckException(__result);
  }

private:
  nsIProtocolProxyCallback inner;

}

