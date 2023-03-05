/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIHttpAuthManager.idl
 */

module mozilla.dxpcom.nsIHttpAuthManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIHttpAuthManager;


public import mozilla.dxpcom.nsIHttpAuthManagerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIHttpAuthManager */
/**
 * nsIHttpAuthManager
 *
 * This service provides access to cached HTTP authentication 
 * user credentials (domain, username, password) for sites
 * visited during the current browser session.
 *
 * This interface exists to provide other HTTP stacks with the
 * ability to share HTTP authentication credentials with Necko.
 * This is currently used by the Java plugin (version 1.5 and
 * higher) to avoid duplicate authentication prompts when the
 * Java client fetches content from a HTTP site that the user
 * has already logged into.
 */
class nsIHttpAuthManagerD : public nsISupportsD {

  static const nsIID IID = NS_IHTTPAUTHMANAGER_IID;


  alias nsIHttpAuthManager InnerType;

  this(nsIHttpAuthManager intr){
    super(intr);
    this.inner = intr;
  }

  nsIHttpAuthManager opCast() {
    return inner;
  }

  void opAssign(nsIHttpAuthManager value) {
    inner = value;
  }

  /**
     * Lookup auth identity.
     *
     * @param aScheme
     *        the URL scheme (e.g., "http").  NOTE: for proxy authentication,
     *        this should be "http" (this includes authentication for SSL
     *        tunneling).
     * @param aHost
     *        the host of the server issuing a challenge (ASCII only).
     * @param aPort
     *        the port of the server issuing a challenge.
     * @param aAuthType
     *        optional string identifying auth type used (e.g., "basic")
     * @param aRealm
     *        optional string identifying auth realm.
     * @param aPath
     *        optional string identifying auth path. empty for proxy auth.
     * @param aUserDomain
     *        return value containing user domain.
     * @param aUserName
     *        return value containing user name.
     * @param aUserPassword
     *        return value containing user password.
     */
  /* void getAuthIdentity (in ACString aScheme, in ACString aHost, in PRInt32 aPort, in ACString aAuthType, in ACString aRealm, in ACString aPath, out AString aUserDomain, out AString aUserName, out AString aUserPassword); */
  void GetAuthIdentity(char[] aScheme, char[] aHost, PRInt32 aPort, char[] aAuthType, char[] aRealm, char[] aPath, wchar[] aUserDomain, wchar[] aUserName, wchar[] aUserPassword){
    scope auto _aScheme = new ACString(aScheme);
    scope auto _aHost = new ACString(aHost);
    scope auto _aAuthType = new ACString(aAuthType);
    scope auto _aRealm = new ACString(aRealm);
    scope auto _aPath = new ACString(aPath);
    scope auto _aUserDomain = new AString;
    scope auto _aUserName = new AString;
    scope auto _aUserPassword = new AString;
    nsresult __result = inner.GetAuthIdentity(cast(nsACString*)_aScheme, cast(nsACString*)_aHost, aPort, cast(nsACString*)_aAuthType, cast(nsACString*)_aRealm, cast(nsACString*)_aPath, cast(nsAString*)_aUserDomain, cast(nsAString*)_aUserName, cast(nsAString*)_aUserPassword);
    CheckException(__result);
    aUserDomain = _aUserDomain.GetString();
    aUserName = _aUserName.GetString();
    aUserPassword = _aUserPassword.GetString();
  }

  /**
     * Store auth identity.
     *
     * @param aScheme
     *        the URL scheme (e.g., "http").  NOTE: for proxy authentication,
     *        this should be "http" (this includes authentication for SSL
     *        tunneling).
     * @param aHost
     *        the host of the server issuing a challenge (ASCII only).
     * @param aPort
     *        the port of the server issuing a challenge.
     * @param aAuthType
     *        optional string identifying auth type used (e.g., "basic")
     * @param aRealm
     *        optional string identifying auth realm.
     * @param aPath
     *        optional string identifying auth path. empty for proxy auth.
     * @param aUserDomain
     *        optional string containing user domain.
     * @param aUserName
     *        optional string containing user name.
     * @param aUserPassword
     *        optional string containing user password.
     */
  /* void setAuthIdentity (in ACString aScheme, in ACString aHost, in PRInt32 aPort, in ACString aAuthType, in ACString aRealm, in ACString aPath, in AString aUserDomain, in AString aUserName, in AString aUserPassword); */
  void SetAuthIdentity(char[] aScheme, char[] aHost, PRInt32 aPort, char[] aAuthType, char[] aRealm, char[] aPath, wchar[] aUserDomain, wchar[] aUserName, wchar[] aUserPassword){
    scope auto _aScheme = new ACString(aScheme);
    scope auto _aHost = new ACString(aHost);
    scope auto _aAuthType = new ACString(aAuthType);
    scope auto _aRealm = new ACString(aRealm);
    scope auto _aPath = new ACString(aPath);
    scope auto _aUserDomain = new AString(aUserDomain);
    scope auto _aUserName = new AString(aUserName);
    scope auto _aUserPassword = new AString(aUserPassword);
    nsresult __result = inner.SetAuthIdentity(cast(nsACString*)_aScheme, cast(nsACString*)_aHost, aPort, cast(nsACString*)_aAuthType, cast(nsACString*)_aRealm, cast(nsACString*)_aPath, cast(nsAString*)_aUserDomain, cast(nsAString*)_aUserName, cast(nsAString*)_aUserPassword);
    CheckException(__result);
  }

  /**
     * Clear all auth cache.
     */
  /* void clearAll (); */
  void ClearAll(){
    nsresult __result = inner.ClearAll();
    CheckException(__result);
  }

private:
  nsIHttpAuthManager inner;

}

