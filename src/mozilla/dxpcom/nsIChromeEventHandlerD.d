/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIChromeEventHandler.idl
 */

module mozilla.dxpcom.nsIChromeEventHandlerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIChromeEventHandler;


public import mozilla.dxpcom.nsIChromeEventHandlerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMEvent;

public import mozilla.dxpcom.nsIDOMEventD;


/* starting wrapper class:    nsIChromeEventHandler */
/**
 * The nsIChromeEventHandler
 */
class nsIChromeEventHandlerD : public nsISupportsD {

  static const nsIID IID = NS_ICHROMEEVENTHANDLER_IID;


  alias nsIChromeEventHandler InnerType;

  this(nsIChromeEventHandler intr){
    super(intr);
    this.inner = intr;
  }

  nsIChromeEventHandler opCast() {
    return inner;
  }

  void opAssign(nsIChromeEventHandler value) {
    inner = value;
  }

  /**
	* Handle a chrome DOM event.
	*/
  /* [noscript] void handleChromeEvent (in nsPresContext aPresContext, in nsEventPtr aEvent, out nsIDOMEvent aDOMEvent, in unsigned long aFlags, inout nsEventStatus aStatus); */
  void HandleChromeEvent(nsPresContext * aPresContext, nsEvent * aEvent, out nsIDOMEventD aDOMEvent, PRUint32 aFlags, out nsEventStatus aStatus){
    nsIDOMEvent _aDOMEvent;
    nsresult __result = inner.HandleChromeEvent(aPresContext, aEvent, &_aDOMEvent, aFlags, &aStatus);
    CheckException(__result);
    aDOMEvent = _aDOMEvent ? new nsIDOMEventD(_aDOMEvent) : null;
  }

private:
  nsIChromeEventHandler inner;

}

