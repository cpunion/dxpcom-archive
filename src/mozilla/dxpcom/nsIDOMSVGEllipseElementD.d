/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGEllipseElement.idl
 */

module mozilla.dxpcom.nsIDOMSVGEllipseElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGEllipseElement;


public import mozilla.dxpcom.nsIDOMSVGEllipseElementD;

public import mozilla.xpcom.nsIDOMSVGElement;
public import mozilla.dxpcom.nsIDOMSVGElementD;

public import mozilla.xpcom.nsIDOMSVGAnimatedLength;

public import mozilla.dxpcom.nsIDOMSVGAnimatedLengthD;


/* starting wrapper class:    nsIDOMSVGEllipseElement */
class nsIDOMSVGEllipseElementD : public nsIDOMSVGElementD {

  static const nsIID IID = NS_IDOMSVGELLIPSEELEMENT_IID;


  alias nsIDOMSVGEllipseElement InnerType;

  this(nsIDOMSVGEllipseElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGEllipseElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGEllipseElement value) {
    inner = value;
  }

  /* readonly attribute nsIDOMSVGAnimatedLength cx; */
  nsIDOMSVGAnimatedLengthD  Cx(){
    nsIDOMSVGAnimatedLength value;
    nsresult __result = inner.GetCx(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedLength cy; */
  nsIDOMSVGAnimatedLengthD  Cy(){
    nsIDOMSVGAnimatedLength value;
    nsresult __result = inner.GetCy(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedLength rx; */
  nsIDOMSVGAnimatedLengthD  Rx(){
    nsIDOMSVGAnimatedLength value;
    nsresult __result = inner.GetRx(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedLength ry; */
  nsIDOMSVGAnimatedLengthD  Ry(){
    nsIDOMSVGAnimatedLength value;
    nsresult __result = inner.GetRy(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthD(value);
  }

private:
  nsIDOMSVGEllipseElement inner;

}

