/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULCheckboxElement.idl
 */

module mozilla.xpcom.nsIDOMXULCheckboxElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMElement;
public import mozilla.xpcom.nsIDOMXULLabeledControlEl;


/* starting interface:    nsIDOMXULCheckboxElement */
const char[] NS_IDOMXULCHECKBOXELEMENT_IID_STR = "5afaba88-1dd2-11b2-9249-dd65a129d0e4";

const nsIID NS_IDOMXULCHECKBOXELEMENT_IID= 
  {0x5afaba88, 0x1dd2, 0x11b2, 
    [ 0x92, 0x49, 0xdd, 0x65, 0xa1, 0x29, 0xd0, 0xe4 ]};

extern(Windows)
interface nsIDOMXULCheckboxElement : nsIDOMXULLabeledControlElement {
  static const char[] IID_STR = NS_IDOMXULCHECKBOXELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMXULCHECKBOXELEMENT_IID;

  enum { CHECKSTATE_UNCHECKED = 0 };

  enum { CHECKSTATE_CHECKED = 1 };

  enum { CHECKSTATE_MIXED = 2 };

  /* attribute boolean checked; */
  nsresult GetChecked(PRBool *aChecked);
  nsresult SetChecked(PRBool aChecked);

  /* attribute long checkState; */
  nsresult GetCheckState(PRInt32 *aCheckState);
  nsresult SetCheckState(PRInt32 aCheckState);

  /* attribute boolean autoCheck; */
  nsresult GetAutoCheck(PRBool *aAutoCheck);
  nsresult SetAutoCheck(PRBool aAutoCheck);

}

