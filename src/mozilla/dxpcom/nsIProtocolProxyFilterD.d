/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProtocolProxyFilter.idl
 */

module mozilla.dxpcom.nsIProtocolProxyFilterD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIProtocolProxyFilter;


public import mozilla.dxpcom.nsIProtocolProxyFilterD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIProtocolProxyService;

public import mozilla.dxpcom.nsIProtocolProxyServiceD;

public import mozilla.xpcom.nsIProxyInfo;

public import mozilla.dxpcom.nsIProxyInfoD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIProtocolProxyFilter */
/**
 * This interface is used to apply filters to the proxies selected for a given
 * URI.  Use nsIProtocolProxyService::registerFilter to hook up instances of
 * this interface.
 *
 * @status UNDER_REVIEW
 */
class nsIProtocolProxyFilterD : public nsISupportsD {

  static const nsIID IID = NS_IPROTOCOLPROXYFILTER_IID;


  alias nsIProtocolProxyFilter InnerType;

  this(nsIProtocolProxyFilter intr){
    super(intr);
    this.inner = intr;
  }

  nsIProtocolProxyFilter opCast() {
    return inner;
  }

  void opAssign(nsIProtocolProxyFilter value) {
    inner = value;
  }

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
  nsIProxyInfoD  ApplyFilter(nsIProtocolProxyServiceD aProxyService, nsIURID aURI, nsIProxyInfoD aProxy){
    nsIProxyInfo _retval;
    nsresult __result = inner.ApplyFilter(aProxyService ? cast(nsIProtocolProxyService)aProxyService : null, aURI ? cast(nsIURI)aURI : null, aProxy ? cast(nsIProxyInfo)aProxy : null, &_retval);
    CheckException(__result);
    return new nsIProxyInfoD(_retval);
  }

private:
  nsIProtocolProxyFilter inner;

}

