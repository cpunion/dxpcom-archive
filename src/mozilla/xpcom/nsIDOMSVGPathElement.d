/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGPathElement.idl
 */

module mozilla.xpcom.nsIDOMSVGPathElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMSVGElement;

public import mozilla.xpcom.nsIDOMSVGAnimatedNumber; /* forward declaration */

public import mozilla.xpcom.nsIDOMSVGPoint; /* forward declaration */

public import mozilla.xpcom.nsIDOMSVGPathSeg;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

public import mozilla.xpcom.nsIDOMSVGPathSeg;

public import mozilla.xpcom.nsIDOMSVGPathSeg;


/* starting interface:    nsIDOMSVGPathElement */
const char[] NS_IDOMSVGPATHELEMENT_IID_STR = "2b19e692-3338-440f-a998-3cb1e8474999";

const nsIID NS_IDOMSVGPATHELEMENT_IID= 
  {0x2b19e692, 0x3338, 0x440f, 
    [ 0xa9, 0x98, 0x3c, 0xb1, 0xe8, 0x47, 0x49, 0x99 ]};

extern(Windows)
interface nsIDOMSVGPathElement : nsIDOMSVGElement {
  static const char[] IID_STR = NS_IDOMSVGPATHELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMSVGPATHELEMENT_IID;

  /* readonly attribute nsIDOMSVGAnimatedNumber pathLength; */
  nsresult GetPathLength(nsIDOMSVGAnimatedNumber  *aPathLength);

  /* float getTotalLength (); */
  nsresult GetTotalLength(float *_retval);

  /* nsIDOMSVGPoint getPointAtLength (in float distance); */
  nsresult GetPointAtLength(float distance, nsIDOMSVGPoint *_retval);

  /* unsigned long getPathSegAtLength (in float distance); */
  nsresult GetPathSegAtLength(float distance, PRUint32 *_retval);

  /* nsIDOMSVGPathSegClosePath createSVGPathSegClosePath (); */
  nsresult CreateSVGPathSegClosePath(nsIDOMSVGPathSegClosePath *_retval);

  /* nsIDOMSVGPathSegMovetoAbs createSVGPathSegMovetoAbs (in float x, in float y); */
  nsresult CreateSVGPathSegMovetoAbs(float x, float y, nsIDOMSVGPathSegMovetoAbs *_retval);

  /* nsIDOMSVGPathSegMovetoRel createSVGPathSegMovetoRel (in float x, in float y); */
  nsresult CreateSVGPathSegMovetoRel(float x, float y, nsIDOMSVGPathSegMovetoRel *_retval);

  /* nsIDOMSVGPathSegLinetoAbs createSVGPathSegLinetoAbs (in float x, in float y); */
  nsresult CreateSVGPathSegLinetoAbs(float x, float y, nsIDOMSVGPathSegLinetoAbs *_retval);

  /* nsIDOMSVGPathSegLinetoRel createSVGPathSegLinetoRel (in float x, in float y); */
  nsresult CreateSVGPathSegLinetoRel(float x, float y, nsIDOMSVGPathSegLinetoRel *_retval);

  /* nsIDOMSVGPathSegCurvetoCubicAbs createSVGPathSegCurvetoCubicAbs (in float x, in float y, in float x1, in float y1, in float x2, in float y2); */
  nsresult CreateSVGPathSegCurvetoCubicAbs(float x, float y, float x1, float y1, float x2, float y2, nsIDOMSVGPathSegCurvetoCubicAbs *_retval);

  /* nsIDOMSVGPathSegCurvetoCubicRel createSVGPathSegCurvetoCubicRel (in float x, in float y, in float x1, in float y1, in float x2, in float y2); */
  nsresult CreateSVGPathSegCurvetoCubicRel(float x, float y, float x1, float y1, float x2, float y2, nsIDOMSVGPathSegCurvetoCubicRel *_retval);

  /* nsIDOMSVGPathSegCurvetoQuadraticAbs createSVGPathSegCurvetoQuadraticAbs (in float x, in float y, in float x1, in float y1); */
  nsresult CreateSVGPathSegCurvetoQuadraticAbs(float x, float y, float x1, float y1, nsIDOMSVGPathSegCurvetoQuadraticAbs *_retval);

  /* nsIDOMSVGPathSegCurvetoQuadraticRel createSVGPathSegCurvetoQuadraticRel (in float x, in float y, in float x1, in float y1); */
  nsresult CreateSVGPathSegCurvetoQuadraticRel(float x, float y, float x1, float y1, nsIDOMSVGPathSegCurvetoQuadraticRel *_retval);

  /* nsIDOMSVGPathSegArcAbs createSVGPathSegArcAbs (in float x, in float y, in float r1, in float r2, in float angle, in boolean largeArcFlag, in boolean sweepFlag); */
  nsresult CreateSVGPathSegArcAbs(float x, float y, float r1, float r2, float angle, PRBool largeArcFlag, PRBool sweepFlag, nsIDOMSVGPathSegArcAbs *_retval);

  /* nsIDOMSVGPathSegArcRel createSVGPathSegArcRel (in float x, in float y, in float r1, in float r2, in float angle, in boolean largeArcFlag, in boolean sweepFlag); */
  nsresult CreateSVGPathSegArcRel(float x, float y, float r1, float r2, float angle, PRBool largeArcFlag, PRBool sweepFlag, nsIDOMSVGPathSegArcRel *_retval);

  /* nsIDOMSVGPathSegLinetoHorizontalAbs createSVGPathSegLinetoHorizontalAbs (in float x); */
  nsresult CreateSVGPathSegLinetoHorizontalAbs(float x, nsIDOMSVGPathSegLinetoHorizontalAbs *_retval);

  /* nsIDOMSVGPathSegLinetoHorizontalRel createSVGPathSegLinetoHorizontalRel (in float x); */
  nsresult CreateSVGPathSegLinetoHorizontalRel(float x, nsIDOMSVGPathSegLinetoHorizontalRel *_retval);

  /* nsIDOMSVGPathSegLinetoVerticalAbs createSVGPathSegLinetoVerticalAbs (in float y); */
  nsresult CreateSVGPathSegLinetoVerticalAbs(float y, nsIDOMSVGPathSegLinetoVerticalAbs *_retval);

  /* nsIDOMSVGPathSegLinetoVerticalRel createSVGPathSegLinetoVerticalRel (in float y); */
  nsresult CreateSVGPathSegLinetoVerticalRel(float y, nsIDOMSVGPathSegLinetoVerticalRel *_retval);

  /* nsIDOMSVGPathSegCurvetoCubicSmoothAbs createSVGPathSegCurvetoCubicSmoothAbs (in float x, in float y, in float x2, in float y2); */
  nsresult CreateSVGPathSegCurvetoCubicSmoothAbs(float x, float y, float x2, float y2, nsIDOMSVGPathSegCurvetoCubicSmoothAbs *_retval);

  /* nsIDOMSVGPathSegCurvetoCubicSmoothRel createSVGPathSegCurvetoCubicSmoothRel (in float x, in float y, in float x2, in float y2); */
  nsresult CreateSVGPathSegCurvetoCubicSmoothRel(float x, float y, float x2, float y2, nsIDOMSVGPathSegCurvetoCubicSmoothRel *_retval);

  /* nsIDOMSVGPathSegCurvetoQuadraticSmoothAbs createSVGPathSegCurvetoQuadraticSmoothAbs (in float x, in float y); */
  nsresult CreateSVGPathSegCurvetoQuadraticSmoothAbs(float x, float y, nsIDOMSVGPathSegCurvetoQuadraticSmoothAbs *_retval);

  /* nsIDOMSVGPathSegCurvetoQuadraticSmoothRel createSVGPathSegCurvetoQuadraticSmoothRel (in float x, in float y); */
  nsresult CreateSVGPathSegCurvetoQuadraticSmoothRel(float x, float y, nsIDOMSVGPathSegCurvetoQuadraticSmoothRel *_retval);

}

