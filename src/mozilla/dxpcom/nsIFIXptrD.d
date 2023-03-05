/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFIXptr.idl
 */

module mozilla.dxpcom.nsIFIXptrD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFIXptr;


public import mozilla.dxpcom.nsIFIXptrD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMDocument;

public import mozilla.dxpcom.nsIDOMDocumentD;

public import mozilla.xpcom.nsIDOMRange;

public import mozilla.dxpcom.nsIDOMRangeD;


/* starting wrapper class:    nsIFIXptrEvaluator */
/**
 * nsIFIXptrEvaluator resolves a FIXptr expression
 */
class nsIFIXptrEvaluatorD : public nsISupportsD {

  static const nsIID IID = NS_IFIXPTREVALUATOR_IID;


  alias nsIFIXptrEvaluator InnerType;

  this(nsIFIXptrEvaluator intr){
    super(intr);
    this.inner = intr;
  }

  nsIFIXptrEvaluator opCast() {
    return inner;
  }

  void opAssign(nsIFIXptrEvaluator value) {
    inner = value;
  }

  /**
   * Evaluate a FIXptr expression.
   *
   * @param aDocument   The document in which to evaluate.
   * @param aExpression The FIXptr expression string to evaluate.
   * @return            The result.
   */
  /* nsIDOMRange evaluate (in nsIDOMDocument aDocument, in DOMString aExpression); */
  nsIDOMRangeD  Evaluate(nsIDOMDocumentD aDocument, wchar[] aExpression){
    scope auto _aExpression = new AString(aExpression);
    nsIDOMRange _retval;
    nsresult __result = inner.Evaluate(aDocument ? cast(nsIDOMDocument)aDocument : null, cast(nsAString*)_aExpression, &_retval);
    CheckException(__result);
    return new nsIDOMRangeD(_retval);
  }

private:
  nsIFIXptrEvaluator inner;

}

