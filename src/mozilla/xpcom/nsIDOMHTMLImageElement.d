/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLImageElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLImageElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLImageElement */
const char[] NS_IDOMHTMLIMAGEELEMENT_IID_STR = "a6cf90ab-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLIMAGEELEMENT_IID= 
  {0xa6cf90ab, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLImageElement interface is the interface to a [X]HTML
 * img element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLImageElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLIMAGEELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLIMAGEELEMENT_IID;

  /* attribute DOMString name; */
  nsresult GetName(nsAString * aName);
  nsresult SetName(nsAString * aName);

  /* attribute DOMString align; */
  nsresult GetAlign(nsAString * aAlign);
  nsresult SetAlign(nsAString * aAlign);

  /* attribute DOMString alt; */
  nsresult GetAlt(nsAString * aAlt);
  nsresult SetAlt(nsAString * aAlt);

  /* attribute DOMString border; */
  nsresult GetBorder(nsAString * aBorder);
  nsresult SetBorder(nsAString * aBorder);

  /* attribute long height; */
  nsresult GetHeight(PRInt32 *aHeight);
  nsresult SetHeight(PRInt32 aHeight);

  /* attribute long hspace; */
  nsresult GetHspace(PRInt32 *aHspace);
  nsresult SetHspace(PRInt32 aHspace);

  /* attribute boolean isMap; */
  nsresult GetIsMap(PRBool *aIsMap);
  nsresult SetIsMap(PRBool aIsMap);

  /* attribute DOMString longDesc; */
  nsresult GetLongDesc(nsAString * aLongDesc);
  nsresult SetLongDesc(nsAString * aLongDesc);

  /* attribute DOMString src; */
  nsresult GetSrc(nsAString * aSrc);
  nsresult SetSrc(nsAString * aSrc);

  /* attribute DOMString useMap; */
  nsresult GetUseMap(nsAString * aUseMap);
  nsresult SetUseMap(nsAString * aUseMap);

  /* attribute long vspace; */
  nsresult GetVspace(PRInt32 *aVspace);
  nsresult SetVspace(PRInt32 aVspace);

  /* attribute long width; */
  nsresult GetWidth(PRInt32 *aWidth);
  nsresult SetWidth(PRInt32 aWidth);

}

