/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLLabelElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLLabelElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLLabelElement */
const char[] NS_IDOMHTMLLABELELEMENT_IID_STR = "a6cf9096-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLLABELELEMENT_IID= 
  {0xa6cf9096, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLLabelElement interface is the interface to a [X]HTML
 * label element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLLabelElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLLABELELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLLABELELEMENT_IID;

  /* readonly attribute nsIDOMHTMLFormElement form; */
  nsresult GetForm(nsIDOMHTMLFormElement  *aForm);

  /* attribute DOMString accessKey; */
  nsresult GetAccessKey(nsAString * aAccessKey);
  nsresult SetAccessKey(nsAString * aAccessKey);

  /* attribute DOMString htmlFor; */
  nsresult GetHtmlFor(nsAString * aHtmlFor);
  nsresult SetHtmlFor(nsAString * aHtmlFor);

}

