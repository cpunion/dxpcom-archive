/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMCSSStyleSheet.idl
 */

module mozilla.xpcom.nsIDOMCSSStyleSheet;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMStyleSheet;


/* starting interface:    nsIDOMCSSStyleSheet */
const char[] NS_IDOMCSSSTYLESHEET_IID_STR = "a6cf90c2-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMCSSSTYLESHEET_IID= 
  {0xa6cf90c2, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

extern(Windows)
interface nsIDOMCSSStyleSheet : nsIDOMStyleSheet {
  static const char[] IID_STR = NS_IDOMCSSSTYLESHEET_IID_STR;
  static const nsIID IID = NS_IDOMCSSSTYLESHEET_IID;

  /**
 * The nsIDOMCSSStyleSheet interface is a datatype for a CSS style
 * sheet in the Document Object Model.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-Style
 *
 * @status FROZEN
 */
  /* readonly attribute nsIDOMCSSRule ownerRule; */
  nsresult GetOwnerRule(nsIDOMCSSRule  *aOwnerRule);

  /* readonly attribute nsIDOMCSSRuleList cssRules; */
  nsresult GetCssRules(nsIDOMCSSRuleList  *aCssRules);

  /* unsigned long insertRule (in DOMString rule, in unsigned long index)  raises (DOMException); */
  nsresult InsertRule(nsAString * rule, PRUint32 index, PRUint32 *_retval);

  /* void deleteRule (in unsigned long index)  raises (DOMException); */
  nsresult DeleteRule(PRUint32 index);

}

