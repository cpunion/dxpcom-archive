/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbLDAPReplicationData.idl
 */

module mozilla.dxpcom.nsIAbLDAPReplicationDataD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAbLDAPReplicationData;


public import mozilla.dxpcom.nsIAbLDAPReplicationDataD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsILDAPMessageListener;
public import mozilla.dxpcom.nsILDAPMessageListenerD;

public import mozilla.xpcom.nsIAbLDAPReplicationQuery;

public import mozilla.dxpcom.nsIAbLDAPReplicationQueryD;

public import mozilla.xpcom.nsIWebProgressListener;

public import mozilla.dxpcom.nsIWebProgressListenerD;


/* starting wrapper class:    nsIAbLDAPProcessReplicationData */
/**
 * this service does replication of an LDAP directory to a local Mork AB Database.
 */
class nsIAbLDAPProcessReplicationDataD : public nsILDAPMessageListenerD {

  static const nsIID IID = NS_IABLDAPPROCESSREPLICATIONDATA_IID;


  alias nsIAbLDAPProcessReplicationData InnerType;

  this(nsIAbLDAPProcessReplicationData intr){
    super(intr);
    this.inner = intr;
  }

  nsIAbLDAPProcessReplicationData opCast() {
    return inner;
  }

  void opAssign(nsIAbLDAPProcessReplicationData value) {
    inner = value;
  }

  /**
     * readonly attribute giving the current replication state
     */
  /* readonly attribute PRInt32 replicationState; */
  PRInt32 ReplicationState(){
    PRInt32 value;
    nsresult __result = inner.GetReplicationState(&value);
    CheckException(__result);
    return value;
  }

  /**
     * replication states
     */
  enum { kIdle = 0 }

  enum { kAnonymousBinding = 1 }

  enum { kAuthenticatedBinding = 2 }

  enum { kSyncServerBinding = 3 }

  enum { kSearchingAuthDN = 4 }

  enum { kDecidingProtocol = 5 }

  enum { kAuthenticating = 6 }

  enum { kReplicatingAll = 7 }

  enum { kSearchingRootDSE = 8 }

  enum { kFindingChanges = 9 }

  enum { kReplicatingChanges = 10 }

  enum { kReplicationDone = 11 }

  /**
     * readonly attribute giving the current protocol used
     */
  /* readonly attribute PRInt32 protocolUsed; */
  PRInt32 ProtocolUsed(){
    PRInt32 value;
    nsresult __result = inner.GetProtocolUsed(&value);
    CheckException(__result);
    return value;
  }

  /**
     * replication protocols
     */
  enum { kDefaultDownloadAll = 0 }

  enum { kChangeLogProtocol = 1 }

  enum { kLCUPProtocol = 2 }

  enum { kLastUpdatedTimeStampMethod = 3 }

  /**
     * this method initializes the implementation
     */
  /* void init (in nsIAbLDAPReplicationQuery query, in nsIWebProgressListener progressListener); */
  void Init(nsIAbLDAPReplicationQueryD query, nsIWebProgressListenerD progressListener){
    nsresult __result = inner.Init(query ? cast(nsIAbLDAPReplicationQuery)query : null, progressListener ? cast(nsIWebProgressListener)progressListener : null);
    CheckException(__result);
  }

  /**
     * this method a aborts the ongoing processing
     */
  /* void abort (); */
  void Abort(){
    nsresult __result = inner.Abort();
    CheckException(__result);
  }

  /**
     * this utility method populates authentication data from Dir Server
     */
  /* void populateAuthData (); */
  void PopulateAuthData(){
    nsresult __result = inner.PopulateAuthData();
    CheckException(__result);
  }

private:
  nsIAbLDAPProcessReplicationData inner;

}

