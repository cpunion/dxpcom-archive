/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLTableCellElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLTableCellElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLTableCellElement */
const char[] NS_IDOMHTMLTABLECELLELEMENT_IID_STR = "a6cf90b7-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLTABLECELLELEMENT_IID= 
  {0xa6cf90b7, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLTableCellElement interface is the interface to a
 * [X]HTML td element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLTableCellElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLTABLECELLELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLTABLECELLELEMENT_IID;

  /* readonly attribute long cellIndex; */
  nsresult GetCellIndex(PRInt32 *aCellIndex);

  /* attribute DOMString abbr; */
  nsresult GetAbbr(nsAString * aAbbr);
  nsresult SetAbbr(nsAString * aAbbr);

  /* attribute DOMString align; */
  nsresult GetAlign(nsAString * aAlign);
  nsresult SetAlign(nsAString * aAlign);

  /* attribute DOMString axis; */
  nsresult GetAxis(nsAString * aAxis);
  nsresult SetAxis(nsAString * aAxis);

  /* attribute DOMString bgColor; */
  nsresult GetBgColor(nsAString * aBgColor);
  nsresult SetBgColor(nsAString * aBgColor);

  /* attribute DOMString ch; */
  nsresult GetCh(nsAString * aCh);
  nsresult SetCh(nsAString * aCh);

  /* attribute DOMString chOff; */
  nsresult GetChOff(nsAString * aChOff);
  nsresult SetChOff(nsAString * aChOff);

  /* attribute long colSpan; */
  nsresult GetColSpan(PRInt32 *aColSpan);
  nsresult SetColSpan(PRInt32 aColSpan);

  /* attribute DOMString headers; */
  nsresult GetHeaders(nsAString * aHeaders);
  nsresult SetHeaders(nsAString * aHeaders);

  /* attribute DOMString height; */
  nsresult GetHeight(nsAString * aHeight);
  nsresult SetHeight(nsAString * aHeight);

  /* attribute boolean noWrap; */
  nsresult GetNoWrap(PRBool *aNoWrap);
  nsresult SetNoWrap(PRBool aNoWrap);

  /* attribute long rowSpan; */
  nsresult GetRowSpan(PRInt32 *aRowSpan);
  nsresult SetRowSpan(PRInt32 aRowSpan);

  /* attribute DOMString scope; */
  nsresult GetScope(nsAString * aScope);
  nsresult SetScope(nsAString * aScope);

  /* attribute DOMString vAlign; */
  nsresult GetVAlign(nsAString * aVAlign);
  nsresult SetVAlign(nsAString * aVAlign);

  /* attribute DOMString width; */
  nsresult GetWidth(nsAString * aWidth);
  nsresult SetWidth(nsAString * aWidth);

}

