/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGTextPositionElem.idl
 */

module mozilla.xpcom.nsIDOMSVGTextPositionElem;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMSVGTextContentElement;

public import mozilla.xpcom.nsIDOMSVGAnimatedLengthList; /* forward declaration */

public import mozilla.xpcom.nsIDOMSVGAnimatedNumberList; /* forward declaration */


/* starting interface:    nsIDOMSVGTextPositioningElement */
const char[] NS_IDOMSVGTEXTPOSITIONINGELEMENT_IID_STR = "5d052835-8cb0-442c-9754-a8e616db1f89";

const nsIID NS_IDOMSVGTEXTPOSITIONINGELEMENT_IID= 
  {0x5d052835, 0x8cb0, 0x442c, 
    [ 0x97, 0x54, 0xa8, 0xe6, 0x16, 0xdb, 0x1f, 0x89 ]};

extern(Windows)
interface nsIDOMSVGTextPositioningElement : nsIDOMSVGTextContentElement {
  static const char[] IID_STR = NS_IDOMSVGTEXTPOSITIONINGELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMSVGTEXTPOSITIONINGELEMENT_IID;

  /* readonly attribute nsIDOMSVGAnimatedLengthList x; */
  nsresult GetX(nsIDOMSVGAnimatedLengthList  *aX);

  /* readonly attribute nsIDOMSVGAnimatedLengthList y; */
  nsresult GetY(nsIDOMSVGAnimatedLengthList  *aY);

  /* readonly attribute nsIDOMSVGAnimatedLengthList dx; */
  nsresult GetDx(nsIDOMSVGAnimatedLengthList  *aDx);

  /* readonly attribute nsIDOMSVGAnimatedLengthList dy; */
  nsresult GetDy(nsIDOMSVGAnimatedLengthList  *aDy);

  /* readonly attribute nsIDOMSVGAnimatedNumberList rotate; */
  nsresult GetRotate(nsIDOMSVGAnimatedNumberList  *aRotate);

}

