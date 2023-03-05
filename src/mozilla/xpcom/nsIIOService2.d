/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIIOService2.idl
 */

module mozilla.xpcom.nsIIOService2;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIIOService;


/* starting interface:    nsIIOService2 */
const char[] NS_IIOSERVICE2_IID_STR = "d44fe6d4-ee35-4789-886a-eb8f0554d04e";

const nsIID NS_IIOSERVICE2_IID= 
  {0xd44fe6d4, 0xee35, 0x4789, 
    [ 0x88, 0x6a, 0xeb, 0x8f, 0x05, 0x54, 0xd0, 0x4e ]};

/**
 * nsIIOService2 extends nsIIOService with support for automatic
 * online/offline management.
 */
extern(Windows)
interface nsIIOService2 : nsIIOService {
  static const char[] IID_STR = NS_IIOSERVICE2_IID_STR;
  static const nsIID IID = NS_IIOSERVICE2_IID;

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
  nsresult GetManageOfflineStatus(PRBool *aManageOfflineStatus);
  nsresult SetManageOfflineStatus(PRBool aManageOfflineStatus);

}

