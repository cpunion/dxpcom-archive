/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISVGGradient.idl
 */

module mozilla.dxpcom.nsISVGGradientD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISVGGradient;


public import mozilla.dxpcom.nsISVGGradientD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMSVGMatrix;

public import mozilla.dxpcom.nsIDOMSVGMatrixD;

public import mozilla.xpcom.nsISVGGradient;

import mozilla.dxpcom.nsISVGGradientD;

public import mozilla.xpcom.nsISVGGradient;

import mozilla.dxpcom.nsISVGGradientD;

public import mozilla.xpcom.nsISVGGeometrySource;

public import mozilla.dxpcom.nsISVGGeometrySourceD;


/* starting wrapper class:    nsISVGGradient */
/**
 * \addtogroup rendering_backend_interfaces Rendering Backend Interfaces
 * @{
 */
/**
 * Describes the 'gradient' objects (either linear or a radial) to the
 * rendering backends.
 *
 * @nosubgrouping
 */
class nsISVGGradientD : public nsISupportsD {

  static const nsIID IID = NS_ISVGGRADIENT_IID;


  alias nsISVGGradient InnerType;

  this(nsISVGGradient intr){
    super(intr);
    this.inner = intr;
  }

  nsISVGGradient opCast() {
    return inner;
  }

  void opAssign(nsISVGGradient value) {
    inner = value;
  }

  enum { SVG_UNKNOWN_GRADIENT = 0U }

  enum { SVG_LINEAR_GRADIENT = 1U }

  enum { SVG_RADIAL_GRADIENT = 2U }

  /* readonly attribute PRUint32 gradientType; */
  PRUint32 GradientType(){
    PRUint32 value;
    nsresult __result = inner.GetGradientType(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRUint16 gradientUnits; */
  PRUint16 GradientUnits(){
    PRUint16 value;
    nsresult __result = inner.GetGradientUnits(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRUint16 spreadMethod; */
  PRUint16 SpreadMethod(){
    PRUint16 value;
    nsresult __result = inner.GetSpreadMethod(&value);
    CheckException(__result);
    return value;
  }

  /* void GetStopCount (out PRUint32 aStopCount); */
  void GetStopCount(out PRUint32 aStopCount){
    nsresult __result = inner.GetStopCount(&aStopCount);
    CheckException(__result);
  }

  /* void GetStopOffset (in PRInt32 aIndex, out float aOffset); */
  void GetStopOffset(PRInt32 aIndex, out float aOffset){
    nsresult __result = inner.GetStopOffset(aIndex, &aOffset);
    CheckException(__result);
  }

  /* void GetStopColor (in PRInt32 aIndex, out nscolor aStopColor); */
  void GetStopColor(PRInt32 aIndex, out nscolor aStopColor){
    nsresult __result = inner.GetStopColor(aIndex, &aStopColor);
    CheckException(__result);
  }

  /* void GetStopOpacity (in PRInt32 aIndex, out float aStopOpacity); */
  void GetStopOpacity(PRInt32 aIndex, out float aStopOpacity){
    nsresult __result = inner.GetStopOpacity(aIndex, &aStopOpacity);
    CheckException(__result);
  }

  /* void GetNextGradient (out nsISVGGradient aNextGrad, in PRUint32 aType); */
  void GetNextGradient(out nsISVGGradientD aNextGrad, PRUint32 aType){
    nsISVGGradient _aNextGrad;
    nsresult __result = inner.GetNextGradient(&_aNextGrad, aType);
    CheckException(__result);
    aNextGrad = _aNextGrad ? new nsISVGGradientD(_aNextGrad) : null;
  }

  /* void GetGradientTransform (out nsIDOMSVGMatrix retval, in nsISVGGeometrySource aSource); */
  void GetGradientTransform(out nsIDOMSVGMatrixD retval, nsISVGGeometrySourceD aSource){
    nsIDOMSVGMatrix _retval;
    nsresult __result = inner.GetGradientTransform(&_retval, aSource ? cast(nsISVGGeometrySource)aSource : null);
    CheckException(__result);
    retval = _retval ? new nsIDOMSVGMatrixD(_retval) : null;
  }

private:
  nsISVGGradient inner;

}


/* starting wrapper class:    nsISVGLinearGradient */
class nsISVGLinearGradientD : public nsISupportsD {

  static const nsIID IID = NS_ISVGLINEARGRADIENT_IID;


  alias nsISVGLinearGradient InnerType;

  this(nsISVGLinearGradient intr){
    super(intr);
    this.inner = intr;
  }

  nsISVGLinearGradient opCast() {
    return inner;
  }

  void opAssign(nsISVGLinearGradient value) {
    inner = value;
  }

  /** @} */
  /* readonly attribute float X1; */
  float X1(){
    float value;
    nsresult __result = inner.GetX1(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute float X2; */
  float X2(){
    float value;
    nsresult __result = inner.GetX2(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute float Y1; */
  float Y1(){
    float value;
    nsresult __result = inner.GetY1(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute float Y2; */
  float Y2(){
    float value;
    nsresult __result = inner.GetY2(&value);
    CheckException(__result);
    return value;
  }

private:
  nsISVGLinearGradient inner;

}


/* starting wrapper class:    nsISVGRadialGradient */
class nsISVGRadialGradientD : public nsISupportsD {

  static const nsIID IID = NS_ISVGRADIALGRADIENT_IID;


  alias nsISVGRadialGradient InnerType;

  this(nsISVGRadialGradient intr){
    super(intr);
    this.inner = intr;
  }

  nsISVGRadialGradient opCast() {
    return inner;
  }

  void opAssign(nsISVGRadialGradient value) {
    inner = value;
  }

  /** @} */
  /* readonly attribute float Cx; */
  float Cx(){
    float value;
    nsresult __result = inner.GetCx(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute float Cy; */
  float Cy(){
    float value;
    nsresult __result = inner.GetCy(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute float R; */
  float R(){
    float value;
    nsresult __result = inner.GetR(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute float Fx; */
  float Fx(){
    float value;
    nsresult __result = inner.GetFx(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute float Fy; */
  float Fy(){
    float value;
    nsresult __result = inner.GetFy(&value);
    CheckException(__result);
    return value;
  }

private:
  nsISVGRadialGradient inner;

}

