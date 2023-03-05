/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGStopElement.idl
 */

module mozilla.dxpcom.nsIDOMSVGStopElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGStopElement;


public import mozilla.dxpcom.nsIDOMSVGStopElementD;

public import mozilla.xpcom.nsIDOMSVGElement;
public import mozilla.dxpcom.nsIDOMSVGElementD;

public import mozilla.xpcom.nsIDOMSVGAnimatedNumber;

public import mozilla.dxpcom.nsIDOMSVGAnimatedNumberD;


/* starting wrapper class:    nsIDOMSVGStopElement */
class nsIDOMSVGStopElementD : public nsIDOMSVGElementD {

  static const nsIID IID = NS_IDOMSVGSTOPELEMENT_IID;


  alias nsIDOMSVGStopElement InnerType;

  this(nsIDOMSVGStopElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGStopElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGStopElement value) {
    inner = value;
  }

  /* readonly attribute nsIDOMSVGAnimatedNumber offset; */
  nsIDOMSVGAnimatedNumberD  Offset(){
    nsIDOMSVGAnimatedNumber value;
    nsresult __result = inner.GetOffset(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedNumberD(value);
  }

private:
  nsIDOMSVGStopElement inner;

}

