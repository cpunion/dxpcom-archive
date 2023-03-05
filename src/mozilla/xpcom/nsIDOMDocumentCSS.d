/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMDocumentCSS.idl
 */

module mozilla.xpcom.nsIDOMDocumentCSS;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMDocumentStyle;


/* starting interface:    nsIDOMDocumentCSS */
const char[] NS_IDOMDOCUMENTCSS_IID_STR = "39f76c23-45b2-428a-9240-a981e5abf148";

const nsIID NS_IDOMDOCUMENTCSS_IID= 
  {0x39f76c23, 0x45b2, 0x428a, 
    [ 0x92, 0x40, 0xa9, 0x81, 0xe5, 0xab, 0xf1, 0x48 ]};

extern(Windows)
interface nsIDOMDocumentCSS : nsIDOMDocumentStyle {
  static const char[] IID_STR = NS_IDOMDOCUMENTCSS_IID_STR;
  static const nsIID IID = NS_IDOMDOCUMENTCSS_IID;

  /* nsIDOMCSSStyleDeclaration getOverrideStyle (in nsIDOMElement elt, in DOMString pseudoElt); */
  nsresult GetOverrideStyle(nsIDOMElement elt, nsAString * pseudoElt, nsIDOMCSSStyleDeclaration *_retval);

}

