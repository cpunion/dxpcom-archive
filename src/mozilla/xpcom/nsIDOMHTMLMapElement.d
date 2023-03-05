/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLMapElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLMapElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLMapElement */
const char[] NS_IDOMHTMLMAPELEMENT_IID_STR = "a6cf90af-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLMAPELEMENT_IID= 
  {0xa6cf90af, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLMapElement interface is the interface to a [X]HTML
 * map element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLMapElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLMAPELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLMAPELEMENT_IID;

  /* readonly attribute nsIDOMHTMLCollection areas; */
  nsresult GetAreas(nsIDOMHTMLCollection  *aAreas);

  /* attribute DOMString name; */
  nsresult GetName(nsAString * aName);
  nsresult SetName(nsAString * aName);

}

