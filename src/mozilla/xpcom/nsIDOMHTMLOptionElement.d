/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLOptionElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLOptionElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLOptionElement */
const char[] NS_IDOMHTMLOPTIONELEMENT_IID_STR = "a6cf9092-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLOPTIONELEMENT_IID= 
  {0xa6cf9092, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLOptionElement interface is the interface to a [X]HTML
 * option element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLOptionElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLOPTIONELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLOPTIONELEMENT_IID;

  /* readonly attribute nsIDOMHTMLFormElement form; */
  nsresult GetForm(nsIDOMHTMLFormElement  *aForm);

  /* attribute boolean defaultSelected; */
  nsresult GetDefaultSelected(PRBool *aDefaultSelected);
  nsresult SetDefaultSelected(PRBool aDefaultSelected);

  /* readonly attribute DOMString text; */
  nsresult GetText(nsAString * aText);

  /* readonly attribute long index; */
  nsresult GetIndex(PRInt32 *aIndex);

  /* attribute boolean disabled; */
  nsresult GetDisabled(PRBool *aDisabled);
  nsresult SetDisabled(PRBool aDisabled);

  /* attribute DOMString label; */
  nsresult GetLabel(nsAString * aLabel);
  nsresult SetLabel(nsAString * aLabel);

  /* attribute boolean selected; */
  nsresult GetSelected(PRBool *aSelected);
  nsresult SetSelected(PRBool aSelected);

  /* attribute DOMString value; */
  nsresult GetValue(nsAString * aValue);
  nsresult SetValue(nsAString * aValue);

}

