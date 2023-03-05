/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXPointer.idl
 */

module mozilla.xpcom.nsIXPointer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMRange; /* forward declaration */

public import mozilla.xpcom.nsIDOMDocument; /* forward declaration */


/* starting interface:    nsIXPointerResult */
const char[] NS_IXPOINTERRESULT_IID_STR = "d3992637-f474-4b65-83ed-323fe69c60d2";

const nsIID NS_IXPOINTERRESULT_IID= 
  {0xd3992637, 0xf474, 0x4b65, 
    [ 0x83, 0xed, 0x32, 0x3f, 0xe6, 0x9c, 0x60, 0xd2 ]};

/**
 * XXX A good XPointerResult would probably mimic XPathresult,
 *     this range list is just the minimum that will be able to represent
 *     all return values, although it would be more user friendly to return
 *     nodes and node lists when they are possible.
 */
extern(Windows)
interface nsIXPointerResult : nsISupports {
  static const char[] IID_STR = NS_IXPOINTERRESULT_IID_STR;
  static const nsIID IID = NS_IXPOINTERRESULT_IID;

  /* nsIDOMRange item (in unsigned long index); */
  nsresult Item(PRUint32 index, nsIDOMRange *_retval);

  /* readonly attribute unsigned long length; */
  nsresult GetLength(PRUint32 *aLength);

}


/* starting interface:    nsIXPointerSchemeContext */
const char[] NS_IXPOINTERSCHEMECONTEXT_IID_STR = "781f4aa1-ebb3-4667-b1c2-2b35e94c4281";

const nsIID NS_IXPOINTERSCHEMECONTEXT_IID= 
  {0x781f4aa1, 0xebb3, 0x4667, 
    [ 0xb1, 0xc2, 0x2b, 0x35, 0xe9, 0x4c, 0x42, 0x81 ]};

/**
 * Scheme context for nsIXPointerSchemeProcessor. The context consists of
 * all the scheme/data pairs that precede the scheme/data that the
 * nsIXPointerSchemeProcessor is currently evaluating.
 */
extern(Windows)
interface nsIXPointerSchemeContext : nsISupports {
  static const char[] IID_STR = NS_IXPOINTERSCHEMECONTEXT_IID_STR;
  static const nsIID IID = NS_IXPOINTERSCHEMECONTEXT_IID;

  /* readonly attribute unsigned long count; */
  nsresult GetCount(PRUint32 *aCount);

  /* void getSchemeData (in unsigned long index, out DOMString scheme, out DOMString data); */
  nsresult GetSchemeData(PRUint32 index, nsAString * scheme, nsAString * data);

}


/* starting interface:    nsIXPointerSchemeProcessor */
const char[] NS_IXPOINTERSCHEMEPROCESSOR_IID_STR = "093d3559-b56b-44d0-8764-c25815715080";

const nsIID NS_IXPOINTERSCHEMEPROCESSOR_IID= 
  {0x093d3559, 0xb56b, 0x44d0, 
    [ 0x87, 0x64, 0xc2, 0x58, 0x15, 0x71, 0x50, 0x80 ]};

/**
 * nsIXPointerSchemeProcessors will be called by the XPointer Processor that
 * implements the XPointer Framework. This is done for each scheme the
 * XPointer Processor finds, in left-to-right order.
 */
extern(Windows)
interface nsIXPointerSchemeProcessor : nsISupports {
  static const char[] IID_STR = NS_IXPOINTERSCHEMEPROCESSOR_IID_STR;
  static const nsIID IID = NS_IXPOINTERSCHEMEPROCESSOR_IID;

  /**
   * Evaluate.
   *
   * @param aDocument The document in which to resolve the XPointer.
   * @param aContext  The XPointer context in which to process aData.
   * @param aData     The data in the scheme that needs to be resolved.
   * @return          The result of the evaluation.
   */
  /* nsIXPointerResult evaluate (in nsIDOMDocument aDocument, in nsIXPointerSchemeContext aContext, in DOMString aData); */
  nsresult Evaluate(nsIDOMDocument aDocument, nsIXPointerSchemeContext aContext, nsAString * aData, nsIXPointerResult *_retval);

}


/* starting interface:    nsIXPointerEvaluator */
const char[] NS_IXPOINTEREVALUATOR_IID_STR = "addd0fe5-8555-45b7-b763-97d5898ce268";

const nsIID NS_IXPOINTEREVALUATOR_IID= 
  {0xaddd0fe5, 0x8555, 0x45b7, 
    [ 0xb7, 0x63, 0x97, 0xd5, 0x89, 0x8c, 0xe2, 0x68 ]};

/**
 * nsIXPointerEvaluator resolves an XPointer expression
 */
extern(Windows)
interface nsIXPointerEvaluator : nsISupports {
  static const char[] IID_STR = NS_IXPOINTEREVALUATOR_IID_STR;
  static const nsIID IID = NS_IXPOINTEREVALUATOR_IID;

  /**
   * Evaluate an XPointer expression.
   *
   * @param aDocument   The document in which to evaluate.
   * @param aExpression The XPointer expression string to evaluate.
   * @return            The result.
   */
  /* nsIXPointerResult evaluate (in nsIDOMDocument aDocument, in DOMString aExpression); */
  nsresult Evaluate(nsIDOMDocument aDocument, nsAString * aExpression, nsIXPointerResult *_retval);

}

