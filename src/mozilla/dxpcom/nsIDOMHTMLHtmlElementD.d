/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLHtmlElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLHtmlElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLHtmlElement;


public import mozilla.dxpcom.nsIDOMHTMLHtmlElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLHtmlElement */
/**
 * The nsIDOMHTMLHtmlElement interface is the interface to a [X]HTML
 * html element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLHtmlElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLHTMLELEMENT_IID;


  alias nsIDOMHTMLHtmlElement InnerType;

  this(nsIDOMHTMLHtmlElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLHtmlElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLHtmlElement value) {
    inner = value;
  }

  /* attribute DOMString version; */
  wchar[] Version(){
    scope auto value = new AString();
    nsresult __result = inner.GetVersion(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Version(wchar[] aVersion){
    scope auto value = new AString(aVersion);
    nsresult __result = inner.SetVersion(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIDOMHTMLHtmlElement inner;

}

