/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProtocolProxyFilter.idl
 */

module mozilla.xpcom.nsIProtocolProxyFilter;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIProtocolProxyService; /* forward declaration */

public import mozilla.xpcom.nsIProxyInfo; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    nsIProtocolProxyFilter */
const char[] NS_IPROTOCOLPROXYFILTER_IID_STR = "f424abd3-32b4-456c-9f45-b7e3376cb0d1";

const nsIID NS_IPROTOCOLPROXYFILTER_IID= 
  {0xf424abd3, 0x32b4, 0x456c, 
    [ 0x9f, 0x45, 0xb7, 0xe3, 0x37, 0x6c, 0xb0, 0xd1 ]};

/**
 * This interface is used to apply filters to the proxies selected for a given
 * URI.  Use nsIProtocolProxyService::registerFilter to hook up instances of
 * this interface.
 *
 * @status UNDER_REVIEW
 */
extern(Windows)
interface nsIProtocolProxyFilter : nsISupports {
  static const char[] IID_STR = NS_IPROTOCOLPROXYFILTER_IID_STR;
  static const nsIID IID = NS_IPROTOCOLPROXYFILTER_IID;

  /**
   * This method is called to apply proxy filter rules for the given URI
   * and proxy object (or list of proxy objects).
   *
   * @param aProxyService
   *        A reference to the Protocol Proxy Service.  This is passed so that
   *        implementations may easily access methods such as newProxyInfo.
   * @param aURI
   *        The URI for which these proxy settings apply.
   * @param aProxy
   *        The proxy (or list of proxies) that would be used by default for
   *        the given URI.  This may be null.
   *
   * @return The proxy (or list of proxies) that should be used in place of
   *         aProxy.  This can be just be aProxy if the filter chooses not to
   *         modify the proxy.  It can also be null to indicate that a direct
   *         connection should be used.  Use aProxyService.newProxyInfo to
   *         construct nsIProxyInfo objects.
   */
  /* nsIProxyInfo applyFilter (in nsIProtocolProxyService aProxyService, in nsIURI aURI, in nsIProxyInfo aProxy); */
  nsresult ApplyFilter(nsIProtocolProxyService aProxyService, nsIURI aURI, nsIProxyInfo aProxy, nsIProxyInfo *_retval);

}

