/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLButtonElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLButtonElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLButtonElement */
const char[] NS_IDOMHTMLBUTTONELEMENT_IID_STR = "a6cf9095-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLBUTTONELEMENT_IID= 
  {0xa6cf9095, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLButtonElement interface is the interface to a [X]HTML
 * button element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLButtonElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLBUTTONELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLBUTTONELEMENT_IID;

  /* readonly attribute nsIDOMHTMLFormElement form; */
  nsresult GetForm(nsIDOMHTMLFormElement  *aForm);

  /* attribute DOMString accessKey; */
  nsresult GetAccessKey(nsAString * aAccessKey);
  nsresult SetAccessKey(nsAString * aAccessKey);

  /* attribute boolean disabled; */
  nsresult GetDisabled(PRBool *aDisabled);
  nsresult SetDisabled(PRBool aDisabled);

  /* attribute DOMString name; */
  nsresult GetName(nsAString * aName);
  nsresult SetName(nsAString * aName);

  /* attribute long tabIndex; */
  nsresult GetTabIndex(PRInt32 *aTabIndex);
  nsresult SetTabIndex(PRInt32 aTabIndex);

  /* [noscript] readonly attribute DOMString type; */
  nsresult GetType(nsAString * aType);

  /* attribute DOMString value; */
  nsresult GetValue(nsAString * aValue);
  nsresult SetValue(nsAString * aValue);

}

