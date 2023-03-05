/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILDAPConnection.idl
 */

module mozilla.xpcom.nsILDAPConnection;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsILDAPOperation; /* forward declaration */

public import mozilla.xpcom.nsILDAPMessageListener; /* forward declaration */


/* starting interface:    nsILDAPConnection */
const char[] NS_ILDAPCONNECTION_IID_STR = "337ad2fe-1dd2-11b2-89f8-aae1221ec86c";

const nsIID NS_ILDAPCONNECTION_IID= 
  {0x337ad2fe, 0x1dd2, 0x11b2, 
    [ 0x89, 0xf8, 0xaa, 0xe1, 0x22, 0x1e, 0xc8, 0x6c ]};

extern(Windows)
interface nsILDAPConnection : nsISupports {
  static const char[] IID_STR = NS_ILDAPCONNECTION_IID_STR;
  static const nsIID IID = NS_ILDAPCONNECTION_IID;

  /**
     * the string version of lderrno
     */
  /* readonly attribute wstring errorString; */
  nsresult GetErrorString(PRUnichar * *aErrorString);

  /**
     * DN to bind as.  use the init() method to set this.
     *
     * @exception NS_ERROR_OUT_OF_MEMORY
     */
  /* readonly attribute AUTF8String bindName; */
  nsresult GetBindName(nsACString * aBindName);

  /**
     * private parameter (anything caller desires)
     */
  /* attribute nsISupports closure; */
  nsresult GetClosure(nsISupports  *aClosure);
  nsresult SetClosure(nsISupports  aClosure);

  /** 
     * Set up the connection.  Note that init() must be called on a thread
     * that already has an nsIEventQueue.
     *
     * @param aHost             server name for ldap_init()
     * @param aPort             server port number for ldap_init()
     *                          -1 == default port (389)
     * @param aSSL              use SSL on this connection?
     * @param aBindName         DN to bind as
     * @param aMessageListener  Callback for DNS resolution completion
     * @param aClosure          private parameter (anything caller desires)
     * @param aVersion          LDAP version to use (currently VERSION2 or 
     *                          VERSION3)
     *
     * @exception NS_ERROR_ILLEGAL_VALUE        null pointer or invalid version
     * @exception NS_ERROR_OUT_OF_MEMORY        ran out of memory
     * @exception NS_ERROR_OFFLINE              we are in off-line mode
     * @exception NS_ERROR_FAILURE              
     * @exception NS_ERROR_UNEXPECTED           internal error
     */
  /* void init (in string aHost, in long aPort, in boolean aSSL, in AUTF8String aBindName, in nsILDAPMessageListener aMessageListener, in nsISupports aClosure, in unsigned long aVersion); */
  nsresult Init(char *aHost, PRInt32 aPort, PRBool aSSL, nsACString * aBindName, nsILDAPMessageListener aMessageListener, nsISupports aClosure, PRUint32 aVersion);

  enum { VERSION2 = 2U };

  enum { VERSION3 = 3U };

  /**
     * Get information about the last error that occured on this connection.
     *
     * @param matched   if the server is returning LDAP_NO_SUCH_OBJECT, 
     *                  LDAP_ALIAS_PROBLEM, LDAP_INVALID_DN_SYNTAX, 
     *                  or LDAP_ALIAS_DEREF_PROBLEM, this will contain
     *                  the portion of DN that matches the entry that is 
     *                  closest to the requested entry
     *
     * @param s         additional error information from the server
     * 
     * @return          the error code, as defined in nsILDAPErrors.idl
     */
  /* long getLdErrno (out AUTF8String matched, out AUTF8String s); */
  nsresult GetLdErrno(nsACString * matched, nsACString * s, PRInt32 *_retval);

}

