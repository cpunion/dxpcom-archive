/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLIsIndexElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLIsIndexElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLIsIndexElement */
const char[] NS_IDOMHTMLISINDEXELEMENT_IID_STR = "a6cf908c-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLISINDEXELEMENT_IID= 
  {0xa6cf908c, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLIsIndexElement interface is the interface to a
 * [X]HTML isindex element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLIsIndexElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLISINDEXELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLISINDEXELEMENT_IID;

  /* readonly attribute nsIDOMHTMLFormElement form; */
  nsresult GetForm(nsIDOMHTMLFormElement  *aForm);

  /* attribute DOMString prompt; */
  nsresult GetPrompt(nsAString * aPrompt);
  nsresult SetPrompt(nsAString * aPrompt);

}

