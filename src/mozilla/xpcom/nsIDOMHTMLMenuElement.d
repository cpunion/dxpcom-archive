/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLMenuElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLMenuElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLMenuElement */
const char[] NS_IDOMHTMLMENUELEMENT_IID_STR = "a6cf909d-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLMENUELEMENT_IID= 
  {0xa6cf909d, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLMenuElement interface is the interface to a [X]HTML
 * menu element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLMenuElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLMENUELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLMENUELEMENT_IID;

  /* attribute boolean compact; */
  nsresult GetCompact(PRBool *aCompact);
  nsresult SetCompact(PRBool aCompact);

}

