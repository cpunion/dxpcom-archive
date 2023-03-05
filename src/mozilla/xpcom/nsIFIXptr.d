/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFIXptr.idl
 */

module mozilla.xpcom.nsIFIXptr;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMDocument; /* forward declaration */

public import mozilla.xpcom.nsIDOMRange; /* forward declaration */


/* starting interface:    nsIFIXptrEvaluator */
const char[] NS_IFIXPTREVALUATOR_IID_STR = "50d28211-8fb8-4323-b93d-08a6e80e559e";

const nsIID NS_IFIXPTREVALUATOR_IID= 
  {0x50d28211, 0x8fb8, 0x4323, 
    [ 0xb9, 0x3d, 0x08, 0xa6, 0xe8, 0x0e, 0x55, 0x9e ]};

/**
 * nsIFIXptrEvaluator resolves a FIXptr expression
 */
extern(Windows)
interface nsIFIXptrEvaluator : nsISupports {
  static const char[] IID_STR = NS_IFIXPTREVALUATOR_IID_STR;
  static const nsIID IID = NS_IFIXPTREVALUATOR_IID;

  /**
   * Evaluate a FIXptr expression.
   *
   * @param aDocument   The document in which to evaluate.
   * @param aExpression The FIXptr expression string to evaluate.
   * @return            The result.
   */
  /* nsIDOMRange evaluate (in nsIDOMDocument aDocument, in DOMString aExpression); */
  nsresult Evaluate(nsIDOMDocument aDocument, nsAString * aExpression, nsIDOMRange *_retval);

}

