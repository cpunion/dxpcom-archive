/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLTableColElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLTableColElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLTableColElement */
const char[] NS_IDOMHTMLTABLECOLELEMENT_IID_STR = "a6cf90b4-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLTABLECOLELEMENT_IID= 
  {0xa6cf90b4, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLTableColElement interface is the interface to a
 * [X]HTML col element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLTableColElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLTABLECOLELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLTABLECOLELEMENT_IID;

  /* attribute DOMString align; */
  nsresult GetAlign(nsAString * aAlign);
  nsresult SetAlign(nsAString * aAlign);

  /* attribute DOMString ch; */
  nsresult GetCh(nsAString * aCh);
  nsresult SetCh(nsAString * aCh);

  /* attribute DOMString chOff; */
  nsresult GetChOff(nsAString * aChOff);
  nsresult SetChOff(nsAString * aChOff);

  /* attribute long span; */
  nsresult GetSpan(PRInt32 *aSpan);
  nsresult SetSpan(PRInt32 aSpan);

  /* attribute DOMString vAlign; */
  nsresult GetVAlign(nsAString * aVAlign);
  nsresult SetVAlign(nsAString * aVAlign);

  /* attribute DOMString width; */
  nsresult GetWidth(nsAString * aWidth);
  nsresult SetWidth(nsAString * aWidth);

}

