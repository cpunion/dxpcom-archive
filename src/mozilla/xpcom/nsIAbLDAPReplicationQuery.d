/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbLDAPReplicationQuery.idl
 */

module mozilla.xpcom.nsIAbLDAPReplicationQuery;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIWebProgressListener; /* forward declaration */

public import mozilla.xpcom.nsILDAPURL; /* forward declaration */

public import mozilla.xpcom.nsILDAPConnection; /* forward declaration */

public import mozilla.xpcom.nsILDAPOperation; /* forward declaration */


/* starting interface:    nsIAbLDAPReplicationQuery */
const char[] NS_IABLDAPREPLICATIONQUERY_IID_STR = "00d568a1-3c3b-11d6-b7b9-00b0d06e5f27";

const nsIID NS_IABLDAPREPLICATIONQUERY_IID= 
  {0x00d568a1, 0x3c3b, 0x11d6, 
    [ 0xb7, 0xb9, 0x00, 0xb0, 0xd0, 0x6e, 0x5f, 0x27 ]};

/**
 * this interface provides methods to perform LDAP Replication Queries
 */
extern(Windows)
interface nsIAbLDAPReplicationQuery : nsISupports {
  static const char[] IID_STR = NS_IABLDAPREPLICATIONQUERY_IID_STR;
  static const nsIID IID = NS_IABLDAPREPLICATIONQUERY_IID;

  /* readonly attribute nsILDAPURL replicationURL; */
  nsresult GetReplicationURL(nsILDAPURL  *aReplicationURL);

  /* readonly attribute nsILDAPConnection connection; */
  nsresult GetConnection(nsILDAPConnection  *aConnection);

  /* readonly attribute nsILDAPOperation operation; */
  nsresult GetOperation(nsILDAPOperation  *aOperation);

  /* [noscript] readonly attribute DIR_Server replicationServerInfo; */
  nsresult GetReplicationServerInfo(DIR_Server * *aReplicationServerInfo);

  /**
     * initialize for the query
     */
  /* void init (in ACString aPrefName, in nsIWebProgressListener aProgressListener); */
  nsresult Init(nsACString * aPrefName, nsIWebProgressListener aProgressListener);

  /**
     * Starts an LDAP query to do replication as needed
     */
  /* void doReplicationQuery (); */
  nsresult DoReplicationQuery();

  /**
     * connects to an LDAP Server using a DN
	 */
  /* void connectToLDAPServer (in nsILDAPURL aURL, in AUTF8String aAuthDN); */
  nsresult ConnectToLDAPServer(nsILDAPURL aURL, nsACString * aAuthDN);

  /**
    * Starts an LDAP query to replicate all entries
    */
  /* void queryAllEntries (); */
  nsresult QueryAllEntries();

  /**
     * Cancels the currently executing query
     */
  /* void cancelQuery (); */
  nsresult CancelQuery();

  /**
     * this method is the callback when query is done, failed or successful
     */
  /* void done (in boolean aSuccess); */
  nsresult Done(PRBool aSuccess);

}


/* starting interface:    nsIAbLDAPChangeLogQuery */
const char[] NS_IABLDAPCHANGELOGQUERY_IID_STR = "126202d1-4460-11d6-b7c2-00b0d06e5f27";

const nsIID NS_IABLDAPCHANGELOGQUERY_IID= 
  {0x126202d1, 0x4460, 0x11d6, 
    [ 0xb7, 0xc2, 0x00, 0xb0, 0xd0, 0x6e, 0x5f, 0x27 ]};

extern(Windows)
interface nsIAbLDAPChangeLogQuery : nsISupports {
  static const char[] IID_STR = NS_IABLDAPCHANGELOGQUERY_IID_STR;
  static const nsIID IID = NS_IABLDAPCHANGELOGQUERY_IID;

  /**
    * Starts an LDAP query to find auth DN
    */
  /* void queryAuthDN (in AUTF8String aValueUsedToFindDn); */
  nsresult QueryAuthDN(nsACString * aValueUsedToFindDn);

  /**
    * Starts an LDAP query to search server's Root DSE
    */
  /* void queryRootDSE (); */
  nsresult QueryRootDSE();

  /**
    * Starts an LDAP ChangeLog query to find changelog entries
    */
  /* void queryChangeLog (in AUTF8String aChangeLogDN, in PRInt32 aLastChangeNo); */
  nsresult QueryChangeLog(nsACString * aChangeLogDN, PRInt32 aLastChangeNo);

  /**
    * Starts an LDAP query to find changed entries
    */
  /* void queryChangedEntries (in AUTF8String aChangedEntryDN); */
  nsresult QueryChangedEntries(nsACString * aChangedEntryDN);

}

