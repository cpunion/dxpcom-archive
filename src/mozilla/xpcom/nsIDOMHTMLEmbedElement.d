/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLEmbedElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLEmbedElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLEmbedElement */
const char[] NS_IDOMHTMLEMBEDELEMENT_IID_STR = "123f90ab-15b3-11d2-456e-00805f8add32";

const nsIID NS_IDOMHTMLEMBEDELEMENT_IID= 
  {0x123f90ab, 0x15b3, 0x11d2, 
    [ 0x45, 0x6e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLEmbedElement interface is the interface to a [X]HTML
 * embed element.
 *
 * Note that this is not a W3C standard interface, it is Mozilla
 * proprietary.
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLEmbedElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLEMBEDELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLEMBEDELEMENT_IID;

  /* attribute DOMString align; */
  nsresult GetAlign(nsAString * aAlign);
  nsresult SetAlign(nsAString * aAlign);

  /* attribute DOMString height; */
  nsresult GetHeight(nsAString * aHeight);
  nsresult SetHeight(nsAString * aHeight);

  /* attribute DOMString name; */
  nsresult GetName(nsAString * aName);
  nsresult SetName(nsAString * aName);

  /* attribute DOMString src; */
  nsresult GetSrc(nsAString * aSrc);
  nsresult SetSrc(nsAString * aSrc);

  /* attribute DOMString type; */
  nsresult GetType(nsAString * aType);
  nsresult SetType(nsAString * aType);

  /* attribute DOMString width; */
  nsresult GetWidth(nsAString * aWidth);
  nsresult SetWidth(nsAString * aWidth);

}

