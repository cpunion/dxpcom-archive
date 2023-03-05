/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXPointer.idl
 */

module mozilla.dxpcom.nsIXPointerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXPointer;


public import mozilla.dxpcom.nsIXPointerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMRange;

public import mozilla.dxpcom.nsIDOMRangeD;

public import mozilla.xpcom.nsIDOMDocument;

public import mozilla.dxpcom.nsIDOMDocumentD;


/* starting wrapper class:    nsIXPointerResult */
/**
 * XXX A good XPointerResult would probably mimic XPathresult,
 *     this range list is just the minimum that will be able to represent
 *     all return values, although it would be more user friendly to return
 *     nodes and node lists when they are possible.
 */
class nsIXPointerResultD : public nsISupportsD {

  static const nsIID IID = NS_IXPOINTERRESULT_IID;


  alias nsIXPointerResult InnerType;

  this(nsIXPointerResult intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPointerResult opCast() {
    return inner;
  }

  void opAssign(nsIXPointerResult value) {
    inner = value;
  }

  /* nsIDOMRange item (in unsigned long index); */
  nsIDOMRangeD  Item(PRUint32 index){
    nsIDOMRange _retval;
    nsresult __result = inner.Item(index, &_retval);
    CheckException(__result);
    return new nsIDOMRangeD(_retval);
  }

  /* readonly attribute unsigned long length; */
  PRUint32 Length(){
    PRUint32 value;
    nsresult __result = inner.GetLength(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIXPointerResult inner;

}


/* starting wrapper class:    nsIXPointerSchemeContext */
/**
 * Scheme context for nsIXPointerSchemeProcessor. The context consists of
 * all the scheme/data pairs that precede the scheme/data that the
 * nsIXPointerSchemeProcessor is currently evaluating.
 */
class nsIXPointerSchemeContextD : public nsISupportsD {

  static const nsIID IID = NS_IXPOINTERSCHEMECONTEXT_IID;


  alias nsIXPointerSchemeContext InnerType;

  this(nsIXPointerSchemeContext intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPointerSchemeContext opCast() {
    return inner;
  }

  void opAssign(nsIXPointerSchemeContext value) {
    inner = value;
  }

  /* readonly attribute unsigned long count; */
  PRUint32 Count(){
    PRUint32 value;
    nsresult __result = inner.GetCount(&value);
    CheckException(__result);
    return value;
  }

  /* void getSchemeData (in unsigned long index, out DOMString scheme, out DOMString data); */
  void GetSchemeData(PRUint32 index, wchar[] scheme, wchar[] data){
    scope auto _scheme = new AString;
    scope auto _data = new AString;
    nsresult __result = inner.GetSchemeData(index, cast(nsAString*)_scheme, cast(nsAString*)_data);
    CheckException(__result);
    scheme = _scheme.GetString();
    data = _data.GetString();
  }

private:
  nsIXPointerSchemeContext inner;

}


/* starting wrapper class:    nsIXPointerSchemeProcessor */
/**
 * nsIXPointerSchemeProcessors will be called by the XPointer Processor that
 * implements the XPointer Framework. This is done for each scheme the
 * XPointer Processor finds, in left-to-right order.
 */
class nsIXPointerSchemeProcessorD : public nsISupportsD {

  static const nsIID IID = NS_IXPOINTERSCHEMEPROCESSOR_IID;


  alias nsIXPointerSchemeProcessor InnerType;

  this(nsIXPointerSchemeProcessor intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPointerSchemeProcessor opCast() {
    return inner;
  }

  void opAssign(nsIXPointerSchemeProcessor value) {
    inner = value;
  }

  /**
   * Evaluate.
   *
   * @param aDocument The document in which to resolve the XPointer.
   * @param aContext  The XPointer context in which to process aData.
   * @param aData     The data in the scheme that needs to be resolved.
   * @return          The result of the evaluation.
   */
  /* nsIXPointerResult evaluate (in nsIDOMDocument aDocument, in nsIXPointerSchemeContext aContext, in DOMString aData); */
  nsIXPointerResultD  Evaluate(nsIDOMDocumentD aDocument, nsIXPointerSchemeContextD aContext, wchar[] aData){
    scope auto _aData = new AString(aData);
    nsIXPointerResult _retval;
    nsresult __result = inner.Evaluate(aDocument ? cast(nsIDOMDocument)aDocument : null, aContext ? cast(nsIXPointerSchemeContext)aContext : null, cast(nsAString*)_aData, &_retval);
    CheckException(__result);
    return new nsIXPointerResultD(_retval);
  }

private:
  nsIXPointerSchemeProcessor inner;

}


/* starting wrapper class:    nsIXPointerEvaluator */
/**
 * nsIXPointerEvaluator resolves an XPointer expression
 */
class nsIXPointerEvaluatorD : public nsISupportsD {

  static const nsIID IID = NS_IXPOINTEREVALUATOR_IID;


  alias nsIXPointerEvaluator InnerType;

  this(nsIXPointerEvaluator intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPointerEvaluator opCast() {
    return inner;
  }

  void opAssign(nsIXPointerEvaluator value) {
    inner = value;
  }

  /**
   * Evaluate an XPointer expression.
   *
   * @param aDocument   The document in which to evaluate.
   * @param aExpression The XPointer expression string to evaluate.
   * @return            The result.
   */
  /* nsIXPointerResult evaluate (in nsIDOMDocument aDocument, in DOMString aExpression); */
  nsIXPointerResultD  Evaluate(nsIDOMDocumentD aDocument, wchar[] aExpression){
    scope auto _aExpression = new AString(aExpression);
    nsIXPointerResult _retval;
    nsresult __result = inner.Evaluate(aDocument ? cast(nsIDOMDocument)aDocument : null, cast(nsAString*)_aExpression, &_retval);
    CheckException(__result);
    return new nsIXPointerResultD(_retval);
  }

private:
  nsIXPointerEvaluator inner;

}

