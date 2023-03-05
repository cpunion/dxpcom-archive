/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbLDAPReplicationService.idl
 */

module mozilla.dxpcom.nsIAbLDAPReplicationServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAbLDAPReplicationService;


public import mozilla.dxpcom.nsIAbLDAPReplicationServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIWebProgressListener;

public import mozilla.dxpcom.nsIWebProgressListenerD;


/* starting wrapper class:    nsIAbLDAPReplicationService */
/**
 * this service does replication of an LDAP directory to a local Mork AB Database.
 */
class nsIAbLDAPReplicationServiceD : public nsISupportsD {

  static const nsIID IID = NS_IABLDAPREPLICATIONSERVICE_IID;


  alias nsIAbLDAPReplicationService InnerType;

  this(nsIAbLDAPReplicationService intr){
    super(intr);
    this.inner = intr;
  }

  nsIAbLDAPReplicationService opCast() {
    return inner;
  }

  void opAssign(nsIAbLDAPReplicationService value) {
    inner = value;
  }

  /**
     * Start Replication of given LDAP directory represented by the URI
     */
  /* void startReplication (in ACString aPrefName, in nsIWebProgressListener progressListener); */
  void StartReplication(char[] aPrefName, nsIWebProgressListenerD progressListener){
    scope auto _aPrefName = new ACString(aPrefName);
    nsresult __result = inner.StartReplication(cast(nsACString*)_aPrefName, progressListener ? cast(nsIWebProgressListener)progressListener : null);
    CheckException(__result);
  }

  /**
     * Cancel Replication of given LDAP directory represented by the URI
     */
  /* void cancelReplication (in ACString aPrefName); */
  void CancelReplication(char[] aPrefName){
    scope auto _aPrefName = new ACString(aPrefName);
    nsresult __result = inner.CancelReplication(cast(nsACString*)_aPrefName);
    CheckException(__result);
  }

  /**
     * callback when replication is done, failure or success
     */
  /* void done (in boolean aSuccess); */
  void Done(PRBool aSuccess){
    nsresult __result = inner.Done(aSuccess);
    CheckException(__result);
  }

private:
  nsIAbLDAPReplicationService inner;

}

