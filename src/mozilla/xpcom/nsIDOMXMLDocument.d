/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXMLDocument.idl
 */

module mozilla.xpcom.nsIDOMXMLDocument;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMDocument;

public import mozilla.xpcom.nsIXPointer;


/* starting interface:    nsIDOMXMLDocument */
const char[] NS_IDOMXMLDOCUMENT_IID_STR = "8816d003-e7c8-4065-8827-829b8d07b6e0";

const nsIID NS_IDOMXMLDOCUMENT_IID= 
  {0x8816d003, 0xe7c8, 0x4065, 
    [ 0x88, 0x27, 0x82, 0x9b, 0x8d, 0x07, 0xb6, 0xe0 ]};

extern(Windows)
interface nsIDOMXMLDocument : nsIDOMDocument {
  static const char[] IID_STR = NS_IDOMXMLDOCUMENT_IID_STR;
  static const nsIID IID = NS_IDOMXMLDOCUMENT_IID;

  /**
   * Whether to load synchronously or asynchronously.
   * The default is async==true.
   */
  /* attribute boolean async; */
  nsresult GetAsync(PRBool *aAsync);
  nsresult SetAsync(PRBool aAsync);

  /**
   * Load an XML document.
   *
   * @param  url URL to an XML document.
   * @return     True if load successfull.
   */
  /* boolean load (in DOMString url); */
  nsresult Load(nsAString * url, PRBool *_retval);

  /**
  * Evaluate FIXptr expression. FIXptr is a W3C NOTE, see
  *
  * http://lists.w3.org/Archives/Public/www-xml-linking-comments/2001AprJun/att-0074/01-NOTE-FIXptr-20010425.htm
  *
  * @param  expression FIXptr string.
  * @return            The range object that results from evaluation
  */
  /* nsIDOMRange evaluateFIXptr (in DOMString expression); */
  nsresult EvaluateFIXptr(nsAString * expression, nsIDOMRange *_retval);

  /**
  * Evaluate XPointer expression.
  */
  /* nsIXPointerResult evaluateXPointer (in DOMString expression); */
  nsresult EvaluateXPointer(nsAString * expression, nsIXPointerResult *_retval);

}

