/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLOListElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLOListElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLOListElement */
const char[] NS_IDOMHTMLOLISTELEMENT_IID_STR = "a6cf909a-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLOLISTELEMENT_IID= 
  {0xa6cf909a, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLOListElement interface is the interface to a [X]HTML
 * ol element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLOListElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLOLISTELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLOLISTELEMENT_IID;

  /* attribute boolean compact; */
  nsresult GetCompact(PRBool *aCompact);
  nsresult SetCompact(PRBool aCompact);

  /* attribute long start; */
  nsresult GetStart(PRInt32 *aStart);
  nsresult SetStart(PRInt32 aStart);

  /* attribute DOMString type; */
  nsresult GetType(nsAString * aType);
  nsresult SetType(nsAString * aType);

}

