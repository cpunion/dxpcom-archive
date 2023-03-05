/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGTitleElement.idl
 */

module mozilla.dxpcom.nsIDOMSVGTitleElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGTitleElement;


public import mozilla.dxpcom.nsIDOMSVGTitleElementD;

public import mozilla.xpcom.nsIDOMSVGElement;
public import mozilla.dxpcom.nsIDOMSVGElementD;


/* starting wrapper class:    nsIDOMSVGTitleElement */
class nsIDOMSVGTitleElementD : public nsIDOMSVGElementD {

  static const nsIID IID = NS_IDOMSVGTITLEELEMENT_IID;


  alias nsIDOMSVGTitleElement InnerType;

  this(nsIDOMSVGTitleElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGTitleElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGTitleElement value) {
    inner = value;
  }

private:
  nsIDOMSVGTitleElement inner;

}

