/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLMetaElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLMetaElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLMetaElement */
const char[] NS_IDOMHTMLMETAELEMENT_IID_STR = "a6cf908a-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLMETAELEMENT_IID= 
  {0xa6cf908a, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLMetaElement interface is the interface to a [X]HTML
 * meta element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLMetaElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLMETAELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLMETAELEMENT_IID;

  /* attribute DOMString content; */
  nsresult GetContent(nsAString * aContent);
  nsresult SetContent(nsAString * aContent);

  /* attribute DOMString httpEquiv; */
  nsresult GetHttpEquiv(nsAString * aHttpEquiv);
  nsresult SetHttpEquiv(nsAString * aHttpEquiv);

  /* attribute DOMString name; */
  nsresult GetName(nsAString * aName);
  nsresult SetName(nsAString * aName);

  /* attribute DOMString scheme; */
  nsresult GetScheme(nsAString * aScheme);
  nsresult SetScheme(nsAString * aScheme);

}

