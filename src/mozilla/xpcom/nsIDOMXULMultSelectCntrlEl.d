/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULMultSelectCntrlEl.idl
 */

module mozilla.xpcom.nsIDOMXULMultSelectCntrlEl;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMXULSelectCntrlEl;


/* starting interface:    nsIDOMXULMultiSelectControlElement */
const char[] NS_IDOMXULMULTISELECTCONTROLELEMENT_IID_STR = "82c72eca-9886-473e-94cd-9de5694b3f88";

const nsIID NS_IDOMXULMULTISELECTCONTROLELEMENT_IID= 
  {0x82c72eca, 0x9886, 0x473e, 
    [ 0x94, 0xcd, 0x9d, 0xe5, 0x69, 0x4b, 0x3f, 0x88 ]};

extern(Windows)
interface nsIDOMXULMultiSelectControlElement : nsIDOMXULSelectControlElement {
  static const char[] IID_STR = NS_IDOMXULMULTISELECTCONTROLELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMXULMULTISELECTCONTROLELEMENT_IID;

  /* attribute DOMString selType; */
  nsresult GetSelType(nsAString * aSelType);
  nsresult SetSelType(nsAString * aSelType);

  /* attribute nsIDOMXULSelectControlItemElement currentItem; */
  nsresult GetCurrentItem(nsIDOMXULSelectControlItemElement  *aCurrentItem);
  nsresult SetCurrentItem(nsIDOMXULSelectControlItemElement  aCurrentItem);

  /* attribute long currentIndex; */
  nsresult GetCurrentIndex(PRInt32 *aCurrentIndex);
  nsresult SetCurrentIndex(PRInt32 aCurrentIndex);

  /* readonly attribute nsIDOMNodeList selectedItems; */
  nsresult GetSelectedItems(nsIDOMNodeList  *aSelectedItems);

  /* void addItemToSelection (in nsIDOMXULSelectControlItemElement item); */
  nsresult AddItemToSelection(nsIDOMXULSelectControlItemElement item);

  /* void removeItemFromSelection (in nsIDOMXULSelectControlItemElement item); */
  nsresult RemoveItemFromSelection(nsIDOMXULSelectControlItemElement item);

  /* void toggleItemSelection (in nsIDOMXULSelectControlItemElement item); */
  nsresult ToggleItemSelection(nsIDOMXULSelectControlItemElement item);

  /* void selectItem (in nsIDOMXULSelectControlItemElement item); */
  nsresult SelectItem(nsIDOMXULSelectControlItemElement item);

  /* void selectItemRange (in nsIDOMXULSelectControlItemElement startItem, in nsIDOMXULSelectControlItemElement item); */
  nsresult SelectItemRange(nsIDOMXULSelectControlItemElement startItem, nsIDOMXULSelectControlItemElement item);

  /* void selectAll (); */
  nsresult SelectAll();

  /* void invertSelection (); */
  nsresult InvertSelection();

  /* void clearSelection (); */
  nsresult ClearSelection();

  /* readonly attribute long selectedCount; */
  nsresult GetSelectedCount(PRInt32 *aSelectedCount);

  /* nsIDOMXULSelectControlItemElement getSelectedItem (in long index); */
  nsresult GetSelectedItem(PRInt32 index, nsIDOMXULSelectControlItemElement *_retval);

}

