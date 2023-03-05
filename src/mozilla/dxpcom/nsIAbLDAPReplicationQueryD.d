/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbLDAPReplicationQuery.idl
 */

module mozilla.dxpcom.nsIAbLDAPReplicationQueryD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAbLDAPReplicationQuery;


public import mozilla.dxpcom.nsIAbLDAPReplicationQueryD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIWebProgressListener;

public import mozilla.dxpcom.nsIWebProgressListenerD;

public import mozilla.xpcom.nsILDAPURL;

public import mozilla.dxpcom.nsILDAPURLD;

public import mozilla.xpcom.nsILDAPConnection;

public import mozilla.dxpcom.nsILDAPConnectionD;

public import mozilla.xpcom.nsILDAPOperation;

public import mozilla.dxpcom.nsILDAPOperationD;


/* starting wrapper class:    nsIAbLDAPReplicationQuery */
/**
 * this interface provides methods to perform LDAP Replication Queries
 */
class nsIAbLDAPReplicationQueryD : public nsISupportsD {

  static const nsIID IID = NS_IABLDAPREPLICATIONQUERY_IID;


  alias nsIAbLDAPReplicationQuery InnerType;

  this(nsIAbLDAPReplicationQuery intr){
    super(intr);
    this.inner = intr;
  }

  nsIAbLDAPReplicationQuery opCast() {
    return inner;
  }

  void opAssign(nsIAbLDAPReplicationQuery value) {
    inner = value;
  }

  /* readonly attribute nsILDAPURL replicationURL; */
  nsILDAPURLD  ReplicationURL(){
    nsILDAPURL value;
    nsresult __result = inner.GetReplicationURL(&value);
    CheckException(__result);
    return new nsILDAPURLD(value);
  }

  /* readonly attribute nsILDAPConnection connection; */
  nsILDAPConnectionD  Connection(){
    nsILDAPConnection value;
    nsresult __result = inner.GetConnection(&value);
    CheckException(__result);
    return new nsILDAPConnectionD(value);
  }

  /* readonly attribute nsILDAPOperation operation; */
  nsILDAPOperationD  Operation(){
    nsILDAPOperation value;
    nsresult __result = inner.GetOperation(&value);
    CheckException(__result);
    return new nsILDAPOperationD(value);
  }

  /* [noscript] readonly attribute DIR_Server replicationServerInfo; */
  DIR_Server * ReplicationServerInfo(){
    DIR_Server * value;
    nsresult __result = inner.GetReplicationServerInfo(&value);
    CheckException(__result);
    return value;
  }

  /**
     * initialize for the query
     */
  /* void init (in ACString aPrefName, in nsIWebProgressListener aProgressListener); */
  void Init(char[] aPrefName, nsIWebProgressListenerD aProgressListener){
    scope auto _aPrefName = new ACString(aPrefName);
    nsresult __result = inner.Init(cast(nsACString*)_aPrefName, aProgressListener ? cast(nsIWebProgressListener)aProgressListener : null);
    CheckException(__result);
  }

  /**
     * Starts an LDAP query to do replication as needed
     */
  /* void doReplicationQuery (); */
  void DoReplicationQuery(){
    nsresult __result = inner.DoReplicationQuery();
    CheckException(__result);
  }

  /**
     * connects to an LDAP Server using a DN
	 */
  /* void connectToLDAPServer (in nsILDAPURL aURL, in AUTF8String aAuthDN); */
  void ConnectToLDAPServer(nsILDAPURLD aURL, char[] aAuthDN){
    scope auto _aAuthDN = new ACString(aAuthDN);
    nsresult __result = inner.ConnectToLDAPServer(aURL ? cast(nsILDAPURL)aURL : null, cast(nsACString*)_aAuthDN);
    CheckException(__result);
  }

  /**
    * Starts an LDAP query to replicate all entries
    */
  /* void queryAllEntries (); */
  void QueryAllEntries(){
    nsresult __result = inner.QueryAllEntries();
    CheckException(__result);
  }

  /**
     * Cancels the currently executing query
     */
  /* void cancelQuery (); */
  void CancelQuery(){
    nsresult __result = inner.CancelQuery();
    CheckException(__result);
  }

  /**
     * this method is the callback when query is done, failed or successful
     */
  /* void done (in boolean aSuccess); */
  void Done(PRBool aSuccess){
    nsresult __result = inner.Done(aSuccess);
    CheckException(__result);
  }

private:
  nsIAbLDAPReplicationQuery inner;

}


/* starting wrapper class:    nsIAbLDAPChangeLogQuery */
class nsIAbLDAPChangeLogQueryD : public nsISupportsD {

  static const nsIID IID = NS_IABLDAPCHANGELOGQUERY_IID;


  alias nsIAbLDAPChangeLogQuery InnerType;

  this(nsIAbLDAPChangeLogQuery intr){
    super(intr);
    this.inner = intr;
  }

  nsIAbLDAPChangeLogQuery opCast() {
    return inner;
  }

  void opAssign(nsIAbLDAPChangeLogQuery value) {
    inner = value;
  }

  /**
    * Starts an LDAP query to find auth DN
    */
  /* void queryAuthDN (in AUTF8String aValueUsedToFindDn); */
  void QueryAuthDN(char[] aValueUsedToFindDn){
    scope auto _aValueUsedToFindDn = new ACString(aValueUsedToFindDn);
    nsresult __result = inner.QueryAuthDN(cast(nsACString*)_aValueUsedToFindDn);
    CheckException(__result);
  }

  /**
    * Starts an LDAP query to search server's Root DSE
    */
  /* void queryRootDSE (); */
  void QueryRootDSE(){
    nsresult __result = inner.QueryRootDSE();
    CheckException(__result);
  }

  /**
    * Starts an LDAP ChangeLog query to find changelog entries
    */
  /* void queryChangeLog (in AUTF8String aChangeLogDN, in PRInt32 aLastChangeNo); */
  void QueryChangeLog(char[] aChangeLogDN, PRInt32 aLastChangeNo){
    scope auto _aChangeLogDN = new ACString(aChangeLogDN);
    nsresult __result = inner.QueryChangeLog(cast(nsACString*)_aChangeLogDN, aLastChangeNo);
    CheckException(__result);
  }

  /**
    * Starts an LDAP query to find changed entries
    */
  /* void queryChangedEntries (in AUTF8String aChangedEntryDN); */
  void QueryChangedEntries(char[] aChangedEntryDN){
    scope auto _aChangedEntryDN = new ACString(aChangedEntryDN);
    nsresult __result = inner.QueryChangedEntries(cast(nsACString*)_aChangedEntryDN);
    CheckException(__result);
  }

private:
  nsIAbLDAPChangeLogQuery inner;

}

