/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScriptEventHandler.idl
 */

module mozilla.dxpcom.nsIScriptEventHandlerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIScriptEventHandler;


public import mozilla.dxpcom.nsIScriptEventHandlerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIScriptEventHandler */
class nsIScriptEventHandlerD : public nsISupportsD {

  static const nsIID IID = NS_ISCRIPTEVENTHANDLER_IID;


  alias nsIScriptEventHandler InnerType;

  this(nsIScriptEventHandler intr){
    super(intr);
    this.inner = intr;
  }

  nsIScriptEventHandler opCast() {
    return inner;
  }

  void opAssign(nsIScriptEventHandler value) {
    inner = value;
  }

  /**
  * IsSameEvent:
  *
  * Determines if this script event handler is bound to the given
  * object and event name.
  *
  * @param aObjectName  Name of the object raising the event.
  *
  * @param aEventName   Name of the event being raised.
  *
  * @param aArgCount    Number of arguments expected by the event handler.
  *
  */
  /* boolean IsSameEvent (in AString aObjectName, in AString aEventName, in unsigned long aArgCount); */
  PRBool IsSameEvent(wchar[] aObjectName, wchar[] aEventName, PRUint32 aArgCount){
    scope auto _aObjectName = new AString(aObjectName);
    scope auto _aEventName = new AString(aEventName);
    PRBool _retval;
    nsresult __result = inner.IsSameEvent(cast(nsAString*)_aObjectName, cast(nsAString*)_aEventName, aArgCount, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
  * Invoke:
  *
  * Executes this script handler.
  *
  * @param aTargetObject  Object to which the script handler is bound.
  *
  * @param aArgs          Array of arguments passed to the script handler.
  *                       This is an array of jsvals.
  *
  * @param aArgCount      Number of elements in the aArgs array.
  *
  */
  /* void Invoke (in nsISupports aTargetObject, in voidPtr aArgs, in unsigned long aArgCount); */
  void Invoke(nsISupportsD aTargetObject, void * aArgs, PRUint32 aArgCount){
    nsresult __result = inner.Invoke(aTargetObject ? cast(nsISupports)aTargetObject : null, aArgs, aArgCount);
    CheckException(__result);
  }

private:
  nsIScriptEventHandler inner;

}

