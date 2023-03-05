/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM inICSSValueSearch.idl
 */

module mozilla.dxpcom.inICSSValueSearchD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.inICSSValueSearch;


public import mozilla.dxpcom.inICSSValueSearchD;

public import mozilla.xpcom.inISearchProcess;
public import mozilla.dxpcom.inISearchProcessD;

public import mozilla.xpcom.nsIDOMDocument;

public import mozilla.dxpcom.nsIDOMDocumentD;


/* starting wrapper class:    inICSSValueSearch */
class inICSSValueSearchD : public inISearchProcessD {

  static const nsIID IID = INICSSVALUESEARCH_IID;


  alias inICSSValueSearch InnerType;

  this(inICSSValueSearch intr){
    super(intr);
    this.inner = intr;
  }

  inICSSValueSearch opCast() {
    return inner;
  }

  void opAssign(inICSSValueSearch value) {
    inner = value;
  }

  /* attribute nsIDOMDocument document; */
  nsIDOMDocumentD  Document(){
    nsIDOMDocument value;
    nsresult __result = inner.GetDocument(&value);
    CheckException(__result);
    return new nsIDOMDocumentD(value);
  }
  void Document(nsIDOMDocumentD  aDocument){
    nsIDOMDocument value;
    nsresult __result = inner.SetDocument(value);
    CheckException(__result);
  }

  /* attribute wstring baseURL; */
  PRUnichar* BaseURL(){
    PRUnichar* value;
    nsresult __result = inner.GetBaseURL(&value);
    CheckException(__result);
    return value;
  }
  void BaseURL(PRUnichar* aBaseURL){
    nsresult __result = inner.SetBaseURL(aBaseURL);
    CheckException(__result);
  }

  /* attribute boolean returnRelativeURLs; */
  PRBool ReturnRelativeURLs(){
    PRBool value;
    nsresult __result = inner.GetReturnRelativeURLs(&value);
    CheckException(__result);
    return value;
  }
  void ReturnRelativeURLs(PRBool aReturnRelativeURLs){
    nsresult __result = inner.SetReturnRelativeURLs(aReturnRelativeURLs);
    CheckException(__result);
  }

  /* attribute boolean normalizeChromeURLs; */
  PRBool NormalizeChromeURLs(){
    PRBool value;
    nsresult __result = inner.GetNormalizeChromeURLs(&value);
    CheckException(__result);
    return value;
  }
  void NormalizeChromeURLs(PRBool aNormalizeChromeURLs){
    nsresult __result = inner.SetNormalizeChromeURLs(aNormalizeChromeURLs);
    CheckException(__result);
  }

  /* void addPropertyCriteria (in wstring aPropName); */
  void AddPropertyCriteria(PRUnichar*aPropName){
    nsresult __result = inner.AddPropertyCriteria(aPropName);
    CheckException(__result);
  }

  /* attribute wstring textCriteria; */
  PRUnichar* TextCriteria(){
    PRUnichar* value;
    nsresult __result = inner.GetTextCriteria(&value);
    CheckException(__result);
    return value;
  }
  void TextCriteria(PRUnichar* aTextCriteria){
    nsresult __result = inner.SetTextCriteria(aTextCriteria);
    CheckException(__result);
  }

private:
  inICSSValueSearch inner;

}

