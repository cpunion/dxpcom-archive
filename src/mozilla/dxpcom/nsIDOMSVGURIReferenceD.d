/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGURIReference.idl
 */

module mozilla.dxpcom.nsIDOMSVGURIReferenceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGURIReference;


public import mozilla.dxpcom.nsIDOMSVGURIReferenceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMSVGAnimatedString;

public import mozilla.dxpcom.nsIDOMSVGAnimatedStringD;


/* starting wrapper class:    nsIDOMSVGURIReference */
class nsIDOMSVGURIReferenceD : public nsISupportsD {

  static const nsIID IID = NS_IDOMSVGURIREFERENCE_IID;


  alias nsIDOMSVGURIReference InnerType;

  this(nsIDOMSVGURIReference intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGURIReference opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGURIReference value) {
    inner = value;
  }

  /* readonly attribute nsIDOMSVGAnimatedString href; */
  nsIDOMSVGAnimatedStringD  Href(){
    nsIDOMSVGAnimatedString value;
    nsresult __result = inner.GetHref(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedStringD(value);
  }

private:
  nsIDOMSVGURIReference inner;

}

