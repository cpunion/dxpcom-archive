/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLHRElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLHRElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLHRElement */
const char[] NS_IDOMHTMLHRELEMENT_IID_STR = "a6cf90a8-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLHRELEMENT_IID= 
  {0xa6cf90a8, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLHRElement interface is the interface to a [X]HTML hr
 * element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLHRElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLHRELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLHRELEMENT_IID;

  /* attribute DOMString align; */
  nsresult GetAlign(nsAString * aAlign);
  nsresult SetAlign(nsAString * aAlign);

  /* attribute boolean noShade; */
  nsresult GetNoShade(PRBool *aNoShade);
  nsresult SetNoShade(PRBool aNoShade);

  /* attribute DOMString size; */
  nsresult GetSize(nsAString * aSize);
  nsresult SetSize(nsAString * aSize);

  /* attribute DOMString width; */
  nsresult GetWidth(nsAString * aWidth);
  nsresult SetWidth(nsAString * aWidth);

}

