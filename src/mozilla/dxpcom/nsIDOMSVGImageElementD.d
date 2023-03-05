/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGImageElement.idl
 */

module mozilla.dxpcom.nsIDOMSVGImageElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGImageElement;


public import mozilla.dxpcom.nsIDOMSVGImageElementD;

public import mozilla.xpcom.nsIDOMSVGElement;
public import mozilla.dxpcom.nsIDOMSVGElementD;

public import mozilla.xpcom.nsIDOMSVGAnimatedLength;

public import mozilla.dxpcom.nsIDOMSVGAnimatedLengthD;

public import mozilla.xpcom.nsIDOMSVGAnimPresAspRatio;

import mozilla.dxpcom.nsIDOMSVGAnimPresAspRatioD;


/* starting wrapper class:    nsIDOMSVGImageElement */
class nsIDOMSVGImageElementD : public nsIDOMSVGElementD {

  static const nsIID IID = NS_IDOMSVGIMAGEELEMENT_IID;


  alias nsIDOMSVGImageElement InnerType;

  this(nsIDOMSVGImageElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGImageElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGImageElement value) {
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

  /* readonly attribute nsIDOMSVGAnimatedPreserveAspectRatio preserveAspectRatio; */
  nsIDOMSVGAnimatedPreserveAspectRatioD  PreserveAspectRatio(){
    nsIDOMSVGAnimatedPreserveAspectRatio value;
    nsresult __result = inner.GetPreserveAspectRatio(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedPreserveAspectRatioD(value);
  }

private:
  nsIDOMSVGImageElement inner;

}

