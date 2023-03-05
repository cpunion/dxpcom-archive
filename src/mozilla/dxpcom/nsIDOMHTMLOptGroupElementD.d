/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLOptGroupElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLOptGroupElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLOptGroupElement;


public import mozilla.dxpcom.nsIDOMHTMLOptGroupElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLOptGroupElement */
/**
 * The nsIDOMHTMLOptGroupElement interface is the interface to a
 * [X]HTML optgroup element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLOptGroupElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLOPTGROUPELEMENT_IID;


  alias nsIDOMHTMLOptGroupElement InnerType;

  this(nsIDOMHTMLOptGroupElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLOptGroupElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLOptGroupElement value) {
    inner = value;
  }

  /* attribute boolean disabled; */
  PRBool Disabled(){
    PRBool value;
    nsresult __result = inner.GetDisabled(&value);
    CheckException(__result);
    return value;
  }
  void Disabled(PRBool aDisabled){
    nsresult __result = inner.SetDisabled(aDisabled);
    CheckException(__result);
  }

  /* attribute DOMString label; */
  wchar[] Label(){
    scope auto value = new AString();
    nsresult __result = inner.GetLabel(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Label(wchar[] aLabel){
    scope auto value = new AString(aLabel);
    nsresult __result = inner.SetLabel(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIDOMHTMLOptGroupElement inner;

}

