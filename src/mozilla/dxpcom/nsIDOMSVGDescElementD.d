/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGDescElement.idl
 */

module mozilla.dxpcom.nsIDOMSVGDescElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGDescElement;


public import mozilla.dxpcom.nsIDOMSVGDescElementD;

public import mozilla.xpcom.nsIDOMSVGElement;
public import mozilla.dxpcom.nsIDOMSVGElementD;


/* starting wrapper class:    nsIDOMSVGDescElement */
class nsIDOMSVGDescElementD : public nsIDOMSVGElementD {

  static const nsIID IID = NS_IDOMSVGDESCELEMENT_IID;


  alias nsIDOMSVGDescElement InnerType;

  this(nsIDOMSVGDescElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGDescElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGDescElement value) {
    inner = value;
  }

private:
  nsIDOMSVGDescElement inner;

}

