/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLFormElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLFormElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLFormElement */
const char[] NS_IDOMHTMLFORMELEMENT_IID_STR = "a6cf908f-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLFORMELEMENT_IID= 
  {0xa6cf908f, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

extern(Windows)
interface nsIDOMHTMLFormElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLFORMELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLFORMELEMENT_IID;

  /**
 * The nsIDOMHTMLFormElement interface is the interface to a [X]HTML
 * form element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
  /* readonly attribute nsIDOMHTMLCollection elements; */
  nsresult GetElements(nsIDOMHTMLCollection  *aElements);

  /* readonly attribute long length; */
  nsresult GetLength(PRInt32 *aLength);

  /* attribute DOMString name; */
  nsresult GetName(nsAString * aName);
  nsresult SetName(nsAString * aName);

  /* attribute DOMString acceptCharset; */
  nsresult GetAcceptCharset(nsAString * aAcceptCharset);
  nsresult SetAcceptCharset(nsAString * aAcceptCharset);

  /* attribute DOMString action; */
  nsresult GetAction(nsAString * aAction);
  nsresult SetAction(nsAString * aAction);

  /* attribute DOMString enctype; */
  nsresult GetEnctype(nsAString * aEnctype);
  nsresult SetEnctype(nsAString * aEnctype);

  /* attribute DOMString method; */
  nsresult GetMethod(nsAString * aMethod);
  nsresult SetMethod(nsAString * aMethod);

  /* attribute DOMString target; */
  nsresult GetTarget(nsAString * aTarget);
  nsresult SetTarget(nsAString * aTarget);

  /* void submit (); */
  nsresult Submit();

  /* void reset (); */
  nsresult Reset();

}

