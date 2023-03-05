/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULDescriptionElement.idl
 */

module mozilla.xpcom.nsIDOMXULDescriptionElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMXULElement;


/* starting interface:    nsIDOMXULDescriptionElement */
const char[] NS_IDOMXULDESCRIPTIONELEMENT_IID_STR = "c7b0b43c-1dd1-11b2-9e1c-ce5f6a660630";

const nsIID NS_IDOMXULDESCRIPTIONELEMENT_IID= 
  {0xc7b0b43c, 0x1dd1, 0x11b2, 
    [ 0x9e, 0x1c, 0xce, 0x5f, 0x6a, 0x66, 0x06, 0x30 ]};

extern(Windows)
interface nsIDOMXULDescriptionElement : nsIDOMXULElement {
  static const char[] IID_STR = NS_IDOMXULDESCRIPTIONELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMXULDESCRIPTIONELEMENT_IID;

  /* attribute boolean disabled; */
  nsresult GetDisabled(PRBool *aDisabled);
  nsresult SetDisabled(PRBool aDisabled);

  /* attribute boolean crop; */
  nsresult GetCrop(PRBool *aCrop);
  nsresult SetCrop(PRBool aCrop);

  /* attribute DOMString value; */
  nsresult GetValue(nsAString * aValue);
  nsresult SetValue(nsAString * aValue);

}

