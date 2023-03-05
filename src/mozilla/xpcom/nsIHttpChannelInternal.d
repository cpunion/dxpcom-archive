/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIHttpChannelInternal.idl
 */

module mozilla.xpcom.nsIHttpChannelInternal;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIProxyInfo; /* forward declaration */


/* starting interface:    nsIHttpChannelInternal */
const char[] NS_IHTTPCHANNELINTERNAL_IID_STR = "f3764874-ed7e-4873-883c-11d67a4e3638";

const nsIID NS_IHTTPCHANNELINTERNAL_IID= 
  {0xf3764874, 0xed7e, 0x4873, 
    [ 0x88, 0x3c, 0x11, 0xd6, 0x7a, 0x4e, 0x36, 0x38 ]};

/** 
 * Dumping ground for http.  This interface will never be frozen.  If you are 
 * using any feature exposed by this interface, be aware that this interface 
 * will change and you will be broken.  You have been warned.
 */
extern(Windows)
interface nsIHttpChannelInternal : nsISupports {
  static const char[] IID_STR = NS_IHTTPCHANNELINTERNAL_IID_STR;
  static const nsIID IID = NS_IHTTPCHANNELINTERNAL_IID;

  /**
     * An http channel can own a reference to the document URI
     */
  /* attribute nsIURI documentURI; */
  nsresult GetDocumentURI(nsIURI  *aDocumentURI);
  nsresult SetDocumentURI(nsIURI  aDocumentURI);

  /**
     * Get the major/minor version numbers for the request
     */
  /* void getRequestVersion (out unsigned long major, out unsigned long minor); */
  nsresult GetRequestVersion(PRUint32 *major, PRUint32 *minor);

  /**
     * Get the major/minor version numbers for the response
     */
  /* void getResponseVersion (out unsigned long major, out unsigned long minor); */
  nsresult GetResponseVersion(PRUint32 *major, PRUint32 *minor);

  /**
     * Helper method to set a cookie with a consumer-provided
     * cookie header, _but_ using the channel's other information
     * (URI's, prompters, date headers etc).
     *
     * @param aCookieHeader
     *        The cookie header to be parsed.
     */
  /* void setCookie (in string aCookieHeader); */
  nsresult SetCookie(char *aCookieHeader);

  /**
     * Get the proxy info in use by the channel.
     */
  /* readonly attribute nsIProxyInfo proxyInfo; */
  nsresult GetProxyInfo(nsIProxyInfo  *aProxyInfo);

}

