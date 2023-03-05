/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLPreElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLPreElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLPreElement */
const char[] NS_IDOMHTMLPREELEMENT_IID_STR = "a6cf90a4-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLPREELEMENT_IID= 
  {0xa6cf90a4, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLPreElement interface is the interface to a [X]HTML
 * pre element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLPreElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLPREELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLPREELEMENT_IID;

  /* attribute long width; */
  nsresult GetWidth(PRInt32 *aWidth);
  nsresult SetWidth(PRInt32 aWidth);

}

