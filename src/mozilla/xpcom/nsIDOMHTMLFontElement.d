/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLFontElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLFontElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLFontElement */
const char[] NS_IDOMHTMLFONTELEMENT_IID_STR = "a6cf90a7-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLFONTELEMENT_IID= 
  {0xa6cf90a7, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLFontElement interface is the interface to a [X]HTML
 * font element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLFontElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLFONTELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLFONTELEMENT_IID;

  /* attribute DOMString color; */
  nsresult GetColor(nsAString * aColor);
  nsresult SetColor(nsAString * aColor);

  /* attribute DOMString face; */
  nsresult GetFace(nsAString * aFace);
  nsresult SetFace(nsAString * aFace);

  /* attribute DOMString size; */
  nsresult GetSize(nsAString * aSize);
  nsresult SetSize(nsAString * aSize);

}

