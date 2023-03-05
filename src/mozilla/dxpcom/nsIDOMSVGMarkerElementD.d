/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGMarkerElement.idl
 */

module mozilla.dxpcom.nsIDOMSVGMarkerElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGMarkerElement;


public import mozilla.dxpcom.nsIDOMSVGMarkerElementD;

public import mozilla.xpcom.nsIDOMSVGElement;
public import mozilla.dxpcom.nsIDOMSVGElementD;

public import mozilla.xpcom.nsIDOMSVGAnimatedLength;

public import mozilla.dxpcom.nsIDOMSVGAnimatedLengthD;

public import mozilla.xpcom.nsIDOMSVGAnimatedEnum;

import mozilla.dxpcom.nsIDOMSVGAnimatedEnumD;

public import mozilla.xpcom.nsIDOMSVGAngle;

public import mozilla.dxpcom.nsIDOMSVGAngleD;

public import mozilla.xpcom.nsIDOMSVGAnimatedAngle;

public import mozilla.dxpcom.nsIDOMSVGAnimatedAngleD;

public import mozilla.xpcom.nsIDOMSVGAnimatedRect;

public import mozilla.dxpcom.nsIDOMSVGAnimatedRectD;

public import mozilla.xpcom.nsIDOMSVGMatrix;

public import mozilla.dxpcom.nsIDOMSVGMatrixD;


/* starting wrapper class:    nsIDOMSVGMarkerElement */
/**
 * The nsIDOMSVGMarker interface is the interface to an SVG marker element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/SVG11/painting.html#InterfaceSVGMarkerElement
 *
 */
class nsIDOMSVGMarkerElementD : public nsIDOMSVGElementD {

  static const nsIID IID = NS_IDOMSVGMARKERELEMENT_IID;


  alias nsIDOMSVGMarkerElement InnerType;

  this(nsIDOMSVGMarkerElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGMarkerElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGMarkerElement value) {
    inner = value;
  }

  enum { SVG_MARKERUNITS_UNKNOWN = 0U }

  enum { SVG_MARKERUNITS_USERSPACEONUSE = 1U }

  enum { SVG_MARKERUNITS_STROKEWIDTH = 2U }

  enum { SVG_MARKER_ORIENT_UNKNOWN = 0U }

  enum { SVG_MARKER_ORIENT_AUTO = 1U }

  enum { SVG_MARKER_ORIENT_ANGLE = 2U }

  /* readonly attribute nsIDOMSVGAnimatedLength refX; */
  nsIDOMSVGAnimatedLengthD  RefX(){
    nsIDOMSVGAnimatedLength value;
    nsresult __result = inner.GetRefX(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedLength refY; */
  nsIDOMSVGAnimatedLengthD  RefY(){
    nsIDOMSVGAnimatedLength value;
    nsresult __result = inner.GetRefY(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedEnumeration markerUnits; */
  nsIDOMSVGAnimatedEnumerationD  MarkerUnits(){
    nsIDOMSVGAnimatedEnumeration value;
    nsresult __result = inner.GetMarkerUnits(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedEnumerationD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedLength markerWidth; */
  nsIDOMSVGAnimatedLengthD  MarkerWidth(){
    nsIDOMSVGAnimatedLength value;
    nsresult __result = inner.GetMarkerWidth(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedLength markerHeight; */
  nsIDOMSVGAnimatedLengthD  MarkerHeight(){
    nsIDOMSVGAnimatedLength value;
    nsresult __result = inner.GetMarkerHeight(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedEnumeration orientType; */
  nsIDOMSVGAnimatedEnumerationD  OrientType(){
    nsIDOMSVGAnimatedEnumeration value;
    nsresult __result = inner.GetOrientType(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedEnumerationD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedAngle orientAngle; */
  nsIDOMSVGAnimatedAngleD  OrientAngle(){
    nsIDOMSVGAnimatedAngle value;
    nsresult __result = inner.GetOrientAngle(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedAngleD(value);
  }

  /* void setOrientToAuto (); */
  void SetOrientToAuto(){
    nsresult __result = inner.SetOrientToAuto();
    CheckException(__result);
  }

  /* void setOrientToAngle (in nsIDOMSVGAngle angle); */
  void SetOrientToAngle(nsIDOMSVGAngleD angle){
    nsresult __result = inner.SetOrientToAngle(angle ? cast(nsIDOMSVGAngle)angle : null);
    CheckException(__result);
  }

  /* [noscript] nsIDOMSVGMatrix getMarkerTransform (in float strokeWidth, in float x, in float y, in float angle); */
  nsIDOMSVGMatrixD  GetMarkerTransform(float strokeWidth, float x, float y, float angle){
    nsIDOMSVGMatrix _retval;
    nsresult __result = inner.GetMarkerTransform(strokeWidth, x, y, angle, &_retval);
    CheckException(__result);
    return new nsIDOMSVGMatrixD(_retval);
  }

  /* [noscript] nsIDOMSVGMatrix getViewboxToViewportTransform (); */
  nsIDOMSVGMatrixD  GetViewboxToViewportTransform(){
    nsIDOMSVGMatrix _retval;
    nsresult __result = inner.GetViewboxToViewportTransform(&_retval);
    CheckException(__result);
    return new nsIDOMSVGMatrixD(_retval);
  }

private:
  nsIDOMSVGMarkerElement inner;

}

