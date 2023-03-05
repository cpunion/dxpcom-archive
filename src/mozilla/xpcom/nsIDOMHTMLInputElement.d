/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLInputElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLInputElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLInputElement */
const char[] NS_IDOMHTMLINPUTELEMENT_IID_STR = "a6cf9093-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLINPUTELEMENT_IID= 
  {0xa6cf9093, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLInputElement interface is the interface to a [X]HTML
 * input element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLInputElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLINPUTELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLINPUTELEMENT_IID;

  /* attribute DOMString defaultValue; */
  nsresult GetDefaultValue(nsAString * aDefaultValue);
  nsresult SetDefaultValue(nsAString * aDefaultValue);

  /* attribute boolean defaultChecked; */
  nsresult GetDefaultChecked(PRBool *aDefaultChecked);
  nsresult SetDefaultChecked(PRBool aDefaultChecked);

  /* readonly attribute nsIDOMHTMLFormElement form; */
  nsresult GetForm(nsIDOMHTMLFormElement  *aForm);

  /* attribute DOMString accept; */
  nsresult GetAccept(nsAString * aAccept);
  nsresult SetAccept(nsAString * aAccept);

  /* attribute DOMString accessKey; */
  nsresult GetAccessKey(nsAString * aAccessKey);
  nsresult SetAccessKey(nsAString * aAccessKey);

  /* attribute DOMString align; */
  nsresult GetAlign(nsAString * aAlign);
  nsresult SetAlign(nsAString * aAlign);

  /* attribute DOMString alt; */
  nsresult GetAlt(nsAString * aAlt);
  nsresult SetAlt(nsAString * aAlt);

  /* attribute boolean checked; */
  nsresult GetChecked(PRBool *aChecked);
  nsresult SetChecked(PRBool aChecked);

  /* attribute boolean disabled; */
  nsresult GetDisabled(PRBool *aDisabled);
  nsresult SetDisabled(PRBool aDisabled);

  /* attribute long maxLength; */
  nsresult GetMaxLength(PRInt32 *aMaxLength);
  nsresult SetMaxLength(PRInt32 aMaxLength);

  /* attribute DOMString name; */
  nsresult GetName(nsAString * aName);
  nsresult SetName(nsAString * aName);

  /* attribute boolean readOnly; */
  nsresult GetReadOnly(PRBool *aReadOnly);
  nsresult SetReadOnly(PRBool aReadOnly);

  /* attribute unsigned long size; */
  nsresult GetSize(PRUint32 *aSize);
  nsresult SetSize(PRUint32 aSize);

  /* attribute DOMString src; */
  nsresult GetSrc(nsAString * aSrc);
  nsresult SetSrc(nsAString * aSrc);

  /* attribute long tabIndex; */
  nsresult GetTabIndex(PRInt32 *aTabIndex);
  nsresult SetTabIndex(PRInt32 aTabIndex);

  /* attribute DOMString type; */
  nsresult GetType(nsAString * aType);
  nsresult SetType(nsAString * aType);

  /* attribute DOMString useMap; */
  nsresult GetUseMap(nsAString * aUseMap);
  nsresult SetUseMap(nsAString * aUseMap);

  /* attribute DOMString value; */
  nsresult GetValue(nsAString * aValue);
  nsresult SetValue(nsAString * aValue);

  /* void blur (); */
  nsresult Blur();

  /* void focus (); */
  nsresult Focus();

  /* void select (); */
  nsresult Select();

  /* void click (); */
  nsresult Click();

}

