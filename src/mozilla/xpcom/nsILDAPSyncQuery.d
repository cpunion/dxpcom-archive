/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILDAPSyncQuery.idl
 */

module mozilla.xpcom.nsILDAPSyncQuery;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsILDAPURL; /* forward declaration */


/* starting interface:    nsILDAPSyncQuery */
const char[] NS_ILDAPSYNCQUERY_IID_STR = "0308fb36-1dd2-11b2-b16f-8510e8c5311a";

const nsIID NS_ILDAPSYNCQUERY_IID= 
  {0x0308fb36, 0x1dd2, 0x11b2, 
    [ 0xb1, 0x6f, 0x85, 0x10, 0xe8, 0xc5, 0x31, 0x1a ]};

extern(Windows)
interface nsILDAPSyncQuery : nsISupports {
  static const char[] IID_STR = NS_ILDAPSYNCQUERY_IID_STR;
  static const nsIID IID = NS_ILDAPSYNCQUERY_IID;

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
  nsresult GetQueryResults(nsILDAPURL aServerURL, PRUint32 aProtocolVersion, PRUnichar **_retval);

}

