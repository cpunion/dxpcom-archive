/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLDocument.idl
 */

module mozilla.dxpcom.nsIDOMHTMLDocumentD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLDocument;


public import mozilla.dxpcom.nsIDOMHTMLDocumentD;

public import mozilla.xpcom.nsIDOMDocument;
public import mozilla.dxpcom.nsIDOMDocumentD;


/* starting wrapper class:    nsIDOMHTMLDocument */
/**
 * The nsIDOMHTMLDocument interface is the interface to a [X]HTML
 * document object.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
class nsIDOMHTMLDocumentD : public nsIDOMDocumentD {

  static const nsIID IID = NS_IDOMHTMLDOCUMENT_IID;


  alias nsIDOMHTMLDocument InnerType;

  this(nsIDOMHTMLDocument intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLDocument opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLDocument value) {
    inner = value;
  }

  /* attribute DOMString title; */
  wchar[] Title(){
    scope auto value = new AString();
    nsresult __result = inner.GetTitle(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Title(wchar[] aTitle){
    scope auto value = new AString(aTitle);
    nsresult __result = inner.SetTitle(cast(nsAString*)value);
    CheckException(__result);
  }

  /* readonly attribute DOMString referrer; */
  wchar[] Referrer(){
    scope auto value = new AString();
    nsresult __result = inner.GetReferrer(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* [noscript] readonly attribute DOMString domain; */
  wchar[] Domain(){
    scope auto value = new AString();
    nsresult __result = inner.GetDomain(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute DOMString URL; */
  wchar[] URL(){
    scope auto value = new AString();
    nsresult __result = inner.GetURL(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* attribute nsIDOMHTMLElement body; */
  nsIDOMHTMLElementD  Body(){
    nsIDOMHTMLElement value;
    nsresult __result = inner.GetBody(&value);
    CheckException(__result);
    return new nsIDOMHTMLElementD(value);
  }
  void Body(nsIDOMHTMLElementD  aBody){
    nsIDOMHTMLElement value;
    nsresult __result = inner.SetBody(value);
    CheckException(__result);
  }

  /* readonly attribute nsIDOMHTMLCollection images; */
  nsIDOMHTMLCollectionD  Images(){
    nsIDOMHTMLCollection value;
    nsresult __result = inner.GetImages(&value);
    CheckException(__result);
    return new nsIDOMHTMLCollectionD(value);
  }

  /* readonly attribute nsIDOMHTMLCollection applets; */
  nsIDOMHTMLCollectionD  Applets(){
    nsIDOMHTMLCollection value;
    nsresult __result = inner.GetApplets(&value);
    CheckException(__result);
    return new nsIDOMHTMLCollectionD(value);
  }

  /* readonly attribute nsIDOMHTMLCollection links; */
  nsIDOMHTMLCollectionD  Links(){
    nsIDOMHTMLCollection value;
    nsresult __result = inner.GetLinks(&value);
    CheckException(__result);
    return new nsIDOMHTMLCollectionD(value);
  }

  /* readonly attribute nsIDOMHTMLCollection forms; */
  nsIDOMHTMLCollectionD  Forms(){
    nsIDOMHTMLCollection value;
    nsresult __result = inner.GetForms(&value);
    CheckException(__result);
    return new nsIDOMHTMLCollectionD(value);
  }

  /* readonly attribute nsIDOMHTMLCollection anchors; */
  nsIDOMHTMLCollectionD  Anchors(){
    nsIDOMHTMLCollection value;
    nsresult __result = inner.GetAnchors(&value);
    CheckException(__result);
    return new nsIDOMHTMLCollectionD(value);
  }

  /* attribute DOMString cookie; */
  wchar[] Cookie(){
    scope auto value = new AString();
    nsresult __result = inner.GetCookie(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Cookie(wchar[] aCookie){
    scope auto value = new AString(aCookie);
    nsresult __result = inner.SetCookie(cast(nsAString*)value);
    CheckException(__result);
  }

  /* [noscript] void open (); */
  void Open(){
    nsresult __result = inner.Open();
    CheckException(__result);
  }

  /* void close (); */
  void Close(){
    nsresult __result = inner.Close();
    CheckException(__result);
  }

  /* [noscript] void write (in DOMString text); */
  void Write(wchar[] text){
    scope auto _text = new AString(text);
    nsresult __result = inner.Write(cast(nsAString*)_text);
    CheckException(__result);
  }

  /* [noscript] void writeln (in DOMString text); */
  void Writeln(wchar[] text){
    scope auto _text = new AString(text);
    nsresult __result = inner.Writeln(cast(nsAString*)_text);
    CheckException(__result);
  }

  /* nsIDOMNodeList getElementsByName (in DOMString elementName); */
  nsIDOMNodeListD  GetElementsByName(wchar[] elementName){
    scope auto _elementName = new AString(elementName);
    nsIDOMNodeList _retval;
    nsresult __result = inner.GetElementsByName(cast(nsAString*)_elementName, &_retval);
    CheckException(__result);
    return new nsIDOMNodeListD(_retval);
  }

private:
  nsIDOMHTMLDocument inner;

}

