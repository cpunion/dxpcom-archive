/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGViewSpec.idl
 */

module mozilla.dxpcom.nsIDOMSVGViewSpecD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGViewSpec;


public import mozilla.dxpcom.nsIDOMSVGViewSpecD;

public import mozilla.xpcom.nsIDOMSVGZoomAndPan;
public import mozilla.dxpcom.nsIDOMSVGZoomAndPanD;

public import mozilla.xpcom.nsIDOMSVGTransformList;

public import mozilla.dxpcom.nsIDOMSVGTransformListD;

public import mozilla.xpcom.nsIDOMSVGElement;

public import mozilla.dxpcom.nsIDOMSVGElementD;


/* starting wrapper class:    nsIDOMSVGViewSpec */
class nsIDOMSVGViewSpecD : public nsIDOMSVGZoomAndPanD {

  static const nsIID IID = NS_IDOMSVGVIEWSPEC_IID;


  alias nsIDOMSVGViewSpec InnerType;

  this(nsIDOMSVGViewSpec intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGViewSpec opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGViewSpec value) {
    inner = value;
  }

  /* readonly attribute nsIDOMSVGTransformList transform; */
  nsIDOMSVGTransformListD  Transform(){
    nsIDOMSVGTransformList value;
    nsresult __result = inner.GetTransform(&value);
    CheckException(__result);
    return new nsIDOMSVGTransformListD(value);
  }

  /* readonly attribute nsIDOMSVGElement viewTarget; */
  nsIDOMSVGElementD  ViewTarget(){
    nsIDOMSVGElement value;
    nsresult __result = inner.GetViewTarget(&value);
    CheckException(__result);
    return new nsIDOMSVGElementD(value);
  }

  /* readonly attribute DOMString viewBoxString; */
  wchar[] ViewBoxString(){
    scope auto value = new AString();
    nsresult __result = inner.GetViewBoxString(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute DOMString preserveAspectRatioString; */
  wchar[] PreserveAspectRatioString(){
    scope auto value = new AString();
    nsresult __result = inner.GetPreserveAspectRatioString(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute DOMString transformString; */
  wchar[] TransformString(){
    scope auto value = new AString();
    nsresult __result = inner.GetTransformString(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute DOMString viewTargetString; */
  wchar[] ViewTargetString(){
    scope auto value = new AString();
    nsresult __result = inner.GetViewTargetString(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

private:
  nsIDOMSVGViewSpec inner;

}

