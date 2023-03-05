/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGTSpanElement.idl
 */

module mozilla.dxpcom.nsIDOMSVGTSpanElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGTSpanElement;


public import mozilla.dxpcom.nsIDOMSVGTSpanElementD;

public import mozilla.xpcom.nsIDOMSVGTextPositionElem;
public import mozilla.dxpcom.nsIDOMSVGTextPositionElemD;


/* starting wrapper class:    nsIDOMSVGTSpanElement */
class nsIDOMSVGTSpanElementD : public nsIDOMSVGTextPositioningElementD {

  static const nsIID IID = NS_IDOMSVGTSPANELEMENT_IID;


  alias nsIDOMSVGTSpanElement InnerType;

  this(nsIDOMSVGTSpanElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGTSpanElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGTSpanElement value) {
    inner = value;
  }

private:
  nsIDOMSVGTSpanElement inner;

}

