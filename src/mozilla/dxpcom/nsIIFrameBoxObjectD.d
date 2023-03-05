/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIIFrameBoxObject.idl
 */

module mozilla.dxpcom.nsIIFrameBoxObjectD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIIFrameBoxObject;


public import mozilla.dxpcom.nsIIFrameBoxObjectD;

public import mozilla.xpcom.nsIBoxObject;
public import mozilla.dxpcom.nsIBoxObjectD;

public import mozilla.xpcom.nsIDocShell;

public import mozilla.dxpcom.nsIDocShellD;


/* starting wrapper class:    nsIIFrameBoxObject */
class nsIIFrameBoxObjectD : public nsISupportsD {

  static const nsIID IID = NS_IIFRAMEBOXOBJECT_IID;


  alias nsIIFrameBoxObject InnerType;

  this(nsIIFrameBoxObject intr){
    super(intr);
    this.inner = intr;
  }

  nsIIFrameBoxObject opCast() {
    return inner;
  }

  void opAssign(nsIIFrameBoxObject value) {
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
  nsIIFrameBoxObject inner;

}

