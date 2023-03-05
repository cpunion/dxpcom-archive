/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULMultSelectCntrlEl.idl
 */

module mozilla.dxpcom.nsIDOMXULMultSelectCntrlElD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMXULMultSelectCntrlEl;


public import mozilla.dxpcom.nsIDOMXULMultSelectCntrlElD;

public import mozilla.xpcom.nsIDOMXULSelectCntrlEl;
public import mozilla.dxpcom.nsIDOMXULSelectCntrlElD;


/* starting wrapper class:    nsIDOMXULMultiSelectControlElement */
class nsIDOMXULMultiSelectControlElementD : public nsIDOMXULSelectControlElementD {

  static const nsIID IID = NS_IDOMXULMULTISELECTCONTROLELEMENT_IID;


  alias nsIDOMXULMultiSelectControlElement InnerType;

  this(nsIDOMXULMultiSelectControlElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMXULMultiSelectControlElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMXULMultiSelectControlElement value) {
    inner = value;
  }

  /* attribute DOMString selType; */
  wchar[] SelType(){
    scope auto value = new AString();
    nsresult __result = inner.GetSelType(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void SelType(wchar[] aSelType){
    scope auto value = new AString(aSelType);
    nsresult __result = inner.SetSelType(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute nsIDOMXULSelectControlItemElement currentItem; */
  nsIDOMXULSelectControlItemElementD  CurrentItem(){
    nsIDOMXULSelectControlItemElement value;
    nsresult __result = inner.GetCurrentItem(&value);
    CheckException(__result);
    return new nsIDOMXULSelectControlItemElementD(value);
  }
  void CurrentItem(nsIDOMXULSelectControlItemElementD  aCurrentItem){
    nsIDOMXULSelectControlItemElement value;
    nsresult __result = inner.SetCurrentItem(value);
    CheckException(__result);
  }

  /* attribute long currentIndex; */
  PRInt32 CurrentIndex(){
    PRInt32 value;
    nsresult __result = inner.GetCurrentIndex(&value);
    CheckException(__result);
    return value;
  }
  void CurrentIndex(PRInt32 aCurrentIndex){
    nsresult __result = inner.SetCurrentIndex(aCurrentIndex);
    CheckException(__result);
  }

  /* readonly attribute nsIDOMNodeList selectedItems; */
  nsIDOMNodeListD  SelectedItems(){
    nsIDOMNodeList value;
    nsresult __result = inner.GetSelectedItems(&value);
    CheckException(__result);
    return new nsIDOMNodeListD(value);
  }

  /* void addItemToSelection (in nsIDOMXULSelectControlItemElement item); */
  void AddItemToSelection(nsIDOMXULSelectControlItemElementD item){
    nsresult __result = inner.AddItemToSelection(item ? cast(nsIDOMXULSelectControlItemElement)item : null);
    CheckException(__result);
  }

  /* void removeItemFromSelection (in nsIDOMXULSelectControlItemElement item); */
  void RemoveItemFromSelection(nsIDOMXULSelectControlItemElementD item){
    nsresult __result = inner.RemoveItemFromSelection(item ? cast(nsIDOMXULSelectControlItemElement)item : null);
    CheckException(__result);
  }

  /* void toggleItemSelection (in nsIDOMXULSelectControlItemElement item); */
  void ToggleItemSelection(nsIDOMXULSelectControlItemElementD item){
    nsresult __result = inner.ToggleItemSelection(item ? cast(nsIDOMXULSelectControlItemElement)item : null);
    CheckException(__result);
  }

  /* void selectItem (in nsIDOMXULSelectControlItemElement item); */
  void SelectItem(nsIDOMXULSelectControlItemElementD item){
    nsresult __result = inner.SelectItem(item ? cast(nsIDOMXULSelectControlItemElement)item : null);
    CheckException(__result);
  }

  /* void selectItemRange (in nsIDOMXULSelectControlItemElement startItem, in nsIDOMXULSelectControlItemElement item); */
  void SelectItemRange(nsIDOMXULSelectControlItemElementD startItem, nsIDOMXULSelectControlItemElementD item){
    nsresult __result = inner.SelectItemRange(startItem ? cast(nsIDOMXULSelectControlItemElement)startItem : null, item ? cast(nsIDOMXULSelectControlItemElement)item : null);
    CheckException(__result);
  }

  /* void selectAll (); */
  void SelectAll(){
    nsresult __result = inner.SelectAll();
    CheckException(__result);
  }

  /* void invertSelection (); */
  void InvertSelection(){
    nsresult __result = inner.InvertSelection();
    CheckException(__result);
  }

  /* void clearSelection (); */
  void ClearSelection(){
    nsresult __result = inner.ClearSelection();
    CheckException(__result);
  }

  /* readonly attribute long selectedCount; */
  PRInt32 SelectedCount(){
    PRInt32 value;
    nsresult __result = inner.GetSelectedCount(&value);
    CheckException(__result);
    return value;
  }

  /* nsIDOMXULSelectControlItemElement getSelectedItem (in long index); */
  nsIDOMXULSelectControlItemElementD  GetSelectedItem(PRInt32 index){
    nsIDOMXULSelectControlItemElement _retval;
    nsresult __result = inner.GetSelectedItem(index, &_retval);
    CheckException(__result);
    return new nsIDOMXULSelectControlItemElementD(_retval);
  }

private:
  nsIDOMXULMultiSelectControlElement inner;

}

