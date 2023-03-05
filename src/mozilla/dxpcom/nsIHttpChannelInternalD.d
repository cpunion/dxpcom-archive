/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIHttpChannelInternal.idl
 */

module mozilla.dxpcom.nsIHttpChannelInternalD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIHttpChannelInternal;


public import mozilla.dxpcom.nsIHttpChannelInternalD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIProxyInfo;

public import mozilla.dxpcom.nsIProxyInfoD;


/* starting wrapper class:    nsIHttpChannelInternal */
/** 
 * Dumping ground for http.  This interface will never be frozen.  If you are 
 * using any feature exposed by this interface, be aware that this interface 
 * will change and you will be broken.  You have been warned.
 */
class nsIHttpChannelInternalD : public nsISupportsD {

  static const nsIID IID = NS_IHTTPCHANNELINTERNAL_IID;


  alias nsIHttpChannelInternal InnerType;

  this(nsIHttpChannelInternal intr){
    super(intr);
    this.inner = intr;
  }

  nsIHttpChannelInternal opCast() {
    return inner;
  }

  void opAssign(nsIHttpChannelInternal value) {
    inner = value;
  }

  /**
     * An http channel can own a reference to the document URI
     */
  /* attribute nsIURI documentURI; */
  nsIURID  DocumentURI(){
    nsIURI value;
    nsresult __result = inner.GetDocumentURI(&value);
    CheckException(__result);
    return new nsIURID(value);
  }
  void DocumentURI(nsIURID  aDocumentURI){
    nsIURI value;
    nsresult __result = inner.SetDocumentURI(value);
    CheckException(__result);
  }

  /**
     * Get the major/minor version numbers for the request
     */
  /* void getRequestVersion (out unsigned long major, out unsigned long minor); */
  void GetRequestVersion(out PRUint32 major, out PRUint32 minor){
    nsresult __result = inner.GetRequestVersion(&major, &minor);
    CheckException(__result);
  }

  /**
     * Get the major/minor version numbers for the response
     */
  /* void getResponseVersion (out unsigned long major, out unsigned long minor); */
  void GetResponseVersion(out PRUint32 major, out PRUint32 minor){
    nsresult __result = inner.GetResponseVersion(&major, &minor);
    CheckException(__result);
  }

  /**
     * Helper method to set a cookie with a consumer-provided
     * cookie header, _but_ using the channel's other information
     * (URI's, prompters, date headers etc).
     *
     * @param aCookieHeader
     *        The cookie header to be parsed.
     */
  /* void setCookie (in string aCookieHeader); */
  void SetCookie(char*aCookieHeader){
    nsresult __result = inner.SetCookie(aCookieHeader);
    CheckException(__result);
  }

  /**
     * Get the proxy info in use by the channel.
     */
  /* readonly attribute nsIProxyInfo proxyInfo; */
  nsIProxyInfoD  ProxyInfo(){
    nsIProxyInfo value;
    nsresult __result = inner.GetProxyInfo(&value);
    CheckException(__result);
    return new nsIProxyInfoD(value);
  }

private:
  nsIHttpChannelInternal inner;

}

