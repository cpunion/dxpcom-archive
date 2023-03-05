/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICookieConsent.idl
 */

module mozilla.xpcom.nsICookieConsent;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsICookie;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIHttpChannel; /* forward declaration */


/* starting interface:    nsICookieConsent */
const char[] NS_ICOOKIECONSENT_IID_STR = "f5a34f50-1f39-11d6-a627-0010a401eb10";

const nsIID NS_ICOOKIECONSENT_IID= 
  {0xf5a34f50, 0x1f39, 0x11d6, 
    [ 0xa6, 0x27, 0x00, 0x10, 0xa4, 0x01, 0xeb, 0x10 ]};

extern(Windows)
interface nsICookieConsent : nsISupports {
  static const char[] IID_STR = NS_ICOOKIECONSENT_IID_STR;
  static const nsIID IID = NS_ICOOKIECONSENT_IID;

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
  nsresult GetConsent(nsIURI uri, nsIHttpChannel httpChannel, PRBool isForeign, nsCookiePolicy *policy, nsCookieStatus *_retval);

}

