/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIConsoleMessage.idl
 */

module mozilla.dxpcom.nsIConsoleMessageD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIConsoleMessage;


public import mozilla.dxpcom.nsIConsoleMessageD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIConsoleMessage */
/**
 * This is intended as a base interface; implementations may want to
 * provide an object that can be qi'ed to provide more specific
 * message information.
 */
class nsIConsoleMessageD : public nsISupportsD {

  static const nsIID IID = NS_ICONSOLEMESSAGE_IID;


  alias nsIConsoleMessage InnerType;

  this(nsIConsoleMessage intr){
    super(intr);
    this.inner = intr;
  }

  nsIConsoleMessage opCast() {
    return inner;
  }

  void opAssign(nsIConsoleMessage value) {
    inner = value;
  }

  /* readonly attribute wstring message; */
  PRUnichar* Message(){
    PRUnichar* value;
    nsresult __result = inner.GetMessage(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIConsoleMessage inner;

}

