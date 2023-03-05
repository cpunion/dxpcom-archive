/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLStyleElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLStyleElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLStyleElement */
const char[] NS_IDOMHTMLSTYLEELEMENT_IID_STR = "a6cf908d-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLSTYLEELEMENT_IID= 
  {0xa6cf908d, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLStyleElement interface is the interface to a [X]HTML
 * style element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLStyleElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLSTYLEELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLSTYLEELEMENT_IID;

  /* attribute boolean disabled; */
  nsresult GetDisabled(PRBool *aDisabled);
  nsresult SetDisabled(PRBool aDisabled);

  /* attribute DOMString media; */
  nsresult GetMedia(nsAString * aMedia);
  nsresult SetMedia(nsAString * aMedia);

  /* attribute DOMString type; */
  nsresult GetType(nsAString * aType);
  nsresult SetType(nsAString * aType);

}

