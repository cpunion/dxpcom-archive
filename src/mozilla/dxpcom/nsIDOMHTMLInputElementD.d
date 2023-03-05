/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLInputElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLInputElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLInputElement;


public import mozilla.dxpcom.nsIDOMHTMLInputElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLInputElement */
/**
 * The nsIDOMHTMLInputElement interface is the interface to a [X]HTML
 * input element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLInputElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLINPUTELEMENT_IID;


  alias nsIDOMHTMLInputElement InnerType;

  this(nsIDOMHTMLInputElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLInputElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLInputElement value) {
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

  /* attribute boolean defaultChecked; */
  PRBool DefaultChecked(){
    PRBool value;
    nsresult __result = inner.GetDefaultChecked(&value);
    CheckException(__result);
    return value;
  }
  void DefaultChecked(PRBool aDefaultChecked){
    nsresult __result = inner.SetDefaultChecked(aDefaultChecked);
    CheckException(__result);
  }

  /* readonly attribute nsIDOMHTMLFormElement form; */
  nsIDOMHTMLFormElementD  Form(){
    nsIDOMHTMLFormElement value;
    nsresult __result = inner.GetForm(&value);
    CheckException(__result);
    return new nsIDOMHTMLFormElementD(value);
  }

  /* attribute DOMString accept; */
  wchar[] Accept(){
    scope auto value = new AString();
    nsresult __result = inner.GetAccept(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Accept(wchar[] aAccept){
    scope auto value = new AString(aAccept);
    nsresult __result = inner.SetAccept(cast(nsAString*)value);
    CheckException(__result);
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

  /* attribute DOMString alt; */
  wchar[] Alt(){
    scope auto value = new AString();
    nsresult __result = inner.GetAlt(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Alt(wchar[] aAlt){
    scope auto value = new AString(aAlt);
    nsresult __result = inner.SetAlt(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute boolean checked; */
  PRBool Checked(){
    PRBool value;
    nsresult __result = inner.GetChecked(&value);
    CheckException(__result);
    return value;
  }
  void Checked(PRBool aChecked){
    nsresult __result = inner.SetChecked(aChecked);
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

  /* attribute unsigned long size; */
  PRUint32 Size(){
    PRUint32 value;
    nsresult __result = inner.GetSize(&value);
    CheckException(__result);
    return value;
  }
  void Size(PRUint32 aSize){
    nsresult __result = inner.SetSize(aSize);
    CheckException(__result);
  }

  /* attribute DOMString src; */
  wchar[] Src(){
    scope auto value = new AString();
    nsresult __result = inner.GetSrc(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Src(wchar[] aSrc){
    scope auto value = new AString(aSrc);
    nsresult __result = inner.SetSrc(cast(nsAString*)value);
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

  /* attribute DOMString useMap; */
  wchar[] UseMap(){
    scope auto value = new AString();
    nsresult __result = inner.GetUseMap(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void UseMap(wchar[] aUseMap){
    scope auto value = new AString(aUseMap);
    nsresult __result = inner.SetUseMap(cast(nsAString*)value);
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

  /* void click (); */
  void Click(){
    nsresult __result = inner.Click();
    CheckException(__result);
  }

private:
  nsIDOMHTMLInputElement inner;

}

