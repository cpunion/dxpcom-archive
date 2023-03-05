/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICloseAllWindows.idl
 */

module mozilla.dxpcom.nsICloseAllWindowsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICloseAllWindows;


public import mozilla.dxpcom.nsICloseAllWindowsD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsICloseAllWindows */
class nsICloseAllWindowsD : public nsISupportsD {

  static const nsIID IID = NS_ICLOSEALLWINDOWS_IID;


  alias nsICloseAllWindows InnerType;

  this(nsICloseAllWindows intr){
    super(intr);
    this.inner = intr;
  }

  nsICloseAllWindows opCast() {
    return inner;
  }

  void opAssign(nsICloseAllWindows value) {
    inner = value;
  }

  /**
	 * Closes all open windows, optionally asking to confirm changes if any.
	 * @return TRUE if the user does not cancel from any confirmation dialog.
     */
  /* boolean closeAll (in boolean askSave); */
  PRBool CloseAll(PRBool askSave){
    PRBool _retval;
    nsresult __result = inner.CloseAll(askSave, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsICloseAllWindows inner;

}

