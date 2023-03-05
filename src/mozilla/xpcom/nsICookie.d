/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICookie.idl
 */

module mozilla.xpcom.nsICookie;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

/** 
 * An optional interface for accessing the HTTP or
 * javascript cookie object
 * 
 * @status FROZEN
 */
alias PRInt32 nsCookieStatus;

alias PRInt32 nsCookiePolicy;


/* starting interface:    nsICookie */
const char[] NS_ICOOKIE_IID_STR = "e9fcb9a4-d376-458f-b720-e65e7df593bc";

const nsIID NS_ICOOKIE_IID= 
  {0xe9fcb9a4, 0xd376, 0x458f, 
    [ 0xb7, 0x20, 0xe6, 0x5e, 0x7d, 0xf5, 0x93, 0xbc ]};

extern(Windows)
interface nsICookie : nsISupports {
  static const char[] IID_STR = NS_ICOOKIE_IID_STR;
  static const nsIID IID = NS_ICOOKIE_IID;

  /**
     * the name of the cookie
     */
  /* readonly attribute ACString name; */
  nsresult GetName(nsACString * aName);

  /**
     * the cookie value
     */
  /* readonly attribute ACString value; */
  nsresult GetValue(nsACString * aValue);

  /**
     * true if the cookie is a domain cookie, false otherwise
     */
  /* readonly attribute boolean isDomain; */
  nsresult GetIsDomain(PRBool *aIsDomain);

  /**
     * the host (possibly fully qualified) of the cookie
     */
  /* readonly attribute AUTF8String host; */
  nsresult GetHost(nsACString * aHost);

  /**
     * the path pertaining to the cookie
     */
  /* readonly attribute AUTF8String path; */
  nsresult GetPath(nsACString * aPath);

  /**
     * true if the cookie was transmitted over ssl, false otherwise
     */
  /* readonly attribute boolean isSecure; */
  nsresult GetIsSecure(PRBool *aIsSecure);

  /**
     * expiration time (local timezone) expressed as number of seconds since Jan 1, 1970
     */
  /* readonly attribute PRUint64 expires; */
  nsresult GetExpires(PRUint64 *aExpires);

  /**
     * P3P status of cookie.  Values are
     *
     *   STATUS_UNKNOWN -- cookie collected in a previous session and this info no longer available
     *   STATUS_ACCEPTED -- cookie was accepted as it
     *   STATUS_DOWNGRADED -- cookie was accepted but downgraded to a session cookie
     *   STATUS_FLAGGED -- cookie was accepted with a warning being issued to the user
     *   STATUS_REJECTED -- cookie was not accepted
     */
  enum { STATUS_UNKNOWN = 0 };

  enum { STATUS_ACCEPTED = 1 };

  enum { STATUS_DOWNGRADED = 2 };

  enum { STATUS_FLAGGED = 3 };

  enum { STATUS_REJECTED = 4 };

  /* readonly attribute nsCookieStatus status; */
  nsresult GetStatus(nsCookieStatus *aStatus);

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
  enum { POLICY_UNKNOWN = 0 };

  enum { POLICY_NONE = 1 };

  enum { POLICY_NO_CONSENT = 2 };

  enum { POLICY_IMPLICIT_CONSENT = 3 };

  enum { POLICY_EXPLICIT_CONSENT = 4 };

  enum { POLICY_NO_II = 5 };

  /* readonly attribute nsCookiePolicy policy; */
  nsresult GetPolicy(nsCookiePolicy *aPolicy);

}

