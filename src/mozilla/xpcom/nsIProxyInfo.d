/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProxyInfo.idl
 */

module mozilla.xpcom.nsIProxyInfo;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIProxyInfo */
const char[] NS_IPROXYINFO_IID_STR = "3fe9308b-1608-4fa0-933c-c5ec2c6175fd";

const nsIID NS_IPROXYINFO_IID= 
  {0x3fe9308b, 0x1608, 0x4fa0, 
    [ 0x93, 0x3c, 0xc5, 0xec, 0x2c, 0x61, 0x75, 0xfd ]};

/**
 * This interface identifies a proxy server.
 *
 * @status UNDER_REVIEW
 */
extern(Windows)
interface nsIProxyInfo : nsISupports {
  static const char[] IID_STR = NS_IPROXYINFO_IID_STR;
  static const nsIID IID = NS_IPROXYINFO_IID;

  /**
   * This attribute specifies the hostname of the proxy server.
   */
  /* readonly attribute AUTF8String host; */
  nsresult GetHost(nsACString * aHost);

  /**
   * This attribute specifies the port number of the proxy server.
   */
  /* readonly attribute long port; */
  nsresult GetPort(PRInt32 *aPort);

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
  nsresult GetType(nsACString * aType);

  /**
   * This attribute specifies flags that modify the proxy type.  The value of
   * this attribute is the bit-wise combination of the Proxy Flags defined
   * below.  Any undefined bits are reserved for future use.
   */
  /* readonly attribute unsigned long flags; */
  nsresult GetFlags(PRUint32 *aFlags);

  /**
   * This attribute specifies the failover timeout in seconds for this proxy.
   * If a nsIProxyInfo is reported as failed via nsIProtocolProxyService::
   * getFailoverForProxy, then the failed proxy will not be used again for this
   * many seconds.
   */
  /* readonly attribute unsigned long failoverTimeout; */
  nsresult GetFailoverTimeout(PRUint32 *aFailoverTimeout);

  /**
   * This attribute specifies the proxy to failover to when this proxy fails.
   */
  /* attribute nsIProxyInfo failoverProxy; */
  nsresult GetFailoverProxy(nsIProxyInfo  *aFailoverProxy);
  nsresult SetFailoverProxy(nsIProxyInfo  aFailoverProxy);

  /****************************************************************************
   * The following "Proxy Flags" may be bit-wise combined to construct the flags
   * attribute defined on this interface.
   */
/**
   * This flag is set if the proxy is to perform name resolution itself.  If
   * this is the case, the hostname is used in some fashion, and we shouldn't
   * do any form of DNS lookup ourselves.
   */
  enum { TRANSPARENT_PROXY_RESOLVES_HOST = 1U };

}

