/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMDocumentType.idl
 */

module mozilla.xpcom.nsIDOMDocumentType;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMNode;


/* starting interface:    nsIDOMDocumentType */
const char[] NS_IDOMDOCUMENTTYPE_IID_STR = "a6cf9077-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMDOCUMENTTYPE_IID= 
  {0xa6cf9077, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

extern(Windows)
interface nsIDOMDocumentType : nsIDOMNode {
  static const char[] IID_STR = NS_IDOMDOCUMENTTYPE_IID_STR;
  static const nsIID IID = NS_IDOMDOCUMENTTYPE_IID;

  /**
 * Each Document has a doctype attribute whose value is either null 
 * or a DocumentType object. 
 * The nsIDOMDocumentType interface in the DOM Core provides an 
 * interface to the list of entities that are defined for the document.
 *
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Core/
 *
 * @status FROZEN
 */
  /* readonly attribute DOMString name; */
  nsresult GetName(nsAString * aName);

  /* readonly attribute nsIDOMNamedNodeMap entities; */
  nsresult GetEntities(nsIDOMNamedNodeMap  *aEntities);

  /* readonly attribute nsIDOMNamedNodeMap notations; */
  nsresult GetNotations(nsIDOMNamedNodeMap  *aNotations);

  /* readonly attribute DOMString publicId; */
  nsresult GetPublicId(nsAString * aPublicId);

  /* readonly attribute DOMString systemId; */
  nsresult GetSystemId(nsAString * aSystemId);

  /* readonly attribute DOMString internalSubset; */
  nsresult GetInternalSubset(nsAString * aInternalSubset);

}

