/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIJVMAuthTools.idl
 */

module mozilla.dxpcom.nsIJVMAuthToolsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIJVMAuthTools;


public import mozilla.dxpcom.nsIJVMAuthToolsD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIAuthenticationInfo */
class nsIAuthenticationInfoD : public nsISupportsD {

  static const nsIID IID = NS_IAUTHENTICATIONINFO_IID;


  alias nsIAuthenticationInfo InnerType;

  this(nsIAuthenticationInfo intr){
    super(intr);
    this.inner = intr;
  }

  nsIAuthenticationInfo opCast() {
    return inner;
  }

  void opAssign(nsIAuthenticationInfo value) {
    inner = value;
  }

  /** 
    * AuthenticationInfo (username/password pair)
    */
  /* readonly attribute const_char_ptr username; */
  char * Username(){
    char * value;
    nsresult __result = inner.GetUsername(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute const_char_ptr password; */
  char * Password(){
    char * value;
    nsresult __result = inner.GetPassword(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIAuthenticationInfo inner;

}


/* starting wrapper class:    nsIJVMAuthTools */
class nsIJVMAuthToolsD : public nsISupportsD {

  static const nsIID IID = NS_IJVMAUTHTOOLS_IID;


  alias nsIJVMAuthTools InnerType;

  this(nsIJVMAuthTools intr){
    super(intr);
    this.inner = intr;
  }

  nsIJVMAuthTools opCast() {
    return inner;
  }

  void opAssign(nsIJVMAuthTools value) {
    inner = value;
  }

  /**
     * Export AuthenticationInfo interface to JPI.
     *
     * @param protocol               the protocol that support (http/https)
     * @param host                   host name
     * @param port                   port number
     * @param scheme                 scheme
     * @param realm                  realm
     * @param nsIAuthenticationInfo  the AuthenticationInfo interface
     *                               that export
     *
     * @return  	             NS_OK if success, other if fail
     */
  /* nsIAuthenticationInfo GetAuthenticationInfo (in string protocol, in string host, in PRInt32 port, in string scheme, in string realm); */
  nsIAuthenticationInfoD  GetAuthenticationInfo(char*protocol, char*host, PRInt32 port, char*scheme, char*realm){
    nsIAuthenticationInfo _retval;
    nsresult __result = inner.GetAuthenticationInfo(protocol, host, port, scheme, realm, &_retval);
    CheckException(__result);
    return new nsIAuthenticationInfoD(_retval);
  }

  /**
     * Import username/password pair from JPI.
     *
     * @param protocol  the protocol that support (http/https)
     * @param host      host name
     * @param port      port number
     * @param scheme    scheme
     * @param realm     realm
     * @param username  user name
     * @param password  password
     *
     * @return          NS_OK if success, other if fail
     */
  /* void SetAuthenticationInfo (in string protocol, in string host, in PRInt32 port, in string scheme, in string realm, in string username, in string password); */
  void SetAuthenticationInfo(char*protocol, char*host, PRInt32 port, char*scheme, char*realm, char*username, char*password){
    nsresult __result = inner.SetAuthenticationInfo(protocol, host, port, scheme, realm, username, password);
    CheckException(__result);
  }

private:
  nsIJVMAuthTools inner;

}

