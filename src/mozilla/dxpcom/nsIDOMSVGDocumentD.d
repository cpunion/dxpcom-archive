/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGDocument.idl
 */

module mozilla.dxpcom.nsIDOMSVGDocumentD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGDocument;


public import mozilla.dxpcom.nsIDOMSVGDocumentD;

public import mozilla.xpcom.nsIDOMDocument;
public import mozilla.dxpcom.nsIDOMDocumentD;

public import mozilla.xpcom.nsIDOMSVGSVGElement;

public import mozilla.dxpcom.nsIDOMSVGSVGElementD;


/* starting wrapper class:    nsIDOMSVGDocument */
class nsIDOMSVGDocumentD : public nsIDOMDocumentD {

  static const nsIID IID = NS_IDOMSVGDOCUMENT_IID;


  alias nsIDOMSVGDocument InnerType;

  this(nsIDOMSVGDocument intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGDocument opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGDocument value) {
    inner = value;
  }

  /* readonly attribute DOMString title; */
  wchar[] Title(){
    scope auto value = new AString();
    nsresult __result = inner.GetTitle(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute DOMString referrer; */
  wchar[] Referrer(){
    scope auto value = new AString();
    nsresult __result = inner.GetReferrer(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute DOMString domain; */
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

  /* readonly attribute nsIDOMSVGSVGElement rootElement; */
  nsIDOMSVGSVGElementD  RootElement(){
    nsIDOMSVGSVGElement value;
    nsresult __result = inner.GetRootElement(&value);
    CheckException(__result);
    return new nsIDOMSVGSVGElementD(value);
  }

private:
  nsIDOMSVGDocument inner;

}

