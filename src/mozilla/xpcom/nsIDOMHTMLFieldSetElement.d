/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLFieldSetElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLFieldSetElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLFieldSetElement */
const char[] NS_IDOMHTMLFIELDSETELEMENT_IID_STR = "a6cf9097-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLFIELDSETELEMENT_IID= 
  {0xa6cf9097, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLFieldSetElement interface is the interface to a
 * [X]HTML fieldset element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLFieldSetElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLFIELDSETELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLFIELDSETELEMENT_IID;

  /* readonly attribute nsIDOMHTMLFormElement form; */
  nsresult GetForm(nsIDOMHTMLFormElement  *aForm);

}

