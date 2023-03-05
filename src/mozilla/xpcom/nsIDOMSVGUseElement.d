/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGUseElement.idl
 */

module mozilla.xpcom.nsIDOMSVGUseElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMSVGElement;

public import mozilla.xpcom.nsIDOMSVGAnimatedLength; /* forward declaration */


/* starting interface:    nsIDOMSVGUseElement */
const char[] NS_IDOMSVGUSEELEMENT_IID_STR = "d49a3ac7-e779-46c8-ae92-214420aa1b71";

const nsIID NS_IDOMSVGUSEELEMENT_IID= 
  {0xd49a3ac7, 0xe779, 0x46c8, 
    [ 0xae, 0x92, 0x21, 0x44, 0x20, 0xaa, 0x1b, 0x71 ]};

extern(Windows)
interface nsIDOMSVGUseElement : nsIDOMSVGElement {
  static const char[] IID_STR = NS_IDOMSVGUSEELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMSVGUSEELEMENT_IID;

  /* readonly attribute nsIDOMSVGAnimatedLength x; */
  nsresult GetX(nsIDOMSVGAnimatedLength  *aX);

  /* readonly attribute nsIDOMSVGAnimatedLength y; */
  nsresult GetY(nsIDOMSVGAnimatedLength  *aY);

  /* readonly attribute nsIDOMSVGAnimatedLength width; */
  nsresult GetWidth(nsIDOMSVGAnimatedLength  *aWidth);

  /* readonly attribute nsIDOMSVGAnimatedLength height; */
  nsresult GetHeight(nsIDOMSVGAnimatedLength  *aHeight);

}

