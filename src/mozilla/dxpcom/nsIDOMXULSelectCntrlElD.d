/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULSelectCntrlEl.idl
 */

module mozilla.dxpcom.nsIDOMXULSelectCntrlElD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMXULSelectCntrlEl;


public import mozilla.dxpcom.nsIDOMXULSelectCntrlElD;

public import mozilla.xpcom.nsIDOMXULControlElement;
public import mozilla.dxpcom.nsIDOMXULControlElementD;

public import mozilla.xpcom.nsIDOMXULSelectCntrlEl;

import mozilla.dxpcom.nsIDOMXULSelectCntrlElD;


/* starting wrapper class:    nsIDOMXULSelectControlElement */
class nsIDOMXULSelectControlElementD : public nsIDOMXULControlElementD {

  static const nsIID IID = NS_IDOMXULSELECTCONTROLELEMENT_IID;


  alias nsIDOMXULSelectControlElement InnerType;

  this(nsIDOMXULSelectControlElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMXULSelectControlElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMXULSelectControlElement value) {
    inner = value;
  }

  /* attribute nsIDOMXULSelectControlItemElement selectedItem; */
  nsIDOMXULSelectControlItemElementD  SelectedItem(){
    nsIDOMXULSelectControlItemElement value;
    nsresult __result = inner.GetSelectedItem(&value);
    CheckException(__result);
    return new nsIDOMXULSelectControlItemElementD(value);
  }
  void SelectedItem(nsIDOMXULSelectControlItemElementD  aSelectedItem){
    nsIDOMXULSelectControlItemElement value;
    nsresult __result = inner.SetSelectedItem(value);
    CheckException(__result);
  }

  /* attribute long selectedIndex; */
  PRInt32 SelectedIndex(){
    PRInt32 value;
    nsresult __result = inner.GetSelectedIndex(&value);
    CheckException(__result);
    return value;
  }
  void SelectedIndex(PRInt32 aSelectedIndex){
    nsresult __result = inner.SetSelectedIndex(aSelectedIndex);
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

  /* nsIDOMXULSelectControlItemElement appendItem (in DOMString label, in DOMString value); */
  nsIDOMXULSelectControlItemElementD  AppendItem(wchar[] label, wchar[] value){
    scope auto _label = new AString(label);
    scope auto _value = new AString(value);
    nsIDOMXULSelectControlItemElement _retval;
    nsresult __result = inner.AppendItem(cast(nsAString*)_label, cast(nsAString*)_value, &_retval);
    CheckException(__result);
    return new nsIDOMXULSelectControlItemElementD(_retval);
  }

  /* nsIDOMXULSelectControlItemElement insertItemAt (in long index, in DOMString label, in DOMString value); */
  nsIDOMXULSelectControlItemElementD  InsertItemAt(PRInt32 index, wchar[] label, wchar[] value){
    scope auto _label = new AString(label);
    scope auto _value = new AString(value);
    nsIDOMXULSelectControlItemElement _retval;
    nsresult __result = inner.InsertItemAt(index, cast(nsAString*)_label, cast(nsAString*)_value, &_retval);
    CheckException(__result);
    return new nsIDOMXULSelectControlItemElementD(_retval);
  }

  /* nsIDOMXULSelectControlItemElement removeItemAt (in long index); */
  nsIDOMXULSelectControlItemElementD  RemoveItemAt(PRInt32 index){
    nsIDOMXULSelectControlItemElement _retval;
    nsresult __result = inner.RemoveItemAt(index, &_retval);
    CheckException(__result);
    return new nsIDOMXULSelectControlItemElementD(_retval);
  }

private:
  nsIDOMXULSelectControlElement inner;

}

