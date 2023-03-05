/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMCSSPageRule.idl
 */

module mozilla.xpcom.nsIDOMCSSPageRule;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMCSSRule;


/* starting interface:    nsIDOMCSSPageRule */
const char[] NS_IDOMCSSPAGERULE_IID_STR = "a6cf90bd-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMCSSPAGERULE_IID= 
  {0xa6cf90bd, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

extern(Windows)
interface nsIDOMCSSPageRule : nsIDOMCSSRule {
  static const char[] IID_STR = NS_IDOMCSSPAGERULE_IID_STR;
  static const nsIID IID = NS_IDOMCSSPAGERULE_IID;

  /* attribute DOMString selectorText; */
  nsresult GetSelectorText(nsAString * aSelectorText);
  nsresult SetSelectorText(nsAString * aSelectorText);

  /* readonly attribute nsIDOMCSSStyleDeclaration style; */
  nsresult GetStyle(nsIDOMCSSStyleDeclaration  *aStyle);

}

