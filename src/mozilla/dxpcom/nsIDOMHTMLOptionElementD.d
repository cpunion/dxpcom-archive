/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLOptionElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLOptionElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLOptionElement;


public import mozilla.dxpcom.nsIDOMHTMLOptionElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLOptionElement */
/**
 * The nsIDOMHTMLOptionElement interface is the interface to a [X]HTML
 * option element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLOptionElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLOPTIONELEMENT_IID;


  alias nsIDOMHTMLOptionElement InnerType;

  this(nsIDOMHTMLOptionElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLOptionElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLOptionElement value) {
    inner = value;
  }

  /* readonly attribute nsIDOMHTMLFormElement form; */
  nsIDOMHTMLFormElementD  Form(){
    nsIDOMHTMLFormElement value;
    nsresult __result = inner.GetForm(&value);
    CheckException(__result);
    return new nsIDOMHTMLFormElementD(value);
  }

  /* attribute boolean defaultSelected; */
  PRBool DefaultSelected(){
    PRBool value;
    nsresult __result = inner.GetDefaultSelected(&value);
    CheckException(__result);
    return value;
  }
  void DefaultSelected(PRBool aDefaultSelected){
    nsresult __result = inner.SetDefaultSelected(aDefaultSelected);
    CheckException(__result);
  }

  /* readonly attribute DOMString text; */
  wchar[] Text(){
    scope auto value = new AString();
    nsresult __result = inner.GetText(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute long index; */
  PRInt32 Index(){
    PRInt32 value;
    nsresult __result = inner.GetIndex(&value);
    CheckException(__result);
    return value;
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

  /* attribute boolean selected; */
  PRBool Selected(){
    PRBool value;
    nsresult __result = inner.GetSelected(&value);
    CheckException(__result);
    return value;
  }
  void Selected(PRBool aSelected){
    nsresult __result = inner.SetSelected(aSelected);
    CheckException(__result);
  }

  /* attribute DOMString value; */
  wchar[] Value(){
    scope auto value = new AString();
    nsresult __result = inner.GetValue(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Value(wchar[] aValue){
    scope auto value = new AString(aValue);
    nsresult __result = inner.SetValue(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIDOMHTMLOptionElement inner;

}

