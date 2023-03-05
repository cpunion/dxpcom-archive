/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXULBrowserWindow.idl
 */

module mozilla.dxpcom.nsIXULBrowserWindowD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXULBrowserWindow;


public import mozilla.dxpcom.nsIXULBrowserWindowD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIRequest;

public import mozilla.dxpcom.nsIRequestD;


/* starting wrapper class:    nsIXULBrowserWindow */
class nsIXULBrowserWindowD : public nsISupportsD {

  static const nsIID IID = NS_IXULBROWSERWINDOW_IID;


  alias nsIXULBrowserWindow InnerType;

  this(nsIXULBrowserWindow intr){
    super(intr);
    this.inner = intr;
  }

  nsIXULBrowserWindow opCast() {
    return inner;
  }

  void opAssign(nsIXULBrowserWindow value) {
    inner = value;
  }

  /* void setJSStatus (in wstring status); */
  void SetJSStatus(PRUnichar*status){
    nsresult __result = inner.SetJSStatus(status);
    CheckException(__result);
  }

  /* void setJSDefaultStatus (in wstring status); */
  void SetJSDefaultStatus(PRUnichar*status){
    nsresult __result = inner.SetJSDefaultStatus(status);
    CheckException(__result);
  }

  /* void setOverLink (in wstring link); */
  void SetOverLink(PRUnichar*link){
    nsresult __result = inner.SetOverLink(link);
    CheckException(__result);
  }

private:
  nsIXULBrowserWindow inner;

}

