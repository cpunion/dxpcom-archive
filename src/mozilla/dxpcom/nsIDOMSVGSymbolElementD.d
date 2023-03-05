/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGSymbolElement.idl
 */

module mozilla.dxpcom.nsIDOMSVGSymbolElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGSymbolElement;


public import mozilla.dxpcom.nsIDOMSVGSymbolElementD;

public import mozilla.xpcom.nsIDOMSVGElement;
public import mozilla.dxpcom.nsIDOMSVGElementD;


/* starting wrapper class:    nsIDOMSVGSymbolElement */
class nsIDOMSVGSymbolElementD : public nsIDOMSVGElementD {

  static const nsIID IID = NS_IDOMSVGSYMBOLELEMENT_IID;


  alias nsIDOMSVGSymbolElement InnerType;

  this(nsIDOMSVGSymbolElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGSymbolElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGSymbolElement value) {
    inner = value;
  }

private:
  nsIDOMSVGSymbolElement inner;

}

