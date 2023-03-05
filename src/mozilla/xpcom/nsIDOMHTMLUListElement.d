/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLUListElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLUListElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLUListElement */
const char[] NS_IDOMHTMLULISTELEMENT_IID_STR = "a6cf9099-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLULISTELEMENT_IID= 
  {0xa6cf9099, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLUListElement interface is the interface to a [X]HTML
 * ul element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLUListElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLULISTELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLULISTELEMENT_IID;

  /* attribute boolean compact; */
  nsresult GetCompact(PRBool *aCompact);
  nsresult SetCompact(PRBool aCompact);

  /* attribute DOMString type; */
  nsresult GetType(nsAString * aType);
  nsresult SetType(nsAString * aType);

}

