/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIConsoleListener.idl
 */

module mozilla.dxpcom.nsIConsoleListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIConsoleListener;


public import mozilla.dxpcom.nsIConsoleListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIConsoleMessage;
public import mozilla.dxpcom.nsIConsoleMessageD;


/* starting wrapper class:    nsIConsoleListener */
class nsIConsoleListenerD : public nsISupportsD {

  static const nsIID IID = NS_ICONSOLELISTENER_IID;


  alias nsIConsoleListener InnerType;

  this(nsIConsoleListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIConsoleListener opCast() {
    return inner;
  }

  void opAssign(nsIConsoleListener value) {
    inner = value;
  }

  /* void observe (in nsIConsoleMessage aMessage); */
  void Observe(nsIConsoleMessageD aMessage){
    nsresult __result = inner.Observe(aMessage ? cast(nsIConsoleMessage)aMessage : null);
    CheckException(__result);
  }

private:
  nsIConsoleListener inner;

}

