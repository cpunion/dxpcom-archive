/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXMLContentBuilder.idl
 */

module mozilla.dxpcom.nsIXMLContentBuilderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXMLContentBuilder;


public import mozilla.dxpcom.nsIXMLContentBuilderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;

public import mozilla.xpcom.nsIDOMDocument;

public import mozilla.dxpcom.nsIDOMDocumentD;


/* starting wrapper class:    nsIXMLContentBuilder */
class nsIXMLContentBuilderD : public nsISupportsD {

  static const nsIID IID = NS_IXMLCONTENTBUILDER_IID;


  alias nsIXMLContentBuilder InnerType;

  this(nsIXMLContentBuilder intr){
    super(intr);
    this.inner = intr;
  }

  nsIXMLContentBuilder opCast() {
    return inner;
  }

  void opAssign(nsIXMLContentBuilder value) {
    inner = value;
  }

  /* void clear (in nsIDOMElement root); */
  void Clear(nsIDOMElementD root){
    nsresult __result = inner.Clear(root ? cast(nsIDOMElement)root : null);
    CheckException(__result);
  }

  /* void setDocument (in nsIDOMDocument doc); */
  void SetDocument(nsIDOMDocumentD doc){
    nsresult __result = inner.SetDocument(doc ? cast(nsIDOMDocument)doc : null);
    CheckException(__result);
  }

  /* void setElementNamespace (in AString ns); */
  void SetElementNamespace(wchar[] ns){
    scope auto _ns = new AString(ns);
    nsresult __result = inner.SetElementNamespace(cast(nsAString*)_ns);
    CheckException(__result);
  }

  /* void beginElement (in AString tagname); */
  void BeginElement(wchar[] tagname){
    scope auto _tagname = new AString(tagname);
    nsresult __result = inner.BeginElement(cast(nsAString*)_tagname);
    CheckException(__result);
  }

  /* void endElement (); */
  void EndElement(){
    nsresult __result = inner.EndElement();
    CheckException(__result);
  }

  /* void attrib (in AString name, in AString value); */
  void Attrib(wchar[] name, wchar[] value){
    scope auto _name = new AString(name);
    scope auto _value = new AString(value);
    nsresult __result = inner.Attrib(cast(nsAString*)_name, cast(nsAString*)_value);
    CheckException(__result);
  }

  /* void textNode (in AString text); */
  void TextNode(wchar[] text){
    scope auto _text = new AString(text);
    nsresult __result = inner.TextNode(cast(nsAString*)_text);
    CheckException(__result);
  }

  /* readonly attribute nsIDOMElement root; */
  nsIDOMElementD  Root(){
    nsIDOMElement value;
    nsresult __result = inner.GetRoot(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }

  /* readonly attribute nsIDOMElement current; */
  nsIDOMElementD  Current(){
    nsIDOMElement value;
    nsresult __result = inner.GetCurrent(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }

private:
  nsIXMLContentBuilder inner;

}

