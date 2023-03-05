/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULControlElement.idl
 */

module mozilla.xpcom.nsIDOMXULControlElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMElement;
public import mozilla.xpcom.nsIDOMXULElement;

public import mozilla.xpcom.nsIControllers; /* forward declaration */


/* starting interface:    nsIDOMXULControlElement */
const char[] NS_IDOMXULCONTROLELEMENT_IID_STR = "007b8358-1dd2-11b2-8924-d209efc3f124";

const nsIID NS_IDOMXULCONTROLELEMENT_IID= 
  {0x007b8358, 0x1dd2, 0x11b2, 
    [ 0x89, 0x24, 0xd2, 0x09, 0xef, 0xc3, 0xf1, 0x24 ]};

extern(Windows)
interface nsIDOMXULControlElement : nsIDOMXULElement {
  static const char[] IID_STR = NS_IDOMXULCONTROLELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMXULCONTROLELEMENT_IID;

  /* attribute boolean disabled; */
  nsresult GetDisabled(PRBool *aDisabled);
  nsresult SetDisabled(PRBool aDisabled);

  /* attribute long tabIndex; */
  nsresult GetTabIndex(PRInt32 *aTabIndex);
  nsresult SetTabIndex(PRInt32 aTabIndex);

}

