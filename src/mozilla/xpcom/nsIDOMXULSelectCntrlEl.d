/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULSelectCntrlEl.idl
 */

module mozilla.xpcom.nsIDOMXULSelectCntrlEl;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMXULControlElement;

public import mozilla.xpcom.nsIDOMXULSelectCntrlEl;


/* starting interface:    nsIDOMXULSelectControlElement */
const char[] NS_IDOMXULSELECTCONTROLELEMENT_IID_STR = "59fec127-2a0e-445b-84b5-a66dc90245db";

const nsIID NS_IDOMXULSELECTCONTROLELEMENT_IID= 
  {0x59fec127, 0x2a0e, 0x445b, 
    [ 0x84, 0xb5, 0xa6, 0x6d, 0xc9, 0x02, 0x45, 0xdb ]};

extern(Windows)
interface nsIDOMXULSelectControlElement : nsIDOMXULControlElement {
  static const char[] IID_STR = NS_IDOMXULSELECTCONTROLELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMXULSELECTCONTROLELEMENT_IID;

  /* attribute nsIDOMXULSelectControlItemElement selectedItem; */
  nsresult GetSelectedItem(nsIDOMXULSelectControlItemElement  *aSelectedItem);
  nsresult SetSelectedItem(nsIDOMXULSelectControlItemElement  aSelectedItem);

  /* attribute long selectedIndex; */
  nsresult GetSelectedIndex(PRInt32 *aSelectedIndex);
  nsresult SetSelectedIndex(PRInt32 aSelectedIndex);

  /* attribute DOMString value; */
  nsresult GetValue(nsAString * aValue);
  nsresult SetValue(nsAString * aValue);

  /* nsIDOMXULSelectControlItemElement appendItem (in DOMString label, in DOMString value); */
  nsresult AppendItem(nsAString * label, nsAString * value, nsIDOMXULSelectControlItemElement *_retval);

  /* nsIDOMXULSelectControlItemElement insertItemAt (in long index, in DOMString label, in DOMString value); */
  nsresult InsertItemAt(PRInt32 index, nsAString * label, nsAString * value, nsIDOMXULSelectControlItemElement *_retval);

  /* nsIDOMXULSelectControlItemElement removeItemAt (in long index); */
  nsresult RemoveItemAt(PRInt32 index, nsIDOMXULSelectControlItemElement *_retval);

}

