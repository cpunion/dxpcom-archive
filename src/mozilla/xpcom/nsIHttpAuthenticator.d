/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIHttpAuthenticator.idl
 */

module mozilla.xpcom.nsIHttpAuthenticator;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIHttpChannel; /* forward declaration */


/* starting interface:    nsIHttpAuthenticator */
const char[] NS_IHTTPAUTHENTICATOR_IID_STR = "0f331436-8bc8-4c68-a124-d0253a19d06f";

const nsIID NS_IHTTPAUTHENTICATOR_IID= 
  {0x0f331436, 0x8bc8, 0x4c68, 
    [ 0xa1, 0x24, 0xd0, 0x25, 0x3a, 0x19, 0xd0, 0x6f ]};

/**
 * nsIHttpAuthenticator
 *
 * Interface designed to allow for pluggable HTTP authentication modules.
 * Implementations are registered under the ContractID:
 *
 *   "@mozilla.org/network/http-authenticator;1?scheme=<auth-scheme>"  
 *
 * where <auth-scheme> is the lower-cased value of the authentication scheme
 * found in the server challenge per the rules of RFC 2617.
 */
extern(Windows)
interface nsIHttpAuthenticator : nsISupports {
  static const char[] IID_STR = NS_IHTTPAUTHENTICATOR_IID_STR;
  static const nsIID IID = NS_IHTTPAUTHENTICATOR_IID;

  /**
     * Upon receipt of a server challenge, this function is called to determine
     * whether or not the current user identity has been rejected.  If true,
     * then the user will be prompted by the channel to enter (or revise) their
     * identity.  Following this, generateCredentials will be called.
     *
     * If the IDENTITY_IGNORED auth flag is set, then the aInvalidateIdentity
     * return value will be ignored, and user prompting will be suppressed.
     *
     * @param aChannel
     *        the http channel that received the challenge.
     * @param aChallenge
     *        the challenge from the WWW-Authenticate/Proxy-Authenticate
     *        server response header.  (possibly from the auth cache.)
     * @param aProxyAuth
     *        flag indicating whether or not aChallenge is from a proxy.
     * @param aSessionState
     *        see description below for generateCredentials.
     * @param aContinuationState
     *        see description below for generateCredentials.
     * @param aInvalidateIdentity
     *        return value indicating whether or not to prompt the user for a
     *        revised identity.
     */
  /* void challengeReceived (in nsIHttpChannel aChannel, in string aChallenge, in boolean aProxyAuth, inout nsISupports aSessionState, inout nsISupports aContinuationState, out boolean aInvalidatesIdentity); */
  nsresult ChallengeReceived(nsIHttpChannel aChannel, char *aChallenge, PRBool aProxyAuth, nsISupports *aSessionState, nsISupports *aContinuationState, PRBool *aInvalidatesIdentity);

  /**
     * Called to generate the authentication credentials for a particular
     * server/proxy challenge.  This is the value that will be sent back
     * to the server via an Authorization/Proxy-Authorization header.
     *
     * This function may be called using a cached challenge provided the
     * authenticator sets the REUSABLE_CHALLENGE flag.
     *
     * @param aChannel
     *        the http channel requesting credentials
     * @param aChallenge
     *        the challenge from the WWW-Authenticate/Proxy-Authenticate
     *        server response header.  (possibly from the auth cache.)
     * @param aProxyAuth
     *        flag indicating whether or not aChallenge is from a proxy.
     * @param aDomain
     *        string containing the domain name (if appropriate)
     * @param aUser
     *        string containing the user name
     * @param aPassword
     *        string containing the password
     * @param aSessionState
     *        state stored along side the user's identity in the auth cache
     *        for the lifetime of the browser session.  if a new auth cache
     *        entry is created for this challenge, then this parameter will
     *        be null.  on return, the result will be stored in the new auth
     *        cache entry.  this parameter is non-null when an auth cache entry
     *        is being reused.
     * @param aContinuationState
     *        state held by the channel between consecutive calls to
     *        generateCredentials, assuming multiple calls are required
     *        to authenticate.  this state is held for at most the lifetime of
     *        the channel.
     */
  /* string generateCredentials (in nsIHttpChannel aChannel, in string aChallenge, in boolean aProxyAuth, in wstring aDomain, in wstring aUser, in wstring aPassword, inout nsISupports aSessionState, inout nsISupports aContinuationState); */
  nsresult GenerateCredentials(nsIHttpChannel aChannel, char *aChallenge, PRBool aProxyAuth, PRUnichar *aDomain, PRUnichar *aUser, PRUnichar *aPassword, nsISupports *aSessionState, nsISupports *aContinuationState, char **_retval);

  /**
     * Flags defining various properties of the authenticator.
     */
  /* readonly attribute unsigned long authFlags; */
  nsresult GetAuthFlags(PRUint32 *aAuthFlags);

  /**
     * A request based authentication scheme only authenticates an individual
     * request (or a set of requests under the same authentication domain as
     * defined by RFC 2617).  BASIC and DIGEST are request based authentication
     * schemes.
     */
  enum { REQUEST_BASED = 1U };

  /**
     * A connection based authentication scheme authenticates an individual
     * connection.  Multiple requests may be issued over the connection without
     * repeating the authentication steps.  Connection based authentication
     * schemes can associate state with the connection being authenticated via
     * the aContinuationState parameter (see generateCredentials).
     */
  enum { CONNECTION_BASED = 2U };

  /**
     * The credentials returned from generateCredentials may be reused with any
     * other URLs within "the protection space" as defined by RFC 2617 section
     * 1.2.  If this flag is not set, then generateCredentials must be called
     * for each request within the protection space.  REUSABLE_CREDENTIALS
     * implies REUSABLE_CHALLENGE.
     */
  enum { REUSABLE_CREDENTIALS = 4U };

  /**
     * A challenge may be reused to later generate credentials in anticipation
     * of a duplicate server challenge for URLs within "the protection space"
     * as defined by RFC 2617 section 1.2.
     */
  enum { REUSABLE_CHALLENGE = 8U };

  /**
     * This flag indicates that the identity of the user is not required by
     * this authentication scheme.
     */
  enum { IDENTITY_IGNORED = 1024U };

  /**
     * This flag indicates that the identity of the user includes a domain
     * attribute that the user must supply.
     */
  enum { IDENTITY_INCLUDES_DOMAIN = 2048U };

}

