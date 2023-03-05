/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProxyAutoConfig.idl
 */

module mozilla.xpcom.nsIProxyAutoConfig;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIProxyAutoConfig */
const char[] NS_IPROXYAUTOCONFIG_IID_STR = "a42619df-0a1c-46fb-8154-0e9b8f8f1ea8";

const nsIID NS_IPROXYAUTOCONFIG_IID= 
  {0xa42619df, 0x0a1c, 0x46fb, 
    [ 0x81, 0x54, 0x0e, 0x9b, 0x8f, 0x8f, 0x1e, 0xa8 ]};

/** 
 * The nsIProxyAutoConfig interface is used for setting arbitrary proxy
 * configurations based on the specified URL. 
 *
 * Note this interface wraps (at least in the implementation) the older
 * hacks of proxy auto config. 
 *
 *  - Gagan Saksena 04/23/00 
 */
extern(Windows)
interface nsIProxyAutoConfig : nsISupports {
  static const char[] IID_STR = NS_IPROXYAUTOCONFIG_IID_STR;
  static const nsIID IID = NS_IPROXYAUTOCONFIG_IID;

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
  nsresult Init(nsACString * aPACURI, nsAString * aPACScript);

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
  nsresult GetProxyForURI(nsACString * aTestURI, nsACString * aTestHost, nsACString * _retval);

}

