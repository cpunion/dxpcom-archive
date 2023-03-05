/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScriptEventManager.idl
 */

module mozilla.dxpcom.nsIScriptEventManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIScriptEventManager;


public import mozilla.dxpcom.nsIScriptEventManagerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIScriptEventManager */
class nsIScriptEventManagerD : public nsISupportsD {

  static const nsIID IID = NS_ISCRIPTEVENTMANAGER_IID;


  alias nsIScriptEventManager InnerType;

  this(nsIScriptEventManager intr){
    super(intr);
    this.inner = intr;
  }

  nsIScriptEventManager opCast() {
    return inner;
  }

  void opAssign(nsIScriptEventManager value) {
    inner = value;
  }

  /* nsISupports FindEventHandler (in AString aObjectName, in AString aEventName, in unsigned long aArgCount); */
  nsISupportsD  FindEventHandler(wchar[] aObjectName, wchar[] aEventName, PRUint32 aArgCount){
    scope auto _aObjectName = new AString(aObjectName);
    scope auto _aEventName = new AString(aEventName);
    nsISupports _retval;
    nsresult __result = inner.FindEventHandler(cast(nsAString*)_aObjectName, cast(nsAString*)_aEventName, aArgCount, &_retval);
    CheckException(__result);
    return new nsISupportsD(_retval);
  }

  /* void InvokeEventHandler (in nsISupports aHandler, in nsISupports aTargetObject, in voidPtr aArgs, in unsigned long aArgCount); */
  void InvokeEventHandler(nsISupportsD aHandler, nsISupportsD aTargetObject, void * aArgs, PRUint32 aArgCount){
    nsresult __result = inner.InvokeEventHandler(aHandler ? cast(nsISupports)aHandler : null, aTargetObject ? cast(nsISupports)aTargetObject : null, aArgs, aArgCount);
    CheckException(__result);
  }

private:
  nsIScriptEventManager inner;

}

