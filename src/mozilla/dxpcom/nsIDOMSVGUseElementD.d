/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGUseElement.idl
 */

module mozilla.dxpcom.nsIDOMSVGUseElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGUseElement;


public import mozilla.dxpcom.nsIDOMSVGUseElementD;

public import mozilla.xpcom.nsIDOMSVGElement;
public import mozilla.dxpcom.nsIDOMSVGElementD;

public import mozilla.xpcom.nsIDOMSVGAnimatedLength;

public import mozilla.dxpcom.nsIDOMSVGAnimatedLengthD;


/* starting wrapper class:    nsIDOMSVGUseElement */
class nsIDOMSVGUseElementD : public nsIDOMSVGElementD {

  static const nsIID IID = NS_IDOMSVGUSEELEMENT_IID;


  alias nsIDOMSVGUseElement InnerType;

  this(nsIDOMSVGUseElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGUseElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGUseElement value) {
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
  nsIDOMSVGUseElement inner;

}

