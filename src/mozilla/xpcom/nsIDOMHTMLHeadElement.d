/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLHeadElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLHeadElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLHeadElement */
const char[] NS_IDOMHTMLHEADELEMENT_IID_STR = "a6cf9087-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLHEADELEMENT_IID= 
  {0xa6cf9087, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLHeadElement interface is the interface to a [X]HTML
 * head element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLHeadElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLHEADELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLHEADELEMENT_IID;

  /* attribute DOMString profile; */
  nsresult GetProfile(nsAString * aProfile);
  nsresult SetProfile(nsAString * aProfile);

}

