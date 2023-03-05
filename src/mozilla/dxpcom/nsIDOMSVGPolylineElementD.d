/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGPolylineElement.idl
 */

module mozilla.dxpcom.nsIDOMSVGPolylineElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGPolylineElement;


public import mozilla.dxpcom.nsIDOMSVGPolylineElementD;

public import mozilla.xpcom.nsIDOMSVGElement;
public import mozilla.dxpcom.nsIDOMSVGElementD;


/* starting wrapper class:    nsIDOMSVGPolylineElement */
class nsIDOMSVGPolylineElementD : public nsIDOMSVGElementD {

  static const nsIID IID = NS_IDOMSVGPOLYLINEELEMENT_IID;


  alias nsIDOMSVGPolylineElement InnerType;

  this(nsIDOMSVGPolylineElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGPolylineElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGPolylineElement value) {
    inner = value;
  }

private:
  nsIDOMSVGPolylineElement inner;

}

