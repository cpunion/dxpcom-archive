/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILDAPServer.idl
 */

module mozilla.dxpcom.nsILDAPServerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsILDAPServer;


public import mozilla.dxpcom.nsILDAPServerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsILDAPConnection;
public import mozilla.dxpcom.nsILDAPConnectionD;

public import mozilla.xpcom.nsILDAPURL;

public import mozilla.dxpcom.nsILDAPURLD;


/* starting wrapper class:    nsILDAPServer */
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
class nsILDAPServerD : public nsISupportsD {

  static const nsIID IID = NS_ILDAPSERVER_IID;


  alias nsILDAPServer InnerType;

  this(nsILDAPServer intr){
    super(intr);
    this.inner = intr;
  }

  nsILDAPServer opCast() {
    return inner;
  }

  void opAssign(nsILDAPServer value) {
    inner = value;
  }

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
  PRUnichar* Key(){
    PRUnichar* value;
    nsresult __result = inner.GetKey(&value);
    CheckException(__result);
    return value;
  }
  void Key(PRUnichar* aKey){
    nsresult __result = inner.SetKey(aKey);
    CheckException(__result);
  }

  /**
     * the password string used to bind to this server. An empty
     * string here implies binding as anonymous.
     *
     * @exception NS_ERROR_NULL_POINTER     NULL pointer to GET method
     * @exception NS_ERROR_OUT_OF_MEMORY    ran out of memory
     */
  /* attribute AUTF8String password; */
  char[] Password(){
    scope auto value = new ACString();
    nsresult __result = inner.GetPassword(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Password(char[] aPassword){
    scope auto value = new ACString(aPassword);
    nsresult __result = inner.SetPassword(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
     * the user name to authenticate as. An empty string here would
     * imply binding as anonymous.
     *
     * @exception NS_ERROR_NULL_POINTER     NULL pointer to GET method
     * @exception NS_ERROR_OUT_OF_MEMORY    ran out of memory
     */
  /* attribute AUTF8String username; */
  char[] Username(){
    scope auto value = new ACString();
    nsresult __result = inner.GetUsername(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Username(char[] aUsername){
    scope auto value = new ACString(aUsername);
    nsresult __result = inner.SetUsername(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
     * the bind DN (Distinguished Name).
     *
     * @exception NS_ERROR_NULL_POINTER     NULL pointer to GET method
     * @exception NS_ERROR_OUT_OF_MEMORY    ran out of memory
     */
  /* attribute AUTF8String binddn; */
  char[] Binddn(){
    scope auto value = new ACString();
    nsresult __result = inner.GetBinddn(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Binddn(char[] aBinddn){
    scope auto value = new ACString(aBinddn);
    nsresult __result = inner.SetBinddn(cast(nsACString*)value);
    CheckException(__result);
  }

  /** maximum number of hits we want to accept from an LDAP search
     *  operation.
     *
     * @exception NS_ERROR_NULL_POINTER     NULL pointer to GET method
     */
  /* attribute unsigned long sizelimit; */
  PRUint32 Sizelimit(){
    PRUint32 value;
    nsresult __result = inner.GetSizelimit(&value);
    CheckException(__result);
    return value;
  }
  void Sizelimit(PRUint32 aSizelimit){
    nsresult __result = inner.SetSizelimit(aSizelimit);
    CheckException(__result);
  }

  /**
     * the URL for this server.
     *
     * @exception NS_ERROR_NULL_POINTER     NULL pointer to GET method
     */
  /* attribute nsILDAPURL url; */
  nsILDAPURLD  Url(){
    nsILDAPURL value;
    nsresult __result = inner.GetUrl(&value);
    CheckException(__result);
    return new nsILDAPURLD(value);
  }
  void Url(nsILDAPURLD  aUrl){
    nsILDAPURL value;
    nsresult __result = inner.SetUrl(value);
    CheckException(__result);
  }

  /**
     * protocol version to be used (see nsILDAPConnection.idl for constants)
     * Defaults to 3.
     *
     * @exception NS_ERROR_NULL_POINTER     NULL pointer passed to getter
     * @exception NS_ERROR_INVALID_ARG      Invalid version passed to setter
     */
  /* attribute unsigned long protocolVersion; */
  PRUint32 ProtocolVersion(){
    PRUint32 value;
    nsresult __result = inner.GetProtocolVersion(&value);
    CheckException(__result);
    return value;
  }
  void ProtocolVersion(PRUint32 aProtocolVersion){
    nsresult __result = inner.SetProtocolVersion(aProtocolVersion);
    CheckException(__result);
  }

private:
  nsILDAPServer inner;

}

