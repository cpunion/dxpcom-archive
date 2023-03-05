/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIJSConsoleService.idl
 */

module mozilla.dxpcom.nsIJSConsoleServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIJSConsoleService;


public import mozilla.dxpcom.nsIJSConsoleServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.dxpcom.nsIDOMWindowD;


/* starting wrapper class:    nsIJSConsoleService */
class nsIJSConsoleServiceD : public nsISupportsD {

  static const nsIID IID = NS_IJSCONSOLESERVICE_IID;


  alias nsIJSConsoleService InnerType;

  this(nsIJSConsoleService intr){
    super(intr);
    this.inner = intr;
  }

  nsIJSConsoleService opCast() {
    return inner;
  }

  void opAssign(nsIJSConsoleService value) {
    inner = value;
  }

  /* void open (in nsIDOMWindow inParent); */
  void Open(nsIDOMWindowD inParent){
    nsresult __result = inner.Open(inParent ? cast(nsIDOMWindow)inParent : null);
    CheckException(__result);
  }

private:
  nsIJSConsoleService inner;

}

