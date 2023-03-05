/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILDAPSyncQuery.idl
 */

module mozilla.dxpcom.nsILDAPSyncQueryD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsILDAPSyncQuery;


public import mozilla.dxpcom.nsILDAPSyncQueryD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsILDAPURL;

public import mozilla.dxpcom.nsILDAPURLD;


/* starting wrapper class:    nsILDAPSyncQuery */
class nsILDAPSyncQueryD : public nsISupportsD {

  static const nsIID IID = NS_ILDAPSYNCQUERY_IID;


  alias nsILDAPSyncQuery InnerType;

  this(nsILDAPSyncQuery intr){
    super(intr);
    this.inner = intr;
  }

  nsILDAPSyncQuery opCast() {
    return inner;
  }

  void opAssign(nsILDAPSyncQuery value) {
    inner = value;
  }

  /**
   * getQueryResults
   *
   * Create a new LDAP connection do a synchronous LDAP search and return 
   * the results.
   * @param aServerURL - LDAP URL with parameters to a LDAP seach 
   *                     ("ldap://host/base?attributes?one/sub?filter")
   * @param aProtocolVersion - LDAP protocol version to use for connection
   *                           (nsILDAPConnection.idl has symbolic constants)
   * @return results
   */
  /* wstring getQueryResults (in nsILDAPURL aServerURL, in unsigned long aProtocolVersion); */
  PRUnichar* GetQueryResults(nsILDAPURLD aServerURL, PRUint32 aProtocolVersion){
    PRUnichar* _retval;
    nsresult __result = inner.GetQueryResults(aServerURL ? cast(nsILDAPURL)aServerURL : null, aProtocolVersion, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsILDAPSyncQuery inner;

}

