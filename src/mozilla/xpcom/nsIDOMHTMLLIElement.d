/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLLIElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLLIElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLLIElement */
const char[] NS_IDOMHTMLLIELEMENT_IID_STR = "a6cf909e-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLLIELEMENT_IID= 
  {0xa6cf909e, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLLIElement interface is the interface to a [X]HTML li
 * element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLLIElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLLIELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLLIELEMENT_IID;

  /* attribute DOMString type; */
  nsresult GetType(nsAString * aType);
  nsresult SetType(nsAString * aType);

  /* attribute long value; */
  nsresult GetValue(PRInt32 *aValue);
  nsresult SetValue(PRInt32 aValue);

}

