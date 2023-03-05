/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMNSHTMLOptionElement.idl
 */

module mozilla.xpcom.nsIDOMNSHTMLOptionElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;


/* starting interface:    nsIDOMNSHTMLOptionElement */
const char[] NS_IDOMNSHTMLOPTIONELEMENT_IID_STR = "e2dfc89c-7ae0-4651-8aee-7f5edc2aa626";

const nsIID NS_IDOMNSHTMLOPTIONELEMENT_IID= 
  {0xe2dfc89c, 0x7ae0, 0x4651, 
    [ 0x8a, 0xee, 0x7f, 0x5e, 0xdc, 0x2a, 0xa6, 0x26 ]};

extern(Windows)
interface nsIDOMNSHTMLOptionElement : nsISupports {
  static const char[] IID_STR = NS_IDOMNSHTMLOPTIONELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMNSHTMLOPTIONELEMENT_IID;

  /* attribute DOMString text; */
  nsresult GetText(nsAString * aText);
  nsresult SetText(nsAString * aText);

}

