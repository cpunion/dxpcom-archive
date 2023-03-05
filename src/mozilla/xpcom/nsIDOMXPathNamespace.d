/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXPathNamespace.idl
 */

module mozilla.xpcom.nsIDOMXPathNamespace;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMNode;


/* starting interface:    nsIDOMXPathNamespace */
const char[] NS_IDOMXPATHNAMESPACE_IID_STR = "75506f87-b504-11d5-a7f2-ca108ab8b6fc";

const nsIID NS_IDOMXPATHNAMESPACE_IID= 
  {0x75506f87, 0xb504, 0x11d5, 
    [ 0xa7, 0xf2, 0xca, 0x10, 0x8a, 0xb8, 0xb6, 0xfc ]};

extern(Windows)
interface nsIDOMXPathNamespace : nsIDOMNode {
  static const char[] IID_STR = NS_IDOMXPATHNAMESPACE_IID_STR;
  static const nsIID IID = NS_IDOMXPATHNAMESPACE_IID;

  enum { XPATH_NAMESPACE_NODE = 13U };

  /* readonly attribute nsIDOMElement ownerElement; */
  nsresult GetOwnerElement(nsIDOMElement  *aOwnerElement);

}

