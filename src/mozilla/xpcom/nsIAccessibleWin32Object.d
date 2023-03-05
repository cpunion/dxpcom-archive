/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessibleWin32Object.idl
 */

module mozilla.xpcom.nsIAccessibleWin32Object;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIAccessibleWin32Object */
const char[] NS_IACCESSIBLEWIN32OBJECT_IID_STR = "ca7a3a93-822f-4cdf-8cb4-c52d16b9afc7";

const nsIID NS_IACCESSIBLEWIN32OBJECT_IID= 
  {0xca7a3a93, 0x822f, 0x4cdf, 
    [ 0x8c, 0xb4, 0xc5, 0x2d, 0x16, 0xb9, 0xaf, 0xc7 ]};

extern(Windows)
interface nsIAccessibleWin32Object : nsISupports {
  static const char[] IID_STR = NS_IACCESSIBLEWIN32OBJECT_IID_STR;
  static const nsIID IID = NS_IACCESSIBLEWIN32OBJECT_IID;

  /** handle to the external window implementing IAccessible */
  /* [noscript] readonly attribute voidPtr hwnd; */
  nsresult GetHwnd(void * *aHwnd);

}

