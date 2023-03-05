/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEditorBoxObject.idl
 */

module mozilla.dxpcom.nsIEditorBoxObjectD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIEditorBoxObject;


public import mozilla.dxpcom.nsIEditorBoxObjectD;

public import mozilla.xpcom.nsIBoxObject;
public import mozilla.dxpcom.nsIBoxObjectD;

public import mozilla.xpcom.nsIEditor;

public import mozilla.dxpcom.nsIEditorD;

public import mozilla.xpcom.nsIDocShell;

public import mozilla.dxpcom.nsIDocShellD;


/* starting wrapper class:    nsIEditorBoxObject */
class nsIEditorBoxObjectD : public nsISupportsD {

  static const nsIID IID = NS_IEDITORBOXOBJECT_IID;


  alias nsIEditorBoxObject InnerType;

  this(nsIEditorBoxObject intr){
    super(intr);
    this.inner = intr;
  }

  nsIEditorBoxObject opCast() {
    return inner;
  }

  void opAssign(nsIEditorBoxObject value) {
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
  nsIEditorBoxObject inner;

}

