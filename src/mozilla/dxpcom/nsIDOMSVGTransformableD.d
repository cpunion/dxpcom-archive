/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGTransformable.idl
 */

module mozilla.dxpcom.nsIDOMSVGTransformableD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGTransformable;


public import mozilla.dxpcom.nsIDOMSVGTransformableD;

public import mozilla.xpcom.nsIDOMSVGLocatable;
public import mozilla.dxpcom.nsIDOMSVGLocatableD;

public import mozilla.xpcom.nsIDOMSVGAnimTransformList;

import mozilla.dxpcom.nsIDOMSVGAnimTransformListD;


/* starting wrapper class:    nsIDOMSVGTransformable */
class nsIDOMSVGTransformableD : public nsIDOMSVGLocatableD {

  static const nsIID IID = NS_IDOMSVGTRANSFORMABLE_IID;


  alias nsIDOMSVGTransformable InnerType;

  this(nsIDOMSVGTransformable intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGTransformable opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGTransformable value) {
    inner = value;
  }

  /* readonly attribute nsIDOMSVGAnimatedTransformList transform; */
  nsIDOMSVGAnimatedTransformListD  Transform(){
    nsIDOMSVGAnimatedTransformList value;
    nsresult __result = inner.GetTransform(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedTransformListD(value);
  }

private:
  nsIDOMSVGTransformable inner;

}

