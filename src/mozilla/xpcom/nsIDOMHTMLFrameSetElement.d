/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLFrameSetElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLFrameSetElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLFrameSetElement */
const char[] NS_IDOMHTMLFRAMESETELEMENT_IID_STR = "a6cf90b8-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLFRAMESETELEMENT_IID= 
  {0xa6cf90b8, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLFrameSetElement interface is the interface to a
 * [X]HTML frameset element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLFrameSetElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLFRAMESETELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLFRAMESETELEMENT_IID;

  /* attribute DOMString cols; */
  nsresult GetCols(nsAString * aCols);
  nsresult SetCols(nsAString * aCols);

  /* attribute DOMString rows; */
  nsresult GetRows(nsAString * aRows);
  nsresult SetRows(nsAString * aRows);

}

