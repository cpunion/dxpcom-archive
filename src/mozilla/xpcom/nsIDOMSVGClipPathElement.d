/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGClipPathElement.idl
 */

module mozilla.xpcom.nsIDOMSVGClipPathElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMSVGElement;

public import mozilla.xpcom.nsIDOMSVGAnimatedEnum;


/* starting interface:    nsIDOMSVGClipPathElement */
const char[] NS_IDOMSVGCLIPPATHELEMENT_IID_STR = "0c3f45a4-e6d0-44e7-a2f8-d128ecf1db9b";

const nsIID NS_IDOMSVGCLIPPATHELEMENT_IID= 
  {0x0c3f45a4, 0xe6d0, 0x44e7, 
    [ 0xa2, 0xf8, 0xd1, 0x28, 0xec, 0xf1, 0xdb, 0x9b ]};

extern(Windows)
interface nsIDOMSVGClipPathElement : nsIDOMSVGElement {
  static const char[] IID_STR = NS_IDOMSVGCLIPPATHELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMSVGCLIPPATHELEMENT_IID;

  enum { SVG_CPUNITS_UNKNOWN = 0U };

  enum { SVG_CPUNITS_OBJECTBOUNDINGBOX = 1U };

  enum { SVG_CPUNITS_USERSPACEONUSE = 2U };

  /* readonly attribute nsIDOMSVGAnimatedEnumeration clipPathUnits; */
  nsresult GetClipPathUnits(nsIDOMSVGAnimatedEnumeration  *aClipPathUnits);

}

