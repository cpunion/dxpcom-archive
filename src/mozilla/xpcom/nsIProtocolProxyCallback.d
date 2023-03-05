/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProtocolProxyCallback.idl
 */

module mozilla.xpcom.nsIProtocolProxyCallback;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIProxyInfo; /* forward declaration */

public import mozilla.xpcom.nsICancelable; /* forward declaration */


/* starting interface:    nsIProtocolProxyCallback */
const char[] NS_IPROTOCOLPROXYCALLBACK_IID_STR = "a9967200-f95e-45c2-beb3-9b060d874bfd";

const nsIID NS_IPROTOCOLPROXYCALLBACK_IID= 
  {0xa9967200, 0xf95e, 0x45c2, 
    [ 0xbe, 0xb3, 0x9b, 0x06, 0x0d, 0x87, 0x4b, 0xfd ]};

/**
 * This interface servers as a closure for nsIProtocolProxyService's
 * asyncResolve method.
 *
 * @status UNDER_REVIEW
 */
extern(Windows)
interface nsIProtocolProxyCallback : nsISupports {
  static const char[] IID_STR = NS_IPROTOCOLPROXYCALLBACK_IID_STR;
  static const nsIID IID = NS_IPROTOCOLPROXYCALLBACK_IID;

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
  nsresult OnProxyAvailable(nsICancelable aRequest, nsIURI aURI, nsIProxyInfo aProxyInfo, nsresult aStatus);

}

