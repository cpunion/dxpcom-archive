/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGScriptElement.idl
 */

module mozilla.dxpcom.nsIDOMSVGScriptElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGScriptElement;


public import mozilla.dxpcom.nsIDOMSVGScriptElementD;

public import mozilla.xpcom.nsIDOMSVGElement;
public import mozilla.dxpcom.nsIDOMSVGElementD;


/* starting wrapper class:    nsIDOMSVGScriptElement */
class nsIDOMSVGScriptElementD : public nsIDOMSVGElementD {

  static const nsIID IID = NS_IDOMSVGSCRIPTELEMENT_IID;


  alias nsIDOMSVGScriptElement InnerType;

  this(nsIDOMSVGScriptElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGScriptElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGScriptElement value) {
    inner = value;
  }

  /* attribute DOMString type; */
  wchar[] Type(){
    scope auto value = new AString();
    nsresult __result = inner.GetType(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Type(wchar[] aType){
    scope auto value = new AString(aType);
    nsresult __result = inner.SetType(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIDOMSVGScriptElement inner;

}

