/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLAnchorElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLAnchorElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLAnchorElement;


public import mozilla.dxpcom.nsIDOMHTMLAnchorElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLAnchorElement */
/**
 * The nsIDOMHTMLAnchorElement interface is the interface to a [X]HTML
 * a element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLAnchorElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLANCHORELEMENT_IID;


  alias nsIDOMHTMLAnchorElement InnerType;

  this(nsIDOMHTMLAnchorElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLAnchorElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLAnchorElement value) {
    inner = value;
  }

  /* attribute DOMString accessKey; */
  wchar[] AccessKey(){
    scope auto value = new AString();
    nsresult __result = inner.GetAccessKey(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void AccessKey(wchar[] aAccessKey){
    scope auto value = new AString(aAccessKey);
    nsresult __result = inner.SetAccessKey(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString charset; */
  wchar[] Charset(){
    scope auto value = new AString();
    nsresult __result = inner.GetCharset(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Charset(wchar[] aCharset){
    scope auto value = new AString(aCharset);
    nsresult __result = inner.SetCharset(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString coords; */
  wchar[] Coords(){
    scope auto value = new AString();
    nsresult __result = inner.GetCoords(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Coords(wchar[] aCoords){
    scope auto value = new AString(aCoords);
    nsresult __result = inner.SetCoords(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString href; */
  wchar[] Href(){
    scope auto value = new AString();
    nsresult __result = inner.GetHref(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Href(wchar[] aHref){
    scope auto value = new AString(aHref);
    nsresult __result = inner.SetHref(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString hreflang; */
  wchar[] Hreflang(){
    scope auto value = new AString();
    nsresult __result = inner.GetHreflang(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Hreflang(wchar[] aHreflang){
    scope auto value = new AString(aHreflang);
    nsresult __result = inner.SetHreflang(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString name; */
  wchar[] Name(){
    scope auto value = new AString();
    nsresult __result = inner.GetName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Name(wchar[] aName){
    scope auto value = new AString(aName);
    nsresult __result = inner.SetName(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString rel; */
  wchar[] Rel(){
    scope auto value = new AString();
    nsresult __result = inner.GetRel(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Rel(wchar[] aRel){
    scope auto value = new AString(aRel);
    nsresult __result = inner.SetRel(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString rev; */
  wchar[] Rev(){
    scope auto value = new AString();
    nsresult __result = inner.GetRev(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Rev(wchar[] aRev){
    scope auto value = new AString(aRev);
    nsresult __result = inner.SetRev(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString shape; */
  wchar[] Shape(){
    scope auto value = new AString();
    nsresult __result = inner.GetShape(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Shape(wchar[] aShape){
    scope auto value = new AString(aShape);
    nsresult __result = inner.SetShape(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute long tabIndex; */
  PRInt32 TabIndex(){
    PRInt32 value;
    nsresult __result = inner.GetTabIndex(&value);
    CheckException(__result);
    return value;
  }
  void TabIndex(PRInt32 aTabIndex){
    nsresult __result = inner.SetTabIndex(aTabIndex);
    CheckException(__result);
  }

  /* attribute DOMString target; */
  wchar[] Target(){
    scope auto value = new AString();
    nsresult __result = inner.GetTarget(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Target(wchar[] aTarget){
    scope auto value = new AString(aTarget);
    nsresult __result = inner.SetTarget(cast(nsAString*)value);
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

  /* void blur (); */
  void Blur(){
    nsresult __result = inner.Blur();
    CheckException(__result);
  }

  /* void focus (); */
  void Focus(){
    nsresult __result = inner.Focus();
    CheckException(__result);
  }

private:
  nsIDOMHTMLAnchorElement inner;

}

