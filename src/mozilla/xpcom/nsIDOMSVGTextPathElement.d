/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGTextPathElement.idl
 */

module mozilla.xpcom.nsIDOMSVGTextPathElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMSVGTextContentElement;

public import mozilla.xpcom.nsIDOMSVGAnimatedLength; /* forward declaration */

public import mozilla.xpcom.nsIDOMSVGAnimatedEnum;


/* starting interface:    nsIDOMSVGTextPathElement */
const char[] NS_IDOMSVGTEXTPATHELEMENT_IID_STR = "5c29a76c-3489-48fe-b9ea-ea0f5b196dff";

const nsIID NS_IDOMSVGTEXTPATHELEMENT_IID= 
  {0x5c29a76c, 0x3489, 0x48fe, 
    [ 0xb9, 0xea, 0xea, 0x0f, 0x5b, 0x19, 0x6d, 0xff ]};

extern(Windows)
interface nsIDOMSVGTextPathElement : nsIDOMSVGTextContentElement {
  static const char[] IID_STR = NS_IDOMSVGTEXTPATHELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMSVGTEXTPATHELEMENT_IID;

  enum { TEXTPATH_METHODTYPE_UNKNOWN = 0U };

  enum { TEXTPATH_METHODTYPE_ALIGN = 1U };

  enum { TEXTPATH_METHODTYPE_STRETCH = 2U };

  enum { TEXTPATH_SPACINGTYPE_UNKNOWN = 0U };

  enum { TEXTPATH_SPACINGTYPE_AUTO = 1U };

  enum { TEXTPATH_SPACINGTYPE_EXACT = 2U };

  /* readonly attribute nsIDOMSVGAnimatedLength startOffset; */
  nsresult GetStartOffset(nsIDOMSVGAnimatedLength  *aStartOffset);

  /* readonly attribute nsIDOMSVGAnimatedEnumeration method; */
  nsresult GetMethod(nsIDOMSVGAnimatedEnumeration  *aMethod);

  /* readonly attribute nsIDOMSVGAnimatedEnumeration spacing; */
  nsresult GetSpacing(nsIDOMSVGAnimatedEnumeration  *aSpacing);

}

