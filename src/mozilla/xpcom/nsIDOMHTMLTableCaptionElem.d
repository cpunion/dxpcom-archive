/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLTableCaptionElem.idl
 */

module mozilla.xpcom.nsIDOMHTMLTableCaptionElem;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLTableCaptionElement */
const char[] NS_IDOMHTMLTABLECAPTIONELEMENT_IID_STR = "a6cf90b3-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLTABLECAPTIONELEMENT_IID= 
  {0xa6cf90b3, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

extern(Windows)
interface nsIDOMHTMLTableCaptionElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLTABLECAPTIONELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLTABLECAPTIONELEMENT_IID;

  /**
 * The nsIDOMHTMLTableCaptionElement interface is the interface to a
 * [X]HTML caption element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
  /* attribute DOMString align; */
  nsresult GetAlign(nsAString * aAlign);
  nsresult SetAlign(nsAString * aAlign);

}

