/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProxiedProtocolHandler.idl
 */

module mozilla.dxpcom.nsIProxiedProtocolHandlerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIProxiedProtocolHandler;


public import mozilla.dxpcom.nsIProxiedProtocolHandlerD;

public import mozilla.xpcom.nsIProtocolHandler;
public import mozilla.dxpcom.nsIProtocolHandlerD;

public import mozilla.xpcom.nsIChannel;

public import mozilla.dxpcom.nsIChannelD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIProxyInfo;

public import mozilla.dxpcom.nsIProxyInfoD;


/* starting wrapper class:    nsIProxiedProtocolHandler */
class nsIProxiedProtocolHandlerD : public nsIProtocolHandlerD {

  static const nsIID IID = NS_IPROXIEDPROTOCOLHANDLER_IID;


  alias nsIProxiedProtocolHandler InnerType;

  this(nsIProxiedProtocolHandler intr){
    super(intr);
    this.inner = intr;
  }

  nsIProxiedProtocolHandler opCast() {
    return inner;
  }

  void opAssign(nsIProxiedProtocolHandler value) {
    inner = value;
  }

  /** Create a new channel with the given proxyInfo
     *
     */
  /* nsIChannel newProxiedChannel (in nsIURI uri, in nsIProxyInfo proxyInfo); */
  nsIChannelD  NewProxiedChannel(nsIURID uri, nsIProxyInfoD proxyInfo){
    nsIChannel _retval;
    nsresult __result = inner.NewProxiedChannel(uri ? cast(nsIURI)uri : null, proxyInfo ? cast(nsIProxyInfo)proxyInfo : null, &_retval);
    CheckException(__result);
    return new nsIChannelD(_retval);
  }

private:
  nsIProxiedProtocolHandler inner;

}

