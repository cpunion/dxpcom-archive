/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLModElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLModElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLModElement */
const char[] NS_IDOMHTMLMODELEMENT_IID_STR = "a6cf90a9-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLMODELEMENT_IID= 
  {0xa6cf90a9, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLModElement interface is the interface to a [X]HTML
 * ins and del element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLModElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLMODELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLMODELEMENT_IID;

  /* attribute DOMString cite; */
  nsresult GetCite(nsAString * aCite);
  nsresult SetCite(nsAString * aCite);

  /* attribute DOMString dateTime; */
  nsresult GetDateTime(nsAString * aDateTime);
  nsresult SetDateTime(nsAString * aDateTime);

}

