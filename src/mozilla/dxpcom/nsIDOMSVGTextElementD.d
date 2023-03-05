/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGTextElement.idl
 */

module mozilla.dxpcom.nsIDOMSVGTextElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGTextElement;


public import mozilla.dxpcom.nsIDOMSVGTextElementD;

public import mozilla.xpcom.nsIDOMSVGTextPositionElem;
public import mozilla.dxpcom.nsIDOMSVGTextPositionElemD;


/* starting wrapper class:    nsIDOMSVGTextElement */
class nsIDOMSVGTextElementD : public nsIDOMSVGTextPositioningElementD {

  static const nsIID IID = NS_IDOMSVGTEXTELEMENT_IID;


  alias nsIDOMSVGTextElement InnerType;

  this(nsIDOMSVGTextElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGTextElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGTextElement value) {
    inner = value;
  }

private:
  nsIDOMSVGTextElement inner;

}

