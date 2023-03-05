/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLTextAreaElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLTextAreaElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLTextAreaElement */
const char[] NS_IDOMHTMLTEXTAREAELEMENT_IID_STR = "a6cf9094-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLTEXTAREAELEMENT_IID= 
  {0xa6cf9094, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLTextAreaElement interface is the interface to a
 * [X]HTML textarea element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLTextAreaElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLTEXTAREAELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLTEXTAREAELEMENT_IID;

  /* attribute DOMString defaultValue; */
  nsresult GetDefaultValue(nsAString * aDefaultValue);
  nsresult SetDefaultValue(nsAString * aDefaultValue);

  /* readonly attribute nsIDOMHTMLFormElement form; */
  nsresult GetForm(nsIDOMHTMLFormElement  *aForm);

  /* attribute DOMString accessKey; */
  nsresult GetAccessKey(nsAString * aAccessKey);
  nsresult SetAccessKey(nsAString * aAccessKey);

  /* attribute long cols; */
  nsresult GetCols(PRInt32 *aCols);
  nsresult SetCols(PRInt32 aCols);

  /* attribute boolean disabled; */
  nsresult GetDisabled(PRBool *aDisabled);
  nsresult SetDisabled(PRBool aDisabled);

  /* attribute DOMString name; */
  nsresult GetName(nsAString * aName);
  nsresult SetName(nsAString * aName);

  /* attribute boolean readOnly; */
  nsresult GetReadOnly(PRBool *aReadOnly);
  nsresult SetReadOnly(PRBool aReadOnly);

  /* attribute long rows; */
  nsresult GetRows(PRInt32 *aRows);
  nsresult SetRows(PRInt32 aRows);

  /* attribute long tabIndex; */
  nsresult GetTabIndex(PRInt32 *aTabIndex);
  nsresult SetTabIndex(PRInt32 aTabIndex);

  /* readonly attribute DOMString type; */
  nsresult GetType(nsAString * aType);

  /* attribute DOMString value; */
  nsresult GetValue(nsAString * aValue);
  nsresult SetValue(nsAString * aValue);

  /* void blur (); */
  nsresult Blur();

  /* void focus (); */
  nsresult Focus();

  /* void select (); */
  nsresult Select();

}

