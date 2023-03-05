/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMCSSImportRule.idl
 */

module mozilla.xpcom.nsIDOMCSSImportRule;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMCSSRule;


/* starting interface:    nsIDOMCSSImportRule */
const char[] NS_IDOMCSSIMPORTRULE_IID_STR = "a6cf90cf-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMCSSIMPORTRULE_IID= 
  {0xa6cf90cf, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

extern(Windows)
interface nsIDOMCSSImportRule : nsIDOMCSSRule {
  static const char[] IID_STR = NS_IDOMCSSIMPORTRULE_IID_STR;
  static const nsIID IID = NS_IDOMCSSIMPORTRULE_IID;

  /* readonly attribute DOMString href; */
  nsresult GetHref(nsAString * aHref);

  /* readonly attribute nsIDOMMediaList media; */
  nsresult GetMedia(nsIDOMMediaList  *aMedia);

  /* readonly attribute nsIDOMCSSStyleSheet styleSheet; */
  nsresult GetStyleSheet(nsIDOMCSSStyleSheet  *aStyleSheet);

}

