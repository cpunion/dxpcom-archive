/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLQuoteElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLQuoteElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLQuoteElement;


public import mozilla.dxpcom.nsIDOMHTMLQuoteElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLQuoteElement */
/**
 * The nsIDOMHTMLQuoteElement interface is the interface to a [X]HTML
 * q element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLQuoteElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLQUOTEELEMENT_IID;


  alias nsIDOMHTMLQuoteElement InnerType;

  this(nsIDOMHTMLQuoteElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLQuoteElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLQuoteElement value) {
    inner = value;
  }

  /* attribute DOMString cite; */
  wchar[] Cite(){
    scope auto value = new AString();
    nsresult __result = inner.GetCite(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Cite(wchar[] aCite){
    scope auto value = new AString(aCite);
    nsresult __result = inner.SetCite(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIDOMHTMLQuoteElement inner;

}

