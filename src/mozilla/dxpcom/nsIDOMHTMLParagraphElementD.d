/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLParagraphElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLParagraphElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLParagraphElement;


public import mozilla.dxpcom.nsIDOMHTMLParagraphElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLParagraphElement */
/**
 * The nsIDOMHTMLParagraphElement interface is the interface to a
 * [X]HTML p element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLParagraphElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLPARAGRAPHELEMENT_IID;


  alias nsIDOMHTMLParagraphElement InnerType;

  this(nsIDOMHTMLParagraphElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLParagraphElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLParagraphElement value) {
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
  nsIDOMHTMLParagraphElement inner;

}

