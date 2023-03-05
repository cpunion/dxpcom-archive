/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGRectElement.idl
 */

module mozilla.xpcom.nsIDOMSVGRectElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMSVGElement;

public import mozilla.xpcom.nsIDOMSVGAnimatedLength; /* forward declaration */


/* starting interface:    nsIDOMSVGRectElement */
const char[] NS_IDOMSVGRECTELEMENT_IID_STR = "1695ca39-e40d-44dc-81db-a51b6fd234fa";

const nsIID NS_IDOMSVGRECTELEMENT_IID= 
  {0x1695ca39, 0xe40d, 0x44dc, 
    [ 0x81, 0xdb, 0xa5, 0x1b, 0x6f, 0xd2, 0x34, 0xfa ]};

extern(Windows)
interface nsIDOMSVGRectElement : nsIDOMSVGElement {
  static const char[] IID_STR = NS_IDOMSVGRECTELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMSVGRECTELEMENT_IID;

  /* readonly attribute nsIDOMSVGAnimatedLength x; */
  nsresult GetX(nsIDOMSVGAnimatedLength  *aX);

  /* readonly attribute nsIDOMSVGAnimatedLength y; */
  nsresult GetY(nsIDOMSVGAnimatedLength  *aY);

  /* readonly attribute nsIDOMSVGAnimatedLength width; */
  nsresult GetWidth(nsIDOMSVGAnimatedLength  *aWidth);

  /* readonly attribute nsIDOMSVGAnimatedLength height; */
  nsresult GetHeight(nsIDOMSVGAnimatedLength  *aHeight);

  /* readonly attribute nsIDOMSVGAnimatedLength rx; */
  nsresult GetRx(nsIDOMSVGAnimatedLength  *aRx);

  /* readonly attribute nsIDOMSVGAnimatedLength ry; */
  nsresult GetRy(nsIDOMSVGAnimatedLength  *aRy);

}

