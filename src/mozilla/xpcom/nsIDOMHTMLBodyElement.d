/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLBodyElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLBodyElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMHTMLBodyElement */
const char[] NS_IDOMHTMLBODYELEMENT_IID_STR = "a6cf908e-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLBODYELEMENT_IID= 
  {0xa6cf908e, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLBodyElement interface is the interface to a [X]HTML
 * body element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLBodyElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLBODYELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLBODYELEMENT_IID;

  /* attribute DOMString aLink; */
  nsresult GetALink(nsAString * aALink);
  nsresult SetALink(nsAString * aALink);

  /* attribute DOMString background; */
  nsresult GetBackground(nsAString * aBackground);
  nsresult SetBackground(nsAString * aBackground);

  /* attribute DOMString bgColor; */
  nsresult GetBgColor(nsAString * aBgColor);
  nsresult SetBgColor(nsAString * aBgColor);

  /* attribute DOMString link; */
  nsresult GetLink(nsAString * aLink);
  nsresult SetLink(nsAString * aLink);

  /* attribute DOMString text; */
  nsresult GetText(nsAString * aText);
  nsresult SetText(nsAString * aText);

  /* attribute DOMString vLink; */
  nsresult GetVLink(nsAString * aVLink);
  nsresult SetVLink(nsAString * aVLink);

}

