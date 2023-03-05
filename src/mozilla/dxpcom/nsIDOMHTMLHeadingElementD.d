/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLHeadingElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLHeadingElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLHeadingElement;


public import mozilla.dxpcom.nsIDOMHTMLHeadingElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLHeadingElement */
/**
 * The nsIDOMHTMLHeadingElement interface is the interface to a
 * [X]HTML h1, h2, h3, ... element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLHeadingElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLHEADINGELEMENT_IID;


  alias nsIDOMHTMLHeadingElement InnerType;

  this(nsIDOMHTMLHeadingElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLHeadingElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLHeadingElement value) {
    inner = value;
  }

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
  nsIDOMHTMLHeadingElement inner;

}

