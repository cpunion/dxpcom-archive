/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICookieManager2.idl
 */

module mozilla.dxpcom.nsICookieManager2D;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICookieManager2;


public import mozilla.dxpcom.nsICookieManager2D;

public import mozilla.xpcom.nsICookieManager;
public import mozilla.dxpcom.nsICookieManagerD;

public import mozilla.xpcom.nsICookie2;

public import mozilla.dxpcom.nsICookie2D;


/* starting wrapper class:    nsICookieManager2 */
/** 
 * Additions to the frozen nsICookieManager
 */
class nsICookieManager2D : public nsICookieManagerD {

  static const nsIID IID = NS_ICOOKIEMANAGER2_IID;


  alias nsICookieManager2 InnerType;

  this(nsICookieManager2 intr){
    super(intr);
    this.inner = intr;
  }

  nsICookieManager2 opCast() {
    return inner;
  }

  void opAssign(nsICookieManager2 value) {
    inner = value;
  }

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
  void Add(char[] aDomain, char[] aPath, char[] aName, char[] aValue, PRBool aSecure, PRBool aIsSession, PRInt64 aExpiry){
    scope auto _aDomain = new ACString(aDomain);
    scope auto _aPath = new ACString(aPath);
    scope auto _aName = new ACString(aName);
    scope auto _aValue = new ACString(aValue);
    nsresult __result = inner.Add(cast(nsACString*)_aDomain, cast(nsACString*)_aPath, cast(nsACString*)_aName, cast(nsACString*)_aValue, aSecure, aIsSession, aExpiry);
    CheckException(__result);
  }

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
  PRBool FindMatchingCookie(nsICookie2D aCookie, out PRUint32 aCountFromHost){
    PRBool _retval;
    nsresult __result = inner.FindMatchingCookie(aCookie ? cast(nsICookie2)aCookie : null, &aCountFromHost, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsICookieManager2 inner;

}

