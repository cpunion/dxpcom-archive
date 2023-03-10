/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILDAPOperation.idl
 */

module mozilla.xpcom.nsILDAPOperation;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsILDAPConnection;

public import mozilla.xpcom.nsILDAPMessage; /* forward declaration */

public import mozilla.xpcom.nsILDAPMessageListener; /* forward declaration */

public import mozilla.xpcom.nsIArray;

alias PRUint32 PRIntervalTime;


/* starting interface:    nsILDAPOperation */
const char[] NS_ILDAPOPERATION_IID_STR = "51f3b2f3-1f22-4fa8-9836-2e30e1471bff";

const nsIID NS_ILDAPOPERATION_IID= 
  {0x51f3b2f3, 0x1f22, 0x4fa8, 
    [ 0x98, 0x36, 0x2e, 0x30, 0xe1, 0x47, 0x1b, 0xff ]};

extern(Windows)
interface nsILDAPOperation : nsISupports {
  static const char[] IID_STR = NS_ILDAPOPERATION_IID_STR;
  static const nsIID IID = NS_ILDAPOPERATION_IID;

  /**
     * The connection this operation is on. 
     * 
     * @exception NS_ERROR_ILLEGAL_VALUE        a NULL pointer was passed in
     */
  /* readonly attribute nsILDAPConnection connection; */
  nsresult GetConnection(nsILDAPConnection  *aConnection);

  /**
     * Callback for individual result messages related to this operation (set
     * by the init() method).  This is actually an nsISupports proxy object, 
     * as the callback will happen from another thread.
     * 
     * @exception NS_ERROR_ILLEGAL_VALUE        a NULL pointer was passed in
     */
  /* readonly attribute nsILDAPMessageListener messageListener; */
  nsresult GetMessageListener(nsILDAPMessageListener  *aMessageListener);

  /**
     * The message-id associated with this operation.
     *
     * @exception NS_ERROR_ILLEGAL_VALUE        a NULL pointer was passed in
     */
  /* readonly attribute long messageID; */
  nsresult GetMessageID(PRInt32 *aMessageID);

  /**
     * private parameter (anything caller desires)
     */
  /* attribute nsISupports closure; */
  nsresult GetClosure(nsISupports  *aClosure);
  nsresult SetClosure(nsISupports  aClosure);

  /**
     * No time and/or size limit specified
     */
  enum { NO_LIMIT = 0 };

  /**
     * If specified, these arrays of nsILDAPControls are passed into the LDAP
     * C SDK for any extended operations (ie method calls on this interface
     * ending in "Ext").
     */
  /* attribute nsIMutableArray serverControls; */
  nsresult GetServerControls(nsIMutableArray  *aServerControls);
  nsresult SetServerControls(nsIMutableArray  aServerControls);

  /* attribute nsIMutableArray clientControls; */
  nsresult GetClientControls(nsIMutableArray  *aClientControls);
  nsresult SetClientControls(nsIMutableArray  aClientControls);

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
  nsresult Init(nsILDAPConnection aConnection, nsILDAPMessageListener aMessageListener, nsISupports aClosure);

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
  nsresult SimpleBind(nsACString * passwd);

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
  nsresult SearchExt(nsACString * aBaseDn, PRInt32 aScope, nsACString * aFilter, PRUint32 aAttrCount, char **aAttributes, PRIntervalTime aTimeOut, PRInt32 aSizeLimit);

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
  nsresult AbandonExt();

}

