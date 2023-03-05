/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLBRElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLBRElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLBRElement */
const char[] NS_IDOMHTMLBRELEMENT_IID_STR = "a6cf90a5-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLBRELEMENT_IID= 
  {0xa6cf90a5, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLBRElement interface is the interface to a [X]HTML br
 * element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLBRElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLBRELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLBRELEMENT_IID;

  /* attribute DOMString clear; */
  nsresult GetClear(nsAString * aClear);
  nsresult SetClear(nsAString * aClear);

}

