/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILDAPOperation.idl
 */

module mozilla.dxpcom.nsILDAPOperationD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsILDAPOperation;


public import mozilla.dxpcom.nsILDAPOperationD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsILDAPConnection;
public import mozilla.dxpcom.nsILDAPConnectionD;

public import mozilla.xpcom.nsILDAPMessage;

public import mozilla.dxpcom.nsILDAPMessageD;

public import mozilla.xpcom.nsILDAPMessageListener;

public import mozilla.dxpcom.nsILDAPMessageListenerD;

public import mozilla.xpcom.nsIArray;

import mozilla.dxpcom.nsIArrayD;


/* starting wrapper class:    nsILDAPOperation */
class nsILDAPOperationD : public nsISupportsD {

  static const nsIID IID = NS_ILDAPOPERATION_IID;


  alias nsILDAPOperation InnerType;

  this(nsILDAPOperation intr){
    super(intr);
    this.inner = intr;
  }

  nsILDAPOperation opCast() {
    return inner;
  }

  void opAssign(nsILDAPOperation value) {
    inner = value;
  }

  /**
     * The connection this operation is on. 
     * 
     * @exception NS_ERROR_ILLEGAL_VALUE        a NULL pointer was passed in
     */
  /* readonly attribute nsILDAPConnection connection; */
  nsILDAPConnectionD  Connection(){
    nsILDAPConnection value;
    nsresult __result = inner.GetConnection(&value);
    CheckException(__result);
    return new nsILDAPConnectionD(value);
  }

  /**
     * Callback for individual result messages related to this operation (set
     * by the init() method).  This is actually an nsISupports proxy object, 
     * as the callback will happen from another thread.
     * 
     * @exception NS_ERROR_ILLEGAL_VALUE        a NULL pointer was passed in
     */
  /* readonly attribute nsILDAPMessageListener messageListener; */
  nsILDAPMessageListenerD  MessageListener(){
    nsILDAPMessageListener value;
    nsresult __result = inner.GetMessageListener(&value);
    CheckException(__result);
    return new nsILDAPMessageListenerD(value);
  }

  /**
     * The message-id associated with this operation.
     *
     * @exception NS_ERROR_ILLEGAL_VALUE        a NULL pointer was passed in
     */
  /* readonly attribute long messageID; */
  PRInt32 MessageID(){
    PRInt32 value;
    nsresult __result = inner.GetMessageID(&value);
    CheckException(__result);
    return value;
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
     * No time and/or size limit specified
     */
  enum { NO_LIMIT = 0 }

  /**
     * If specified, these arrays of nsILDAPControls are passed into the LDAP
     * C SDK for any extended operations (ie method calls on this interface
     * ending in "Ext").
     */
  /* attribute nsIMutableArray serverControls; */
  nsIMutableArrayD  ServerControls(){
    nsIMutableArray value;
    nsresult __result = inner.GetServerControls(&value);
    CheckException(__result);
    return new nsIMutableArrayD(value);
  }
  void ServerControls(nsIMutableArrayD  aServerControls){
    nsIMutableArray value;
    nsresult __result = inner.SetServerControls(value);
    CheckException(__result);
  }

  /* attribute nsIMutableArray clientControls; */
  nsIMutableArrayD  ClientControls(){
    nsIMutableArray value;
    nsresult __result = inner.GetClientControls(&value);
    CheckException(__result);
    return new nsIMutableArrayD(value);
  }
  void ClientControls(nsIMutableArrayD  aClientControls){
    nsIMutableArray value;
    nsresult __result = inner.SetClientControls(value);
    CheckException(__result);
  }

  /**
     * Initializes this operation.  Must be called prior to initiating
     * any actual operations.  Note that by default, the aMessageListener
     * callbacks happen on the LDAP connection thread.  If you need them
     * to happen on the main thread (or any other thread), then you should
     * created an nsISupports proxy object and pass that in.
     *
     * @param aConnection       connection this operation should use
     * @param aMessageListener  interface used to call back the results.
     * @param aClosure          private parameter (anything caller desires)
     *
     * @exception NS_ERROR_ILLEGAL_VALUE        a NULL pointer was passed in
     * @exception NS_ERROR_UNEXPECTED           failed to get connection handle
     */
  /* void init (in nsILDAPConnection aConnection, in nsILDAPMessageListener aMessageListener, in nsISupports aClosure); */
  void Init(nsILDAPConnectionD aConnection, nsILDAPMessageListenerD aMessageListener, nsISupportsD aClosure){
    nsresult __result = inner.Init(aConnection ? cast(nsILDAPConnection)aConnection : null, aMessageListener ? cast(nsILDAPMessageListener)aMessageListener : null, aClosure ? cast(nsISupports)aClosure : null);
    CheckException(__result);
  }

  /**
     * Asynchronously authenticate to the LDAP server.
     * 
     * @param passwd    the password used for binding; NULL for anon-binds
     *
     * @exception NS_ERROR_LDAP_ENCODING_ERROR  problem encoding bind request
     * @exception NS_ERROR_LDAP_SERVER_DOWN     server down (XXX rebinds?)
     * @exception NS_ERROR_LDAP_CONNECT_ERROR   connection failed or lost
     * @exception NS_ERROR_OUT_OF_MEMORY        ran out of memory
     * @exception NS_ERROR_UNEXPECTED           internal error
     */
  /* void simpleBind (in AUTF8String passwd); */
  void SimpleBind(char[] passwd){
    scope auto _passwd = new ACString(passwd);
    nsresult __result = inner.SimpleBind(cast(nsACString*)_passwd);
    CheckException(__result);
  }

  /**
     * Kicks off an asynchronous search request.  The "ext" stands for 
     * "extensions", and is intended to convey that this method will
     * eventually support the extensions described in the
     * draft-ietf-ldapext-ldap-c-api-04.txt Internet Draft.
     *
     * @param aBaseDn           Base DN to search
     * @param aScope            One of SCOPE_{BASE,ONELEVEL,SUBTREE}
     * @param aFilter           Search filter
     * @param aAttrCount        Number of attributes we request (0 for all)
     * @param aAttributes       Array of strings, holding the attrs we need
     * @param aTimeOut          How long to wait
     * @param aSizeLimit        Maximum number of entries to return.
     *
     * @exception NS_ERROR_NOT_INITIALIZED
     * @exception NS_ERROR_LDAP_ENCODING_ERROR
     * @exception NS_ERROR_LDAP_SERVER_DOWN
     * @exception NS_ERROR_OUT_OF_MEMORY
     * @exception NS_ERROR_INVALID_ARG
     * @exception NS_ERROR_LDAP_NOT_SUPPORTED
     * @exception NS_ERROR_LDAP_FILTER_ERROR
     * @exception NS_ERROR_UNEXPECTED
     */
  /* void searchExt (in AUTF8String aBaseDn, in PRInt32 aScope, in AUTF8String aFilter, in unsigned long aAttrCount, [array, size_is (aAttrCount)] in string aAttributes, in PRIntervalTime aTimeOut, in PRInt32 aSizeLimit); */
  void SearchExt(char[] aBaseDn, PRInt32 aScope, char[] aFilter, PRUint32 aAttrCount, char**aAttributes, PRIntervalTime aTimeOut, PRInt32 aSizeLimit){
    scope auto _aBaseDn = new ACString(aBaseDn);
    scope auto _aFilter = new ACString(aFilter);
    nsresult __result = inner.SearchExt(cast(nsACString*)_aBaseDn, aScope, cast(nsACString*)_aFilter, aAttrCount, aAttributes, aTimeOut, aSizeLimit);
    CheckException(__result);
  }

  /**  
     * Cancels an async operation that is in progress.
     *
     * XXX controls not supported yet
     *
     * @exception NS_ERROR_NOT_IMPLEMENTED      server or client controls
     *                                          were set on this object
     * @exception NS_ERROR_NOT_INITIALIZED      operation not initialized
     * @exception NS_ERROR_LDAP_ENCODING_ERROR  error during BER-encoding
     * @exception NS_ERROR_LDAP_SERVER_DOWN     the LDAP server did not
     *                                          receive the request or the
     *                                          connection was lost
     * @exception NS_ERROR_OUT_OF_MEMORY        out of memory
     * @exception NS_ERROR_INVALID_ARG          invalid argument
     * @exception NS_ERROR_UNEXPECTED           internal error
     */
  /* void abandonExt (); */
  void AbandonExt(){
    nsresult __result = inner.AbandonExt();
    CheckException(__result);
  }

private:
  nsILDAPOperation inner;

}

