/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGCircleElement.idl
 */

module mozilla.xpcom.nsIDOMSVGCircleElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMSVGElement;

public import mozilla.xpcom.nsIDOMSVGAnimatedLength; /* forward declaration */


/* starting interface:    nsIDOMSVGCircleElement */
const char[] NS_IDOMSVGCIRCLEELEMENT_IID_STR = "0f89f2a4-b168-4602-90f5-1874418c0a6a";

const nsIID NS_IDOMSVGCIRCLEELEMENT_IID= 
  {0x0f89f2a4, 0xb168, 0x4602, 
    [ 0x90, 0xf5, 0x18, 0x74, 0x41, 0x8c, 0x0a, 0x6a ]};

extern(Windows)
interface nsIDOMSVGCircleElement : nsIDOMSVGElement {
  static const char[] IID_STR = NS_IDOMSVGCIRCLEELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMSVGCIRCLEELEMENT_IID;

  /* readonly attribute nsIDOMSVGAnimatedLength cx; */
  nsresult GetCx(nsIDOMSVGAnimatedLength  *aCx);

  /* readonly attribute nsIDOMSVGAnimatedLength cy; */
  nsresult GetCy(nsIDOMSVGAnimatedLength  *aCy);

  /* readonly attribute nsIDOMSVGAnimatedLength r; */
  nsresult GetR(nsIDOMSVGAnimatedLength  *aR);

}

