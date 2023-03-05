/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLLinkElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLLinkElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLLinkElement;


public import mozilla.dxpcom.nsIDOMHTMLLinkElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLLinkElement */
/**
 * The nsIDOMHTMLLinkElement interface is the interface to a [X]HTML
 * link element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLLinkElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLLINKELEMENT_IID;


  alias nsIDOMHTMLLinkElement InnerType;

  this(nsIDOMHTMLLinkElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLLinkElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLLinkElement value) {
    inner = value;
  }

  /* attribute boolean disabled; */
  PRBool Disabled(){
    PRBool value;
    nsresult __result = inner.GetDisabled(&value);
    CheckException(__result);
    return value;
  }
  void Disabled(PRBool aDisabled){
    nsresult __result = inner.SetDisabled(aDisabled);
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

private:
  nsIDOMHTMLLinkElement inner;

}

