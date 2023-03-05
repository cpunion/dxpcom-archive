/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLHtmlElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLHtmlElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLHtmlElement */
const char[] NS_IDOMHTMLHTMLELEMENT_IID_STR = "a6cf9086-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLHTMLELEMENT_IID= 
  {0xa6cf9086, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLHtmlElement interface is the interface to a [X]HTML
 * html element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLHtmlElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLHTMLELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLHTMLELEMENT_IID;

  /* attribute DOMString version; */
  nsresult GetVersion(nsAString * aVersion);
  nsresult SetVersion(nsAString * aVersion);

}

