/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULSelectCntrlItemEl.idl
 */

module mozilla.dxpcom.nsIDOMXULSelectCntrlItemElD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMXULSelectCntrlItemEl;


public import mozilla.dxpcom.nsIDOMXULSelectCntrlItemElD;

public import mozilla.xpcom.nsIDOMXULElement;
public import mozilla.dxpcom.nsIDOMXULElementD;

public import mozilla.xpcom.nsIDOMXULSelectCntrlEl;

import mozilla.dxpcom.nsIDOMXULSelectCntrlElD;


/* starting wrapper class:    nsIDOMXULSelectControlItemElement */
class nsIDOMXULSelectControlItemElementD : public nsIDOMXULElementD {

  static const nsIID IID = NS_IDOMXULSELECTCONTROLITEMELEMENT_IID;


  alias nsIDOMXULSelectControlItemElement InnerType;

  this(nsIDOMXULSelectControlItemElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMXULSelectControlItemElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMXULSelectControlItemElement value) {
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

  /* attribute DOMString crop; */
  wchar[] Crop(){
    scope auto value = new AString();
    nsresult __result = inner.GetCrop(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Crop(wchar[] aCrop){
    scope auto value = new AString(aCrop);
    nsresult __result = inner.SetCrop(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString image; */
  wchar[] Image(){
    scope auto value = new AString();
    nsresult __result = inner.GetImage(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Image(wchar[] aImage){
    scope auto value = new AString(aImage);
    nsresult __result = inner.SetImage(cast(nsAString*)value);
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

  /* attribute DOMString command; */
  wchar[] Command(){
    scope auto value = new AString();
    nsresult __result = inner.GetCommand(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Command(wchar[] aCommand){
    scope auto value = new AString(aCommand);
    nsresult __result = inner.SetCommand(cast(nsAString*)value);
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

  /* readonly attribute boolean selected; */
  PRBool Selected(){
    PRBool value;
    nsresult __result = inner.GetSelected(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsIDOMXULSelectControlElement control; */
  nsIDOMXULSelectControlElementD  Control(){
    nsIDOMXULSelectControlElement value;
    nsresult __result = inner.GetControl(&value);
    CheckException(__result);
    return new nsIDOMXULSelectControlElementD(value);
  }

private:
  nsIDOMXULSelectControlItemElement inner;

}

