/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLBRElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLBRElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLBRElement;


public import mozilla.dxpcom.nsIDOMHTMLBRElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLBRElement */
/**
 * The nsIDOMHTMLBRElement interface is the interface to a [X]HTML br
 * element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLBRElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLBRELEMENT_IID;


  alias nsIDOMHTMLBRElement InnerType;

  this(nsIDOMHTMLBRElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLBRElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLBRElement value) {
    inner = value;
  }

  /* attribute DOMString clear; */
  wchar[] Clear(){
    scope auto value = new AString();
    nsresult __result = inner.GetClear(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Clear(wchar[] aClear){
    scope auto value = new AString(aClear);
    nsresult __result = inner.SetClear(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIDOMHTMLBRElement inner;

}

