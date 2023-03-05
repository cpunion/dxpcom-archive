/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLLegendElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLLegendElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLLegendElement */
const char[] NS_IDOMHTMLLEGENDELEMENT_IID_STR = "a6cf9098-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLLEGENDELEMENT_IID= 
  {0xa6cf9098, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLLegendElement interface is the interface to a [X]HTML
 * legend element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLLegendElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLLEGENDELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLLEGENDELEMENT_IID;

  /* readonly attribute nsIDOMHTMLFormElement form; */
  nsresult GetForm(nsIDOMHTMLFormElement  *aForm);

  /* attribute DOMString accessKey; */
  nsresult GetAccessKey(nsAString * aAccessKey);
  nsresult SetAccessKey(nsAString * aAccessKey);

  /* attribute DOMString align; */
  nsresult GetAlign(nsAString * aAlign);
  nsresult SetAlign(nsAString * aAlign);

}

