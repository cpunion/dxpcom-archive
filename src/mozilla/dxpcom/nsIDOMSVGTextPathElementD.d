/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGTextPathElement.idl
 */

module mozilla.dxpcom.nsIDOMSVGTextPathElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGTextPathElement;


public import mozilla.dxpcom.nsIDOMSVGTextPathElementD;

public import mozilla.xpcom.nsIDOMSVGTextContentElement;
public import mozilla.dxpcom.nsIDOMSVGTextContentElementD;

public import mozilla.xpcom.nsIDOMSVGAnimatedLength;

public import mozilla.dxpcom.nsIDOMSVGAnimatedLengthD;

public import mozilla.xpcom.nsIDOMSVGAnimatedEnum;

import mozilla.dxpcom.nsIDOMSVGAnimatedEnumD;


/* starting wrapper class:    nsIDOMSVGTextPathElement */
class nsIDOMSVGTextPathElementD : public nsIDOMSVGTextContentElementD {

  static const nsIID IID = NS_IDOMSVGTEXTPATHELEMENT_IID;


  alias nsIDOMSVGTextPathElement InnerType;

  this(nsIDOMSVGTextPathElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGTextPathElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGTextPathElement value) {
    inner = value;
  }

  enum { TEXTPATH_METHODTYPE_UNKNOWN = 0U }

  enum { TEXTPATH_METHODTYPE_ALIGN = 1U }

  enum { TEXTPATH_METHODTYPE_STRETCH = 2U }

  enum { TEXTPATH_SPACINGTYPE_UNKNOWN = 0U }

  enum { TEXTPATH_SPACINGTYPE_AUTO = 1U }

  enum { TEXTPATH_SPACINGTYPE_EXACT = 2U }

  /* readonly attribute nsIDOMSVGAnimatedLength startOffset; */
  nsIDOMSVGAnimatedLengthD  StartOffset(){
    nsIDOMSVGAnimatedLength value;
    nsresult __result = inner.GetStartOffset(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedEnumeration method; */
  nsIDOMSVGAnimatedEnumerationD  Method(){
    nsIDOMSVGAnimatedEnumeration value;
    nsresult __result = inner.GetMethod(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedEnumerationD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedEnumeration spacing; */
  nsIDOMSVGAnimatedEnumerationD  Spacing(){
    nsIDOMSVGAnimatedEnumeration value;
    nsresult __result = inner.GetSpacing(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedEnumerationD(value);
  }

private:
  nsIDOMSVGTextPathElement inner;

}

