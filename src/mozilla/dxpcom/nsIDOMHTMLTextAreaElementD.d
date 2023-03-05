/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLTextAreaElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLTextAreaElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLTextAreaElement;


public import mozilla.dxpcom.nsIDOMHTMLTextAreaElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLTextAreaElement */
/**
 * The nsIDOMHTMLTextAreaElement interface is the interface to a
 * [X]HTML textarea element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLTextAreaElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLTEXTAREAELEMENT_IID;


  alias nsIDOMHTMLTextAreaElement InnerType;

  this(nsIDOMHTMLTextAreaElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLTextAreaElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLTextAreaElement value) {
    inner = value;
  }

  /* attribute DOMString defaultValue; */
  wchar[] DefaultValue(){
    scope auto value = new AString();
    nsresult __result = inner.GetDefaultValue(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void DefaultValue(wchar[] aDefaultValue){
    scope auto value = new AString(aDefaultValue);
    nsresult __result = inner.SetDefaultValue(cast(nsAString*)value);
    CheckException(__result);
  }

  /* readonly attribute nsIDOMHTMLFormElement form; */
  nsIDOMHTMLFormElementD  Form(){
    nsIDOMHTMLFormElement value;
    nsresult __result = inner.GetForm(&value);
    CheckException(__result);
    return new nsIDOMHTMLFormElementD(value);
  }

  /* attribute DOMString accessKey; */
  wchar[] AccessKey(){
    scope auto value = new AString();
    nsresult __result = inner.GetAccessKey(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void AccessKey(wchar[] aAccessKey){
    scope auto value = new AString(aAccessKey);
    nsresult __result = inner.SetAccessKey(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute long cols; */
  PRInt32 Cols(){
    PRInt32 value;
    nsresult __result = inner.GetCols(&value);
    CheckException(__result);
    return value;
  }
  void Cols(PRInt32 aCols){
    nsresult __result = inner.SetCols(aCols);
    CheckException(__result);
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

  /* attribute DOMString name; */
  wchar[] Name(){
    scope auto value = new AString();
    nsresult __result = inner.GetName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Name(wchar[] aName){
    scope auto value = new AString(aName);
    nsresult __result = inner.SetName(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute boolean readOnly; */
  PRBool ReadOnly(){
    PRBool value;
    nsresult __result = inner.GetReadOnly(&value);
    CheckException(__result);
    return value;
  }
  void ReadOnly(PRBool aReadOnly){
    nsresult __result = inner.SetReadOnly(aReadOnly);
    CheckException(__result);
  }

  /* attribute long rows; */
  PRInt32 Rows(){
    PRInt32 value;
    nsresult __result = inner.GetRows(&value);
    CheckException(__result);
    return value;
  }
  void Rows(PRInt32 aRows){
    nsresult __result = inner.SetRows(aRows);
    CheckException(__result);
  }

  /* attribute long tabIndex; */
  PRInt32 TabIndex(){
    PRInt32 value;
    nsresult __result = inner.GetTabIndex(&value);
    CheckException(__result);
    return value;
  }
  void TabIndex(PRInt32 aTabIndex){
    nsresult __result = inner.SetTabIndex(aTabIndex);
    CheckException(__result);
  }

  /* readonly attribute DOMString type; */
  wchar[] Type(){
    scope auto value = new AString();
    nsresult __result = inner.GetType(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
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

  /* void blur (); */
  void Blur(){
    nsresult __result = inner.Blur();
    CheckException(__result);
  }

  /* void focus (); */
  void Focus(){
    nsresult __result = inner.Focus();
    CheckException(__result);
  }

  /* void select (); */
  void Select(){
    nsresult __result = inner.Select();
    CheckException(__result);
  }

private:
  nsIDOMHTMLTextAreaElement inner;

}

