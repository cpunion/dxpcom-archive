/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProxyInfo.idl
 */

module mozilla.dxpcom.nsIProxyInfoD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIProxyInfo;


public import mozilla.dxpcom.nsIProxyInfoD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIProxyInfo */
/**
 * This interface identifies a proxy server.
 *
 * @status UNDER_REVIEW
 */
class nsIProxyInfoD : public nsISupportsD {

  static const nsIID IID = NS_IPROXYINFO_IID;


  alias nsIProxyInfo InnerType;

  this(nsIProxyInfo intr){
    super(intr);
    this.inner = intr;
  }

  nsIProxyInfo opCast() {
    return inner;
  }

  void opAssign(nsIProxyInfo value) {
    inner = value;
  }

  /**
   * This attribute specifies the hostname of the proxy server.
   */
  /* readonly attribute AUTF8String host; */
  char[] Host(){
    scope auto value = new ACString();
    nsresult __result = inner.GetHost(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * This attribute specifies the port number of the proxy server.
   */
  /* readonly attribute long port; */
  PRInt32 Port(){
    PRInt32 value;
    nsresult __result = inner.GetPort(&value);
    CheckException(__result);
    return value;
  }

  /**
   * This attribute specifies the type of the proxy server as an ASCII string.
   *
   * Some special values for this attribute include (but are not limited to)
   * the following:
   *   "http"     HTTP proxy (or SSL CONNECT for HTTPS)
   *   "socks"    SOCKS v5 proxy
   *   "socks4"   SOCKS v4 proxy
   *   "direct"   no proxy
   *   "unknown"  unknown proxy (see nsIProtocolProxyService::resolve)
   */
  /* readonly attribute ACString type; */
  char[] Type(){
    scope auto value = new ACString();
    nsresult __result = inner.GetType(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * This attribute specifies flags that modify the proxy type.  The value of
   * this attribute is the bit-wise combination of the Proxy Flags defined
   * below.  Any undefined bits are reserved for future use.
   */
  /* readonly attribute unsigned long flags; */
  PRUint32 Flags(){
    PRUint32 value;
    nsresult __result = inner.GetFlags(&value);
    CheckException(__result);
    return value;
  }

  /**
   * This attribute specifies the failover timeout in seconds for this proxy.
   * If a nsIProxyInfo is reported as failed via nsIProtocolProxyService::
   * getFailoverForProxy, then the failed proxy will not be used again for this
   * many seconds.
   */
  /* readonly attribute unsigned long failoverTimeout; */
  PRUint32 FailoverTimeout(){
    PRUint32 value;
    nsresult __result = inner.GetFailoverTimeout(&value);
    CheckException(__result);
    return value;
  }

  /**
   * This attribute specifies the proxy to failover to when this proxy fails.
   */
  /* attribute nsIProxyInfo failoverProxy; */
  nsIProxyInfoD  FailoverProxy(){
    nsIProxyInfo value;
    nsresult __result = inner.GetFailoverProxy(&value);
    CheckException(__result);
    return new nsIProxyInfoD(value);
  }
  void FailoverProxy(nsIProxyInfoD  aFailoverProxy){
    nsIProxyInfo value;
    nsresult __result = inner.SetFailoverProxy(value);
    CheckException(__result);
  }

  /****************************************************************************
   * The following "Proxy Flags" may be bit-wise combined to construct the flags
   * attribute defined on this interface.
   */
/**
   * This flag is set if the proxy is to perform name resolution itself.  If
   * this is the case, the hostname is used in some fashion, and we shouldn't
   * do any form of DNS lookup ourselves.
   */
  enum { TRANSPARENT_PROXY_RESOLVES_HOST = 1U }

private:
  nsIProxyInfo inner;

}

