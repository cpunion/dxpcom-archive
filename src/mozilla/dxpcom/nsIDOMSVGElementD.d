/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGElement.idl
 */

module mozilla.dxpcom.nsIDOMSVGElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGElement;


public import mozilla.dxpcom.nsIDOMSVGElementD;

public import mozilla.xpcom.nsIDOMElement;
public import mozilla.dxpcom.nsIDOMElementD;

public import mozilla.xpcom.nsIDOMSVGSVGElement;

public import mozilla.dxpcom.nsIDOMSVGSVGElementD;


/* starting wrapper class:    nsIDOMSVGElement */
class nsIDOMSVGElementD : public nsIDOMElementD {

  static const nsIID IID = NS_IDOMSVGELEMENT_IID;


  alias nsIDOMSVGElement InnerType;

  this(nsIDOMSVGElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGElement value) {
    inner = value;
  }

  /* attribute DOMString id; */
  wchar[] Id(){
    scope auto value = new AString();
    nsresult __result = inner.GetId(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Id(wchar[] aId){
    scope auto value = new AString(aId);
    nsresult __result = inner.SetId(cast(nsAString*)value);
    CheckException(__result);
  }

  /* readonly attribute nsIDOMSVGSVGElement ownerSVGElement; */
  nsIDOMSVGSVGElementD  OwnerSVGElement(){
    nsIDOMSVGSVGElement value;
    nsresult __result = inner.GetOwnerSVGElement(&value);
    CheckException(__result);
    return new nsIDOMSVGSVGElementD(value);
  }

  /* readonly attribute nsIDOMSVGElement viewportElement; */
  nsIDOMSVGElementD  ViewportElement(){
    nsIDOMSVGElement value;
    nsresult __result = inner.GetViewportElement(&value);
    CheckException(__result);
    return new nsIDOMSVGElementD(value);
  }

private:
  nsIDOMSVGElement inner;

}

