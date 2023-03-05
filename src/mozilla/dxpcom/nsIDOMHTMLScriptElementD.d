/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLScriptElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLScriptElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLScriptElement;


public import mozilla.dxpcom.nsIDOMHTMLScriptElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLScriptElement */
/**
 * The nsIDOMHTMLScriptElement interface is the interface to a [X]HTML
 * script element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLScriptElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLSCRIPTELEMENT_IID;


  alias nsIDOMHTMLScriptElement InnerType;

  this(nsIDOMHTMLScriptElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLScriptElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLScriptElement value) {
    inner = value;
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

  /* attribute DOMString htmlFor; */
  wchar[] HtmlFor(){
    scope auto value = new AString();
    nsresult __result = inner.GetHtmlFor(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void HtmlFor(wchar[] aHtmlFor){
    scope auto value = new AString(aHtmlFor);
    nsresult __result = inner.SetHtmlFor(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString event; */
  wchar[] Event(){
    scope auto value = new AString();
    nsresult __result = inner.GetEvent(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Event(wchar[] aEvent){
    scope auto value = new AString(aEvent);
    nsresult __result = inner.SetEvent(cast(nsAString*)value);
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

  /* attribute boolean defer; */
  PRBool Defer(){
    PRBool value;
    nsresult __result = inner.GetDefer(&value);
    CheckException(__result);
    return value;
  }
  void Defer(PRBool aDefer){
    nsresult __result = inner.SetDefer(aDefer);
    CheckException(__result);
  }

  /* attribute DOMString src; */
  wchar[] Src(){
    scope auto value = new AString();
    nsresult __result = inner.GetSrc(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Src(wchar[] aSrc){
    scope auto value = new AString(aSrc);
    nsresult __result = inner.SetSrc(cast(nsAString*)value);
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
  nsIDOMHTMLScriptElement inner;

}

