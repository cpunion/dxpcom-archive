/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGEvent.idl
 */

module mozilla.dxpcom.nsIDOMSVGEventD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGEvent;


public import mozilla.dxpcom.nsIDOMSVGEventD;

public import mozilla.xpcom.nsIDOMEvent;
public import mozilla.dxpcom.nsIDOMEventD;


/* starting wrapper class:    nsIDOMSVGEvent */
/**
 * For more information on this interface please see
 * http://www.w3.org/TR/SVG11/script.html#InterfaceSVGEvent
 */
class nsIDOMSVGEventD : public nsIDOMEventD {

  static const nsIID IID = NS_IDOMSVGEVENT_IID;


  alias nsIDOMSVGEvent InnerType;

  this(nsIDOMSVGEvent intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGEvent opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGEvent value) {
    inner = value;
  }

private:
  nsIDOMSVGEvent inner;

}

