/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLDivElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLDivElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLDivElement */
const char[] NS_IDOMHTMLDIVELEMENT_IID_STR = "a6cf90a0-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLDIVELEMENT_IID= 
  {0xa6cf90a0, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLDivElement interface is the interface to a [X]HTML
 * div element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLDivElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLDIVELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLDIVELEMENT_IID;

  /* attribute DOMString align; */
  nsresult GetAlign(nsAString * aAlign);
  nsresult SetAlign(nsAString * aAlign);

}

