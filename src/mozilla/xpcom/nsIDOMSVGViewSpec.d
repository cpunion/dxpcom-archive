/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGViewSpec.idl
 */

module mozilla.xpcom.nsIDOMSVGViewSpec;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMSVGZoomAndPan;

public import mozilla.xpcom.nsIDOMSVGTransformList; /* forward declaration */

public import mozilla.xpcom.nsIDOMSVGElement; /* forward declaration */


/* starting interface:    nsIDOMSVGViewSpec */
const char[] NS_IDOMSVGVIEWSPEC_IID_STR = "ede34b03-57b6-45bf-a259-3550b5697286";

const nsIID NS_IDOMSVGVIEWSPEC_IID= 
  {0xede34b03, 0x57b6, 0x45bf, 
    [ 0xa2, 0x59, 0x35, 0x50, 0xb5, 0x69, 0x72, 0x86 ]};

extern(Windows)
interface nsIDOMSVGViewSpec : nsIDOMSVGZoomAndPan {
  static const char[] IID_STR = NS_IDOMSVGVIEWSPEC_IID_STR;
  static const nsIID IID = NS_IDOMSVGVIEWSPEC_IID;

  /* readonly attribute nsIDOMSVGTransformList transform; */
  nsresult GetTransform(nsIDOMSVGTransformList  *aTransform);

  /* readonly attribute nsIDOMSVGElement viewTarget; */
  nsresult GetViewTarget(nsIDOMSVGElement  *aViewTarget);

  /* readonly attribute DOMString viewBoxString; */
  nsresult GetViewBoxString(nsAString * aViewBoxString);

  /* readonly attribute DOMString preserveAspectRatioString; */
  nsresult GetPreserveAspectRatioString(nsAString * aPreserveAspectRatioString);

  /* readonly attribute DOMString transformString; */
  nsresult GetTransformString(nsAString * aTransformString);

  /* readonly attribute DOMString viewTargetString; */
  nsresult GetViewTargetString(nsAString * aViewTargetString);

}

