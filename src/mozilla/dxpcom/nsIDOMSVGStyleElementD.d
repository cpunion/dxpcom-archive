/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGStyleElement.idl
 */

module mozilla.dxpcom.nsIDOMSVGStyleElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGStyleElement;


public import mozilla.dxpcom.nsIDOMSVGStyleElementD;

public import mozilla.xpcom.nsIDOMSVGElement;
public import mozilla.dxpcom.nsIDOMSVGElementD;


/* starting wrapper class:    nsIDOMSVGStyleElement */
class nsIDOMSVGStyleElementD : public nsIDOMSVGElementD {

  static const nsIID IID = NS_IDOMSVGSTYLEELEMENT_IID;


  alias nsIDOMSVGStyleElement InnerType;

  this(nsIDOMSVGStyleElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGStyleElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGStyleElement value) {
    inner = value;
  }

  /* attribute DOMString xmlspace; */
  wchar[] Xmlspace(){
    scope auto value = new AString();
    nsresult __result = inner.GetXmlspace(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Xmlspace(wchar[] aXmlspace){
    scope auto value = new AString(aXmlspace);
    nsresult __result = inner.SetXmlspace(cast(nsAString*)value);
    CheckException(__result);
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

  /* attribute DOMString media; */
  wchar[] Media(){
    scope auto value = new AString();
    nsresult __result = inner.GetMedia(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Media(wchar[] aMedia){
    scope auto value = new AString(aMedia);
    nsresult __result = inner.SetMedia(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString title; */
  wchar[] Title(){
    scope auto value = new AString();
    nsresult __result = inner.GetTitle(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Title(wchar[] aTitle){
    scope auto value = new AString(aTitle);
    nsresult __result = inner.SetTitle(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIDOMSVGStyleElement inner;

}

