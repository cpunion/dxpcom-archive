/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLBaseFontElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLBaseFontElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLBaseFontElement */
const char[] NS_IDOMHTMLBASEFONTELEMENT_IID_STR = "a6cf90a6-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLBASEFONTELEMENT_IID= 
  {0xa6cf90a6, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLBaseFontElement interface is the interface to a
 * [X]HTML basefont element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLBaseFontElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLBASEFONTELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLBASEFONTELEMENT_IID;

  /* attribute DOMString color; */
  nsresult GetColor(nsAString * aColor);
  nsresult SetColor(nsAString * aColor);

  /* attribute DOMString face; */
  nsresult GetFace(nsAString * aFace);
  nsresult SetFace(nsAString * aFace);

  /* attribute long size; */
  nsresult GetSize(PRInt32 *aSize);
  nsresult SetSize(PRInt32 aSize);

}

