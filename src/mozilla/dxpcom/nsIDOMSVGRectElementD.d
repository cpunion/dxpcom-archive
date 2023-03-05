/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGRectElement.idl
 */

module mozilla.dxpcom.nsIDOMSVGRectElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGRectElement;


public import mozilla.dxpcom.nsIDOMSVGRectElementD;

public import mozilla.xpcom.nsIDOMSVGElement;
public import mozilla.dxpcom.nsIDOMSVGElementD;

public import mozilla.xpcom.nsIDOMSVGAnimatedLength;

public import mozilla.dxpcom.nsIDOMSVGAnimatedLengthD;


/* starting wrapper class:    nsIDOMSVGRectElement */
class nsIDOMSVGRectElementD : public nsIDOMSVGElementD {

  static const nsIID IID = NS_IDOMSVGRECTELEMENT_IID;


  alias nsIDOMSVGRectElement InnerType;

  this(nsIDOMSVGRectElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGRectElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGRectElement value) {
    inner = value;
  }

  /* readonly attribute nsIDOMSVGAnimatedLength x; */
  nsIDOMSVGAnimatedLengthD  X(){
    nsIDOMSVGAnimatedLength value;
    nsresult __result = inner.GetX(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedLength y; */
  nsIDOMSVGAnimatedLengthD  Y(){
    nsIDOMSVGAnimatedLength value;
    nsresult __result = inner.GetY(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedLength width; */
  nsIDOMSVGAnimatedLengthD  Width(){
    nsIDOMSVGAnimatedLength value;
    nsresult __result = inner.GetWidth(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedLength height; */
  nsIDOMSVGAnimatedLengthD  Height(){
    nsIDOMSVGAnimatedLength value;
    nsresult __result = inner.GetHeight(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedLength rx; */
  nsIDOMSVGAnimatedLengthD  Rx(){
    nsIDOMSVGAnimatedLength value;
    nsresult __result = inner.GetRx(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedLength ry; */
  nsIDOMSVGAnimatedLengthD  Ry(){
    nsIDOMSVGAnimatedLength value;
    nsresult __result = inner.GetRy(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthD(value);
  }

private:
  nsIDOMSVGRectElement inner;

}

