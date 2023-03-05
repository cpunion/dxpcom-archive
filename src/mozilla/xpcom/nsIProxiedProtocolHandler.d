/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProxiedProtocolHandler.idl
 */

module mozilla.xpcom.nsIProxiedProtocolHandler;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIProtocolHandler;

public import mozilla.xpcom.nsIChannel; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIProxyInfo; /* forward declaration */


/* starting interface:    nsIProxiedProtocolHandler */
const char[] NS_IPROXIEDPROTOCOLHANDLER_IID_STR = "0a24fed4-1dd2-11b2-a75c-9f8b9a8f9ba7";

const nsIID NS_IPROXIEDPROTOCOLHANDLER_IID= 
  {0x0a24fed4, 0x1dd2, 0x11b2, 
    [ 0xa7, 0x5c, 0x9f, 0x8b, 0x9a, 0x8f, 0x9b, 0xa7 ]};

extern(Windows)
interface nsIProxiedProtocolHandler : nsIProtocolHandler {
  static const char[] IID_STR = NS_IPROXIEDPROTOCOLHANDLER_IID_STR;
  static const nsIID IID = NS_IPROXIEDPROTOCOLHANDLER_IID;

  /** Create a new channel with the given proxyInfo
     *
     */
  /* nsIChannel newProxiedChannel (in nsIURI uri, in nsIProxyInfo proxyInfo); */
  nsresult NewProxiedChannel(nsIURI uri, nsIProxyInfo proxyInfo, nsIChannel *_retval);

}

