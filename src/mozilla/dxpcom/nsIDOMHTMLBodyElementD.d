/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLBodyElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLBodyElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLBodyElement;


public import mozilla.dxpcom.nsIDOMHTMLBodyElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLBodyElement */
/**
 * The nsIDOMHTMLBodyElement interface is the interface to a [X]HTML
 * body element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLBodyElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLBODYELEMENT_IID;


  alias nsIDOMHTMLBodyElement InnerType;

  this(nsIDOMHTMLBodyElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLBodyElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLBodyElement value) {
    inner = value;
  }

  /* attribute DOMString aLink; */
  wchar[] ALink(){
    scope auto value = new AString();
    nsresult __result = inner.GetALink(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void ALink(wchar[] aALink){
    scope auto value = new AString(aALink);
    nsresult __result = inner.SetALink(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString background; */
  wchar[] Background(){
    scope auto value = new AString();
    nsresult __result = inner.GetBackground(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Background(wchar[] aBackground){
    scope auto value = new AString(aBackground);
    nsresult __result = inner.SetBackground(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString bgColor; */
  wchar[] BgColor(){
    scope auto value = new AString();
    nsresult __result = inner.GetBgColor(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void BgColor(wchar[] aBgColor){
    scope auto value = new AString(aBgColor);
    nsresult __result = inner.SetBgColor(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString link; */
  wchar[] Link(){
    scope auto value = new AString();
    nsresult __result = inner.GetLink(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Link(wchar[] aLink){
    scope auto value = new AString(aLink);
    nsresult __result = inner.SetLink(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString text; */
  wchar[] Text(){
    scope auto value = new AString();
    nsresult __result = inner.GetText(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Text(wchar[] aText){
    scope auto value = new AString(aText);
    nsresult __result = inner.SetText(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString vLink; */
  wchar[] VLink(){
    scope auto value = new AString();
    nsresult __result = inner.GetVLink(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void VLink(wchar[] aVLink){
    scope auto value = new AString(aVLink);
    nsresult __result = inner.SetVLink(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIDOMHTMLBodyElement inner;

}

