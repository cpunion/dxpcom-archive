/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGStopElement.idl
 */

module mozilla.xpcom.nsIDOMSVGStopElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMSVGElement;

public import mozilla.xpcom.nsIDOMSVGAnimatedNumber; /* forward declaration */


/* starting interface:    nsIDOMSVGStopElement */
const char[] NS_IDOMSVGSTOPELEMENT_IID_STR = "93169940-7663-4eab-af23-94a8a08c2654";

const nsIID NS_IDOMSVGSTOPELEMENT_IID= 
  {0x93169940, 0x7663, 0x4eab, 
    [ 0xaf, 0x23, 0x94, 0xa8, 0xa0, 0x8c, 0x26, 0x54 ]};

extern(Windows)
interface nsIDOMSVGStopElement : nsIDOMSVGElement {
  static const char[] IID_STR = NS_IDOMSVGSTOPELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMSVGSTOPELEMENT_IID;

  /* readonly attribute nsIDOMSVGAnimatedNumber offset; */
  nsresult GetOffset(nsIDOMSVGAnimatedNumber  *aOffset);

}

