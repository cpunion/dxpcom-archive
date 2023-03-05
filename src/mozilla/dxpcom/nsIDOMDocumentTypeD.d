/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMDocumentType.idl
 */

module mozilla.dxpcom.nsIDOMDocumentTypeD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMDocumentType;


public import mozilla.dxpcom.nsIDOMDocumentTypeD;

public import mozilla.xpcom.nsIDOMNode;
public import mozilla.dxpcom.nsIDOMNodeD;


/* starting wrapper class:    nsIDOMDocumentType */
class nsIDOMDocumentTypeD : public nsIDOMNodeD {

  static const nsIID IID = NS_IDOMDOCUMENTTYPE_IID;


  alias nsIDOMDocumentType InnerType;

  this(nsIDOMDocumentType intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMDocumentType opCast() {
    return inner;
  }

  void opAssign(nsIDOMDocumentType value) {
    inner = value;
  }

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
  wchar[] Name(){
    scope auto value = new AString();
    nsresult __result = inner.GetName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute nsIDOMNamedNodeMap entities; */
  nsIDOMNamedNodeMapD  Entities(){
    nsIDOMNamedNodeMap value;
    nsresult __result = inner.GetEntities(&value);
    CheckException(__result);
    return new nsIDOMNamedNodeMapD(value);
  }

  /* readonly attribute nsIDOMNamedNodeMap notations; */
  nsIDOMNamedNodeMapD  Notations(){
    nsIDOMNamedNodeMap value;
    nsresult __result = inner.GetNotations(&value);
    CheckException(__result);
    return new nsIDOMNamedNodeMapD(value);
  }

  /* readonly attribute DOMString publicId; */
  wchar[] PublicId(){
    scope auto value = new AString();
    nsresult __result = inner.GetPublicId(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute DOMString systemId; */
  wchar[] SystemId(){
    scope auto value = new AString();
    nsresult __result = inner.GetSystemId(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute DOMString internalSubset; */
  wchar[] InternalSubset(){
    scope auto value = new AString();
    nsresult __result = inner.GetInternalSubset(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

private:
  nsIDOMDocumentType inner;

}

