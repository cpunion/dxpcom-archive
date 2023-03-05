/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGImageElement.idl
 */

module mozilla.xpcom.nsIDOMSVGImageElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMSVGElement;

public import mozilla.xpcom.nsIDOMSVGAnimatedLength; /* forward declaration */

public import mozilla.xpcom.nsIDOMSVGAnimPresAspRatio;


/* starting interface:    nsIDOMSVGImageElement */
const char[] NS_IDOMSVGIMAGEELEMENT_IID_STR = "43ae4efe-2610-4cce-8242-279e556a78fa";

const nsIID NS_IDOMSVGIMAGEELEMENT_IID= 
  {0x43ae4efe, 0x2610, 0x4cce, 
    [ 0x82, 0x42, 0x27, 0x9e, 0x55, 0x6a, 0x78, 0xfa ]};

extern(Windows)
interface nsIDOMSVGImageElement : nsIDOMSVGElement {
  static const char[] IID_STR = NS_IDOMSVGIMAGEELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMSVGIMAGEELEMENT_IID;

  /* readonly attribute nsIDOMSVGAnimatedLength x; */
  nsresult GetX(nsIDOMSVGAnimatedLength  *aX);

  /* readonly attribute nsIDOMSVGAnimatedLength y; */
  nsresult GetY(nsIDOMSVGAnimatedLength  *aY);

  /* readonly attribute nsIDOMSVGAnimatedLength width; */
  nsresult GetWidth(nsIDOMSVGAnimatedLength  *aWidth);

  /* readonly attribute nsIDOMSVGAnimatedLength height; */
  nsresult GetHeight(nsIDOMSVGAnimatedLength  *aHeight);

  /* readonly attribute nsIDOMSVGAnimatedPreserveAspectRatio preserveAspectRatio; */
  nsresult GetPreserveAspectRatio(nsIDOMSVGAnimatedPreserveAspectRatio  *aPreserveAspectRatio);

}

