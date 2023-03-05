/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGTextPositionElem.idl
 */

module mozilla.dxpcom.nsIDOMSVGTextPositionElemD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGTextPositionElem;


public import mozilla.dxpcom.nsIDOMSVGTextPositionElemD;

public import mozilla.xpcom.nsIDOMSVGTextContentElement;
public import mozilla.dxpcom.nsIDOMSVGTextContentElementD;

public import mozilla.xpcom.nsIDOMSVGAnimatedLengthList;

public import mozilla.dxpcom.nsIDOMSVGAnimatedLengthListD;

public import mozilla.xpcom.nsIDOMSVGAnimatedNumberList;

public import mozilla.dxpcom.nsIDOMSVGAnimatedNumberListD;


/* starting wrapper class:    nsIDOMSVGTextPositioningElement */
class nsIDOMSVGTextPositioningElementD : public nsIDOMSVGTextContentElementD {

  static const nsIID IID = NS_IDOMSVGTEXTPOSITIONINGELEMENT_IID;


  alias nsIDOMSVGTextPositioningElement InnerType;

  this(nsIDOMSVGTextPositioningElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGTextPositioningElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGTextPositioningElement value) {
    inner = value;
  }

  /* readonly attribute nsIDOMSVGAnimatedLengthList x; */
  nsIDOMSVGAnimatedLengthListD  X(){
    nsIDOMSVGAnimatedLengthList value;
    nsresult __result = inner.GetX(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthListD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedLengthList y; */
  nsIDOMSVGAnimatedLengthListD  Y(){
    nsIDOMSVGAnimatedLengthList value;
    nsresult __result = inner.GetY(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthListD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedLengthList dx; */
  nsIDOMSVGAnimatedLengthListD  Dx(){
    nsIDOMSVGAnimatedLengthList value;
    nsresult __result = inner.GetDx(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthListD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedLengthList dy; */
  nsIDOMSVGAnimatedLengthListD  Dy(){
    nsIDOMSVGAnimatedLengthList value;
    nsresult __result = inner.GetDy(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthListD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedNumberList rotate; */
  nsIDOMSVGAnimatedNumberListD  Rotate(){
    nsIDOMSVGAnimatedNumberList value;
    nsresult __result = inner.GetRotate(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedNumberListD(value);
  }

private:
  nsIDOMSVGTextPositioningElement inner;

}

