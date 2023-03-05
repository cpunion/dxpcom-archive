/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLHRElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLHRElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLHRElement;


public import mozilla.dxpcom.nsIDOMHTMLHRElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLHRElement */
/**
 * The nsIDOMHTMLHRElement interface is the interface to a [X]HTML hr
 * element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLHRElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLHRELEMENT_IID;


  alias nsIDOMHTMLHRElement InnerType;

  this(nsIDOMHTMLHRElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLHRElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLHRElement value) {
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

  /* attribute boolean noShade; */
  PRBool NoShade(){
    PRBool value;
    nsresult __result = inner.GetNoShade(&value);
    CheckException(__result);
    return value;
  }
  void NoShade(PRBool aNoShade){
    nsresult __result = inner.SetNoShade(aNoShade);
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

  /* attribute DOMString width; */
  wchar[] Width(){
    scope auto value = new AString();
    nsresult __result = inner.GetWidth(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Width(wchar[] aWidth){
    scope auto value = new AString(aWidth);
    nsresult __result = inner.SetWidth(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIDOMHTMLHRElement inner;

}

