/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProxyAutoConfig.idl
 */

module mozilla.dxpcom.nsIProxyAutoConfigD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIProxyAutoConfig;


public import mozilla.dxpcom.nsIProxyAutoConfigD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIProxyAutoConfig */
/** 
 * The nsIProxyAutoConfig interface is used for setting arbitrary proxy
 * configurations based on the specified URL. 
 *
 * Note this interface wraps (at least in the implementation) the older
 * hacks of proxy auto config. 
 *
 *  - Gagan Saksena 04/23/00 
 */
class nsIProxyAutoConfigD : public nsISupportsD {

  static const nsIID IID = NS_IPROXYAUTOCONFIG_IID;


  alias nsIProxyAutoConfig InnerType;

  this(nsIProxyAutoConfig intr){
    super(intr);
    this.inner = intr;
  }

  nsIProxyAutoConfig opCast() {
    return inner;
  }

  void opAssign(nsIProxyAutoConfig value) {
    inner = value;
  }

  /**
     * This method initializes the object.  This method may be called multiple
     * times.  If either parameter is an empty value, then the object is
     * reset to its initial state.
     *
     * @param aPACURI
     *        URI used to fetch the PAC script.  This is needed for properly
     *        constructing the JS sandbox used to evaluate the PAC script.
     * @param aPACScript
     *        Javascript program text.
     */
  /* void init (in ACString aPACURI, in AString aPACScript); */
  void Init(char[] aPACURI, wchar[] aPACScript){
    scope auto _aPACURI = new ACString(aPACURI);
    scope auto _aPACScript = new AString(aPACScript);
    nsresult __result = inner.Init(cast(nsACString*)_aPACURI, cast(nsAString*)_aPACScript);
    CheckException(__result);
  }

  /**
     * Get the proxy string for the specified URI.  The proxy string is
     * given by the following:
     *   
     *   result      = proxy-spec *( proxy-sep proxy-spec )
     *   proxy-spec  = direct-type | proxy-type LWS proxy-host [":" proxy-port]
     *   direct-type = "DIRECT"
     *   proxy-type  = "PROXY" | "SOCKS" | "SOCKS4" | "SOCKS5"
     *   proxy-sep   = ";" LWS
     *   proxy-host  = hostname | ipv4-address-literal
     *   proxy-port  = <any 16-bit unsigned integer>
     *   LWS         = *( SP | HT )
     *   SP          = <US-ASCII SP, space (32)>
     *   HT          = <US-ASCII HT, horizontal-tab (9)>
     *
     * NOTE: direct-type and proxy-type are case insensitive
     * NOTE: SOCKS implies SOCKS4
     *
     * Examples:
     *   "PROXY proxy1.foo.com:8080; PROXY proxy2.foo.com:8080; DIRECT"
     *   "SOCKS socksproxy"
     *   "DIRECT"
     *
     * XXX add support for IPv6 address literals.
     * XXX quote whatever the official standard is for PAC.
     *
     * @param aTestURI
     *        The URI as an ASCII string to test.
     * @param aTestHost
     *        The ASCII hostname to test.
     *
     * @return PAC result string as defined above.
     */
  /* ACString getProxyForURI (in ACString aTestURI, in ACString aTestHost); */
  char[] GetProxyForURI(char[] aTestURI, char[] aTestHost){
    scope auto _aTestURI = new ACString(aTestURI);
    scope auto _aTestHost = new ACString(aTestHost);
    scope auto _retval = new ACString;
    nsresult __result = inner.GetProxyForURI(cast(nsACString*)_aTestURI, cast(nsACString*)_aTestHost, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsIProxyAutoConfig inner;

}

