/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGDefsElement.idl
 */

module mozilla.dxpcom.nsIDOMSVGDefsElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGDefsElement;


public import mozilla.dxpcom.nsIDOMSVGDefsElementD;

public import mozilla.xpcom.nsIDOMSVGElement;
public import mozilla.dxpcom.nsIDOMSVGElementD;


/* starting wrapper class:    nsIDOMSVGDefsElement */
class nsIDOMSVGDefsElementD : public nsIDOMSVGElementD {

  static const nsIID IID = NS_IDOMSVGDEFSELEMENT_IID;


  alias nsIDOMSVGDefsElement InnerType;

  this(nsIDOMSVGDefsElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGDefsElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGDefsElement value) {
    inner = value;
  }

private:
  nsIDOMSVGDefsElement inner;

}

