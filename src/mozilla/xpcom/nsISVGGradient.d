/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISVGGradient.idl
 */

module mozilla.xpcom.nsISVGGradient;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsISVGRendererCanvas;
public import mozilla.xpcom.nsIDOMSVGMatrix; /* forward declaration */

public import mozilla.xpcom.nsISVGGradient;

public import mozilla.xpcom.nsISVGGradient;

public import mozilla.xpcom.nsISVGGeometrySource; /* forward declaration */


/* starting interface:    nsISVGGradient */
const char[] NS_ISVGGRADIENT_IID_STR = "62e79ab2-5bf9-4372-b397-7a942bc4c649";

const nsIID NS_ISVGGRADIENT_IID= 
  {0x62e79ab2, 0x5bf9, 0x4372, 
    [ 0xb3, 0x97, 0x7a, 0x94, 0x2b, 0xc4, 0xc6, 0x49 ]};

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
extern(Windows)
interface nsISVGGradient : nsISupports {
  static const char[] IID_STR = NS_ISVGGRADIENT_IID_STR;
  static const nsIID IID = NS_ISVGGRADIENT_IID;

  enum { SVG_UNKNOWN_GRADIENT = 0U };

  enum { SVG_LINEAR_GRADIENT = 1U };

  enum { SVG_RADIAL_GRADIENT = 2U };

  /* readonly attribute PRUint32 gradientType; */
  nsresult GetGradientType(PRUint32 *aGradientType);

  /* readonly attribute PRUint16 gradientUnits; */
  nsresult GetGradientUnits(PRUint16 *aGradientUnits);

  /* readonly attribute PRUint16 spreadMethod; */
  nsresult GetSpreadMethod(PRUint16 *aSpreadMethod);

  /* void GetStopCount (out PRUint32 aStopCount); */
  nsresult GetStopCount(PRUint32 *aStopCount);

  /* void GetStopOffset (in PRInt32 aIndex, out float aOffset); */
  nsresult GetStopOffset(PRInt32 aIndex, float *aOffset);

  /* void GetStopColor (in PRInt32 aIndex, out nscolor aStopColor); */
  nsresult GetStopColor(PRInt32 aIndex, nscolor *aStopColor);

  /* void GetStopOpacity (in PRInt32 aIndex, out float aStopOpacity); */
  nsresult GetStopOpacity(PRInt32 aIndex, float *aStopOpacity);

  /* void GetNextGradient (out nsISVGGradient aNextGrad, in PRUint32 aType); */
  nsresult GetNextGradient(nsISVGGradient *aNextGrad, PRUint32 aType);

  /* void GetGradientTransform (out nsIDOMSVGMatrix retval, in nsISVGGeometrySource aSource); */
  nsresult GetGradientTransform(nsIDOMSVGMatrix *retval, nsISVGGeometrySource aSource);

}


/* starting interface:    nsISVGLinearGradient */
const char[] NS_ISVGLINEARGRADIENT_IID_STR = "995ad9e6-6bb1-47c5-b402-fc93ce12f5e7";

const nsIID NS_ISVGLINEARGRADIENT_IID= 
  {0x995ad9e6, 0x6bb1, 0x47c5, 
    [ 0xb4, 0x02, 0xfc, 0x93, 0xce, 0x12, 0xf5, 0xe7 ]};

extern(Windows)
interface nsISVGLinearGradient : nsISupports {
  static const char[] IID_STR = NS_ISVGLINEARGRADIENT_IID_STR;
  static const nsIID IID = NS_ISVGLINEARGRADIENT_IID;

  /** @} */
  /* readonly attribute float X1; */
  nsresult GetX1(float *aX1);

  /* readonly attribute float X2; */
  nsresult GetX2(float *aX2);

  /* readonly attribute float Y1; */
  nsresult GetY1(float *aY1);

  /* readonly attribute float Y2; */
  nsresult GetY2(float *aY2);

}


/* starting interface:    nsISVGRadialGradient */
const char[] NS_ISVGRADIALGRADIENT_IID_STR = "446435ff-6699-4b4d-85c1-09c18145f5ce";

const nsIID NS_ISVGRADIALGRADIENT_IID= 
  {0x446435ff, 0x6699, 0x4b4d, 
    [ 0x85, 0xc1, 0x09, 0xc1, 0x81, 0x45, 0xf5, 0xce ]};

extern(Windows)
interface nsISVGRadialGradient : nsISupports {
  static const char[] IID_STR = NS_ISVGRADIALGRADIENT_IID_STR;
  static const nsIID IID = NS_ISVGRADIALGRADIENT_IID;

  /** @} */
  /* readonly attribute float Cx; */
  nsresult GetCx(float *aCx);

  /* readonly attribute float Cy; */
  nsresult GetCy(float *aCy);

  /* readonly attribute float R; */
  nsresult GetR(float *aR);

  /* readonly attribute float Fx; */
  nsresult GetFx(float *aFx);

  /* readonly attribute float Fy; */
  nsresult GetFy(float *aFy);

}

