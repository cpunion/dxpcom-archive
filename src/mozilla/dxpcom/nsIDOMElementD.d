/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMElement.idl
 */

module mozilla.dxpcom.nsIDOMElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMElement;


public import mozilla.dxpcom.nsIDOMElementD;

public import mozilla.xpcom.nsIDOMNode;
public import mozilla.dxpcom.nsIDOMNodeD;


/* starting wrapper class:    nsIDOMElement */
class nsIDOMElementD : public nsIDOMNodeD {

  static const nsIID IID = NS_IDOMELEMENT_IID;


  alias nsIDOMElement InnerType;

  this(nsIDOMElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMElement value) {
    inner = value;
  }

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
  wchar[] TagName(){
    scope auto value = new AString();
    nsresult __result = inner.GetTagName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* DOMString getAttribute (in DOMString name); */
  wchar[] GetAttribute(wchar[] name){
    scope auto _name = new AString(name);
    scope auto _retval = new AString;
    nsresult __result = inner.GetAttribute(cast(nsAString*)_name, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* void setAttribute (in DOMString name, in DOMString value)  raises (DOMException); */
  void SetAttribute(wchar[] name, wchar[] value){
    scope auto _name = new AString(name);
    scope auto _value = new AString(value);
    nsresult __result = inner.SetAttribute(cast(nsAString*)_name, cast(nsAString*)_value);
    CheckException(__result);
  }

  /* void removeAttribute (in DOMString name)  raises (DOMException); */
  void RemoveAttribute(wchar[] name){
    scope auto _name = new AString(name);
    nsresult __result = inner.RemoveAttribute(cast(nsAString*)_name);
    CheckException(__result);
  }

  /* nsIDOMAttr getAttributeNode (in DOMString name); */
  nsIDOMAttrD  GetAttributeNode(wchar[] name){
    scope auto _name = new AString(name);
    nsIDOMAttr _retval;
    nsresult __result = inner.GetAttributeNode(cast(nsAString*)_name, &_retval);
    CheckException(__result);
    return new nsIDOMAttrD(_retval);
  }

  /* nsIDOMAttr setAttributeNode (in nsIDOMAttr newAttr)  raises (DOMException); */
  nsIDOMAttrD  SetAttributeNode(nsIDOMAttrD newAttr){
    nsIDOMAttr _retval;
    nsresult __result = inner.SetAttributeNode(newAttr ? cast(nsIDOMAttr)newAttr : null, &_retval);
    CheckException(__result);
    return new nsIDOMAttrD(_retval);
  }

  /* nsIDOMAttr removeAttributeNode (in nsIDOMAttr oldAttr)  raises (DOMException); */
  nsIDOMAttrD  RemoveAttributeNode(nsIDOMAttrD oldAttr){
    nsIDOMAttr _retval;
    nsresult __result = inner.RemoveAttributeNode(oldAttr ? cast(nsIDOMAttr)oldAttr : null, &_retval);
    CheckException(__result);
    return new nsIDOMAttrD(_retval);
  }

  /* nsIDOMNodeList getElementsByTagName (in DOMString name); */
  nsIDOMNodeListD  GetElementsByTagName(wchar[] name){
    scope auto _name = new AString(name);
    nsIDOMNodeList _retval;
    nsresult __result = inner.GetElementsByTagName(cast(nsAString*)_name, &_retval);
    CheckException(__result);
    return new nsIDOMNodeListD(_retval);
  }

  /* DOMString getAttributeNS (in DOMString namespaceURI, in DOMString localName); */
  wchar[] GetAttributeNS(wchar[] namespaceURI, wchar[] localName){
    scope auto _namespaceURI = new AString(namespaceURI);
    scope auto _localName = new AString(localName);
    scope auto _retval = new AString;
    nsresult __result = inner.GetAttributeNS(cast(nsAString*)_namespaceURI, cast(nsAString*)_localName, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* void setAttributeNS (in DOMString namespaceURI, in DOMString qualifiedName, in DOMString value)  raises (DOMException); */
  void SetAttributeNS(wchar[] namespaceURI, wchar[] qualifiedName, wchar[] value){
    scope auto _namespaceURI = new AString(namespaceURI);
    scope auto _qualifiedName = new AString(qualifiedName);
    scope auto _value = new AString(value);
    nsresult __result = inner.SetAttributeNS(cast(nsAString*)_namespaceURI, cast(nsAString*)_qualifiedName, cast(nsAString*)_value);
    CheckException(__result);
  }

  /* void removeAttributeNS (in DOMString namespaceURI, in DOMString localName)  raises (DOMException); */
  void RemoveAttributeNS(wchar[] namespaceURI, wchar[] localName){
    scope auto _namespaceURI = new AString(namespaceURI);
    scope auto _localName = new AString(localName);
    nsresult __result = inner.RemoveAttributeNS(cast(nsAString*)_namespaceURI, cast(nsAString*)_localName);
    CheckException(__result);
  }

  /* nsIDOMAttr getAttributeNodeNS (in DOMString namespaceURI, in DOMString localName); */
  nsIDOMAttrD  GetAttributeNodeNS(wchar[] namespaceURI, wchar[] localName){
    scope auto _namespaceURI = new AString(namespaceURI);
    scope auto _localName = new AString(localName);
    nsIDOMAttr _retval;
    nsresult __result = inner.GetAttributeNodeNS(cast(nsAString*)_namespaceURI, cast(nsAString*)_localName, &_retval);
    CheckException(__result);
    return new nsIDOMAttrD(_retval);
  }

  /* nsIDOMAttr setAttributeNodeNS (in nsIDOMAttr newAttr)  raises (DOMException); */
  nsIDOMAttrD  SetAttributeNodeNS(nsIDOMAttrD newAttr){
    nsIDOMAttr _retval;
    nsresult __result = inner.SetAttributeNodeNS(newAttr ? cast(nsIDOMAttr)newAttr : null, &_retval);
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

  /* boolean hasAttribute (in DOMString name); */
  PRBool HasAttribute(wchar[] name){
    scope auto _name = new AString(name);
    PRBool _retval;
    nsresult __result = inner.HasAttribute(cast(nsAString*)_name, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean hasAttributeNS (in DOMString namespaceURI, in DOMString localName); */
  PRBool HasAttributeNS(wchar[] namespaceURI, wchar[] localName){
    scope auto _namespaceURI = new AString(namespaceURI);
    scope auto _localName = new AString(localName);
    PRBool _retval;
    nsresult __result = inner.HasAttributeNS(cast(nsAString*)_namespaceURI, cast(nsAString*)_localName, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIDOMElement inner;

}

