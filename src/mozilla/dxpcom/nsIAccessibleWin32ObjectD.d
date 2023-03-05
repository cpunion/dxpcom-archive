/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessibleWin32Object.idl
 */

module mozilla.dxpcom.nsIAccessibleWin32ObjectD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAccessibleWin32Object;


public import mozilla.dxpcom.nsIAccessibleWin32ObjectD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIAccessibleWin32Object */
class nsIAccessibleWin32ObjectD : public nsISupportsD {

  static const nsIID IID = NS_IACCESSIBLEWIN32OBJECT_IID;


  alias nsIAccessibleWin32Object InnerType;

  this(nsIAccessibleWin32Object intr){
    super(intr);
    this.inner = intr;
  }

  nsIAccessibleWin32Object opCast() {
    return inner;
  }

  void opAssign(nsIAccessibleWin32Object value) {
    inner = value;
  }

  /** handle to the external window implementing IAccessible */
  /* [noscript] readonly attribute voidPtr hwnd; */
  void * Hwnd(){
    void * value;
    nsresult __result = inner.GetHwnd(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIAccessibleWin32Object inner;

}

