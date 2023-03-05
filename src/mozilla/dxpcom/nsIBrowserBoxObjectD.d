/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBrowserBoxObject.idl
 */

module mozilla.dxpcom.nsIBrowserBoxObjectD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIBrowserBoxObject;


public import mozilla.dxpcom.nsIBrowserBoxObjectD;

public import mozilla.xpcom.nsIBoxObject;
public import mozilla.dxpcom.nsIBoxObjectD;

public import mozilla.xpcom.nsIDocShell;

public import mozilla.dxpcom.nsIDocShellD;


/* starting wrapper class:    nsIBrowserBoxObject */
class nsIBrowserBoxObjectD : public nsISupportsD {

  static const nsIID IID = NS_IBROWSERBOXOBJECT_IID;


  alias nsIBrowserBoxObject InnerType;

  this(nsIBrowserBoxObject intr){
    super(intr);
    this.inner = intr;
  }

  nsIBrowserBoxObject opCast() {
    return inner;
  }

  void opAssign(nsIBrowserBoxObject value) {
    inner = value;
  }

  /* readonly attribute nsIDocShell docShell; */
  nsIDocShellD  DocShell(){
    nsIDocShell value;
    nsresult __result = inner.GetDocShell(&value);
    CheckException(__result);
    return new nsIDocShellD(value);
  }

private:
  nsIBrowserBoxObject inner;

}

