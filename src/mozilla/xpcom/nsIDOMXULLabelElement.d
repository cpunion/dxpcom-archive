/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULLabelElement.idl
 */

module mozilla.xpcom.nsIDOMXULLabelElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMXULDescriptionElement;


/* starting interface:    nsIDOMXULLabelElement */
const char[] NS_IDOMXULLABELELEMENT_IID_STR = "c987629e-6370-45f5-86ec-aa765fa861cd";

const nsIID NS_IDOMXULLABELELEMENT_IID= 
  {0xc987629e, 0x6370, 0x45f5, 
    [ 0x86, 0xec, 0xaa, 0x76, 0x5f, 0xa8, 0x61, 0xcd ]};

extern(Windows)
interface nsIDOMXULLabelElement : nsIDOMXULDescriptionElement {
  static const char[] IID_STR = NS_IDOMXULLABELELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMXULLABELELEMENT_IID;

  /* attribute DOMString accessKey; */
  nsresult GetAccessKey(nsAString * aAccessKey);
  nsresult SetAccessKey(nsAString * aAccessKey);

  /* attribute DOMString control; */
  nsresult GetControl(nsAString * aControl);
  nsresult SetControl(nsAString * aControl);

}

