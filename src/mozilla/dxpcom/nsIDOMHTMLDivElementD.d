/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLDivElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLDivElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLDivElement;


public import mozilla.dxpcom.nsIDOMHTMLDivElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLDivElement */
/**
 * The nsIDOMHTMLDivElement interface is the interface to a [X]HTML
 * div element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLDivElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLDIVELEMENT_IID;


  alias nsIDOMHTMLDivElement InnerType;

  this(nsIDOMHTMLDivElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLDivElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLDivElement value) {
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
  nsIDOMHTMLDivElement inner;

}

