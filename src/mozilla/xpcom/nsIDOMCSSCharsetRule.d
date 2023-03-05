/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMCSSCharsetRule.idl
 */

module mozilla.xpcom.nsIDOMCSSCharsetRule;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMCSSRule;


/* starting interface:    nsIDOMCSSCharsetRule */
const char[] NS_IDOMCSSCHARSETRULE_IID_STR = "19fe78cc-65ff-4b1d-a5d7-9ea89692cec6";

const nsIID NS_IDOMCSSCHARSETRULE_IID= 
  {0x19fe78cc, 0x65ff, 0x4b1d, 
    [ 0xa5, 0xd7, 0x9e, 0xa8, 0x96, 0x92, 0xce, 0xc6 ]};

extern(Windows)
interface nsIDOMCSSCharsetRule : nsIDOMCSSRule {
  static const char[] IID_STR = NS_IDOMCSSCHARSETRULE_IID_STR;
  static const nsIID IID = NS_IDOMCSSCHARSETRULE_IID;

  /* attribute DOMString encoding; */
  nsresult GetEncoding(nsAString * aEncoding);
  nsresult SetEncoding(nsAString * aEncoding);

}

