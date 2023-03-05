/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGEllipseElement.idl
 */

module mozilla.xpcom.nsIDOMSVGEllipseElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMSVGElement;

public import mozilla.xpcom.nsIDOMSVGAnimatedLength; /* forward declaration */


/* starting interface:    nsIDOMSVGEllipseElement */
const char[] NS_IDOMSVGELLIPSEELEMENT_IID_STR = "5d1cd1e6-4a14-4056-acc0-2f78c1672898";

const nsIID NS_IDOMSVGELLIPSEELEMENT_IID= 
  {0x5d1cd1e6, 0x4a14, 0x4056, 
    [ 0xac, 0xc0, 0x2f, 0x78, 0xc1, 0x67, 0x28, 0x98 ]};

extern(Windows)
interface nsIDOMSVGEllipseElement : nsIDOMSVGElement {
  static const char[] IID_STR = NS_IDOMSVGELLIPSEELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMSVGELLIPSEELEMENT_IID;

  /* readonly attribute nsIDOMSVGAnimatedLength cx; */
  nsresult GetCx(nsIDOMSVGAnimatedLength  *aCx);

  /* readonly attribute nsIDOMSVGAnimatedLength cy; */
  nsresult GetCy(nsIDOMSVGAnimatedLength  *aCy);

  /* readonly attribute nsIDOMSVGAnimatedLength rx; */
  nsresult GetRx(nsIDOMSVGAnimatedLength  *aRx);

  /* readonly attribute nsIDOMSVGAnimatedLength ry; */
  nsresult GetRy(nsIDOMSVGAnimatedLength  *aRy);

}

