/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGElement.idl
 */

module mozilla.xpcom.nsIDOMSVGElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.xpcom.nsIDOMSVGSVGElement; /* forward declaration */


/* starting interface:    nsIDOMSVGElement */
const char[] NS_IDOMSVGELEMENT_IID_STR = "e0be7cbb-81c1-4663-8f95-109d96a60b6b";

const nsIID NS_IDOMSVGELEMENT_IID= 
  {0xe0be7cbb, 0x81c1, 0x4663, 
    [ 0x8f, 0x95, 0x10, 0x9d, 0x96, 0xa6, 0x0b, 0x6b ]};

extern(Windows)
interface nsIDOMSVGElement : nsIDOMElement {
  static const char[] IID_STR = NS_IDOMSVGELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMSVGELEMENT_IID;

  /* attribute DOMString id; */
  nsresult GetId(nsAString * aId);
  nsresult SetId(nsAString * aId);

  /* readonly attribute nsIDOMSVGSVGElement ownerSVGElement; */
  nsresult GetOwnerSVGElement(nsIDOMSVGSVGElement  *aOwnerSVGElement);

  /* readonly attribute nsIDOMSVGElement viewportElement; */
  nsresult GetViewportElement(nsIDOMSVGElement  *aViewportElement);

}

