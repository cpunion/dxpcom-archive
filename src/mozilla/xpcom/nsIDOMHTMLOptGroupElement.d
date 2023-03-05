/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLOptGroupElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLOptGroupElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLOptGroupElement */
const char[] NS_IDOMHTMLOPTGROUPELEMENT_IID_STR = "a6cf9091-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLOPTGROUPELEMENT_IID= 
  {0xa6cf9091, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLOptGroupElement interface is the interface to a
 * [X]HTML optgroup element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLOptGroupElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLOPTGROUPELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLOPTGROUPELEMENT_IID;

  /* attribute boolean disabled; */
  nsresult GetDisabled(PRBool *aDisabled);
  nsresult SetDisabled(PRBool aDisabled);

  /* attribute DOMString label; */
  nsresult GetLabel(nsAString * aLabel);
  nsresult SetLabel(nsAString * aLabel);

}

