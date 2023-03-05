/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLTableCaptionElem.idl
 */

module mozilla.dxpcom.nsIDOMHTMLTableCaptionElemD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLTableCaptionElem;


public import mozilla.dxpcom.nsIDOMHTMLTableCaptionElemD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLTableCaptionElement */
class nsIDOMHTMLTableCaptionElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLTABLECAPTIONELEMENT_IID;


  alias nsIDOMHTMLTableCaptionElement InnerType;

  this(nsIDOMHTMLTableCaptionElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLTableCaptionElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLTableCaptionElement value) {
    inner = value;
  }

  /**
 * The nsIDOMHTMLTableCaptionElement interface is the interface to a
 * [X]HTML caption element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
  /* attribute DOMString align; */
  wchar[] Align(){
    scope auto value = new AString();
    nsresult __result = inner.GetAlign(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Align(wchar[] aAlign){
    scope auto value = new AString(aAlign);
    nsresult __result = inner.SetAlign(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIDOMHTMLTableCaptionElement inner;

}

