/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbLDAPReplicationService.idl
 */

module mozilla.xpcom.nsIAbLDAPReplicationService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIWebProgressListener; /* forward declaration */


/* starting interface:    nsIAbLDAPReplicationService */
const char[] NS_IABLDAPREPLICATIONSERVICE_IID_STR = "00d568a0-3c3b-11d6-b7b9-00b0d06e5f27";

const nsIID NS_IABLDAPREPLICATIONSERVICE_IID= 
  {0x00d568a0, 0x3c3b, 0x11d6, 
    [ 0xb7, 0xb9, 0x00, 0xb0, 0xd0, 0x6e, 0x5f, 0x27 ]};

/**
 * this service does replication of an LDAP directory to a local Mork AB Database.
 */
extern(Windows)
interface nsIAbLDAPReplicationService : nsISupports {
  static const char[] IID_STR = NS_IABLDAPREPLICATIONSERVICE_IID_STR;
  static const nsIID IID = NS_IABLDAPREPLICATIONSERVICE_IID;

  /**
     * Start Replication of given LDAP directory represented by the URI
     */
  /* void startReplication (in ACString aPrefName, in nsIWebProgressListener progressListener); */
  nsresult StartReplication(nsACString * aPrefName, nsIWebProgressListener progressListener);

  /**
     * Cancel Replication of given LDAP directory represented by the URI
     */
  /* void cancelReplication (in ACString aPrefName); */
  nsresult CancelReplication(nsACString * aPrefName);

  /**
     * callback when replication is done, failure or success
     */
  /* void done (in boolean aSuccess); */
  nsresult Done(PRBool aSuccess);

}

