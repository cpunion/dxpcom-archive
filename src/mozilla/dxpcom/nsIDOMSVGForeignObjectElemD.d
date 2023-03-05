/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGForeignObjectElem.idl
 */

module mozilla.dxpcom.nsIDOMSVGForeignObjectElemD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGForeignObjectElem;


public import mozilla.dxpcom.nsIDOMSVGForeignObjectElemD;

public import mozilla.xpcom.nsIDOMSVGElement;
public import mozilla.dxpcom.nsIDOMSVGElementD;

public import mozilla.xpcom.nsIDOMSVGAnimatedLength;

public import mozilla.dxpcom.nsIDOMSVGAnimatedLengthD;


/* starting wrapper class:    nsIDOMSVGForeignObjectElement */
class nsIDOMSVGForeignObjectElementD : public nsIDOMSVGElementD {

  static const nsIID IID = NS_IDOMSVGFOREIGNOBJECTELEMENT_IID;


  alias nsIDOMSVGForeignObjectElement InnerType;

  this(nsIDOMSVGForeignObjectElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGForeignObjectElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGForeignObjectElement value) {
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

private:
  nsIDOMSVGForeignObjectElement inner;

}

