/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILDAPConnection.idl
 */

module mozilla.dxpcom.nsILDAPConnectionD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsILDAPConnection;


public import mozilla.dxpcom.nsILDAPConnectionD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsILDAPOperation;

public import mozilla.dxpcom.nsILDAPOperationD;

public import mozilla.xpcom.nsILDAPMessageListener;

public import mozilla.dxpcom.nsILDAPMessageListenerD;


/* starting wrapper class:    nsILDAPConnection */
class nsILDAPConnectionD : public nsISupportsD {

  static const nsIID IID = NS_ILDAPCONNECTION_IID;


  alias nsILDAPConnection InnerType;

  this(nsILDAPConnection intr){
    super(intr);
    this.inner = intr;
  }

  nsILDAPConnection opCast() {
    return inner;
  }

  void opAssign(nsILDAPConnection value) {
    inner = value;
  }

  /**
     * the string version of lderrno
     */
  /* readonly attribute wstring errorString; */
  PRUnichar* ErrorString(){
    PRUnichar* value;
    nsresult __result = inner.GetErrorString(&value);
    CheckException(__result);
    return value;
  }

  /**
     * DN to bind as.  use the init() method to set this.
     *
     * @exception NS_ERROR_OUT_OF_MEMORY
     */
  /* readonly attribute AUTF8String bindName; */
  char[] BindName(){
    scope auto value = new ACString();
    nsresult __result = inner.GetBindName(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
     * private parameter (anything caller desires)
     */
  /* attribute nsISupports closure; */
  nsISupportsD  Closure(){
    nsISupports value;
    nsresult __result = inner.GetClosure(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }
  void Closure(nsISupportsD  aClosure){
    nsISupports value;
    nsresult __result = inner.SetClosure(value);
    CheckException(__result);
  }

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
  void Init(char*aHost, PRInt32 aPort, PRBool aSSL, char[] aBindName, nsILDAPMessageListenerD aMessageListener, nsISupportsD aClosure, PRUint32 aVersion){
    scope auto _aBindName = new ACString(aBindName);
    nsresult __result = inner.Init(aHost, aPort, aSSL, cast(nsACString*)_aBindName, aMessageListener ? cast(nsILDAPMessageListener)aMessageListener : null, aClosure ? cast(nsISupports)aClosure : null, aVersion);
    CheckException(__result);
  }

  enum { VERSION2 = 2U }

  enum { VERSION3 = 3U }

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
  PRInt32 GetLdErrno(char[] matched, char[] s){
    scope auto _matched = new ACString;
    scope auto _s = new ACString;
    PRInt32 _retval;
    nsresult __result = inner.GetLdErrno(cast(nsACString*)_matched, cast(nsACString*)_s, &_retval);
    CheckException(__result);
    matched = _matched.GetString();
    s = _s.GetString();
    return _retval;
  }

private:
  nsILDAPConnection inner;

}

