/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMCSSMediaRule.idl
 */

module mozilla.xpcom.nsIDOMCSSMediaRule;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMCSSRule;


/* starting interface:    nsIDOMCSSMediaRule */
const char[] NS_IDOMCSSMEDIARULE_IID_STR = "a6cf90bc-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMCSSMEDIARULE_IID= 
  {0xa6cf90bc, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

extern(Windows)
interface nsIDOMCSSMediaRule : nsIDOMCSSRule {
  static const char[] IID_STR = NS_IDOMCSSMEDIARULE_IID_STR;
  static const nsIID IID = NS_IDOMCSSMEDIARULE_IID;

  /* readonly attribute nsIDOMMediaList media; */
  nsresult GetMedia(nsIDOMMediaList  *aMedia);

  /* readonly attribute nsIDOMCSSRuleList cssRules; */
  nsresult GetCssRules(nsIDOMCSSRuleList  *aCssRules);

  /* unsigned long insertRule (in DOMString rule, in unsigned long index)  raises (DOMException); */
  nsresult InsertRule(nsAString * rule, PRUint32 index, PRUint32 *_retval);

  /* void deleteRule (in unsigned long index)  raises (DOMException); */
  nsresult DeleteRule(PRUint32 index);

}

