/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGClipPathElement.idl
 */

module mozilla.dxpcom.nsIDOMSVGClipPathElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGClipPathElement;


public import mozilla.dxpcom.nsIDOMSVGClipPathElementD;

public import mozilla.xpcom.nsIDOMSVGElement;
public import mozilla.dxpcom.nsIDOMSVGElementD;

public import mozilla.xpcom.nsIDOMSVGAnimatedEnum;

import mozilla.dxpcom.nsIDOMSVGAnimatedEnumD;


/* starting wrapper class:    nsIDOMSVGClipPathElement */
class nsIDOMSVGClipPathElementD : public nsIDOMSVGElementD {

  static const nsIID IID = NS_IDOMSVGCLIPPATHELEMENT_IID;


  alias nsIDOMSVGClipPathElement InnerType;

  this(nsIDOMSVGClipPathElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGClipPathElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGClipPathElement value) {
    inner = value;
  }

  enum { SVG_CPUNITS_UNKNOWN = 0U }

  enum { SVG_CPUNITS_OBJECTBOUNDINGBOX = 1U }

  enum { SVG_CPUNITS_USERSPACEONUSE = 2U }

  /* readonly attribute nsIDOMSVGAnimatedEnumeration clipPathUnits; */
  nsIDOMSVGAnimatedEnumerationD  ClipPathUnits(){
    nsIDOMSVGAnimatedEnumeration value;
    nsresult __result = inner.GetClipPathUnits(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedEnumerationD(value);
  }

private:
  nsIDOMSVGClipPathElement inner;

}

