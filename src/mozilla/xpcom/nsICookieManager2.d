/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICookieManager2.idl
 */

module mozilla.xpcom.nsICookieManager2;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsICookieManager;

public import mozilla.xpcom.nsICookie2; /* forward declaration */


/* starting interface:    nsICookieManager2 */
const char[] NS_ICOOKIEMANAGER2_IID_STR = "3e73ff5f-154e-494f-b640-3c654ba2cc2b";

const nsIID NS_ICOOKIEMANAGER2_IID= 
  {0x3e73ff5f, 0x154e, 0x494f, 
    [ 0xb6, 0x40, 0x3c, 0x65, 0x4b, 0xa2, 0xcc, 0x2b ]};

/** 
 * Additions to the frozen nsICookieManager
 */
extern(Windows)
interface nsICookieManager2 : nsICookieManager {
  static const char[] IID_STR = NS_ICOOKIEMANAGER2_IID_STR;
  static const nsIID IID = NS_ICOOKIEMANAGER2_IID;

  /**
   * Add a cookie. nsICookieService is the normal way to do this. This
   * method is something of a backdoor.
   *
   * @param aDomain
   *        the host or domain for which the cookie is set. presence of a
   *        leading dot indicates a domain cookie; otherwise, the cookie
   *        is treated as a non-domain cookie. see RFC2109.
   * @param aPath
   *        path within the domain for which the cookie is valid
   * @param aName
   *        cookie name
   * @param aValue
   *        cookie data
   * @param aSecure
   *        true if the cookie should only be sent over a secure connection.
   * @param aIsSession
   *        true if the cookie should exist for the current session only.
   * @param aExpiry
   *        expiration date, in seconds since the epoch. only relevant if
   *        aIsSession is false.
   */
  /* void add (in AUTF8String aDomain, in AUTF8String aPath, in ACString aName, in ACString aValue, in boolean aSecure, in boolean aIsSession, in PRInt64 aExpiry); */
  nsresult Add(nsACString * aDomain, nsACString * aPath, nsACString * aName, nsACString * aValue, PRBool aSecure, PRBool aIsSession, PRInt64 aExpiry);

  /**
   * Find whether a matching cookie already exists, and how many cookies
   * a given host has already set. This is useful when e.g. prompting the
   * user whether to accept a given cookie.
   *
   * @param aCookie
   *        the cookie to look for
   * @param aCountFromHost
   *        the number of cookies found whose hosts are the same as, or
   *        subdomains of, the host field of aCookie
   *
   * @return true if a cookie was found which matches the host, path, and name
   *         fields of aCookie
   */
  /* boolean findMatchingCookie (in nsICookie2 aCookie, out unsigned long aCountFromHost); */
  nsresult FindMatchingCookie(nsICookie2 aCookie, PRUint32 *aCountFromHost, PRBool *_retval);

}

