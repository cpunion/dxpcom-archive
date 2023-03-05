/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGMetadataElement.idl
 */

module mozilla.dxpcom.nsIDOMSVGMetadataElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGMetadataElement;


public import mozilla.dxpcom.nsIDOMSVGMetadataElementD;

public import mozilla.xpcom.nsIDOMSVGElement;
public import mozilla.dxpcom.nsIDOMSVGElementD;


/* starting wrapper class:    nsIDOMSVGMetadataElement */
class nsIDOMSVGMetadataElementD : public nsIDOMSVGElementD {

  static const nsIID IID = NS_IDOMSVGMETADATAELEMENT_IID;


  alias nsIDOMSVGMetadataElement InnerType;

  this(nsIDOMSVGMetadataElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGMetadataElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGMetadataElement value) {
    inner = value;
  }

private:
  nsIDOMSVGMetadataElement inner;

}

