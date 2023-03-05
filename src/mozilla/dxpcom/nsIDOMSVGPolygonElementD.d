/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGPolygonElement.idl
 */

module mozilla.dxpcom.nsIDOMSVGPolygonElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGPolygonElement;


public import mozilla.dxpcom.nsIDOMSVGPolygonElementD;

public import mozilla.xpcom.nsIDOMSVGElement;
public import mozilla.dxpcom.nsIDOMSVGElementD;


/* starting wrapper class:    nsIDOMSVGPolygonElement */
class nsIDOMSVGPolygonElementD : public nsIDOMSVGElementD {

  static const nsIID IID = NS_IDOMSVGPOLYGONELEMENT_IID;


  alias nsIDOMSVGPolygonElement InnerType;

  this(nsIDOMSVGPolygonElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGPolygonElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGPolygonElement value) {
    inner = value;
  }

private:
  nsIDOMSVGPolygonElement inner;

}

