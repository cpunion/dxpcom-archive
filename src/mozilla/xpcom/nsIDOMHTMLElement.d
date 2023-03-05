/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMElement;


/* starting interface:    nsIDOMHTMLElement */
const char[] NS_IDOMHTMLELEMENT_IID_STR = "a6cf9085-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLELEMENT_IID= 
  {0xa6cf9085, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

extern(Windows)
interface nsIDOMHTMLElement : nsIDOMElement {
  static const char[] IID_STR = NS_IDOMHTMLELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLELEMENT_IID;

  /**
 * The nsIDOMHTMLElement interface is the primary [X]HTML element
 * interface. It represents a single [X]HTML element in the document
 * tree.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
  /* attribute DOMString id; */
  nsresult GetId(nsAString * aId);
  nsresult SetId(nsAString * aId);

  /* attribute DOMString title; */
  nsresult GetTitle(nsAString * aTitle);
  nsresult SetTitle(nsAString * aTitle);

  /* attribute DOMString lang; */
  nsresult GetLang(nsAString * aLang);
  nsresult SetLang(nsAString * aLang);

  /* attribute DOMString dir; */
  nsresult GetDir(nsAString * aDir);
  nsresult SetDir(nsAString * aDir);

  /* attribute DOMString className; */
  nsresult GetClassName(nsAString * aClassName);
  nsresult SetClassName(nsAString * aClassName);

}

