/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMWindow2.idl
 */

module mozilla.xpcom.nsIDOMWindow2;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMWindow;


/* starting interface:    nsIDOMWindow2 */
const char[] NS_IDOMWINDOW2_IID_STR = "65455132-b96a-40ec-adea-52fa22b1028c";

const nsIID NS_IDOMWINDOW2_IID= 
  {0x65455132, 0xb96a, 0x40ec, 
    [ 0xad, 0xea, 0x52, 0xfa, 0x22, 0xb1, 0x02, 0x8c ]};

extern(Windows)
interface nsIDOMWindow2 : nsIDOMWindow {
  static const char[] IID_STR = NS_IDOMWINDOW2_IID_STR;
  static const nsIID IID = NS_IDOMWINDOW2_IID;

  /**
   * Get the window root for this window. This is useful for hooking
   * up event listeners to this window and every other window nested
   * in the window root.
   */
  /* [noscript] readonly attribute nsIDOMEventTarget windowRoot; */
  nsresult GetWindowRoot(nsIDOMEventTarget  *aWindowRoot);

}

