/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLParamElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLParamElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLParamElement */
const char[] NS_IDOMHTMLPARAMELEMENT_IID_STR = "a6cf90ad-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLPARAMELEMENT_IID= 
  {0xa6cf90ad, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLParamElement interface is the interface to a [X]HTML
 * param element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLParamElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLPARAMELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLPARAMELEMENT_IID;

  /* attribute DOMString name; */
  nsresult GetName(nsAString * aName);
  nsresult SetName(nsAString * aName);

  /* attribute DOMString type; */
  nsresult GetType(nsAString * aType);
  nsresult SetType(nsAString * aType);

  /* attribute DOMString value; */
  nsresult GetValue(nsAString * aValue);
  nsresult SetValue(nsAString * aValue);

  /* attribute DOMString valueType; */
  nsresult GetValueType(nsAString * aValueType);
  nsresult SetValueType(nsAString * aValueType);

}

