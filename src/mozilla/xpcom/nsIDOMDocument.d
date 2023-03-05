/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMDocument.idl
 */

module mozilla.xpcom.nsIDOMDocument;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMNode;


/* starting interface:    nsIDOMDocument */
const char[] NS_IDOMDOCUMENT_IID_STR = "a6cf9075-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMDOCUMENT_IID= 
  {0xa6cf9075, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

extern(Windows)
interface nsIDOMDocument : nsIDOMNode {
  static const char[] IID_STR = NS_IDOMDOCUMENT_IID_STR;
  static const nsIID IID = NS_IDOMDOCUMENT_IID;

  /**
 * The nsIDOMDocument interface represents the entire HTML or XML document.
 * Conceptually, it is the root of the document tree, and provides the 
 * primary access to the document's data.
 * Since elements, text nodes, comments, processing instructions, etc. 
 * cannot exist outside the context of a Document, the nsIDOMDocument 
 * interface also contains the factory methods needed to create these 
 * objects.
 *
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Core/
 *
 * @status FROZEN
 */
  /* readonly attribute nsIDOMDocumentType doctype; */
  nsresult GetDoctype(nsIDOMDocumentType  *aDoctype);

  /* readonly attribute nsIDOMDOMImplementation implementation; */
  nsresult GetImplementation(nsIDOMDOMImplementation  *aImplementation);

  /* readonly attribute nsIDOMElement documentElement; */
  nsresult GetDocumentElement(nsIDOMElement  *aDocumentElement);

  /* nsIDOMElement createElement (in DOMString tagName)  raises (DOMException); */
  nsresult CreateElement(nsAString * tagName, nsIDOMElement *_retval);

  /* nsIDOMDocumentFragment createDocumentFragment (); */
  nsresult CreateDocumentFragment(nsIDOMDocumentFragment *_retval);

  /* nsIDOMText createTextNode (in DOMString data); */
  nsresult CreateTextNode(nsAString * data, nsIDOMText *_retval);

  /* nsIDOMComment createComment (in DOMString data); */
  nsresult CreateComment(nsAString * data, nsIDOMComment *_retval);

  /* nsIDOMCDATASection createCDATASection (in DOMString data)  raises (DOMException); */
  nsresult CreateCDATASection(nsAString * data, nsIDOMCDATASection *_retval);

  /* nsIDOMProcessingInstruction createProcessingInstruction (in DOMString target, in DOMString data)  raises (DOMException); */
  nsresult CreateProcessingInstruction(nsAString * target, nsAString * data, nsIDOMProcessingInstruction *_retval);

  /* nsIDOMAttr createAttribute (in DOMString name)  raises (DOMException); */
  nsresult CreateAttribute(nsAString * name, nsIDOMAttr *_retval);

  /* nsIDOMEntityReference createEntityReference (in DOMString name)  raises (DOMException); */
  nsresult CreateEntityReference(nsAString * name, nsIDOMEntityReference *_retval);

  /* nsIDOMNodeList getElementsByTagName (in DOMString tagname); */
  nsresult GetElementsByTagName(nsAString * tagname, nsIDOMNodeList *_retval);

  /* nsIDOMNode importNode (in nsIDOMNode importedNode, in boolean deep)  raises (DOMException); */
  nsresult ImportNode(nsIDOMNode importedNode, PRBool deep, nsIDOMNode *_retval);

  /* nsIDOMElement createElementNS (in DOMString namespaceURI, in DOMString qualifiedName)  raises (DOMException); */
  nsresult CreateElementNS(nsAString * namespaceURI, nsAString * qualifiedName, nsIDOMElement *_retval);

  /* nsIDOMAttr createAttributeNS (in DOMString namespaceURI, in DOMString qualifiedName)  raises (DOMException); */
  nsresult CreateAttributeNS(nsAString * namespaceURI, nsAString * qualifiedName, nsIDOMAttr *_retval);

  /* nsIDOMNodeList getElementsByTagNameNS (in DOMString namespaceURI, in DOMString localName); */
  nsresult GetElementsByTagNameNS(nsAString * namespaceURI, nsAString * localName, nsIDOMNodeList *_retval);

  /* nsIDOMElement getElementById (in DOMString elementId); */
  nsresult GetElementById(nsAString * elementId, nsIDOMElement *_retval);

}

