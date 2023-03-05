/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICookieConsent.idl
 */

module mozilla.dxpcom.nsICookieConsentD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICookieConsent;


public import mozilla.dxpcom.nsICookieConsentD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsICookie;
public import mozilla.dxpcom.nsICookieD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIHttpChannel;

public import mozilla.dxpcom.nsIHttpChannelD;


/* starting wrapper class:    nsICookieConsent */
class nsICookieConsentD : public nsISupportsD {

  static const nsIID IID = NS_ICOOKIECONSENT_IID;


  alias nsICookieConsent InnerType;

  this(nsICookieConsent intr){
    super(intr);
    this.inner = intr;
  }

  nsICookieConsent opCast() {
    return inner;
  }

  void opAssign(nsICookieConsent value) {
    inner = value;
  }

  /**
   * getConsent
   *
   * gives a decision on what should be done with a cookie, based on a site's
   * p3p policy and the user's preferences. the policy for the given URI and
   * channel is also returned.
   *
   * @param uri
   *        the URI to find the policy for
   * @param httpChannel
   *        the channel to extract the p3p headers from
   * @param isForeign
   *        true if the cookie originates from a third-party site. this is used
   *        to decide the cookie status based on user preferences.
   * @param policy
   *        the policy for the given URI, or nsICookie::POLICY_UNKNOWN if one
   *        cannot be found. valid values are defined in nsICookie.idl.
   *
   * @return nsCookieStatus value. valid values are defined in nsICookie.idl.
   */
  /* nsCookieStatus getConsent (in nsIURI uri, in nsIHttpChannel httpChannel, in boolean isForeign, out nsCookiePolicy policy); */
  nsCookieStatus GetConsent(nsIURID uri, nsIHttpChannelD httpChannel, PRBool isForeign, out nsCookiePolicy policy){
    nsCookieStatus _retval;
    nsresult __result = inner.GetConsent(uri ? cast(nsIURI)uri : null, httpChannel ? cast(nsIHttpChannel)httpChannel : null, isForeign, &policy, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsICookieConsent inner;

}

