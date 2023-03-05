/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMDocument.idl
 */

module mozilla.dxpcom.nsIDOMDocumentD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMDocument;


public import mozilla.dxpcom.nsIDOMDocumentD;

public import mozilla.xpcom.nsIDOMNode;
public import mozilla.dxpcom.nsIDOMNodeD;


/* starting wrapper class:    nsIDOMDocument */
class nsIDOMDocumentD : public nsIDOMNodeD {

  static const nsIID IID = NS_IDOMDOCUMENT_IID;


  alias nsIDOMDocument InnerType;

  this(nsIDOMDocument intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMDocument opCast() {
    return inner;
  }

  void opAssign(nsIDOMDocument value) {
    inner = value;
  }

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
  nsIDOMDocumentTypeD  Doctype(){
    nsIDOMDocumentType value;
    nsresult __result = inner.GetDoctype(&value);
    CheckException(__result);
    return new nsIDOMDocumentTypeD(value);
  }

  /* readonly attribute nsIDOMDOMImplementation implementation; */
  nsIDOMDOMImplementationD  Implementation(){
    nsIDOMDOMImplementation value;
    nsresult __result = inner.GetImplementation(&value);
    CheckException(__result);
    return new nsIDOMDOMImplementationD(value);
  }

  /* readonly attribute nsIDOMElement documentElement; */
  nsIDOMElementD  DocumentElement(){
    nsIDOMElement value;
    nsresult __result = inner.GetDocumentElement(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }

  /* nsIDOMElement createElement (in DOMString tagName)  raises (DOMException); */
  nsIDOMElementD  CreateElement(wchar[] tagName){
    scope auto _tagName = new AString(tagName);
    nsIDOMElement _retval;
    nsresult __result = inner.CreateElement(cast(nsAString*)_tagName, &_retval);
    CheckException(__result);
    return new nsIDOMElementD(_retval);
  }

  /* nsIDOMDocumentFragment createDocumentFragment (); */
  nsIDOMDocumentFragmentD  CreateDocumentFragment(){
    nsIDOMDocumentFragment _retval;
    nsresult __result = inner.CreateDocumentFragment(&_retval);
    CheckException(__result);
    return new nsIDOMDocumentFragmentD(_retval);
  }

  /* nsIDOMText createTextNode (in DOMString data); */
  nsIDOMTextD  CreateTextNode(wchar[] data){
    scope auto _data = new AString(data);
    nsIDOMText _retval;
    nsresult __result = inner.CreateTextNode(cast(nsAString*)_data, &_retval);
    CheckException(__result);
    return new nsIDOMTextD(_retval);
  }

  /* nsIDOMComment createComment (in DOMString data); */
  nsIDOMCommentD  CreateComment(wchar[] data){
    scope auto _data = new AString(data);
    nsIDOMComment _retval;
    nsresult __result = inner.CreateComment(cast(nsAString*)_data, &_retval);
    CheckException(__result);
    return new nsIDOMCommentD(_retval);
  }

  /* nsIDOMCDATASection createCDATASection (in DOMString data)  raises (DOMException); */
  nsIDOMCDATASectionD  CreateCDATASection(wchar[] data){
    scope auto _data = new AString(data);
    nsIDOMCDATASection _retval;
    nsresult __result = inner.CreateCDATASection(cast(nsAString*)_data, &_retval);
    CheckException(__result);
    return new nsIDOMCDATASectionD(_retval);
  }

  /* nsIDOMProcessingInstruction createProcessingInstruction (in DOMString target, in DOMString data)  raises (DOMException); */
  nsIDOMProcessingInstructionD  CreateProcessingInstruction(wchar[] target, wchar[] data){
    scope auto _target = new AString(target);
    scope auto _data = new AString(data);
    nsIDOMProcessingInstruction _retval;
    nsresult __result = inner.CreateProcessingInstruction(cast(nsAString*)_target, cast(nsAString*)_data, &_retval);
    CheckException(__result);
    return new nsIDOMProcessingInstructionD(_retval);
  }

  /* nsIDOMAttr createAttribute (in DOMString name)  raises (DOMException); */
  nsIDOMAttrD  CreateAttribute(wchar[] name){
    scope auto _name = new AString(name);
    nsIDOMAttr _retval;
    nsresult __result = inner.CreateAttribute(cast(nsAString*)_name, &_retval);
    CheckException(__result);
    return new nsIDOMAttrD(_retval);
  }

  /* nsIDOMEntityReference createEntityReference (in DOMString name)  raises (DOMException); */
  nsIDOMEntityReferenceD  CreateEntityReference(wchar[] name){
    scope auto _name = new AString(name);
    nsIDOMEntityReference _retval;
    nsresult __result = inner.CreateEntityReference(cast(nsAString*)_name, &_retval);
    CheckException(__result);
    return new nsIDOMEntityReferenceD(_retval);
  }

  /* nsIDOMNodeList getElementsByTagName (in DOMString tagname); */
  nsIDOMNodeListD  GetElementsByTagName(wchar[] tagname){
    scope auto _tagname = new AString(tagname);
    nsIDOMNodeList _retval;
    nsresult __result = inner.GetElementsByTagName(cast(nsAString*)_tagname, &_retval);
    CheckException(__result);
    return new nsIDOMNodeListD(_retval);
  }

  /* nsIDOMNode importNode (in nsIDOMNode importedNode, in boolean deep)  raises (DOMException); */
  nsIDOMNodeD  ImportNode(nsIDOMNodeD importedNode, PRBool deep){
    nsIDOMNode _retval;
    nsresult __result = inner.ImportNode(importedNode ? cast(nsIDOMNode)importedNode : null, deep, &_retval);
    CheckException(__result);
    return new nsIDOMNodeD(_retval);
  }

  /* nsIDOMElement createElementNS (in DOMString namespaceURI, in DOMString qualifiedName)  raises (DOMException); */
  nsIDOMElementD  CreateElementNS(wchar[] namespaceURI, wchar[] qualifiedName){
    scope auto _namespaceURI = new AString(namespaceURI);
    scope auto _qualifiedName = new AString(qualifiedName);
    nsIDOMElement _retval;
    nsresult __result = inner.CreateElementNS(cast(nsAString*)_namespaceURI, cast(nsAString*)_qualifiedName, &_retval);
    CheckException(__result);
    return new nsIDOMElementD(_retval);
  }

  /* nsIDOMAttr createAttributeNS (in DOMString namespaceURI, in DOMString qualifiedName)  raises (DOMException); */
  nsIDOMAttrD  CreateAttributeNS(wchar[] namespaceURI, wchar[] qualifiedName){
    scope auto _namespaceURI = new AString(namespaceURI);
    scope auto _qualifiedName = new AString(qualifiedName);
    nsIDOMAttr _retval;
    nsresult __result = inner.CreateAttributeNS(cast(nsAString*)_namespaceURI, cast(nsAString*)_qualifiedName, &_retval);
    CheckException(__result);
    return new nsIDOMAttrD(_retval);
  }

  /* nsIDOMNodeList getElementsByTagNameNS (in DOMString namespaceURI, in DOMString localName); */
  nsIDOMNodeListD  GetElementsByTagNameNS(wchar[] namespaceURI, wchar[] localName){
    scope auto _namespaceURI = new AString(namespaceURI);
    scope auto _localName = new AString(localName);
    nsIDOMNodeList _retval;
    nsresult __result = inner.GetElementsByTagNameNS(cast(nsAString*)_namespaceURI, cast(nsAString*)_localName, &_retval);
    CheckException(__result);
    return new nsIDOMNodeListD(_retval);
  }

  /* nsIDOMElement getElementById (in DOMString elementId); */
  nsIDOMElementD  GetElementById(wchar[] elementId){
    scope auto _elementId = new AString(elementId);
    nsIDOMElement _retval;
    nsresult __result = inner.GetElementById(cast(nsAString*)_elementId, &_retval);
    CheckException(__result);
    return new nsIDOMElementD(_retval);
  }

private:
  nsIDOMDocument inner;

}

