/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbLDAPReplicationData.idl
 */

module mozilla.xpcom.nsIAbLDAPReplicationData;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsILDAPMessageListener;

public import mozilla.xpcom.nsIAbLDAPReplicationQuery; /* forward declaration */

public import mozilla.xpcom.nsIWebProgressListener; /* forward declaration */


/* starting interface:    nsIAbLDAPProcessReplicationData */
const char[] NS_IABLDAPPROCESSREPLICATIONDATA_IID_STR = "00d568a2-3c3b-11d6-b7b9-00b0d06e5f27";

const nsIID NS_IABLDAPPROCESSREPLICATIONDATA_IID= 
  {0x00d568a2, 0x3c3b, 0x11d6, 
    [ 0xb7, 0xb9, 0x00, 0xb0, 0xd0, 0x6e, 0x5f, 0x27 ]};

/**
 * this service does replication of an LDAP directory to a local Mork AB Database.
 */
extern(Windows)
interface nsIAbLDAPProcessReplicationData : nsILDAPMessageListener {
  static const char[] IID_STR = NS_IABLDAPPROCESSREPLICATIONDATA_IID_STR;
  static const nsIID IID = NS_IABLDAPPROCESSREPLICATIONDATA_IID;

  /**
     * readonly attribute giving the current replication state
     */
  /* readonly attribute PRInt32 replicationState; */
  nsresult GetReplicationState(PRInt32 *aReplicationState);

  /**
     * replication states
     */
  enum { kIdle = 0 };

  enum { kAnonymousBinding = 1 };

  enum { kAuthenticatedBinding = 2 };

  enum { kSyncServerBinding = 3 };

  enum { kSearchingAuthDN = 4 };

  enum { kDecidingProtocol = 5 };

  enum { kAuthenticating = 6 };

  enum { kReplicatingAll = 7 };

  enum { kSearchingRootDSE = 8 };

  enum { kFindingChanges = 9 };

  enum { kReplicatingChanges = 10 };

  enum { kReplicationDone = 11 };

  /**
     * readonly attribute giving the current protocol used
     */
  /* readonly attribute PRInt32 protocolUsed; */
  nsresult GetProtocolUsed(PRInt32 *aProtocolUsed);

  /**
     * replication protocols
     */
  enum { kDefaultDownloadAll = 0 };

  enum { kChangeLogProtocol = 1 };

  enum { kLCUPProtocol = 2 };

  enum { kLastUpdatedTimeStampMethod = 3 };

  /**
     * this method initializes the implementation
     */
  /* void init (in nsIAbLDAPReplicationQuery query, in nsIWebProgressListener progressListener); */
  nsresult Init(nsIAbLDAPReplicationQuery query, nsIWebProgressListener progressListener);

  /**
     * this method a aborts the ongoing processing
     */
  /* void abort (); */
  nsresult Abort();

  /**
     * this utility method populates authentication data from Dir Server
     */
  /* void populateAuthData (); */
  nsresult PopulateAuthData();

}

