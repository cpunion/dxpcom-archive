/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILDAPServer.idl
 */

module mozilla.xpcom.nsILDAPServer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsILDAPConnection;

public import mozilla.xpcom.nsILDAPURL; /* forward declaration */


/* starting interface:    nsILDAPServer */
const char[] NS_ILDAPSERVER_IID_STR = "8aa717a4-1dd2-11b2-99c7-f01e2d449ded";

const nsIID NS_ILDAPSERVER_IID= 
  {0x8aa717a4, 0x1dd2, 0x11b2, 
    [ 0x99, 0xc7, 0xf0, 0x1e, 0x2d, 0x44, 0x9d, 0xed ]};

/**
 * this interface provides a way to store, retrieve and manipulate
 * information related to a specific LDAP server. This includes the
 * LDAP URL, as well as certain user specific data (e.g. credentials).
 *
 * The implementation of nsILDAPService relies heavily on this
 * interface, managing all LDAP connections (nsILDAPConnection).
 * The Service manages LDAP connections (connect and disconnect etc.),
 * using the information available from these LDAP Server objects.
 */
extern(Windows)
interface nsILDAPServer : nsISupports {
  static const char[] IID_STR = NS_ILDAPSERVER_IID_STR;
  static const nsIID IID = NS_ILDAPSERVER_IID;

  /**
     * unique identifier for this server, used (typically) to identify a
     * particular server object in a list of servers. This key can be
     * any "string", but in our case it will most likely be the same
     * identifier as used in a Mozilla preferences files.
     *
     * @exception NS_ERROR_NULL_POINTER     NULL pointer to GET method
     * @exception NS_ERROR_OUT_OF_MEMORY    ran out of memory
     */
  /* attribute wstring key; */
  nsresult GetKey(PRUnichar * *aKey);
  nsresult SetKey(PRUnichar * aKey);

  /**
     * the password string used to bind to this server. An empty
     * string here implies binding as anonymous.
     *
     * @exception NS_ERROR_NULL_POINTER     NULL pointer to GET method
     * @exception NS_ERROR_OUT_OF_MEMORY    ran out of memory
     */
  /* attribute AUTF8String password; */
  nsresult GetPassword(nsACString * aPassword);
  nsresult SetPassword(nsACString * aPassword);

  /**
     * the user name to authenticate as. An empty string here would
     * imply binding as anonymous.
     *
     * @exception NS_ERROR_NULL_POINTER     NULL pointer to GET method
     * @exception NS_ERROR_OUT_OF_MEMORY    ran out of memory
     */
  /* attribute AUTF8String username; */
  nsresult GetUsername(nsACString * aUsername);
  nsresult SetUsername(nsACString * aUsername);

  /**
     * the bind DN (Distinguished Name).
     *
     * @exception NS_ERROR_NULL_POINTER     NULL pointer to GET method
     * @exception NS_ERROR_OUT_OF_MEMORY    ran out of memory
     */
  /* attribute AUTF8String binddn; */
  nsresult GetBinddn(nsACString * aBinddn);
  nsresult SetBinddn(nsACString * aBinddn);

  /** maximum number of hits we want to accept from an LDAP search
     *  operation.
     *
     * @exception NS_ERROR_NULL_POINTER     NULL pointer to GET method
     */
  /* attribute unsigned long sizelimit; */
  nsresult GetSizelimit(PRUint32 *aSizelimit);
  nsresult SetSizelimit(PRUint32 aSizelimit);

  /**
     * the URL for this server.
     *
     * @exception NS_ERROR_NULL_POINTER     NULL pointer to GET method
     */
  /* attribute nsILDAPURL url; */
  nsresult GetUrl(nsILDAPURL  *aUrl);
  nsresult SetUrl(nsILDAPURL  aUrl);

  /**
     * protocol version to be used (see nsILDAPConnection.idl for constants)
     * Defaults to 3.
     *
     * @exception NS_ERROR_NULL_POINTER     NULL pointer passed to getter
     * @exception NS_ERROR_INVALID_ARG      Invalid version passed to setter
     */
  /* attribute unsigned long protocolVersion; */
  nsresult GetProtocolVersion(PRUint32 *aProtocolVersion);
  nsresult SetProtocolVersion(PRUint32 aProtocolVersion);

}

