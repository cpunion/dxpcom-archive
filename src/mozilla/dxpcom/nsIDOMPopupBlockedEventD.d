/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMPopupBlockedEvent.idl
 */

module mozilla.dxpcom.nsIDOMPopupBlockedEventD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMPopupBlockedEvent;


public import mozilla.dxpcom.nsIDOMPopupBlockedEventD;

public import mozilla.xpcom.nsIDOMEvent;
public import mozilla.dxpcom.nsIDOMEventD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIDOMPopupBlockedEvent */
/**
 * The nsIDOMPopupBlockedEvent interface is the datatype for events
 * posted when a popup window is blocked.
 */
class nsIDOMPopupBlockedEventD : public nsIDOMEventD {

  static const nsIID IID = NS_IDOMPOPUPBLOCKEDEVENT_IID;


  alias nsIDOMPopupBlockedEvent InnerType;

  this(nsIDOMPopupBlockedEvent intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMPopupBlockedEvent opCast() {
    return inner;
  }

  void opAssign(nsIDOMPopupBlockedEvent value) {
    inner = value;
  }

  /* readonly attribute nsIURI requestingWindowURI; */
  nsIURID  RequestingWindowURI(){
    nsIURI value;
    nsresult __result = inner.GetRequestingWindowURI(&value);
    CheckException(__result);
    return new nsIURID(value);
  }

  /* readonly attribute nsIURI popupWindowURI; */
  nsIURID  PopupWindowURI(){
    nsIURI value;
    nsresult __result = inner.GetPopupWindowURI(&value);
    CheckException(__result);
    return new nsIURID(value);
  }

  /**
   * The string of features passed to the window.open() call
   * (as the third argument)
   */
  /* readonly attribute DOMString popupWindowFeatures; */
  wchar[] PopupWindowFeatures(){
    scope auto value = new AString();
    nsresult __result = inner.GetPopupWindowFeatures(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* void initPopupBlockedEvent (in DOMString typeArg, in boolean canBubbleArg, in boolean cancelableArg, in nsIURI requestingWindowURI, in nsIURI popupWindowURI, in DOMString popupWindowFeatures); */
  void InitPopupBlockedEvent(wchar[] typeArg, PRBool canBubbleArg, PRBool cancelableArg, nsIURID requestingWindowURI, nsIURID popupWindowURI, wchar[] popupWindowFeatures){
    scope auto _typeArg = new AString(typeArg);
    scope auto _popupWindowFeatures = new AString(popupWindowFeatures);
    nsresult __result = inner.InitPopupBlockedEvent(cast(nsAString*)_typeArg, canBubbleArg, cancelableArg, requestingWindowURI ? cast(nsIURI)requestingWindowURI : null, popupWindowURI ? cast(nsIURI)popupWindowURI : null, cast(nsAString*)_popupWindowFeatures);
    CheckException(__result);
  }

private:
  nsIDOMPopupBlockedEvent inner;

}

