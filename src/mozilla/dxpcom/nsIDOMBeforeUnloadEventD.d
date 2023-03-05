/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMBeforeUnloadEvent.idl
 */

module mozilla.dxpcom.nsIDOMBeforeUnloadEventD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMBeforeUnloadEvent;


public import mozilla.dxpcom.nsIDOMBeforeUnloadEventD;

public import mozilla.xpcom.nsIDOMEvent;
public import mozilla.dxpcom.nsIDOMEventD;


/* starting wrapper class:    nsIDOMBeforeUnloadEvent */
/**
 * The nsIDOMBeforeUnloadEvent interface is the interface for events
 * sent to handlers of the "beforeunload" event. This event is
 * non-standard. Interface derived from Microsoft IE's event
 * implementation.
 *
 * http://msdn.microsoft.com/library/default.asp?url=/workshop/author/dhtml/reference/events.asp
 *
 */
class nsIDOMBeforeUnloadEventD : public nsIDOMEventD {

  static const nsIID IID = NS_IDOMBEFOREUNLOADEVENT_IID;


  alias nsIDOMBeforeUnloadEvent InnerType;

  this(nsIDOMBeforeUnloadEvent intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMBeforeUnloadEvent opCast() {
    return inner;
  }

  void opAssign(nsIDOMBeforeUnloadEvent value) {
    inner = value;
  }

  /**
   * Attribute used to pass back a return value from a beforeunload
   * handler
   */
  /* attribute DOMString returnValue; */
  wchar[] ReturnValue(){
    scope auto value = new AString();
    nsresult __result = inner.GetReturnValue(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void ReturnValue(wchar[] aReturnValue){
    scope auto value = new AString(aReturnValue);
    nsresult __result = inner.SetReturnValue(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIDOMBeforeUnloadEvent inner;

}

