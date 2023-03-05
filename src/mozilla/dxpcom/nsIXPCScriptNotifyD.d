/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXPCScriptNotify.idl
 */

module mozilla.dxpcom.nsIXPCScriptNotifyD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXPCScriptNotify;


public import mozilla.dxpcom.nsIXPCScriptNotifyD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIXPConnect;

import mozilla.dxpcom.nsIXPConnectD;


/* starting wrapper class:    nsIXPCScriptNotify */
class nsIXPCScriptNotifyD : public nsISupportsD {

  static const nsIID IID = NS_IXPCSCRIPTNOTIFY_IID;


  alias nsIXPCScriptNotify InnerType;

  this(nsIXPCScriptNotify intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPCScriptNotify opCast() {
    return inner;
  }

  void opAssign(nsIXPCScriptNotify value) {
    inner = value;
  }

  /**
     * Method invoked when a script has been executed by XPConnect
     */
  /* void ScriptExecuted (); */
  void ScriptExecuted(){
    nsresult __result = inner.ScriptExecuted();
    CheckException(__result);
  }

  /**
     * Method invoked to preserve an nsIXPConnectWrappedNative as needed
     */
  /* void preserveWrapper (in nsIXPConnectWrappedNative wrapper); */
  void PreserveWrapper(nsIXPConnectWrappedNativeD wrapper){
    nsresult __result = inner.PreserveWrapper(wrapper ? cast(nsIXPConnectWrappedNative)wrapper : null);
    CheckException(__result);
  }

private:
  nsIXPCScriptNotify inner;

}

