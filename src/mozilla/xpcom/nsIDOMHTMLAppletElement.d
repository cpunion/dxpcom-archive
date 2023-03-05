/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLAppletElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLAppletElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLAppletElement */
const char[] NS_IDOMHTMLAPPLETELEMENT_IID_STR = "a6cf90ae-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLAPPLETELEMENT_IID= 
  {0xa6cf90ae, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLAppletElement interface is the interface to a [X]HTML
 * applet element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLAppletElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLAPPLETELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLAPPLETELEMENT_IID;

  /* attribute DOMString align; */
  nsresult GetAlign(nsAString * aAlign);
  nsresult SetAlign(nsAString * aAlign);

  /* attribute DOMString alt; */
  nsresult GetAlt(nsAString * aAlt);
  nsresult SetAlt(nsAString * aAlt);

  /* attribute DOMString archive; */
  nsresult GetArchive(nsAString * aArchive);
  nsresult SetArchive(nsAString * aArchive);

  /* attribute DOMString code; */
  nsresult GetCode(nsAString * aCode);
  nsresult SetCode(nsAString * aCode);

  /* attribute DOMString codeBase; */
  nsresult GetCodeBase(nsAString * aCodeBase);
  nsresult SetCodeBase(nsAString * aCodeBase);

  /* attribute DOMString height; */
  nsresult GetHeight(nsAString * aHeight);
  nsresult SetHeight(nsAString * aHeight);

  /* attribute long hspace; */
  nsresult GetHspace(PRInt32 *aHspace);
  nsresult SetHspace(PRInt32 aHspace);

  /* attribute DOMString name; */
  nsresult GetName(nsAString * aName);
  nsresult SetName(nsAString * aName);

  /* attribute DOMString object; */
  nsresult GetObject(nsAString * aObject);
  nsresult SetObject(nsAString * aObject);

  /* attribute long vspace; */
  nsresult GetVspace(PRInt32 *aVspace);
  nsresult SetVspace(PRInt32 aVspace);

  /* attribute DOMString width; */
  nsresult GetWidth(nsAString * aWidth);
  nsresult SetWidth(nsAString * aWidth);

}

