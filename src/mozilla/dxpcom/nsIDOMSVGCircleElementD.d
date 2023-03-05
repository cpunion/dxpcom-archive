/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGCircleElement.idl
 */

module mozilla.dxpcom.nsIDOMSVGCircleElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGCircleElement;


public import mozilla.dxpcom.nsIDOMSVGCircleElementD;

public import mozilla.xpcom.nsIDOMSVGElement;
public import mozilla.dxpcom.nsIDOMSVGElementD;

public import mozilla.xpcom.nsIDOMSVGAnimatedLength;

public import mozilla.dxpcom.nsIDOMSVGAnimatedLengthD;


/* starting wrapper class:    nsIDOMSVGCircleElement */
class nsIDOMSVGCircleElementD : public nsIDOMSVGElementD {

  static const nsIID IID = NS_IDOMSVGCIRCLEELEMENT_IID;


  alias nsIDOMSVGCircleElement InnerType;

  this(nsIDOMSVGCircleElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGCircleElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGCircleElement value) {
    inner = value;
  }

  /* readonly attribute nsIDOMSVGAnimatedLength cx; */
  nsIDOMSVGAnimatedLengthD  Cx(){
    nsIDOMSVGAnimatedLength value;
    nsresult __result = inner.GetCx(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedLength cy; */
  nsIDOMSVGAnimatedLengthD  Cy(){
    nsIDOMSVGAnimatedLength value;
    nsresult __result = inner.GetCy(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedLength r; */
  nsIDOMSVGAnimatedLengthD  R(){
    nsIDOMSVGAnimatedLength value;
    nsresult __result = inner.GetR(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthD(value);
  }

private:
  nsIDOMSVGCircleElement inner;

}

