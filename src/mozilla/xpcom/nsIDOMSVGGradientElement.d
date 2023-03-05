/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGGradientElement.idl
 */

module mozilla.xpcom.nsIDOMSVGGradientElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMSVGElement;

public import mozilla.xpcom.nsIDOMSVGAnimatedEnum;

public import mozilla.xpcom.nsIDOMSVGAnimTransformList;


/* starting interface:    nsIDOMSVGGradientElement */
const char[] NS_IDOMSVGGRADIENTELEMENT_IID_STR = "988b2de4-137b-4bb8-a15e-fe94038e9cf3";

const nsIID NS_IDOMSVGGRADIENTELEMENT_IID= 
  {0x988b2de4, 0x137b, 0x4bb8, 
    [ 0xa1, 0x5e, 0xfe, 0x94, 0x03, 0x8e, 0x9c, 0xf3 ]};

extern(Windows)
interface nsIDOMSVGGradientElement : nsIDOMSVGElement {
  static const char[] IID_STR = NS_IDOMSVGGRADIENTELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMSVGGRADIENTELEMENT_IID;

  enum { SVG_SPREADMETHOD_UNKNOWN = 0U };

  enum { SVG_SPREADMETHOD_PAD = 1U };

  enum { SVG_SPREADMETHOD_REFLECT = 2U };

  enum { SVG_SPREADMETHOD_REPEAT = 3U };

  enum { SVG_GRUNITS_UNKNOWN = 0U };

  enum { SVG_GRUNITS_OBJECTBOUNDINGBOX = 1U };

  enum { SVG_GRUNITS_USERSPACEONUSE = 2U };

  /* readonly attribute nsIDOMSVGAnimatedEnumeration gradientUnits; */
  nsresult GetGradientUnits(nsIDOMSVGAnimatedEnumeration  *aGradientUnits);

  /* readonly attribute nsIDOMSVGAnimatedTransformList gradientTransform; */
  nsresult GetGradientTransform(nsIDOMSVGAnimatedTransformList  *aGradientTransform);

  /* readonly attribute nsIDOMSVGAnimatedEnumeration spreadMethod; */
  nsresult GetSpreadMethod(nsIDOMSVGAnimatedEnumeration  *aSpreadMethod);

}

public import mozilla.xpcom.nsIDOMSVGAnimatedLength; /* forward declaration */


/* starting interface:    nsIDOMSVGLinearGradientElement */
const char[] NS_IDOMSVGLINEARGRADIENTELEMENT_IID_STR = "7e15fce5-b208-43e1-952a-c570ebad0619";

const nsIID NS_IDOMSVGLINEARGRADIENTELEMENT_IID= 
  {0x7e15fce5, 0xb208, 0x43e1, 
    [ 0x95, 0x2a, 0xc5, 0x70, 0xeb, 0xad, 0x06, 0x19 ]};

extern(Windows)
interface nsIDOMSVGLinearGradientElement : nsIDOMSVGGradientElement {
  static const char[] IID_STR = NS_IDOMSVGLINEARGRADIENTELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMSVGLINEARGRADIENTELEMENT_IID;

  /* readonly attribute nsIDOMSVGAnimatedLength x1; */
  nsresult GetX1(nsIDOMSVGAnimatedLength  *aX1);

  /* readonly attribute nsIDOMSVGAnimatedLength y1; */
  nsresult GetY1(nsIDOMSVGAnimatedLength  *aY1);

  /* readonly attribute nsIDOMSVGAnimatedLength x2; */
  nsresult GetX2(nsIDOMSVGAnimatedLength  *aX2);

  /* readonly attribute nsIDOMSVGAnimatedLength y2; */
  nsresult GetY2(nsIDOMSVGAnimatedLength  *aY2);

}

public import mozilla.xpcom.nsIDOMSVGAnimatedLength; /* forward declaration */


/* starting interface:    nsIDOMSVGRadialGradientElement */
const char[] NS_IDOMSVGRADIALGRADIENTELEMENT_IID_STR = "d0262ae1-31a4-44be-b82e-85e4cfe280fd";

const nsIID NS_IDOMSVGRADIALGRADIENTELEMENT_IID= 
  {0xd0262ae1, 0x31a4, 0x44be, 
    [ 0xb8, 0x2e, 0x85, 0xe4, 0xcf, 0xe2, 0x80, 0xfd ]};

/**
 * The nsIDOMSVGRadialGradientElement interface is the interface to an SVG
 * radial gradient element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/SVG11/pservers.html
 *
 */
extern(Windows)
interface nsIDOMSVGRadialGradientElement : nsIDOMSVGGradientElement {
  static const char[] IID_STR = NS_IDOMSVGRADIALGRADIENTELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMSVGRADIALGRADIENTELEMENT_IID;

  /* readonly attribute nsIDOMSVGAnimatedLength cx; */
  nsresult GetCx(nsIDOMSVGAnimatedLength  *aCx);

  /* readonly attribute nsIDOMSVGAnimatedLength cy; */
  nsresult GetCy(nsIDOMSVGAnimatedLength  *aCy);

  /* readonly attribute nsIDOMSVGAnimatedLength r; */
  nsresult GetR(nsIDOMSVGAnimatedLength  *aR);

  /* readonly attribute nsIDOMSVGAnimatedLength fx; */
  nsresult GetFx(nsIDOMSVGAnimatedLength  *aFx);

  /* readonly attribute nsIDOMSVGAnimatedLength fy; */
  nsresult GetFy(nsIDOMSVGAnimatedLength  *aFy);

}

