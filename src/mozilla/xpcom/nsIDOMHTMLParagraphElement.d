/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLParagraphElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLParagraphElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLParagraphElement */
const char[] NS_IDOMHTMLPARAGRAPHELEMENT_IID_STR = "a6cf90a1-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLPARAGRAPHELEMENT_IID= 
  {0xa6cf90a1, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLParagraphElement interface is the interface to a
 * [X]HTML p element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLParagraphElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLPARAGRAPHELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLPARAGRAPHELEMENT_IID;

  /* attribute DOMString align; */
  nsresult GetAlign(nsAString * aAlign);
  nsresult SetAlign(nsAString * aAlign);

}

