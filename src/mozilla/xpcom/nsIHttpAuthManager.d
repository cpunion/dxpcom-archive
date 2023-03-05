/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIHttpAuthManager.idl
 */

module mozilla.xpcom.nsIHttpAuthManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIHttpAuthManager */
const char[] NS_IHTTPAUTHMANAGER_IID_STR = "7ce8e9d1-8b4b-4883-a307-66fe12a50153";

const nsIID NS_IHTTPAUTHMANAGER_IID= 
  {0x7ce8e9d1, 0x8b4b, 0x4883, 
    [ 0xa3, 0x07, 0x66, 0xfe, 0x12, 0xa5, 0x01, 0x53 ]};

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
extern(Windows)
interface nsIHttpAuthManager : nsISupports {
  static const char[] IID_STR = NS_IHTTPAUTHMANAGER_IID_STR;
  static const nsIID IID = NS_IHTTPAUTHMANAGER_IID;

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
  nsresult GetAuthIdentity(nsACString * aScheme, nsACString * aHost, PRInt32 aPort, nsACString * aAuthType, nsACString * aRealm, nsACString * aPath, nsAString * aUserDomain, nsAString * aUserName, nsAString * aUserPassword);

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
  nsresult SetAuthIdentity(nsACString * aScheme, nsACString * aHost, PRInt32 aPort, nsACString * aAuthType, nsACString * aRealm, nsACString * aPath, nsAString * aUserDomain, nsAString * aUserName, nsAString * aUserPassword);

  /**
     * Clear all auth cache.
     */
  /* void clearAll (); */
  nsresult ClearAll();

}

