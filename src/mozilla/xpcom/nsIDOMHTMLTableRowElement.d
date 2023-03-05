/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLTableRowElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLTableRowElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLTableRowElement */
const char[] NS_IDOMHTMLTABLEROWELEMENT_IID_STR = "a6cf90b6-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLTABLEROWELEMENT_IID= 
  {0xa6cf90b6, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLTableRowElement interface is the interface to a
 * [X]HTML tr element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLTableRowElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLTABLEROWELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLTABLEROWELEMENT_IID;

  /* readonly attribute long rowIndex; */
  nsresult GetRowIndex(PRInt32 *aRowIndex);

  /* readonly attribute long sectionRowIndex; */
  nsresult GetSectionRowIndex(PRInt32 *aSectionRowIndex);

  /* readonly attribute nsIDOMHTMLCollection cells; */
  nsresult GetCells(nsIDOMHTMLCollection  *aCells);

  /* attribute DOMString align; */
  nsresult GetAlign(nsAString * aAlign);
  nsresult SetAlign(nsAString * aAlign);

  /* attribute DOMString bgColor; */
  nsresult GetBgColor(nsAString * aBgColor);
  nsresult SetBgColor(nsAString * aBgColor);

  /* attribute DOMString ch; */
  nsresult GetCh(nsAString * aCh);
  nsresult SetCh(nsAString * aCh);

  /* attribute DOMString chOff; */
  nsresult GetChOff(nsAString * aChOff);
  nsresult SetChOff(nsAString * aChOff);

  /* attribute DOMString vAlign; */
  nsresult GetVAlign(nsAString * aVAlign);
  nsresult SetVAlign(nsAString * aVAlign);

  /* nsIDOMHTMLElement insertCell (in long index)  raises (DOMException); */
  nsresult InsertCell(PRInt32 index, nsIDOMHTMLElement *_retval);

  /* void deleteCell (in long index)  raises (DOMException); */
  nsresult DeleteCell(PRInt32 index);

}

