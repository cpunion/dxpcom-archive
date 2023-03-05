/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULTextboxElement.idl
 */

module mozilla.xpcom.nsIDOMXULTextboxElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMXULLabeledControlEl;

public import mozilla.xpcom.nsIDOMHTMLInputElement; /* forward declaration */


/* starting interface:    nsIDOMXULTextBoxElement */
const char[] NS_IDOMXULTEXTBOXELEMENT_IID_STR = "71135b6c-294e-4634-a8e4-a72398f1e72a";

const nsIID NS_IDOMXULTEXTBOXELEMENT_IID= 
  {0x71135b6c, 0x294e, 0x4634, 
    [ 0xa8, 0xe4, 0xa7, 0x23, 0x98, 0xf1, 0xe7, 0x2a ]};

extern(Windows)
interface nsIDOMXULTextBoxElement : nsIDOMXULControlElement {
  static const char[] IID_STR = NS_IDOMXULTEXTBOXELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMXULTEXTBOXELEMENT_IID;

  /* readonly attribute nsIDOMNode inputField; */
  nsresult GetInputField(nsIDOMNode  *aInputField);

  /* readonly attribute long textLength; */
  nsresult GetTextLength(PRInt32 *aTextLength);

  /* attribute long maxLength; */
  nsresult GetMaxLength(PRInt32 *aMaxLength);
  nsresult SetMaxLength(PRInt32 aMaxLength);

  /* attribute long size; */
  nsresult GetSize(PRInt32 *aSize);
  nsresult SetSize(PRInt32 aSize);

  /* attribute long selectionStart; */
  nsresult GetSelectionStart(PRInt32 *aSelectionStart);
  nsresult SetSelectionStart(PRInt32 aSelectionStart);

  /* attribute long selectionEnd; */
  nsresult GetSelectionEnd(PRInt32 *aSelectionEnd);
  nsresult SetSelectionEnd(PRInt32 aSelectionEnd);

  /* attribute DOMString value; */
  nsresult GetValue(nsAString * aValue);
  nsresult SetValue(nsAString * aValue);

  /* attribute DOMString type; */
  nsresult GetType(nsAString * aType);
  nsresult SetType(nsAString * aType);

  /* void select (); */
  nsresult Select();

  /* void setSelectionRange (in long selectionStart, in long selectionEnd); */
  nsresult SetSelectionRange(PRInt32 selectionStart, PRInt32 selectionEnd);

}

