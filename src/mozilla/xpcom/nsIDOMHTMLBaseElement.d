/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLBaseElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLBaseElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLBaseElement */
const char[] NS_IDOMHTMLBASEELEMENT_IID_STR = "a6cf908b-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLBASEELEMENT_IID= 
  {0xa6cf908b, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLBaseElement interface is the interface to a [X]HTML
 * base element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLBaseElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLBASEELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLBASEELEMENT_IID;

  /* attribute DOMString href; */
  nsresult GetHref(nsAString * aHref);
  nsresult SetHref(nsAString * aHref);

  /* attribute DOMString target; */
  nsresult GetTarget(nsAString * aTarget);
  nsresult SetTarget(nsAString * aTarget);

}

