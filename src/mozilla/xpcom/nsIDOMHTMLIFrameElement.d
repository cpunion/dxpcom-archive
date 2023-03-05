/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLIFrameElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLIFrameElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLIFrameElement */
const char[] NS_IDOMHTMLIFRAMEELEMENT_IID_STR = "a6cf90ba-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLIFRAMEELEMENT_IID= 
  {0xa6cf90ba, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLIFrameElement interface is the interface to a [X]HTML
 * iframe element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLIFrameElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLIFRAMEELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLIFRAMEELEMENT_IID;

  /* attribute DOMString align; */
  nsresult GetAlign(nsAString * aAlign);
  nsresult SetAlign(nsAString * aAlign);

  /* attribute DOMString frameBorder; */
  nsresult GetFrameBorder(nsAString * aFrameBorder);
  nsresult SetFrameBorder(nsAString * aFrameBorder);

  /* attribute DOMString height; */
  nsresult GetHeight(nsAString * aHeight);
  nsresult SetHeight(nsAString * aHeight);

  /* attribute DOMString longDesc; */
  nsresult GetLongDesc(nsAString * aLongDesc);
  nsresult SetLongDesc(nsAString * aLongDesc);

  /* attribute DOMString marginHeight; */
  nsresult GetMarginHeight(nsAString * aMarginHeight);
  nsresult SetMarginHeight(nsAString * aMarginHeight);

  /* attribute DOMString marginWidth; */
  nsresult GetMarginWidth(nsAString * aMarginWidth);
  nsresult SetMarginWidth(nsAString * aMarginWidth);

  /* attribute DOMString name; */
  nsresult GetName(nsAString * aName);
  nsresult SetName(nsAString * aName);

  /* attribute DOMString scrolling; */
  nsresult GetScrolling(nsAString * aScrolling);
  nsresult SetScrolling(nsAString * aScrolling);

  /* attribute DOMString src; */
  nsresult GetSrc(nsAString * aSrc);
  nsresult SetSrc(nsAString * aSrc);

  /* attribute DOMString width; */
  nsresult GetWidth(nsAString * aWidth);
  nsresult SetWidth(nsAString * aWidth);

  /* readonly attribute nsIDOMDocument contentDocument; */
  nsresult GetContentDocument(nsIDOMDocument  *aContentDocument);

}

