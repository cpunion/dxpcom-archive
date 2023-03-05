/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICookie.idl
 */

module mozilla.dxpcom.nsICookieD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICookie;


public import mozilla.dxpcom.nsICookieD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsICookie */
class nsICookieD : public nsISupportsD {

  static const nsIID IID = NS_ICOOKIE_IID;


  alias nsICookie InnerType;

  this(nsICookie intr){
    super(intr);
    this.inner = intr;
  }

  nsICookie opCast() {
    return inner;
  }

  void opAssign(nsICookie value) {
    inner = value;
  }

  /**
     * the name of the cookie
     */
  /* readonly attribute ACString name; */
  char[] Name(){
    scope auto value = new ACString();
    nsresult __result = inner.GetName(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
     * the cookie value
     */
  /* readonly attribute ACString value; */
  char[] Value(){
    scope auto value = new ACString();
    nsresult __result = inner.GetValue(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
     * true if the cookie is a domain cookie, false otherwise
     */
  /* readonly attribute boolean isDomain; */
  PRBool IsDomain(){
    PRBool value;
    nsresult __result = inner.GetIsDomain(&value);
    CheckException(__result);
    return value;
  }

  /**
     * the host (possibly fully qualified) of the cookie
     */
  /* readonly attribute AUTF8String host; */
  char[] Host(){
    scope auto value = new ACString();
    nsresult __result = inner.GetHost(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
     * the path pertaining to the cookie
     */
  /* readonly attribute AUTF8String path; */
  char[] Path(){
    scope auto value = new ACString();
    nsresult __result = inner.GetPath(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
     * true if the cookie was transmitted over ssl, false otherwise
     */
  /* readonly attribute boolean isSecure; */
  PRBool IsSecure(){
    PRBool value;
    nsresult __result = inner.GetIsSecure(&value);
    CheckException(__result);
    return value;
  }

  /**
     * expiration time (local timezone) expressed as number of seconds since Jan 1, 1970
     */
  /* readonly attribute PRUint64 expires; */
  PRUint64 Expires(){
    PRUint64 value;
    nsresult __result = inner.GetExpires(&value);
    CheckException(__result);
    return value;
  }

  /**
     * P3P status of cookie.  Values are
     *
     *   STATUS_UNKNOWN -- cookie collected in a previous session and this info no longer available
     *   STATUS_ACCEPTED -- cookie was accepted as it
     *   STATUS_DOWNGRADED -- cookie was accepted but downgraded to a session cookie
     *   STATUS_FLAGGED -- cookie was accepted with a warning being issued to the user
     *   STATUS_REJECTED -- cookie was not accepted
     */
  enum { STATUS_UNKNOWN = 0 }

  enum { STATUS_ACCEPTED = 1 }

  enum { STATUS_DOWNGRADED = 2 }

  enum { STATUS_FLAGGED = 3 }

  enum { STATUS_REJECTED = 4 }

  /* readonly attribute nsCookieStatus status; */
  nsCookieStatus Status(){
    nsCookieStatus value;
    nsresult __result = inner.GetStatus(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Site's compact policy.  Values are
     *
     *   POLICY_UNKNOWN -- cookie collected in a previous session and this info no longer available
     *   POLICY_NONE -- site did not send a compact policy along with the cookie
     *   POLICY_NO_CONSENT -- site collects identfiable information without user involvement
     *   POLICY_IMPLICIT_CONSENT -- site collects identifiable information unless user opts out
     *   POLICY_EXPLICIT_CONSENT -- site does not collect identifiable information unless user opts in
     *   POLICY_NO_II -- site does not collect identifiable information
     */
  enum { POLICY_UNKNOWN = 0 }

  enum { POLICY_NONE = 1 }

  enum { POLICY_NO_CONSENT = 2 }

  enum { POLICY_IMPLICIT_CONSENT = 3 }

  enum { POLICY_EXPLICIT_CONSENT = 4 }

  enum { POLICY_NO_II = 5 }

  /* readonly attribute nsCookiePolicy policy; */
  nsCookiePolicy Policy(){
    nsCookiePolicy value;
    nsresult __result = inner.GetPolicy(&value);
    CheckException(__result);
    return value;
  }

private:
  nsICookie inner;

}

