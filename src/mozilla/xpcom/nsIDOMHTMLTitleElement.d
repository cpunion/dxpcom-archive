/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLTitleElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLTitleElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLTitleElement */
const char[] NS_IDOMHTMLTITLEELEMENT_IID_STR = "a6cf9089-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLTITLEELEMENT_IID= 
  {0xa6cf9089, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLTitleElement interface is the interface to a [X]HTML
 * title element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLTitleElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLTITLEELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLTITLEELEMENT_IID;

  /* attribute DOMString text; */
  nsresult GetText(nsAString * aText);
  nsresult SetText(nsAString * aText);

}

