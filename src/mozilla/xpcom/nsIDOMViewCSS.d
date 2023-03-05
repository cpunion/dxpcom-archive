/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMViewCSS.idl
 */

module mozilla.xpcom.nsIDOMViewCSS;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMAbstractView;


/* starting interface:    nsIDOMViewCSS */
const char[] NS_IDOMVIEWCSS_IID_STR = "0b9341f3-95d4-4fa4-adcd-e119e0db2889";

const nsIID NS_IDOMVIEWCSS_IID= 
  {0x0b9341f3, 0x95d4, 0x4fa4, 
    [ 0xad, 0xcd, 0xe1, 0x19, 0xe0, 0xdb, 0x28, 0x89 ]};

extern(Windows)
interface nsIDOMViewCSS : nsIDOMAbstractView {
  static const char[] IID_STR = NS_IDOMVIEWCSS_IID_STR;
  static const nsIID IID = NS_IDOMVIEWCSS_IID;

  /* nsIDOMCSSStyleDeclaration getComputedStyle (in nsIDOMElement elt, in DOMString pseudoElt); */
  nsresult GetComputedStyle(nsIDOMElement elt, nsAString * pseudoElt, nsIDOMCSSStyleDeclaration *_retval);

}

