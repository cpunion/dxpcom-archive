/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLAreaElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLAreaElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLAreaElement */
const char[] NS_IDOMHTMLAREAELEMENT_IID_STR = "a6cf90b0-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLAREAELEMENT_IID= 
  {0xa6cf90b0, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLAreaElement interface is the interface to a [X]HTML
 * area element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLAreaElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLAREAELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLAREAELEMENT_IID;

  /* attribute DOMString accessKey; */
  nsresult GetAccessKey(nsAString * aAccessKey);
  nsresult SetAccessKey(nsAString * aAccessKey);

  /* attribute DOMString alt; */
  nsresult GetAlt(nsAString * aAlt);
  nsresult SetAlt(nsAString * aAlt);

  /* attribute DOMString coords; */
  nsresult GetCoords(nsAString * aCoords);
  nsresult SetCoords(nsAString * aCoords);

  /* attribute DOMString href; */
  nsresult GetHref(nsAString * aHref);
  nsresult SetHref(nsAString * aHref);

  /* attribute boolean noHref; */
  nsresult GetNoHref(PRBool *aNoHref);
  nsresult SetNoHref(PRBool aNoHref);

  /* attribute DOMString shape; */
  nsresult GetShape(nsAString * aShape);
  nsresult SetShape(nsAString * aShape);

  /* attribute long tabIndex; */
  nsresult GetTabIndex(PRInt32 *aTabIndex);
  nsresult SetTabIndex(PRInt32 aTabIndex);

  /* attribute DOMString target; */
  nsresult GetTarget(nsAString * aTarget);
  nsresult SetTarget(nsAString * aTarget);

}

