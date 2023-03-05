/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLScriptElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLScriptElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLScriptElement */
const char[] NS_IDOMHTMLSCRIPTELEMENT_IID_STR = "a6cf90b1-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLSCRIPTELEMENT_IID= 
  {0xa6cf90b1, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLScriptElement interface is the interface to a [X]HTML
 * script element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLScriptElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLSCRIPTELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLSCRIPTELEMENT_IID;

  /* attribute DOMString text; */
  nsresult GetText(nsAString * aText);
  nsresult SetText(nsAString * aText);

  /* attribute DOMString htmlFor; */
  nsresult GetHtmlFor(nsAString * aHtmlFor);
  nsresult SetHtmlFor(nsAString * aHtmlFor);

  /* attribute DOMString event; */
  nsresult GetEvent(nsAString * aEvent);
  nsresult SetEvent(nsAString * aEvent);

  /* attribute DOMString charset; */
  nsresult GetCharset(nsAString * aCharset);
  nsresult SetCharset(nsAString * aCharset);

  /* attribute boolean defer; */
  nsresult GetDefer(PRBool *aDefer);
  nsresult SetDefer(PRBool aDefer);

  /* attribute DOMString src; */
  nsresult GetSrc(nsAString * aSrc);
  nsresult SetSrc(nsAString * aSrc);

  /* attribute DOMString type; */
  nsresult GetType(nsAString * aType);
  nsresult SetType(nsAString * aType);

}

