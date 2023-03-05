/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULMenuListElement.idl
 */

module mozilla.dxpcom.nsIDOMXULMenuListElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMXULMenuListElement;


public import mozilla.dxpcom.nsIDOMXULMenuListElementD;

public import mozilla.xpcom.nsIDOMXULSelectCntrlEl;
public import mozilla.dxpcom.nsIDOMXULSelectCntrlElD;

public import mozilla.xpcom.nsIDOMXULTextboxElement;

import mozilla.dxpcom.nsIDOMXULTextboxElementD;


/* starting wrapper class:    nsIDOMXULMenuListElement */
class nsIDOMXULMenuListElementD : public nsIDOMXULSelectControlElementD {

  static const nsIID IID = NS_IDOMXULMENULISTELEMENT_IID;


  alias nsIDOMXULMenuListElement InnerType;

  this(nsIDOMXULMenuListElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMXULMenuListElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMXULMenuListElement value) {
    inner = value;
  }

  /* attribute boolean editable; */
  PRBool Editable(){
    PRBool value;
    nsresult __result = inner.GetEditable(&value);
    CheckException(__result);
    return value;
  }
  void Editable(PRBool aEditable){
    nsresult __result = inner.SetEditable(aEditable);
    CheckException(__result);
  }

  /* attribute boolean open; */
  PRBool Open(){
    PRBool value;
    nsresult __result = inner.GetOpen(&value);
    CheckException(__result);
    return value;
  }
  void Open(PRBool aOpen){
    nsresult __result = inner.SetOpen(aOpen);
    CheckException(__result);
  }

  /* readonly attribute DOMString label; */
  wchar[] Label(){
    scope auto value = new AString();
    nsresult __result = inner.GetLabel(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
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

  /* readonly attribute nsIDOMXULTextBoxElement inputField; */
  nsIDOMXULTextBoxElementD  InputField(){
    nsIDOMXULTextBoxElement value;
    nsresult __result = inner.GetInputField(&value);
    CheckException(__result);
    return new nsIDOMXULTextBoxElementD(value);
  }

private:
  nsIDOMXULMenuListElement inner;

}

