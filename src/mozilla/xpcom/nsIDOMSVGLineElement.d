/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGLineElement.idl
 */

module mozilla.xpcom.nsIDOMSVGLineElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMSVGElement;

public import mozilla.xpcom.nsIDOMSVGAnimatedLength; /* forward declaration */


/* starting interface:    nsIDOMSVGLineElement */
const char[] NS_IDOMSVGLINEELEMENT_IID_STR = "4ea07ef3-ed66-4b41-8119-4afc6d0ed5af";

const nsIID NS_IDOMSVGLINEELEMENT_IID= 
  {0x4ea07ef3, 0xed66, 0x4b41, 
    [ 0x81, 0x19, 0x4a, 0xfc, 0x6d, 0x0e, 0xd5, 0xaf ]};

extern(Windows)
interface nsIDOMSVGLineElement : nsIDOMSVGElement {
  static const char[] IID_STR = NS_IDOMSVGLINEELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMSVGLINEELEMENT_IID;

  /* readonly attribute nsIDOMSVGAnimatedLength x1; */
  nsresult GetX1(nsIDOMSVGAnimatedLength  *aX1);

  /* readonly attribute nsIDOMSVGAnimatedLength y1; */
  nsresult GetY1(nsIDOMSVGAnimatedLength  *aY1);

  /* readonly attribute nsIDOMSVGAnimatedLength x2; */
  nsresult GetX2(nsIDOMSVGAnimatedLength  *aX2);

  /* readonly attribute nsIDOMSVGAnimatedLength y2; */
  nsresult GetY2(nsIDOMSVGAnimatedLength  *aY2);

}

