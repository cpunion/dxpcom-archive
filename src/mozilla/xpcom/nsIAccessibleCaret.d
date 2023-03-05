/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessibleCaret.idl
 */

module mozilla.xpcom.nsIAccessibleCaret;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIDOMNode;


/* starting interface:    nsIAccessibleCaret */
const char[] NS_IACCESSIBLECARET_IID_STR = "9124c666-6133-4be6-b3ed-dd0ec35f1e64";

const nsIID NS_IACCESSIBLECARET_IID= 
  {0x9124c666, 0x6133, 0x4be6, 
    [ 0xb3, 0xed, 0xdd, 0x0e, 0xc3, 0x5f, 0x1e, 0x64 ]};

extern(Windows)
interface nsIAccessibleCaret : nsISupports {
  static const char[] IID_STR = NS_IACCESSIBLECARET_IID_STR;
  static const nsIID IID = NS_IACCESSIBLECARET_IID;

  /* void attachNewSelectionListener (in nsIDOMNode aFocusedNode); */
  nsresult AttachNewSelectionListener(nsIDOMNode aFocusedNode);

  /* void removeSelectionListener (); */
  nsresult RemoveSelectionListener();

}

