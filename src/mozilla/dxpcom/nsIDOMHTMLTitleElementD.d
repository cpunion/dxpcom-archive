/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLTitleElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLTitleElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLTitleElement;


public import mozilla.dxpcom.nsIDOMHTMLTitleElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLTitleElement */
/**
 * The nsIDOMHTMLTitleElement interface is the interface to a [X]HTML
 * title element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLTitleElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLTITLEELEMENT_IID;


  alias nsIDOMHTMLTitleElement InnerType;

  this(nsIDOMHTMLTitleElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLTitleElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLTitleElement value) {
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

private:
  nsIDOMHTMLTitleElement inner;

}

