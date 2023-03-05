/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMNSHTMLOptionElement.idl
 */

module mozilla.dxpcom.nsIDOMNSHTMLOptionElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMNSHTMLOptionElement;


public import mozilla.dxpcom.nsIDOMNSHTMLOptionElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMNSHTMLOptionElement */
class nsIDOMNSHTMLOptionElementD : public nsISupportsD {

  static const nsIID IID = NS_IDOMNSHTMLOPTIONELEMENT_IID;


  alias nsIDOMNSHTMLOptionElement InnerType;

  this(nsIDOMNSHTMLOptionElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMNSHTMLOptionElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMNSHTMLOptionElement value) {
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
  nsIDOMNSHTMLOptionElement inner;

}

