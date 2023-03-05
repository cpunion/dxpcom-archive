/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLTableElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLTableElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLTableElement */
const char[] NS_IDOMHTMLTABLEELEMENT_IID_STR = "a6cf90b2-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLTABLEELEMENT_IID= 
  {0xa6cf90b2, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLTableElement interface is the interface to a [X]HTML
 * table element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLTableElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLTABLEELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLTABLEELEMENT_IID;

  /* attribute nsIDOMHTMLTableCaptionElement caption; */
  nsresult GetCaption(nsIDOMHTMLTableCaptionElement  *aCaption);
  nsresult SetCaption(nsIDOMHTMLTableCaptionElement  aCaption);

  /* attribute nsIDOMHTMLTableSectionElement tHead; */
  nsresult GetTHead(nsIDOMHTMLTableSectionElement  *aTHead);
  nsresult SetTHead(nsIDOMHTMLTableSectionElement  aTHead);

  /* attribute nsIDOMHTMLTableSectionElement tFoot; */
  nsresult GetTFoot(nsIDOMHTMLTableSectionElement  *aTFoot);
  nsresult SetTFoot(nsIDOMHTMLTableSectionElement  aTFoot);

  /* readonly attribute nsIDOMHTMLCollection rows; */
  nsresult GetRows(nsIDOMHTMLCollection  *aRows);

  /* readonly attribute nsIDOMHTMLCollection tBodies; */
  nsresult GetTBodies(nsIDOMHTMLCollection  *aTBodies);

  /* attribute DOMString align; */
  nsresult GetAlign(nsAString * aAlign);
  nsresult SetAlign(nsAString * aAlign);

  /* attribute DOMString bgColor; */
  nsresult GetBgColor(nsAString * aBgColor);
  nsresult SetBgColor(nsAString * aBgColor);

  /* attribute DOMString border; */
  nsresult GetBorder(nsAString * aBorder);
  nsresult SetBorder(nsAString * aBorder);

  /* attribute DOMString cellPadding; */
  nsresult GetCellPadding(nsAString * aCellPadding);
  nsresult SetCellPadding(nsAString * aCellPadding);

  /* attribute DOMString cellSpacing; */
  nsresult GetCellSpacing(nsAString * aCellSpacing);
  nsresult SetCellSpacing(nsAString * aCellSpacing);

  /* attribute DOMString frame; */
  nsresult GetFrame(nsAString * aFrame);
  nsresult SetFrame(nsAString * aFrame);

  /* attribute DOMString rules; */
  nsresult GetRules(nsAString * aRules);
  nsresult SetRules(nsAString * aRules);

  /* attribute DOMString summary; */
  nsresult GetSummary(nsAString * aSummary);
  nsresult SetSummary(nsAString * aSummary);

  /* attribute DOMString width; */
  nsresult GetWidth(nsAString * aWidth);
  nsresult SetWidth(nsAString * aWidth);

  /* nsIDOMHTMLElement createTHead (); */
  nsresult CreateTHead(nsIDOMHTMLElement *_retval);

  /* void deleteTHead (); */
  nsresult DeleteTHead();

  /* nsIDOMHTMLElement createTFoot (); */
  nsresult CreateTFoot(nsIDOMHTMLElement *_retval);

  /* void deleteTFoot (); */
  nsresult DeleteTFoot();

  /* nsIDOMHTMLElement createCaption (); */
  nsresult CreateCaption(nsIDOMHTMLElement *_retval);

  /* void deleteCaption (); */
  nsresult DeleteCaption();

  /* nsIDOMHTMLElement insertRow (in long index)  raises (DOMException); */
  nsresult InsertRow(PRInt32 index, nsIDOMHTMLElement *_retval);

  /* void deleteRow (in long index)  raises (DOMException); */
  nsresult DeleteRow(PRInt32 index);

}

