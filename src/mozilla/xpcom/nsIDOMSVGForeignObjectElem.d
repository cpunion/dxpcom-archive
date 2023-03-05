/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGForeignObjectElem.idl
 */

module mozilla.xpcom.nsIDOMSVGForeignObjectElem;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMSVGElement;

public import mozilla.xpcom.nsIDOMSVGAnimatedLength; /* forward declaration */


/* starting interface:    nsIDOMSVGForeignObjectElement */
const char[] NS_IDOMSVGFOREIGNOBJECTELEMENT_IID_STR = "fd9c9871-23fd-48eb-a65b-3842e9b0acbd";

const nsIID NS_IDOMSVGFOREIGNOBJECTELEMENT_IID= 
  {0xfd9c9871, 0x23fd, 0x48eb, 
    [ 0xa6, 0x5b, 0x38, 0x42, 0xe9, 0xb0, 0xac, 0xbd ]};

extern(Windows)
interface nsIDOMSVGForeignObjectElement : nsIDOMSVGElement {
  static const char[] IID_STR = NS_IDOMSVGFOREIGNOBJECTELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMSVGFOREIGNOBJECTELEMENT_IID;

  /* readonly attribute nsIDOMSVGAnimatedLength x; */
  nsresult GetX(nsIDOMSVGAnimatedLength  *aX);

  /* readonly attribute nsIDOMSVGAnimatedLength y; */
  nsresult GetY(nsIDOMSVGAnimatedLength  *aY);

  /* readonly attribute nsIDOMSVGAnimatedLength width; */
  nsresult GetWidth(nsIDOMSVGAnimatedLength  *aWidth);

  /* readonly attribute nsIDOMSVGAnimatedLength height; */
  nsresult GetHeight(nsIDOMSVGAnimatedLength  *aHeight);

}

