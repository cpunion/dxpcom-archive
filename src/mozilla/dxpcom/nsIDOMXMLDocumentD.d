/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXMLDocument.idl
 */

module mozilla.dxpcom.nsIDOMXMLDocumentD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMXMLDocument;


public import mozilla.dxpcom.nsIDOMXMLDocumentD;

public import mozilla.xpcom.nsIDOMDocument;
public import mozilla.dxpcom.nsIDOMDocumentD;

public import mozilla.xpcom.nsIXPointer;

import mozilla.dxpcom.nsIXPointerD;


/* starting wrapper class:    nsIDOMXMLDocument */
class nsIDOMXMLDocumentD : public nsIDOMDocumentD {

  static const nsIID IID = NS_IDOMXMLDOCUMENT_IID;


  alias nsIDOMXMLDocument InnerType;

  this(nsIDOMXMLDocument intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMXMLDocument opCast() {
    return inner;
  }

  void opAssign(nsIDOMXMLDocument value) {
    inner = value;
  }

  /**
   * Whether to load synchronously or asynchronously.
   * The default is async==true.
   */
  /* attribute boolean async; */
  PRBool Async(){
    PRBool value;
    nsresult __result = inner.GetAsync(&value);
    CheckException(__result);
    return value;
  }
  void Async(PRBool aAsync){
    nsresult __result = inner.SetAsync(aAsync);
    CheckException(__result);
  }

  /**
   * Load an XML document.
   *
   * @param  url URL to an XML document.
   * @return     True if load successfull.
   */
  /* boolean load (in DOMString url); */
  PRBool Load(wchar[] url){
    scope auto _url = new AString(url);
    PRBool _retval;
    nsresult __result = inner.Load(cast(nsAString*)_url, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
  * Evaluate FIXptr expression. FIXptr is a W3C NOTE, see
  *
  * http://lists.w3.org/Archives/Public/www-xml-linking-comments/2001AprJun/att-0074/01-NOTE-FIXptr-20010425.htm
  *
  * @param  expression FIXptr string.
  * @return            The range object that results from evaluation
  */
  /* nsIDOMRange evaluateFIXptr (in DOMString expression); */
  nsIDOMRangeD  EvaluateFIXptr(wchar[] expression){
    scope auto _expression = new AString(expression);
    nsIDOMRange _retval;
    nsresult __result = inner.EvaluateFIXptr(cast(nsAString*)_expression, &_retval);
    CheckException(__result);
    return new nsIDOMRangeD(_retval);
  }

  /**
  * Evaluate XPointer expression.
  */
  /* nsIXPointerResult evaluateXPointer (in DOMString expression); */
  nsIXPointerResultD  EvaluateXPointer(wchar[] expression){
    scope auto _expression = new AString(expression);
    nsIXPointerResult _retval;
    nsresult __result = inner.EvaluateXPointer(cast(nsAString*)_expression, &_retval);
    CheckException(__result);
    return new nsIXPointerResultD(_retval);
  }

private:
  nsIDOMXMLDocument inner;

}

