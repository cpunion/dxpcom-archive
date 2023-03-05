/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLFontElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLFontElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLFontElement;


public import mozilla.dxpcom.nsIDOMHTMLFontElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLFontElement */
/**
 * The nsIDOMHTMLFontElement interface is the interface to a [X]HTML
 * font element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLFontElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLFONTELEMENT_IID;


  alias nsIDOMHTMLFontElement InnerType;

  this(nsIDOMHTMLFontElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLFontElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLFontElement value) {
    inner = value;
  }

  /* attribute DOMString color; */
  wchar[] Color(){
    scope auto value = new AString();
    nsresult __result = inner.GetColor(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Color(wchar[] aColor){
    scope auto value = new AString(aColor);
    nsresult __result = inner.SetColor(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString face; */
  wchar[] Face(){
    scope auto value = new AString();
    nsresult __result = inner.GetFace(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Face(wchar[] aFace){
    scope auto value = new AString(aFace);
    nsresult __result = inner.SetFace(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString size; */
  wchar[] Size(){
    scope auto value = new AString();
    nsresult __result = inner.GetSize(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Size(wchar[] aSize){
    scope auto value = new AString(aSize);
    nsresult __result = inner.SetSize(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIDOMHTMLFontElement inner;

}

