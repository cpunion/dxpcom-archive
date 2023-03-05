/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULTextboxElement.idl
 */

module mozilla.dxpcom.nsIDOMXULTextboxElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMXULTextboxElement;


public import mozilla.dxpcom.nsIDOMXULTextboxElementD;

public import mozilla.xpcom.nsIDOMXULLabeledControlEl;
public import mozilla.dxpcom.nsIDOMXULLabeledControlElD;

public import mozilla.xpcom.nsIDOMHTMLInputElement;

public import mozilla.dxpcom.nsIDOMHTMLInputElementD;


/* starting wrapper class:    nsIDOMXULTextBoxElement */
class nsIDOMXULTextBoxElementD : public nsIDOMXULControlElementD {

  static const nsIID IID = NS_IDOMXULTEXTBOXELEMENT_IID;


  alias nsIDOMXULTextBoxElement InnerType;

  this(nsIDOMXULTextBoxElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMXULTextBoxElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMXULTextBoxElement value) {
    inner = value;
  }

  /* readonly attribute nsIDOMNode inputField; */
  nsIDOMNodeD  InputField(){
    nsIDOMNode value;
    nsresult __result = inner.GetInputField(&value);
    CheckException(__result);
    return new nsIDOMNodeD(value);
  }

  /* readonly attribute long textLength; */
  PRInt32 TextLength(){
    PRInt32 value;
    nsresult __result = inner.GetTextLength(&value);
    CheckException(__result);
    return value;
  }

  /* attribute long maxLength; */
  PRInt32 MaxLength(){
    PRInt32 value;
    nsresult __result = inner.GetMaxLength(&value);
    CheckException(__result);
    return value;
  }
  void MaxLength(PRInt32 aMaxLength){
    nsresult __result = inner.SetMaxLength(aMaxLength);
    CheckException(__result);
  }

  /* attribute long size; */
  PRInt32 Size(){
    PRInt32 value;
    nsresult __result = inner.GetSize(&value);
    CheckException(__result);
    return value;
  }
  void Size(PRInt32 aSize){
    nsresult __result = inner.SetSize(aSize);
    CheckException(__result);
  }

  /* attribute long selectionStart; */
  PRInt32 SelectionStart(){
    PRInt32 value;
    nsresult __result = inner.GetSelectionStart(&value);
    CheckException(__result);
    return value;
  }
  void SelectionStart(PRInt32 aSelectionStart){
    nsresult __result = inner.SetSelectionStart(aSelectionStart);
    CheckException(__result);
  }

  /* attribute long selectionEnd; */
  PRInt32 SelectionEnd(){
    PRInt32 value;
    nsresult __result = inner.GetSelectionEnd(&value);
    CheckException(__result);
    return value;
  }
  void SelectionEnd(PRInt32 aSelectionEnd){
    nsresult __result = inner.SetSelectionEnd(aSelectionEnd);
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

  /* attribute DOMString type; */
  wchar[] Type(){
    scope auto value = new AString();
    nsresult __result = inner.GetType(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Type(wchar[] aType){
    scope auto value = new AString(aType);
    nsresult __result = inner.SetType(cast(nsAString*)value);
    CheckException(__result);
  }

  /* void select (); */
  void Select(){
    nsresult __result = inner.Select();
    CheckException(__result);
  }

  /* void setSelectionRange (in long selectionStart, in long selectionEnd); */
  void SetSelectionRange(PRInt32 selectionStart, PRInt32 selectionEnd){
    nsresult __result = inner.SetSelectionRange(selectionStart, selectionEnd);
    CheckException(__result);
  }

private:
  nsIDOMXULTextBoxElement inner;

}

