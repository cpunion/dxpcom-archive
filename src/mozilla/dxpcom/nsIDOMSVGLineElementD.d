/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGLineElement.idl
 */

module mozilla.dxpcom.nsIDOMSVGLineElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGLineElement;


public import mozilla.dxpcom.nsIDOMSVGLineElementD;

public import mozilla.xpcom.nsIDOMSVGElement;
public import mozilla.dxpcom.nsIDOMSVGElementD;

public import mozilla.xpcom.nsIDOMSVGAnimatedLength;

public import mozilla.dxpcom.nsIDOMSVGAnimatedLengthD;


/* starting wrapper class:    nsIDOMSVGLineElement */
class nsIDOMSVGLineElementD : public nsIDOMSVGElementD {

  static const nsIID IID = NS_IDOMSVGLINEELEMENT_IID;


  alias nsIDOMSVGLineElement InnerType;

  this(nsIDOMSVGLineElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGLineElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGLineElement value) {
    inner = value;
  }

  /* readonly attribute nsIDOMSVGAnimatedLength x1; */
  nsIDOMSVGAnimatedLengthD  X1(){
    nsIDOMSVGAnimatedLength value;
    nsresult __result = inner.GetX1(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedLength y1; */
  nsIDOMSVGAnimatedLengthD  Y1(){
    nsIDOMSVGAnimatedLength value;
    nsresult __result = inner.GetY1(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedLength x2; */
  nsIDOMSVGAnimatedLengthD  X2(){
    nsIDOMSVGAnimatedLength value;
    nsresult __result = inner.GetX2(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedLength y2; */
  nsIDOMSVGAnimatedLengthD  Y2(){
    nsIDOMSVGAnimatedLength value;
    nsresult __result = inner.GetY2(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthD(value);
  }

private:
  nsIDOMSVGLineElement inner;

}

