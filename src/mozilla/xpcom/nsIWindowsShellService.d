/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWindowsShellService.idl
 */

module mozilla.xpcom.nsIWindowsShellService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIShellService;


/* starting interface:    nsIWindowsShellService */
const char[] NS_IWINDOWSSHELLSERVICE_IID_STR = "5a92782c-a2e8-4dd3-b18a-33acc3af4fd7";

const nsIID NS_IWINDOWSSHELLSERVICE_IID= 
  {0x5a92782c, 0xa2e8, 0x4dd3, 
    [ 0xb1, 0x8a, 0x33, 0xac, 0xc3, 0xaf, 0x4f, 0xd7 ]};

extern(Windows)
interface nsIWindowsShellService : nsIShellService {
  static const char[] IID_STR = NS_IWINDOWSSHELLSERVICE_IID_STR;
  static const nsIID IID = NS_IWINDOWSSHELLSERVICE_IID;

  /**
    * Restores system settings to what they were before Firefox 
    * modified them.
    *
    * @param aForAllUsers   Whether or not Firefox should restore
    *                       settings for all users on a multi-user
    *                       system. 
    */
  /* void restoreFileSettings (in boolean aForAllUsers); */
  nsresult RestoreFileSettings(PRBool aForAllUsers);

  /** 
     * The number of unread mail messages for the current user.
     * 
     * @return The number of unread (new) mail messages for the current user.
     */
  /* readonly attribute unsigned long unreadMailCount; */
  nsresult GetUnreadMailCount(PRUint32 *aUnreadMailCount);

}

