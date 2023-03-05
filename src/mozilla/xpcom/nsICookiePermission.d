/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICookiePermission.idl
 */

module mozilla.xpcom.nsICookiePermission;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsICookie2; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIChannel; /* forward declaration */

alias PRInt32 nsCookieAccess;


/* starting interface:    nsICookiePermission */
const char[] NS_ICOOKIEPERMISSION_IID_STR = "91f1c3ec-73a0-4bf0-bdc5-348a1f181b0e";

const nsIID NS_ICOOKIEPERMISSION_IID= 
  {0x91f1c3ec, 0x73a0, 0x4bf0, 
    [ 0xbd, 0xc5, 0x34, 0x8a, 0x1f, 0x18, 0x1b, 0x0e ]};

/**
 * An interface to test for cookie permissions
 */
extern(Windows)
interface nsICookiePermission : nsISupports {
  static const char[] IID_STR = NS_ICOOKIEPERMISSION_IID_STR;
  static const nsIID IID = NS_ICOOKIEPERMISSION_IID;

  /**
   * nsCookieAccess values
   */
  enum { ACCESS_DEFAULT = 0 };

  enum { ACCESS_ALLOW = 1 };

  enum { ACCESS_DENY = 2 };

  /**
   * additional values for nsCookieAccess, which are not directly used by
   * any methods on this interface, but are nevertheless convenient to define
   * here. these may be relocated somewhere else if we ever consider freezing
   * this interface.
   */
  enum { ACCESS_SESSION = 8 };

  /**
   * setAccess
   *
   * this method is called to block cookie access for the given URI.  this
   * may result in other URIs being blocked as well (e.g., URIs which share
   * the same host name).
   *
   * @param aURI
   *        the URI to block
   * @param aAccess
   *        the new cookie access for the URI.
   */
  /* void setAccess (in nsIURI aURI, in nsCookieAccess aAccess); */
  nsresult SetAccess(nsIURI aURI, nsCookieAccess aAccess);

  /**
   * canAccess
   *
   * this method is called to test whether or not the given URI/channel may
   * access the cookie database, either to set or get cookies.
   *
   * @param aURI
   *        the URI trying to access cookies
   * @param aFirstURI
   *        the URI initiated by the user that resulted in aURI being loaded
   * @param aChannel
   *        the channel corresponding to aURI
   *
   * @return one of the following nsCookieAccess values:
   *         ACCESS_DEFAULT, ACCESS_ALLOW, or ACCESS_DENY
   */
  /* nsCookieAccess canAccess (in nsIURI aURI, in nsIURI aFirstURI, in nsIChannel aChannel); */
  nsresult CanAccess(nsIURI aURI, nsIURI aFirstURI, nsIChannel aChannel, nsCookieAccess *_retval);

  /**
   * canSetCookie
   *
   * this method is called to test whether or not the given URI/channel may
   * set a specific cookie.  this method is always preceded by a call to
   * canAccess. it may modify the isSession and expiry attributes of the
   * cookie via the aIsSession and aExpiry parameters, in order to limit
   * or extend the lifetime of the cookie. this is useful, for instance, to
   * downgrade a cookie to session-only if it fails to meet certain criteria.
   *
   * @param aURI
   *        the URI trying to set the cookie
   * @param aChannel
   *        the corresponding to aURI
   * @param aCookie
   *        the cookie being added to the cookie database
   * @param aIsSession
   *        when canSetCookie is invoked, this is the current isSession attribute
   *        of the cookie. canSetCookie may leave this value unchanged to
   *        preserve this attribute of the cookie.
   * @param aExpiry
   *        when canSetCookie is invoked, this is the current expiry time of
   *        the cookie. canSetCookie may leave this value unchanged to
   *        preserve this attribute of the cookie.
   *
   * @return true if the cookie can be set.
   */
  /* boolean canSetCookie (in nsIURI aURI, in nsIChannel aChannel, in nsICookie2 aCookie, inout boolean aIsSession, inout PRInt64 aExpiry); */
  nsresult CanSetCookie(nsIURI aURI, nsIChannel aChannel, nsICookie2 aCookie, PRBool *aIsSession, PRInt64 *aExpiry, PRBool *_retval);

}

