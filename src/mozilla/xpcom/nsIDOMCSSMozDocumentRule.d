/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMCSSMozDocumentRule.idl
 */

module mozilla.xpcom.nsIDOMCSSMozDocumentRule;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMCSSRule;


/* starting interface:    nsIDOMCSSMozDocumentRule */
const char[] NS_IDOMCSSMOZDOCUMENTRULE_IID_STR = "4eb9adac-afaf-4b8a-8640-7340863c1587";

const nsIID NS_IDOMCSSMOZDOCUMENTRULE_IID= 
  {0x4eb9adac, 0xafaf, 0x4b8a, 
    [ 0x86, 0x40, 0x73, 0x40, 0x86, 0x3c, 0x15, 0x87 ]};

/**
 * Modified version of nsIDOMCSSMediaRule for @-moz-document rules.
 */
extern(Windows)
interface nsIDOMCSSMozDocumentRule : nsIDOMCSSRule {
  static const char[] IID_STR = NS_IDOMCSSMOZDOCUMENTRULE_IID_STR;
  static const nsIID IID = NS_IDOMCSSMOZDOCUMENTRULE_IID;

  /* readonly attribute nsIDOMCSSRuleList cssRules; */
  nsresult GetCssRules(nsIDOMCSSRuleList  *aCssRules);

  /* unsigned long insertRule (in DOMString rule, in unsigned long index)  raises (DOMException); */
  nsresult InsertRule(nsAString * rule, PRUint32 index, PRUint32 *_retval);

  /* void deleteRule (in unsigned long index)  raises (DOMException); */
  nsresult DeleteRule(PRUint32 index);

}

