/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLHeadingElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLHeadingElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLHeadingElement */
const char[] NS_IDOMHTMLHEADINGELEMENT_IID_STR = "a6cf90a2-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLHEADINGELEMENT_IID= 
  {0xa6cf90a2, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLHeadingElement interface is the interface to a
 * [X]HTML h1, h2, h3, ... element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLHeadingElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLHEADINGELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLHEADINGELEMENT_IID;

  /* attribute DOMString align; */
  nsresult GetAlign(nsAString * aAlign);
  nsresult SetAlign(nsAString * aAlign);

}

