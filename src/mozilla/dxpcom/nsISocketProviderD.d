/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISocketProvider.idl
 */

module mozilla.dxpcom.nsISocketProviderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISocketProvider;


public import mozilla.dxpcom.nsISocketProviderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsISocketProvider */
/**
 * nsISocketProvider
 */
class nsISocketProviderD : public nsISupportsD {

  static const nsIID IID = NS_ISOCKETPROVIDER_IID;


  alias nsISocketProvider InnerType;

  this(nsISocketProvider intr){
    super(intr);
    this.inner = intr;
  }

  nsISocketProvider opCast() {
    return inner;
  }

  void opAssign(nsISocketProvider value) {
    inner = value;
  }

  /**
     * newSocket
     *
     * @param aFamily
     *        The address family for this socket (PR_AF_INET or PR_AF_INET6).
     * @param aHost
     *        The hostname for this connection.
     * @param aPort
     *        The port for this connection.
     * @param aProxyHost
     *        If non-null, the proxy hostname for this connection.
     * @param aProxyPort
     *        The proxy port for this connection.
     * @param aFlags
     *        Control flags that govern this connection (see below.)
     * @param aFileDesc
     *        The resulting PRFileDesc.
     * @param aSecurityInfo
     *        Any security info that should be associated with aFileDesc.  This
     *        object typically implements nsITransportSecurityInfo.
     */
  /* [noscript] void newSocket (in long aFamily, in string aHost, in long aPort, in string aProxyHost, in long aProxyPort, in unsigned long aFlags, out PRFileDescStar aFileDesc, out nsISupports aSecurityInfo); */
  void NewSocket(PRInt32 aFamily, char*aHost, PRInt32 aPort, char*aProxyHost, PRInt32 aProxyPort, PRUint32 aFlags, out PRFileDesc * aFileDesc, out nsISupportsD aSecurityInfo){
    nsISupports _aSecurityInfo;
    nsresult __result = inner.NewSocket(aFamily, aHost, aPort, aProxyHost, aProxyPort, aFlags, &aFileDesc, &_aSecurityInfo);
    CheckException(__result);
    aSecurityInfo = _aSecurityInfo ? new nsISupportsD(_aSecurityInfo) : null;
  }

  /**
     * addToSocket
     *
     * This function is called to allow the socket provider to layer a
     * PRFileDesc on top of another PRFileDesc.  For example, SSL via a SOCKS
     * proxy.
     *
     * Parameters are the same as newSocket with the exception of aFileDesc,
     * which is an in-param instead.
     */
  /* [noscript] void addToSocket (in long aFamily, in string aHost, in long aPort, in string aProxyHost, in long aProxyPort, in unsigned long aFlags, in PRFileDescStar aFileDesc, out nsISupports aSecurityInfo); */
  void AddToSocket(PRInt32 aFamily, char*aHost, PRInt32 aPort, char*aProxyHost, PRInt32 aProxyPort, PRUint32 aFlags, PRFileDesc * aFileDesc, out nsISupportsD aSecurityInfo){
    nsISupports _aSecurityInfo;
    nsresult __result = inner.AddToSocket(aFamily, aHost, aPort, aProxyHost, aProxyPort, aFlags, aFileDesc, &_aSecurityInfo);
    CheckException(__result);
    aSecurityInfo = _aSecurityInfo ? new nsISupportsD(_aSecurityInfo) : null;
  }

  /**
     * PROXY_RESOLVES_HOST
     *
     * This flag is set if the proxy is to perform hostname resolution instead
     * of the client.  When set, the hostname parameter passed when in this
     * interface will be used instead of the address structure passed for a
     * later connect et al. request.
     */
  enum { PROXY_RESOLVES_HOST = 1 }

private:
  nsISocketProvider inner;

}

