/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMCustomEvent.idl
 */

module mozilla.dxpcom.nsIDOMCustomEventD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMCustomEvent;


public import mozilla.dxpcom.nsIDOMCustomEventD;

public import mozilla.xpcom.nsIDOMEvent;
public import mozilla.dxpcom.nsIDOMEventD;


/* starting wrapper class:    nsIDOMCustomEvent */
/**
 * The nsIDOMEventTarget interface is the interface implemented by all
 * event targets in the Document Object Model.
 *
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-3-Events/
 */
class nsIDOMCustomEventD : public nsIDOMEventD {

  static const nsIID IID = NS_IDOMCUSTOMEVENT_IID;


  alias nsIDOMCustomEvent InnerType;

  this(nsIDOMCustomEvent intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMCustomEvent opCast() {
    return inner;
  }

  void opAssign(nsIDOMCustomEvent value) {
    inner = value;
  }

  /* void setCurrentTarget (in nsIDOMNode target); */
  void SetCurrentTarget(nsIDOMNodeD target){
    nsresult __result = inner.SetCurrentTarget(target ? cast(nsIDOMNode)target : null);
    CheckException(__result);
  }

  /* void setEventPhase (in unsigned short phase); */
  void SetEventPhase(PRUint16 phase){
    nsresult __result = inner.SetEventPhase(phase);
    CheckException(__result);
  }

private:
  nsIDOMCustomEvent inner;

}

