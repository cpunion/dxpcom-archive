/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISocketTransportService.idl
 */

module mozilla.dxpcom.nsISocketTransportServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISocketTransportService;


public import mozilla.dxpcom.nsISocketTransportServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsISocketTransport;

public import mozilla.dxpcom.nsISocketTransportD;

public import mozilla.xpcom.nsIProxyInfo;

public import mozilla.dxpcom.nsIProxyInfoD;


/* starting wrapper class:    nsISocketTransportService */
class nsISocketTransportServiceD : public nsISupportsD {

  static const nsIID IID = NS_ISOCKETTRANSPORTSERVICE_IID;


  alias nsISocketTransportService InnerType;

  this(nsISocketTransportService intr){
    super(intr);
    this.inner = intr;
  }

  nsISocketTransportService opCast() {
    return inner;
  }

  void opAssign(nsISocketTransportService value) {
    inner = value;
  }

  /**
     * Creates a transport for a specified host and port.
     *
     * @param aSocketTypes
     *        array of socket type strings.  null if using default socket type.
     * @param aTypeCount
     *        specifies length of aSocketTypes.
     * @param aHost
     *        specifies the target hostname or IP address literal of the peer
     *        for this socket.
     * @param aPort
     *        specifies the target port of the peer for this socket.
     * @param aProxyInfo
     *        specifies the transport-layer proxy type to use.  null if no
     *        proxy.  used for communicating information about proxies like
     *        SOCKS (which are transparent to upper protocols).
     * 
     * @see nsIProxiedProtocolHandler
     * @see nsIProtocolProxyService::GetProxyInfo
     */
  /* nsISocketTransport createTransport ([array, size_is (aTypeCount)] in string aSocketTypes, in unsigned long aTypeCount, in AUTF8String aHost, in long aPort, in nsIProxyInfo aProxyInfo); */
  nsISocketTransportD  CreateTransport(char**aSocketTypes, PRUint32 aTypeCount, char[] aHost, PRInt32 aPort, nsIProxyInfoD aProxyInfo){
    scope auto _aHost = new ACString(aHost);
    nsISocketTransport _retval;
    nsresult __result = inner.CreateTransport(aSocketTypes, aTypeCount, cast(nsACString*)_aHost, aPort, aProxyInfo ? cast(nsIProxyInfo)aProxyInfo : null, &_retval);
    CheckException(__result);
    return new nsISocketTransportD(_retval);
  }

private:
  nsISocketTransportService inner;

}

