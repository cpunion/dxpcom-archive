/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULImageElement.idl
 */

module mozilla.xpcom.nsIDOMXULImageElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMElement;
public import mozilla.xpcom.nsIDOMXULElement;


/* starting interface:    nsIDOMXULImageElement */
const char[] NS_IDOMXULIMAGEELEMENT_IID_STR = "f73f4d77-a6fb-4ab5-b41e-15045a0cc6ff";

const nsIID NS_IDOMXULIMAGEELEMENT_IID= 
  {0xf73f4d77, 0xa6fb, 0x4ab5, 
    [ 0xb4, 0x1e, 0x15, 0x04, 0x5a, 0x0c, 0xc6, 0xff ]};

extern(Windows)
interface nsIDOMXULImageElement : nsIDOMXULElement {
  static const char[] IID_STR = NS_IDOMXULIMAGEELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMXULIMAGEELEMENT_IID;

  /* attribute DOMString src; */
  nsresult GetSrc(nsAString * aSrc);
  nsresult SetSrc(nsAString * aSrc);

}

