/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLLinkElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLLinkElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLLinkElement */
const char[] NS_IDOMHTMLLINKELEMENT_IID_STR = "a6cf9088-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLLINKELEMENT_IID= 
  {0xa6cf9088, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLLinkElement interface is the interface to a [X]HTML
 * link element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLLinkElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLLINKELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLLINKELEMENT_IID;

  /* attribute boolean disabled; */
  nsresult GetDisabled(PRBool *aDisabled);
  nsresult SetDisabled(PRBool aDisabled);

  /* attribute DOMString charset; */
  nsresult GetCharset(nsAString * aCharset);
  nsresult SetCharset(nsAString * aCharset);

  /* attribute DOMString href; */
  nsresult GetHref(nsAString * aHref);
  nsresult SetHref(nsAString * aHref);

  /* attribute DOMString hreflang; */
  nsresult GetHreflang(nsAString * aHreflang);
  nsresult SetHreflang(nsAString * aHreflang);

  /* attribute DOMString media; */
  nsresult GetMedia(nsAString * aMedia);
  nsresult SetMedia(nsAString * aMedia);

  /* attribute DOMString rel; */
  nsresult GetRel(nsAString * aRel);
  nsresult SetRel(nsAString * aRel);

  /* attribute DOMString rev; */
  nsresult GetRev(nsAString * aRev);
  nsresult SetRev(nsAString * aRev);

  /* attribute DOMString target; */
  nsresult GetTarget(nsAString * aTarget);
  nsresult SetTarget(nsAString * aTarget);

  /* attribute DOMString type; */
  nsresult GetType(nsAString * aType);
  nsresult SetType(nsAString * aType);

}

