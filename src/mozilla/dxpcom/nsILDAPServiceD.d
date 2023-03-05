/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILDAPService.idl
 */

module mozilla.dxpcom.nsILDAPServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsILDAPService;


public import mozilla.dxpcom.nsILDAPServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsILDAPServer;

public import mozilla.dxpcom.nsILDAPServerD;

public import mozilla.xpcom.nsILDAPConnection;

public import mozilla.dxpcom.nsILDAPConnectionD;

public import mozilla.xpcom.nsILDAPMessageListener;

public import mozilla.dxpcom.nsILDAPMessageListenerD;


/* starting wrapper class:    nsILDAPService */
/**
 * This interface provides an LDAP connection management service.
 * It's used to cache already established LDAP connections, as well
 * as reaping unused connections after a certain time period. This
 * is done completely asynchronously, using callback functions.
 */
class nsILDAPServiceD : public nsISupportsD {

  static const nsIID IID = NS_ILDAPSERVICE_IID;


  alias nsILDAPService InnerType;

  this(nsILDAPService intr){
    super(intr);
    this.inner = intr;
  }

  nsILDAPService opCast() {
    return inner;
  }

  void opAssign(nsILDAPService value) {
    inner = value;
  }

  /**
     * Add a (possibly) new LDAP server entry to the service. A
     * server entry holds information about the host, port and
     * other components of the LDAP URL, as well as information
     * used for binding a connection to the LDAP server.
     *
     * An LDAP Server entry (nsILDAPServer) contains the URL,
     * user credentials, and other information related to the actual
     * server itself. It is used for connecting, binding, rebinding,
     * setting timeouts and so forth.
     *
     * @param aServer          an nsILDAPServer object
     *
     * @exception NS_ERROR_FAILURE          the server has already been
     *                                      added to the service
     * @exception NS_ERROR_NULL_POINTER     NULL pointer
     * @exception NS_ERROR_OUT_OF_MEMORY    ran out of memory
     */
  /* void addServer (in nsILDAPServer aServer); */
  void AddServer(nsILDAPServerD aServer){
    nsresult __result = inner.AddServer(aServer ? cast(nsILDAPServer)aServer : null);
    CheckException(__result);
  }

  /**
     * Mark an LDAP server, in the Service, as a candidate for
     * deletion. If there are still leases ("users") of this server,
     * the operation fails.
     *
     * @param aKey             unique key identifying the server entry
     *
     * @exception NS_ERROR_FAILURE          either the server doesn't
     *                                      exist, or there are still
     *                                      leases oustanding
     */
  /* void deleteServer (in wstring aKey); */
  void DeleteServer(PRUnichar*aKey){
    nsresult __result = inner.DeleteServer(aKey);
    CheckException(__result);
  }

  /**
     * Get the nsILDAPServer object for the specified server entry
     * in the service.
     *
     * @param aKey             unique key identifying the server entry
     *
     * @exception NS_ERROR_FAILURE          there is no server registered
     *                                      in the service with this key
     * @exception NS_ERROR_NULL_POINTER     NULL pointer
     */
  /* nsILDAPServer getServer (in wstring aKey); */
  nsILDAPServerD  GetServer(PRUnichar*aKey){
    nsILDAPServer _retval;
    nsresult __result = inner.GetServer(aKey, &_retval);
    CheckException(__result);
    return new nsILDAPServerD(_retval);
  }

  /**
     * Request a connection from the service, asynchronously. If there is
     * one "cached" already, we will actually call the callback function
     * before returning from this function. This might be considered a bug,
     * but for now be aware of this (see Bugzilla bug #75989).
     *
     * Calling this method does not increment the leases on this connection,
     * you'll have to use the getConnection() method to actually get the
     * connection itself (presumably from the callback/listener object).
     * The listener needs to implement nsILDAPMessageListener, providing
     * the OnLDAPMessage() method.
     * 
     * @param aKey             unique key identifying the server entry
     * @param aMessageListener the listener object, which we will call
     *                         when the LDAP bind message is available
     *
     * @exception NS_ERROR_FAILURE          there is no server registered
     *                                      in the service with this key,
     *                                      or we were unable to get a
     *                                      connection properly to the server
     * @exception NS_ERROR_NOT_AVAILABLE	couldn't create connection thread
     * @exception NS_ERROR_OUT_OF_MEMORY    ran out of memory
     * @exception NS_ERROR_UNEXPECTED       unknown or unexpected error...
     */
  /* void requestConnection (in wstring aKey, in nsILDAPMessageListener aListener); */
  void RequestConnection(PRUnichar*aKey, nsILDAPMessageListenerD aListener){
    nsresult __result = inner.RequestConnection(aKey, aListener ? cast(nsILDAPMessageListener)aListener : null);
    CheckException(__result);
  }

  /**
     * This is the nsLDAPConnection object related to this server.
     * This does increase the lease counter on the object, so you have
     * to call the releaseConnection() method to return it. It is
     * important that you do this in matching pairs, and that you do
     * not keep any dangling references to an object around after you
     * have called the releaseConnection() method.
     *
     * @param aKey             unique key identifying the server entry
     *
     * @exception NS_ERROR_FAILURE          there is no server registered
     *                                      in the service with this key
     * @exception NS_ERROR_NULL_POINTER     NULL pointer
     */
  /* nsILDAPConnection getConnection (in wstring aKey); */
  nsILDAPConnectionD  GetConnection(PRUnichar*aKey){
    nsILDAPConnection _retval;
    nsresult __result = inner.GetConnection(aKey, &_retval);
    CheckException(__result);
    return new nsILDAPConnectionD(_retval);
  }

  /**
     * Release the lease on a (cached) LDAP connection, making it a
     * potential candidate for disconnection. Note that this will not
     * delete the actual LDAP server entry in the service, it's still
     * registered and can be used in future calls to requestConnection().
     *
     * This API might be deprecated in the future, once we figure out how
     * to use weak references to support our special needs for reference
     * counting. For the time being, it is vital that you call this function
     * when you're done with a Connection, and that you do not keep any
     * copies of the Connection object lingering around.
     *
     * @param aKey             unique key identifying the server entry
     *
     * @exception NS_ERROR_FAILURE          there is no server registered
     *                                      in the service with this key
     * @exception NS_ERROR_OUT_OF_MEMORY    ran out of memory
     */
  /* void releaseConnection (in wstring aKey); */
  void ReleaseConnection(PRUnichar*aKey){
    nsresult __result = inner.ReleaseConnection(aKey);
    CheckException(__result);
  }

  /**
     * If we detect that a connection is broken (server disconnected us,
     * or any other problem with the link), we need to try to reestablish
     * the connection. This is very similar to requestConnection(),
     * except you use this when detecting an error with a connection
     * that is being cached.
     *
     * @param aKey             unique key identifying the server entry
     * @param aMessageListener the listener object, which we will call
     *                         when the LDAP bind message is available
     *
     * @exception NS_ERROR_FAILURE          there is no server registered
     *                                      in the service with this key,
     *                                      or we were unable to get a
     *                                      connection properly to the server
     * @exception NS_ERROR_NOT_AVAILABLE	couldn't create connection thread
     * @exception NS_ERROR_OUT_OF_MEMORY    ran out of memory
     * @exception NS_ERROR_UNEXPECTED       unknown or unexpected error...
     */
  /* void reconnectConnection (in wstring aKey, in nsILDAPMessageListener aListener); */
  void ReconnectConnection(PRUnichar*aKey, nsILDAPMessageListenerD aListener){
    nsresult __result = inner.ReconnectConnection(aKey, aListener ? cast(nsILDAPMessageListener)aListener : null);
    CheckException(__result);
  }

  /**
     * Generates and returns an LDAP search filter by substituting
     * aValue, aAttr, aPrefix, and aSuffix into aPattern.
     *
     * The only good documentation I'm aware of for this function is
     * at <http://docs.iplanet.com/docs/manuals/dirsdk/csdk41/html/filter.htm>
     * and 
     * <http://docs.iplanet.com/docs/manuals/dirsdk/csdk41/html/function.htm#17835>
     * Unfortunately, this does not currently seem to be available
     * under any open source license, so I can't include that
     * documentation here in the doxygen comments.
     *
     * @param aMaxSize   maximum size (in char) of string to be 
     *                   created and returned (including final \0)
     * @param aPattern   pattern to be used for the filter
     * @param aPrefix    prefix to prepend to the filter
     * @param aSuffix    suffix to be appended to the filer
     * @param aAttr      replacement for %a in the pattern
     * @param aValue     replacement for %v in the pattern
     *  
     * @exception NS_ERROR_INVALID_ARG      invalid parameter passed in
     * @exception NS_ERROR_OUT_OF_MEMORY    allocation failed
     * @exception NS_ERROR_NOT_AVAILABLE    filter longer than maxsiz chars
     * @exception NS_ERROR_UNEXPECTED       ldap_create_filter returned
     *                                      unexpected error code
     */
  /* AUTF8String createFilter (in unsigned long aMaxSize, in AUTF8String aPattern, in AUTF8String aPrefix, in AUTF8String aSuffix, in AUTF8String aAttr, in AUTF8String aValue); */
  char[] CreateFilter(PRUint32 aMaxSize, char[] aPattern, char[] aPrefix, char[] aSuffix, char[] aAttr, char[] aValue){
    scope auto _aPattern = new ACString(aPattern);
    scope auto _aPrefix = new ACString(aPrefix);
    scope auto _aSuffix = new ACString(aSuffix);
    scope auto _aAttr = new ACString(aAttr);
    scope auto _aValue = new ACString(aValue);
    scope auto _retval = new ACString;
    nsresult __result = inner.CreateFilter(aMaxSize, cast(nsACString*)_aPattern, cast(nsACString*)_aPrefix, cast(nsACString*)_aSuffix, cast(nsACString*)_aAttr, cast(nsACString*)_aValue, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsILDAPService inner;

}

