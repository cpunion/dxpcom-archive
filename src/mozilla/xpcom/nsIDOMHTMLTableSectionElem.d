/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLTableSectionElem.idl
 */

module mozilla.xpcom.nsIDOMHTMLTableSectionElem;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLTableSectionElement */
const char[] NS_IDOMHTMLTABLESECTIONELEMENT_IID_STR = "a6cf90b5-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLTABLESECTIONELEMENT_IID= 
  {0xa6cf90b5, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

extern(Windows)
interface nsIDOMHTMLTableSectionElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLTABLESECTIONELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLTABLESECTIONELEMENT_IID;

  /**
 * The nsIDOMHTMLTableSectionElement interface is the interface to a
 * [X]HTML thead, tbody, and tfoot element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
  /* attribute DOMString align; */
  nsresult GetAlign(nsAString * aAlign);
  nsresult SetAlign(nsAString * aAlign);

  /* attribute DOMString ch; */
  nsresult GetCh(nsAString * aCh);
  nsresult SetCh(nsAString * aCh);

  /* attribute DOMString chOff; */
  nsresult GetChOff(nsAString * aChOff);
  nsresult SetChOff(nsAString * aChOff);

  /* attribute DOMString vAlign; */
  nsresult GetVAlign(nsAString * aVAlign);
  nsresult SetVAlign(nsAString * aVAlign);

  /* readonly attribute nsIDOMHTMLCollection rows; */
  nsresult GetRows(nsIDOMHTMLCollection  *aRows);

  /* nsIDOMHTMLElement insertRow (in long index)  raises (DOMException); */
  nsresult InsertRow(PRInt32 index, nsIDOMHTMLElement *_retval);

  /* void deleteRow (in long index)  raises (DOMException); */
  nsresult DeleteRow(PRInt32 index);

}

