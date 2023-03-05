/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULButtonElement.idl
 */

module mozilla.xpcom.nsIDOMXULButtonElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMXULLabeledControlEl;


/* starting interface:    nsIDOMXULButtonElement */
const char[] NS_IDOMXULBUTTONELEMENT_IID_STR = "6852d9a6-1dd2-11b2-a29d-cd7977a91b1b";

const nsIID NS_IDOMXULBUTTONELEMENT_IID= 
  {0x6852d9a6, 0x1dd2, 0x11b2, 
    [ 0xa2, 0x9d, 0xcd, 0x79, 0x77, 0xa9, 0x1b, 0x1b ]};

extern(Windows)
interface nsIDOMXULButtonElement : nsIDOMXULLabeledControlElement {
  static const char[] IID_STR = NS_IDOMXULBUTTONELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMXULBUTTONELEMENT_IID;

  enum { CHECKSTATE_UNCHECKED = 0 };

  enum { CHECKSTATE_CHECKED = 1 };

  enum { CHECKSTATE_MIXED = 2 };

  /* attribute DOMString type; */
  nsresult GetType(nsAString * aType);
  nsresult SetType(nsAString * aType);

  /* attribute DOMString dlgType; */
  nsresult GetDlgType(nsAString * aDlgType);
  nsresult SetDlgType(nsAString * aDlgType);

  /* attribute boolean open; */
  nsresult GetOpen(PRBool *aOpen);
  nsresult SetOpen(PRBool aOpen);

  /* attribute boolean checked; */
  nsresult GetChecked(PRBool *aChecked);
  nsresult SetChecked(PRBool aChecked);

  /* attribute long checkState; */
  nsresult GetCheckState(PRInt32 *aCheckState);
  nsresult SetCheckState(PRInt32 aCheckState);

  /* attribute boolean autoCheck; */
  nsresult GetAutoCheck(PRBool *aAutoCheck);
  nsresult SetAutoCheck(PRBool aAutoCheck);

  /* attribute DOMString group; */
  nsresult GetGroup(nsAString * aGroup);
  nsresult SetGroup(nsAString * aGroup);

}

