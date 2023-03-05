/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWindowsShellService.idl
 */

module mozilla.dxpcom.nsIWindowsShellServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWindowsShellService;


public import mozilla.dxpcom.nsIWindowsShellServiceD;

public import mozilla.xpcom.nsIShellService;
public import mozilla.dxpcom.nsIShellServiceD;


/* starting wrapper class:    nsIWindowsShellService */
class nsIWindowsShellServiceD : public nsIShellServiceD {

  static const nsIID IID = NS_IWINDOWSSHELLSERVICE_IID;


  alias nsIWindowsShellService InnerType;

  this(nsIWindowsShellService intr){
    super(intr);
    this.inner = intr;
  }

  nsIWindowsShellService opCast() {
    return inner;
  }

  void opAssign(nsIWindowsShellService value) {
    inner = value;
  }

  /**
    * Restores system settings to what they were before Firefox 
    * modified them.
    *
    * @param aForAllUsers   Whether or not Firefox should restore
    *                       settings for all users on a multi-user
    *                       system. 
    */
  /* void restoreFileSettings (in boolean aForAllUsers); */
  void RestoreFileSettings(PRBool aForAllUsers){
    nsresult __result = inner.RestoreFileSettings(aForAllUsers);
    CheckException(__result);
  }

  /** 
     * The number of unread mail messages for the current user.
     * 
     * @return The number of unread (new) mail messages for the current user.
     */
  /* readonly attribute unsigned long unreadMailCount; */
  PRUint32 UnreadMailCount(){
    PRUint32 value;
    nsresult __result = inner.GetUnreadMailCount(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIWindowsShellService inner;

}

