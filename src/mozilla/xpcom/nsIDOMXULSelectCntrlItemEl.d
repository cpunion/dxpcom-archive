/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULSelectCntrlItemEl.idl
 */

module mozilla.xpcom.nsIDOMXULSelectCntrlItemEl;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMXULElement;

public import mozilla.xpcom.nsIDOMXULSelectCntrlEl;


/* starting interface:    nsIDOMXULSelectControlItemElement */
const char[] NS_IDOMXULSELECTCONTROLITEMELEMENT_IID_STR = "6aaaa30d-54ab-434a-8ae8-6d29a566d870";

const nsIID NS_IDOMXULSELECTCONTROLITEMELEMENT_IID= 
  {0x6aaaa30d, 0x54ab, 0x434a, 
    [ 0x8a, 0xe8, 0x6d, 0x29, 0xa5, 0x66, 0xd8, 0x70 ]};

extern(Windows)
interface nsIDOMXULSelectControlItemElement : nsIDOMXULElement {
  static const char[] IID_STR = NS_IDOMXULSELECTCONTROLITEMELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMXULSELECTCONTROLITEMELEMENT_IID;

  /* attribute boolean disabled; */
  nsresult GetDisabled(PRBool *aDisabled);
  nsresult SetDisabled(PRBool aDisabled);

  /* attribute DOMString crop; */
  nsresult GetCrop(nsAString * aCrop);
  nsresult SetCrop(nsAString * aCrop);

  /* attribute DOMString image; */
  nsresult GetImage(nsAString * aImage);
  nsresult SetImage(nsAString * aImage);

  /* attribute DOMString label; */
  nsresult GetLabel(nsAString * aLabel);
  nsresult SetLabel(nsAString * aLabel);

  /* attribute DOMString accessKey; */
  nsresult GetAccessKey(nsAString * aAccessKey);
  nsresult SetAccessKey(nsAString * aAccessKey);

  /* attribute DOMString command; */
  nsresult GetCommand(nsAString * aCommand);
  nsresult SetCommand(nsAString * aCommand);

  /* attribute DOMString value; */
  nsresult GetValue(nsAString * aValue);
  nsresult SetValue(nsAString * aValue);

  /* readonly attribute boolean selected; */
  nsresult GetSelected(PRBool *aSelected);

  /* readonly attribute nsIDOMXULSelectControlElement control; */
  nsresult GetControl(nsIDOMXULSelectControlElement  *aControl);

}

