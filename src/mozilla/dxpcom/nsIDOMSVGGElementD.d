/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGGElement.idl
 */

module mozilla.dxpcom.nsIDOMSVGGElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGGElement;


public import mozilla.dxpcom.nsIDOMSVGGElementD;

public import mozilla.xpcom.nsIDOMSVGElement;
public import mozilla.dxpcom.nsIDOMSVGElementD;


/* starting wrapper class:    nsIDOMSVGGElement */
class nsIDOMSVGGElementD : public nsIDOMSVGElementD {

  static const nsIID IID = NS_IDOMSVGGELEMENT_IID;


  alias nsIDOMSVGGElement InnerType;

  this(nsIDOMSVGGElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGGElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGGElement value) {
    inner = value;
  }

private:
  nsIDOMSVGGElement inner;

}

