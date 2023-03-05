/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGPathElement.idl
 */

module mozilla.dxpcom.nsIDOMSVGPathElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGPathElement;


public import mozilla.dxpcom.nsIDOMSVGPathElementD;

public import mozilla.xpcom.nsIDOMSVGElement;
public import mozilla.dxpcom.nsIDOMSVGElementD;

public import mozilla.xpcom.nsIDOMSVGAnimatedNumber;

public import mozilla.dxpcom.nsIDOMSVGAnimatedNumberD;

public import mozilla.xpcom.nsIDOMSVGPoint;

public import mozilla.dxpcom.nsIDOMSVGPointD;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

import mozilla.dxpcom.nsIDOMSVGPathSegD;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

import mozilla.dxpcom.nsIDOMSVGPathSegD;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

import mozilla.dxpcom.nsIDOMSVGPathSegD;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

import mozilla.dxpcom.nsIDOMSVGPathSegD;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

import mozilla.dxpcom.nsIDOMSVGPathSegD;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

import mozilla.dxpcom.nsIDOMSVGPathSegD;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

import mozilla.dxpcom.nsIDOMSVGPathSegD;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

import mozilla.dxpcom.nsIDOMSVGPathSegD;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

import mozilla.dxpcom.nsIDOMSVGPathSegD;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

import mozilla.dxpcom.nsIDOMSVGPathSegD;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

import mozilla.dxpcom.nsIDOMSVGPathSegD;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

import mozilla.dxpcom.nsIDOMSVGPathSegD;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

import mozilla.dxpcom.nsIDOMSVGPathSegD;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

import mozilla.dxpcom.nsIDOMSVGPathSegD;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

import mozilla.dxpcom.nsIDOMSVGPathSegD;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

import mozilla.dxpcom.nsIDOMSVGPathSegD;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

import mozilla.dxpcom.nsIDOMSVGPathSegD;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

import mozilla.dxpcom.nsIDOMSVGPathSegD;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

import mozilla.dxpcom.nsIDOMSVGPathSegD;


/* starting wrapper class:    nsIDOMSVGPathElement */
class nsIDOMSVGPathElementD : public nsIDOMSVGElementD {

  static const nsIID IID = NS_IDOMSVGPATHELEMENT_IID;


  alias nsIDOMSVGPathElement InnerType;

  this(nsIDOMSVGPathElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGPathElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGPathElement value) {
    inner = value;
  }

  /* readonly attribute nsIDOMSVGAnimatedNumber pathLength; */
  nsIDOMSVGAnimatedNumberD  PathLength(){
    nsIDOMSVGAnimatedNumber value;
    nsresult __result = inner.GetPathLength(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedNumberD(value);
  }

  /* float getTotalLength (); */
  float GetTotalLength(){
    float _retval;
    nsresult __result = inner.GetTotalLength(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsIDOMSVGPoint getPointAtLength (in float distance); */
  nsIDOMSVGPointD  GetPointAtLength(float distance){
    nsIDOMSVGPoint _retval;
    nsresult __result = inner.GetPointAtLength(distance, &_retval);
    CheckException(__result);
    return new nsIDOMSVGPointD(_retval);
  }

  /* unsigned long getPathSegAtLength (in float distance); */
  PRUint32 GetPathSegAtLength(float distance){
    PRUint32 _retval;
    nsresult __result = inner.GetPathSegAtLength(distance, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsIDOMSVGPathSegClosePath createSVGPathSegClosePath (); */
  nsIDOMSVGPathSegClosePathD  CreateSVGPathSegClosePath(){
    nsIDOMSVGPathSegClosePath _retval;
    nsresult __result = inner.CreateSVGPathSegClosePath(&_retval);
    CheckException(__result);
    return new nsIDOMSVGPathSegClosePathD(_retval);
  }

  /* nsIDOMSVGPathSegMovetoAbs createSVGPathSegMovetoAbs (in float x, in float y); */
  nsIDOMSVGPathSegMovetoAbsD  CreateSVGPathSegMovetoAbs(float x, float y){
    nsIDOMSVGPathSegMovetoAbs _retval;
    nsresult __result = inner.CreateSVGPathSegMovetoAbs(x, y, &_retval);
    CheckException(__result);
    return new nsIDOMSVGPathSegMovetoAbsD(_retval);
  }

  /* nsIDOMSVGPathSegMovetoRel createSVGPathSegMovetoRel (in float x, in float y); */
  nsIDOMSVGPathSegMovetoRelD  CreateSVGPathSegMovetoRel(float x, float y){
    nsIDOMSVGPathSegMovetoRel _retval;
    nsresult __result = inner.CreateSVGPathSegMovetoRel(x, y, &_retval);
    CheckException(__result);
    return new nsIDOMSVGPathSegMovetoRelD(_retval);
  }

  /* nsIDOMSVGPathSegLinetoAbs createSVGPathSegLinetoAbs (in float x, in float y); */
  nsIDOMSVGPathSegLinetoAbsD  CreateSVGPathSegLinetoAbs(float x, float y){
    nsIDOMSVGPathSegLinetoAbs _retval;
    nsresult __result = inner.CreateSVGPathSegLinetoAbs(x, y, &_retval);
    CheckException(__result);
    return new nsIDOMSVGPathSegLinetoAbsD(_retval);
  }

  /* nsIDOMSVGPathSegLinetoRel createSVGPathSegLinetoRel (in float x, in float y); */
  nsIDOMSVGPathSegLinetoRelD  CreateSVGPathSegLinetoRel(float x, float y){
    nsIDOMSVGPathSegLinetoRel _retval;
    nsresult __result = inner.CreateSVGPathSegLinetoRel(x, y, &_retval);
    CheckException(__result);
    return new nsIDOMSVGPathSegLinetoRelD(_retval);
  }

  /* nsIDOMSVGPathSegCurvetoCubicAbs createSVGPathSegCurvetoCubicAbs (in float x, in float y, in float x1, in float y1, in float x2, in float y2); */
  nsIDOMSVGPathSegCurvetoCubicAbsD  CreateSVGPathSegCurvetoCubicAbs(float x, float y, float x1, float y1, float x2, float y2){
    nsIDOMSVGPathSegCurvetoCubicAbs _retval;
    nsresult __result = inner.CreateSVGPathSegCurvetoCubicAbs(x, y, x1, y1, x2, y2, &_retval);
    CheckException(__result);
    return new nsIDOMSVGPathSegCurvetoCubicAbsD(_retval);
  }

  /* nsIDOMSVGPathSegCurvetoCubicRel createSVGPathSegCurvetoCubicRel (in float x, in float y, in float x1, in float y1, in float x2, in float y2); */
  nsIDOMSVGPathSegCurvetoCubicRelD  CreateSVGPathSegCurvetoCubicRel(float x, float y, float x1, float y1, float x2, float y2){
    nsIDOMSVGPathSegCurvetoCubicRel _retval;
    nsresult __result = inner.CreateSVGPathSegCurvetoCubicRel(x, y, x1, y1, x2, y2, &_retval);
    CheckException(__result);
    return new nsIDOMSVGPathSegCurvetoCubicRelD(_retval);
  }

  /* nsIDOMSVGPathSegCurvetoQuadraticAbs createSVGPathSegCurvetoQuadraticAbs (in float x, in float y, in float x1, in float y1); */
  nsIDOMSVGPathSegCurvetoQuadraticAbsD  CreateSVGPathSegCurvetoQuadraticAbs(float x, float y, float x1, float y1){
    nsIDOMSVGPathSegCurvetoQuadraticAbs _retval;
    nsresult __result = inner.CreateSVGPathSegCurvetoQuadraticAbs(x, y, x1, y1, &_retval);
    CheckException(__result);
    return new nsIDOMSVGPathSegCurvetoQuadraticAbsD(_retval);
  }

  /* nsIDOMSVGPathSegCurvetoQuadraticRel createSVGPathSegCurvetoQuadraticRel (in float x, in float y, in float x1, in float y1); */
  nsIDOMSVGPathSegCurvetoQuadraticRelD  CreateSVGPathSegCurvetoQuadraticRel(float x, float y, float x1, float y1){
    nsIDOMSVGPathSegCurvetoQuadraticRel _retval;
    nsresult __result = inner.CreateSVGPathSegCurvetoQuadraticRel(x, y, x1, y1, &_retval);
    CheckException(__result);
    return new nsIDOMSVGPathSegCurvetoQuadraticRelD(_retval);
  }

  /* nsIDOMSVGPathSegArcAbs createSVGPathSegArcAbs (in float x, in float y, in float r1, in float r2, in float angle, in boolean largeArcFlag, in boolean sweepFlag); */
  nsIDOMSVGPathSegArcAbsD  CreateSVGPathSegArcAbs(float x, float y, float r1, float r2, float angle, PRBool largeArcFlag, PRBool sweepFlag){
    nsIDOMSVGPathSegArcAbs _retval;
    nsresult __result = inner.CreateSVGPathSegArcAbs(x, y, r1, r2, angle, largeArcFlag, sweepFlag, &_retval);
    CheckException(__result);
    return new nsIDOMSVGPathSegArcAbsD(_retval);
  }

  /* nsIDOMSVGPathSegArcRel createSVGPathSegArcRel (in float x, in float y, in float r1, in float r2, in float angle, in boolean largeArcFlag, in boolean sweepFlag); */
  nsIDOMSVGPathSegArcRelD  CreateSVGPathSegArcRel(float x, float y, float r1, float r2, float angle, PRBool largeArcFlag, PRBool sweepFlag){
    nsIDOMSVGPathSegArcRel _retval;
    nsresult __result = inner.CreateSVGPathSegArcRel(x, y, r1, r2, angle, largeArcFlag, sweepFlag, &_retval);
    CheckException(__result);
    return new nsIDOMSVGPathSegArcRelD(_retval);
  }

  /* nsIDOMSVGPathSegLinetoHorizontalAbs createSVGPathSegLinetoHorizontalAbs (in float x); */
  nsIDOMSVGPathSegLinetoHorizontalAbsD  CreateSVGPathSegLinetoHorizontalAbs(float x){
    nsIDOMSVGPathSegLinetoHorizontalAbs _retval;
    nsresult __result = inner.CreateSVGPathSegLinetoHorizontalAbs(x, &_retval);
    CheckException(__result);
    return new nsIDOMSVGPathSegLinetoHorizontalAbsD(_retval);
  }

  /* nsIDOMSVGPathSegLinetoHorizontalRel createSVGPathSegLinetoHorizontalRel (in float x); */
  nsIDOMSVGPathSegLinetoHorizontalRelD  CreateSVGPathSegLinetoHorizontalRel(float x){
    nsIDOMSVGPathSegLinetoHorizontalRel _retval;
    nsresult __result = inner.CreateSVGPathSegLinetoHorizontalRel(x, &_retval);
    CheckException(__result);
    return new nsIDOMSVGPathSegLinetoHorizontalRelD(_retval);
  }

  /* nsIDOMSVGPathSegLinetoVerticalAbs createSVGPathSegLinetoVerticalAbs (in float y); */
  nsIDOMSVGPathSegLinetoVerticalAbsD  CreateSVGPathSegLinetoVerticalAbs(float y){
    nsIDOMSVGPathSegLinetoVerticalAbs _retval;
    nsresult __result = inner.CreateSVGPathSegLinetoVerticalAbs(y, &_retval);
    CheckException(__result);
    return new nsIDOMSVGPathSegLinetoVerticalAbsD(_retval);
  }

  /* nsIDOMSVGPathSegLinetoVerticalRel createSVGPathSegLinetoVerticalRel (in float y); */
  nsIDOMSVGPathSegLinetoVerticalRelD  CreateSVGPathSegLinetoVerticalRel(float y){
    nsIDOMSVGPathSegLinetoVerticalRel _retval;
    nsresult __result = inner.CreateSVGPathSegLinetoVerticalRel(y, &_retval);
    CheckException(__result);
    return new nsIDOMSVGPathSegLinetoVerticalRelD(_retval);
  }

  /* nsIDOMSVGPathSegCurvetoCubicSmoothAbs createSVGPathSegCurvetoCubicSmoothAbs (in float x, in float y, in float x2, in float y2); */
  nsIDOMSVGPathSegCurvetoCubicSmoothAbsD  CreateSVGPathSegCurvetoCubicSmoothAbs(float x, float y, float x2, float y2){
    nsIDOMSVGPathSegCurvetoCubicSmoothAbs _retval;
    nsresult __result = inner.CreateSVGPathSegCurvetoCubicSmoothAbs(x, y, x2, y2, &_retval);
    CheckException(__result);
    return new nsIDOMSVGPathSegCurvetoCubicSmoothAbsD(_retval);
  }

  /* nsIDOMSVGPathSegCurvetoCubicSmoothRel createSVGPathSegCurvetoCubicSmoothRel (in float x, in float y, in float x2, in float y2); */
  nsIDOMSVGPathSegCurvetoCubicSmoothRelD  CreateSVGPathSegCurvetoCubicSmoothRel(float x, float y, float x2, float y2){
    nsIDOMSVGPathSegCurvetoCubicSmoothRel _retval;
    nsresult __result = inner.CreateSVGPathSegCurvetoCubicSmoothRel(x, y, x2, y2, &_retval);
    CheckException(__result);
    return new nsIDOMSVGPathSegCurvetoCubicSmoothRelD(_retval);
  }

  /* nsIDOMSVGPathSegCurvetoQuadraticSmoothAbs createSVGPathSegCurvetoQuadraticSmoothAbs (in float x, in float y); */
  nsIDOMSVGPathSegCurvetoQuadraticSmoothAbsD  CreateSVGPathSegCurvetoQuadraticSmoothAbs(float x, float y){
    nsIDOMSVGPathSegCurvetoQuadraticSmoothAbs _retval;
    nsresult __result = inner.CreateSVGPathSegCurvetoQuadraticSmoothAbs(x, y, &_retval);
    CheckException(__result);
    return new nsIDOMSVGPathSegCurvetoQuadraticSmoothAbsD(_retval);
  }

  /* nsIDOMSVGPathSegCurvetoQuadraticSmoothRel createSVGPathSegCurvetoQuadraticSmoothRel (in float x, in float y); */
  nsIDOMSVGPathSegCurvetoQuadraticSmoothRelD  CreateSVGPathSegCurvetoQuadraticSmoothRel(float x, float y){
    nsIDOMSVGPathSegCurvetoQuadraticSmoothRel _retval;
    nsresult __result = inner.CreateSVGPathSegCurvetoQuadraticSmoothRel(x, y, &_retval);
    CheckException(__result);
    return new nsIDOMSVGPathSegCurvetoQuadraticSmoothRelD(_retval);
  }

private:
  nsIDOMSVGPathElement inner;

}

