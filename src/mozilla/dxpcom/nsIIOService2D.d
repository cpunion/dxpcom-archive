/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIIOService2.idl
 */

module mozilla.dxpcom.nsIIOService2D;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIIOService2;


public import mozilla.dxpcom.nsIIOService2D;

public import mozilla.xpcom.nsIIOService;
public import mozilla.dxpcom.nsIIOServiceD;


/* starting wrapper class:    nsIIOService2 */
/**
 * nsIIOService2 extends nsIIOService with support for automatic
 * online/offline management.
 */
class nsIIOService2D : public nsIIOServiceD {

  static const nsIID IID = NS_IIOSERVICE2_IID;


  alias nsIIOService2 InnerType;

  this(nsIIOService2 intr){
    super(intr);
    this.inner = intr;
  }

  nsIIOService2 opCast() {
    return inner;
  }

  void opAssign(nsIIOService2 value) {
    inner = value;
  }

  /**
   * While this is set, IOService will monitor an nsINetworkLinkService
   * (if available) and set its offline status to "true" whenever
   * isLinkUp is false.
   *
   * Applications that want to control changes to the IOService's offline
   * status should set this to false, watch for network:link-status-changed
   * broadcasts, and change nsIIOService::offline as they see fit. Note
   * that this means during application startup, IOService may be offline
   * if there is no link, until application code runs and can turn off
   * this management.
   */
  /* attribute boolean manageOfflineStatus; */
  PRBool ManageOfflineStatus(){
    PRBool value;
    nsresult __result = inner.GetManageOfflineStatus(&value);
    CheckException(__result);
    return value;
  }
  void ManageOfflineStatus(PRBool aManageOfflineStatus){
    nsresult __result = inner.SetManageOfflineStatus(aManageOfflineStatus);
    CheckException(__result);
  }

private:
  nsIIOService2 inner;

}

