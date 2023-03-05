/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMElement.idl
 */

module mozilla.xpcom.nsIDOMElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMNode;


/* starting interface:    nsIDOMElement */
const char[] NS_IDOMELEMENT_IID_STR = "a6cf9078-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMELEMENT_IID= 
  {0xa6cf9078, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

extern(Windows)
interface nsIDOMElement : nsIDOMNode {
  static const char[] IID_STR = NS_IDOMELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMELEMENT_IID;

  /**
 * The nsIDOMElement interface represents an element in an HTML or 
 * XML document. 
 *
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Core/
 *
 * @status FROZEN
 */
  /* readonly attribute DOMString tagName; */
  nsresult GetTagName(nsAString * aTagName);

  /* DOMString getAttribute (in DOMString name); */
  nsresult GetAttribute(nsAString * name, nsAString * _retval);

  /* void setAttribute (in DOMString name, in DOMString value)  raises (DOMException); */
  nsresult SetAttribute(nsAString * name, nsAString * value);

  /* void removeAttribute (in DOMString name)  raises (DOMException); */
  nsresult RemoveAttribute(nsAString * name);

  /* nsIDOMAttr getAttributeNode (in DOMString name); */
  nsresult GetAttributeNode(nsAString * name, nsIDOMAttr *_retval);

  /* nsIDOMAttr setAttributeNode (in nsIDOMAttr newAttr)  raises (DOMException); */
  nsresult SetAttributeNode(nsIDOMAttr newAttr, nsIDOMAttr *_retval);

  /* nsIDOMAttr removeAttributeNode (in nsIDOMAttr oldAttr)  raises (DOMException); */
  nsresult RemoveAttributeNode(nsIDOMAttr oldAttr, nsIDOMAttr *_retval);

  /* nsIDOMNodeList getElementsByTagName (in DOMString name); */
  nsresult GetElementsByTagName(nsAString * name, nsIDOMNodeList *_retval);

  /* DOMString getAttributeNS (in DOMString namespaceURI, in DOMString localName); */
  nsresult GetAttributeNS(nsAString * namespaceURI, nsAString * localName, nsAString * _retval);

  /* void setAttributeNS (in DOMString namespaceURI, in DOMString qualifiedName, in DOMString value)  raises (DOMException); */
  nsresult SetAttributeNS(nsAString * namespaceURI, nsAString * qualifiedName, nsAString * value);

  /* void removeAttributeNS (in DOMString namespaceURI, in DOMString localName)  raises (DOMException); */
  nsresult RemoveAttributeNS(nsAString * namespaceURI, nsAString * localName);

  /* nsIDOMAttr getAttributeNodeNS (in DOMString namespaceURI, in DOMString localName); */
  nsresult GetAttributeNodeNS(nsAString * namespaceURI, nsAString * localName, nsIDOMAttr *_retval);

  /* nsIDOMAttr setAttributeNodeNS (in nsIDOMAttr newAttr)  raises (DOMException); */
  nsresult SetAttributeNodeNS(nsIDOMAttr newAttr, nsIDOMAttr *_retval);

  /* nsIDOMNodeList getElementsByTagNameNS (in DOMString namespaceURI, in DOMString localName); */
  nsresult GetElementsByTagNameNS(nsAString * namespaceURI, nsAString * localName, nsIDOMNodeList *_retval);

  /* boolean hasAttribute (in DOMString name); */
  nsresult HasAttribute(nsAString * name, PRBool *_retval);

  /* boolean hasAttributeNS (in DOMString namespaceURI, in DOMString localName); */
  nsresult HasAttributeNS(nsAString * namespaceURI, nsAString * localName, PRBool *_retval);

}

