/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGMarkerElement.idl
 */

module mozilla.xpcom.nsIDOMSVGMarkerElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMSVGElement;

public import mozilla.xpcom.nsIDOMSVGAnimatedLength; /* forward declaration */

public import mozilla.xpcom.nsIDOMSVGAnimatedEnum;

public import mozilla.xpcom.nsIDOMSVGAngle; /* forward declaration */

public import mozilla.xpcom.nsIDOMSVGAnimatedAngle; /* forward declaration */

public import mozilla.xpcom.nsIDOMSVGAnimatedRect; /* forward declaration */

public import mozilla.xpcom.nsIDOMSVGMatrix; /* forward declaration */


/* starting interface:    nsIDOMSVGMarkerElement */
const char[] NS_IDOMSVGMARKERELEMENT_IID_STR = "7d89ceb8-f985-4095-8f24-421910704e5e";

const nsIID NS_IDOMSVGMARKERELEMENT_IID= 
  {0x7d89ceb8, 0xf985, 0x4095, 
    [ 0x8f, 0x24, 0x42, 0x19, 0x10, 0x70, 0x4e, 0x5e ]};

/**
 * The nsIDOMSVGMarker interface is the interface to an SVG marker element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/SVG11/painting.html#InterfaceSVGMarkerElement
 *
 */
extern(Windows)
interface nsIDOMSVGMarkerElement : nsIDOMSVGElement {
  static const char[] IID_STR = NS_IDOMSVGMARKERELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMSVGMARKERELEMENT_IID;

  enum { SVG_MARKERUNITS_UNKNOWN = 0U };

  enum { SVG_MARKERUNITS_USERSPACEONUSE = 1U };

  enum { SVG_MARKERUNITS_STROKEWIDTH = 2U };

  enum { SVG_MARKER_ORIENT_UNKNOWN = 0U };

  enum { SVG_MARKER_ORIENT_AUTO = 1U };

  enum { SVG_MARKER_ORIENT_ANGLE = 2U };

  /* readonly attribute nsIDOMSVGAnimatedLength refX; */
  nsresult GetRefX(nsIDOMSVGAnimatedLength  *aRefX);

  /* readonly attribute nsIDOMSVGAnimatedLength refY; */
  nsresult GetRefY(nsIDOMSVGAnimatedLength  *aRefY);

  /* readonly attribute nsIDOMSVGAnimatedEnumeration markerUnits; */
  nsresult GetMarkerUnits(nsIDOMSVGAnimatedEnumeration  *aMarkerUnits);

  /* readonly attribute nsIDOMSVGAnimatedLength markerWidth; */
  nsresult GetMarkerWidth(nsIDOMSVGAnimatedLength  *aMarkerWidth);

  /* readonly attribute nsIDOMSVGAnimatedLength markerHeight; */
  nsresult GetMarkerHeight(nsIDOMSVGAnimatedLength  *aMarkerHeight);

  /* readonly attribute nsIDOMSVGAnimatedEnumeration orientType; */
  nsresult GetOrientType(nsIDOMSVGAnimatedEnumeration  *aOrientType);

  /* readonly attribute nsIDOMSVGAnimatedAngle orientAngle; */
  nsresult GetOrientAngle(nsIDOMSVGAnimatedAngle  *aOrientAngle);

  /* void setOrientToAuto (); */
  nsresult SetOrientToAuto();

  /* void setOrientToAngle (in nsIDOMSVGAngle angle); */
  nsresult SetOrientToAngle(nsIDOMSVGAngle angle);

  /* [noscript] nsIDOMSVGMatrix getMarkerTransform (in float strokeWidth, in float x, in float y, in float angle); */
  nsresult GetMarkerTransform(float strokeWidth, float x, float y, float angle, nsIDOMSVGMatrix *_retval);

  /* [noscript] nsIDOMSVGMatrix getViewboxToViewportTransform (); */
  nsresult GetViewboxToViewportTransform(nsIDOMSVGMatrix *_retval);

}

