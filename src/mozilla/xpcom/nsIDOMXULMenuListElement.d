/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULMenuListElement.idl
 */

module mozilla.xpcom.nsIDOMXULMenuListElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMXULSelectCntrlEl;

public import mozilla.xpcom.nsIDOMXULTextboxElement;


/* starting interface:    nsIDOMXULMenuListElement */
const char[] NS_IDOMXULMENULISTELEMENT_IID_STR = "3d49950e-04f9-4e35-a9a0-ffd51356a674";

const nsIID NS_IDOMXULMENULISTELEMENT_IID= 
  {0x3d49950e, 0x04f9, 0x4e35, 
    [ 0xa9, 0xa0, 0xff, 0xd5, 0x13, 0x56, 0xa6, 0x74 ]};

extern(Windows)
interface nsIDOMXULMenuListElement : nsIDOMXULSelectControlElement {
  static const char[] IID_STR = NS_IDOMXULMENULISTELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMXULMENULISTELEMENT_IID;

  /* attribute boolean editable; */
  nsresult GetEditable(PRBool *aEditable);
  nsresult SetEditable(PRBool aEditable);

  /* attribute boolean open; */
  nsresult GetOpen(PRBool *aOpen);
  nsresult SetOpen(PRBool aOpen);

  /* readonly attribute DOMString label; */
  nsresult GetLabel(nsAString * aLabel);

  /* attribute DOMString crop; */
  nsresult GetCrop(nsAString * aCrop);
  nsresult SetCrop(nsAString * aCrop);

  /* attribute DOMString image; */
  nsresult GetImage(nsAString * aImage);
  nsresult SetImage(nsAString * aImage);

  /* readonly attribute nsIDOMXULTextBoxElement inputField; */
  nsresult GetInputField(nsIDOMXULTextBoxElement  *aInputField);

}

