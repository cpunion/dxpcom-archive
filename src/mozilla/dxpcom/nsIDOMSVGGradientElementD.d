/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGGradientElement.idl
 */

module mozilla.dxpcom.nsIDOMSVGGradientElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGGradientElement;


public import mozilla.dxpcom.nsIDOMSVGGradientElementD;

public import mozilla.xpcom.nsIDOMSVGElement;
public import mozilla.dxpcom.nsIDOMSVGElementD;

public import mozilla.xpcom.nsIDOMSVGAnimatedEnum;

import mozilla.dxpcom.nsIDOMSVGAnimatedEnumD;

public import mozilla.xpcom.nsIDOMSVGAnimTransformList;

import mozilla.dxpcom.nsIDOMSVGAnimTransformListD;


/* starting wrapper class:    nsIDOMSVGGradientElement */
class nsIDOMSVGGradientElementD : public nsIDOMSVGElementD {

  static const nsIID IID = NS_IDOMSVGGRADIENTELEMENT_IID;


  alias nsIDOMSVGGradientElement InnerType;

  this(nsIDOMSVGGradientElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGGradientElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGGradientElement value) {
    inner = value;
  }

  enum { SVG_SPREADMETHOD_UNKNOWN = 0U }

  enum { SVG_SPREADMETHOD_PAD = 1U }

  enum { SVG_SPREADMETHOD_REFLECT = 2U }

  enum { SVG_SPREADMETHOD_REPEAT = 3U }

  enum { SVG_GRUNITS_UNKNOWN = 0U }

  enum { SVG_GRUNITS_OBJECTBOUNDINGBOX = 1U }

  enum { SVG_GRUNITS_USERSPACEONUSE = 2U }

  /* readonly attribute nsIDOMSVGAnimatedEnumeration gradientUnits; */
  nsIDOMSVGAnimatedEnumerationD  GradientUnits(){
    nsIDOMSVGAnimatedEnumeration value;
    nsresult __result = inner.GetGradientUnits(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedEnumerationD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedTransformList gradientTransform; */
  nsIDOMSVGAnimatedTransformListD  GradientTransform(){
    nsIDOMSVGAnimatedTransformList value;
    nsresult __result = inner.GetGradientTransform(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedTransformListD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedEnumeration spreadMethod; */
  nsIDOMSVGAnimatedEnumerationD  SpreadMethod(){
    nsIDOMSVGAnimatedEnumeration value;
    nsresult __result = inner.GetSpreadMethod(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedEnumerationD(value);
  }

private:
  nsIDOMSVGGradientElement inner;

}

public import mozilla.xpcom.nsIDOMSVGAnimatedLength;

public import mozilla.dxpcom.nsIDOMSVGAnimatedLengthD;


/* starting wrapper class:    nsIDOMSVGLinearGradientElement */
class nsIDOMSVGLinearGradientElementD : public nsIDOMSVGGradientElementD {

  static const nsIID IID = NS_IDOMSVGLINEARGRADIENTELEMENT_IID;


  alias nsIDOMSVGLinearGradientElement InnerType;

  this(nsIDOMSVGLinearGradientElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGLinearGradientElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGLinearGradientElement value) {
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
  nsIDOMSVGLinearGradientElement inner;

}

public import mozilla.xpcom.nsIDOMSVGAnimatedLength;

public import mozilla.dxpcom.nsIDOMSVGAnimatedLengthD;


/* starting wrapper class:    nsIDOMSVGRadialGradientElement */
/**
 * The nsIDOMSVGRadialGradientElement interface is the interface to an SVG
 * radial gradient element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/SVG11/pservers.html
 *
 */
class nsIDOMSVGRadialGradientElementD : public nsIDOMSVGGradientElementD {

  static const nsIID IID = NS_IDOMSVGRADIALGRADIENTELEMENT_IID;


  alias nsIDOMSVGRadialGradientElement InnerType;

  this(nsIDOMSVGRadialGradientElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGRadialGradientElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGRadialGradientElement value) {
    inner = value;
  }

  /* readonly attribute nsIDOMSVGAnimatedLength cx; */
  nsIDOMSVGAnimatedLengthD  Cx(){
    nsIDOMSVGAnimatedLength value;
    nsresult __result = inner.GetCx(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedLength cy; */
  nsIDOMSVGAnimatedLengthD  Cy(){
    nsIDOMSVGAnimatedLength value;
    nsresult __result = inner.GetCy(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedLength r; */
  nsIDOMSVGAnimatedLengthD  R(){
    nsIDOMSVGAnimatedLength value;
    nsresult __result = inner.GetR(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedLength fx; */
  nsIDOMSVGAnimatedLengthD  Fx(){
    nsIDOMSVGAnimatedLength value;
    nsresult __result = inner.GetFx(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedLength fy; */
  nsIDOMSVGAnimatedLengthD  Fy(){
    nsIDOMSVGAnimatedLength value;
    nsresult __result = inner.GetFy(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthD(value);
  }

private:
  nsIDOMSVGRadialGradientElement inner;

}

