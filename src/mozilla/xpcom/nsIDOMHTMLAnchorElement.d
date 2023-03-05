/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLAnchorElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLAnchorElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLAnchorElement */
const char[] NS_IDOMHTMLANCHORELEMENT_IID_STR = "a6cf90aa-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLANCHORELEMENT_IID= 
  {0xa6cf90aa, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLAnchorElement interface is the interface to a [X]HTML
 * a element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLAnchorElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLANCHORELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLANCHORELEMENT_IID;

  /* attribute DOMString accessKey; */
  nsresult GetAccessKey(nsAString * aAccessKey);
  nsresult SetAccessKey(nsAString * aAccessKey);

  /* attribute DOMString charset; */
  nsresult GetCharset(nsAString * aCharset);
  nsresult SetCharset(nsAString * aCharset);

  /* attribute DOMString coords; */
  nsresult GetCoords(nsAString * aCoords);
  nsresult SetCoords(nsAString * aCoords);

  /* attribute DOMString href; */
  nsresult GetHref(nsAString * aHref);
  nsresult SetHref(nsAString * aHref);

  /* attribute DOMString hreflang; */
  nsresult GetHreflang(nsAString * aHreflang);
  nsresult SetHreflang(nsAString * aHreflang);

  /* attribute DOMString name; */
  nsresult GetName(nsAString * aName);
  nsresult SetName(nsAString * aName);

  /* attribute DOMString rel; */
  nsresult GetRel(nsAString * aRel);
  nsresult SetRel(nsAString * aRel);

  /* attribute DOMString rev; */
  nsresult GetRev(nsAString * aRev);
  nsresult SetRev(nsAString * aRev);

  /* attribute DOMString shape; */
  nsresult GetShape(nsAString * aShape);
  nsresult SetShape(nsAString * aShape);

  /* attribute long tabIndex; */
  nsresult GetTabIndex(PRInt32 *aTabIndex);
  nsresult SetTabIndex(PRInt32 aTabIndex);

  /* attribute DOMString target; */
  nsresult GetTarget(nsAString * aTarget);
  nsresult SetTarget(nsAString * aTarget);

  /* attribute DOMString type; */
  nsresult GetType(nsAString * aType);
  nsresult SetType(nsAString * aType);

  /* void blur (); */
  nsresult Blur();

  /* void focus (); */
  nsresult Focus();

}

