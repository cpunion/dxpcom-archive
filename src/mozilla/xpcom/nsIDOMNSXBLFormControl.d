/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMNSXBLFormControl.idl
 */

module mozilla.xpcom.nsIDOMNSXBLFormControl;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIBoxObject; /* forward declaration */


/* starting interface:    nsIDOMNSXBLFormControl */
const char[] NS_IDOMNSXBLFORMCONTROL_IID_STR = "1c28ed66-1dd2-11b2-95af-e2cf10931adb";

const nsIID NS_IDOMNSXBLFORMCONTROL_IID= 
  {0x1c28ed66, 0x1dd2, 0x11b2, 
    [ 0x95, 0xaf, 0xe2, 0xcf, 0x10, 0x93, 0x1a, 0xdb ]};

extern(Windows)
interface nsIDOMNSXBLFormControl : nsISupports {
  static const char[] IID_STR = NS_IDOMNSXBLFORMCONTROL_IID_STR;
  static const nsIID IID = NS_IDOMNSXBLFORMCONTROL_IID;

  /* readonly attribute nsIBoxObject boxObject; */
  nsresult GetBoxObject(nsIBoxObject  *aBoxObject);

}

