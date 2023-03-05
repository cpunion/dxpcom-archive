/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLMetaElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLMetaElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLMetaElement;


public import mozilla.dxpcom.nsIDOMHTMLMetaElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLMetaElement */
/**
 * The nsIDOMHTMLMetaElement interface is the interface to a [X]HTML
 * meta element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLMetaElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLMETAELEMENT_IID;


  alias nsIDOMHTMLMetaElement InnerType;

  this(nsIDOMHTMLMetaElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLMetaElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLMetaElement value) {
    inner = value;
  }

  /* attribute DOMString content; */
  wchar[] Content(){
    scope auto value = new AString();
    nsresult __result = inner.GetContent(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Content(wchar[] aContent){
    scope auto value = new AString(aContent);
    nsresult __result = inner.SetContent(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString httpEquiv; */
  wchar[] HttpEquiv(){
    scope auto value = new AString();
    nsresult __result = inner.GetHttpEquiv(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void HttpEquiv(wchar[] aHttpEquiv){
    scope auto value = new AString(aHttpEquiv);
    nsresult __result = inner.SetHttpEquiv(cast(nsAString*)value);
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

  /* attribute DOMString scheme; */
  wchar[] Scheme(){
    scope auto value = new AString();
    nsresult __result = inner.GetScheme(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Scheme(wchar[] aScheme){
    scope auto value = new AString(aScheme);
    nsresult __result = inner.SetScheme(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIDOMHTMLMetaElement inner;

}

