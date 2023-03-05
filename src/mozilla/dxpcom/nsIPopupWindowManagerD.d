/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPopupWindowManager.idl
 */

module mozilla.dxpcom.nsIPopupWindowManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPopupWindowManager;


public import mozilla.dxpcom.nsIPopupWindowManagerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIPopupWindowManager */
class nsIPopupWindowManagerD : public nsISupportsD {

  static const nsIID IID = NS_IPOPUPWINDOWMANAGER_IID;


  alias nsIPopupWindowManager InnerType;

  this(nsIPopupWindowManager intr){
    super(intr);
    this.inner = intr;
  }

  nsIPopupWindowManager opCast() {
    return inner;
  }

  void opAssign(nsIPopupWindowManager value) {
    inner = value;
  }

  /**
   * These values are returned by the testPermission method
   */
  enum { ALLOW_POPUP = 1U }

  enum { DENY_POPUP = 2U }

  enum { ALLOW_POPUP_WITH_PREJUDICE = 3U }

  /**
   * Test whether a website has permission to show a popup window.
   * @param   uri is the URI to be tested
   * @return  one of the enumerated permission actions defined above
   */
  /* PRUint32 testPermission (in nsIURI uri); */
  PRUint32 TestPermission(nsIURID uri){
    PRUint32 _retval;
    nsresult __result = inner.TestPermission(uri ? cast(nsIURI)uri : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIPopupWindowManager inner;

}

