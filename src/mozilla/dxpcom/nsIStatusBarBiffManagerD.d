/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIStatusBarBiffManager.idl
 */

module mozilla.dxpcom.nsIStatusBarBiffManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIStatusBarBiffManager;


public import mozilla.dxpcom.nsIStatusBarBiffManagerD;

public import mozilla.xpcom.nsIMsgFolder;
public import mozilla.dxpcom.nsIMsgFolderD;
public import mozilla.xpcom.nsIFolderListener;
public import mozilla.dxpcom.nsIFolderListenerD;


/* starting wrapper class:    nsIStatusBarBiffManager */
class nsIStatusBarBiffManagerD : public nsIFolderListenerD {

  static const nsIID IID = NS_ISTATUSBARBIFFMANAGER_IID;


  alias nsIStatusBarBiffManager InnerType;

  this(nsIStatusBarBiffManager intr){
    super(intr);
    this.inner = intr;
  }

  nsIStatusBarBiffManager opCast() {
    return inner;
  }

  void opAssign(nsIStatusBarBiffManager value) {
    inner = value;
  }

  /* readonly attribute nsMsgBiffState biffState; */
  nsMsgBiffState BiffState(){
    nsMsgBiffState value;
    nsresult __result = inner.GetBiffState(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIStatusBarBiffManager inner;

}

