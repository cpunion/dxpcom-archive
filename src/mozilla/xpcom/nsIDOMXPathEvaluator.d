/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXPathEvaluator.idl
 */

module mozilla.xpcom.nsIDOMXPathEvaluator;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

alias PRUint64 DOMTimeStamp;

public import mozilla.xpcom.nsIDOMAttr; /* forward declaration */

public import mozilla.xpcom.nsIDOMCDATASection; /* forward declaration */

public import mozilla.xpcom.nsIDOMCharacterData; /* forward declaration */

public import mozilla.xpcom.nsIDOMComment; /* forward declaration */

public import mozilla.xpcom.nsIDOMDOMImplementation; /* forward declaration */
    
public import mozilla.xpcom.nsIDOMDocument; /* forward declaration */
    
public import mozilla.xpcom.nsIDOMDocumentFragment; /* forward declaration */

public import mozilla.xpcom.nsIDOMDocumentType; /* forward declaration */

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */

public import mozilla.xpcom.nsIDOMEntity; /* forward declaration */
    
public import mozilla.xpcom.nsIDOMEntityReference; /* forward declaration */

public import mozilla.xpcom.nsIDOMNSDocument; /* forward declaration */

public import mozilla.xpcom.nsIDOMNamedNodeMap; /* forward declaration */

public import mozilla.xpcom.nsIDOMNode; /* forward declaration */

public import mozilla.xpcom.nsIDOMNodeList; /* forward declaration */

public import mozilla.xpcom.nsIDOMNotation; /* forward declaration */

public import mozilla.xpcom.nsIDOMProcessingInstruction; /* forward declaration */

public import mozilla.xpcom.nsIDOMText; /* forward declaration */

public import mozilla.xpcom.nsIDOMDOMStringList; /* forward declaration */

public import mozilla.xpcom.nsIDOMNameList; /* forward declaration */

//public import mozilla.xpcom.DOMException; /* forward declaration */

//public import mozilla.xpcom.RangeException; /* forward declaration */

public import mozilla.xpcom.nsIDOMEvent;

public import mozilla.xpcom.nsIDOMEventListener;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.xpcom.nsIDOMHTMLFormElement;

public import mozilla.xpcom.nsIDOMBarProp;

public import mozilla.xpcom.nsIDOMWindowCollection;

public import mozilla.xpcom.nsIDOMHTMLCollection;

public import mozilla.xpcom.nsIDOMNavigator;

public import mozilla.xpcom.nsIDOMScreen;

public import mozilla.xpcom.nsIDOMHistory;

public import mozilla.xpcom.nsIDOMPkcs11;

public import mozilla.xpcom.nsIDOMMimeTypeArray;

public import mozilla.xpcom.nsIDOMPluginArray;

public import mozilla.xpcom.nsIDOMCrypto;

public import mozilla.xpcom.nsIDOMCRMFObject;

public import mozilla.xpcom.nsIDOMPlugin;

public import mozilla.xpcom.nsIDOMMimeType;

public import mozilla.xpcom.nsIDOMCSSRule;

public import mozilla.xpcom.nsIDOMCSSRuleList;

public import mozilla.xpcom.nsIDOMStyleSheet;

public import mozilla.xpcom.nsIDOMCSSValue;

public import mozilla.xpcom.nsIDOMMediaList;

public import mozilla.xpcom.nsIDOMCSSStyleSheet;

public import mozilla.xpcom.nsIDOMCSSStyleDeclaration;

public import mozilla.xpcom.nsIDOMAbstractView;

public import mozilla.xpcom.nsIDOMDocumentView;

public import mozilla.xpcom.nsIDOMXULSelectCntrlItemEl;

public import mozilla.xpcom.nsIDOMHTMLTableCaptionElem;

public import mozilla.xpcom.nsIDOMHTMLTableSectionElem;

public import mozilla.xpcom.nsIDOMStyleSheetList;

public import mozilla.xpcom.nsIDOMKeyEvent;

public import mozilla.xpcom.nsIDOMCounter;

public import mozilla.xpcom.nsIDOMRect;

public import mozilla.xpcom.nsIDOMRGBColor;

public import mozilla.xpcom.nsIDOMCounter;

public import mozilla.xpcom.nsIDOMCSSPrimitiveValue;

public import mozilla.xpcom.nsIDOMEventGroup;


public import mozilla.xpcom.nsIDOMXPathNSResolver; /* forward declaration */

public import mozilla.xpcom.nsIDOMXPathResult; /* forward declaration */

public import mozilla.xpcom.nsIDOMXPathExpression; /* forward declaration */


/* starting interface:    nsIDOMXPathEvaluator */
const char[] NS_IDOMXPATHEVALUATOR_IID_STR = "75506f8a-b504-11d5-a7f2-ca108ab8b6fc";

const nsIID NS_IDOMXPATHEVALUATOR_IID= 
  {0x75506f8a, 0xb504, 0x11d5, 
    [ 0xa7, 0xf2, 0xca, 0x10, 0x8a, 0xb8, 0xb6, 0xfc ]};

extern(Windows)
interface nsIDOMXPathEvaluator : nsISupports {
  static const char[] IID_STR = NS_IDOMXPATHEVALUATOR_IID_STR;
  static const nsIID IID = NS_IDOMXPATHEVALUATOR_IID;

  /* nsIDOMXPathExpression createExpression (in DOMString expression, in nsIDOMXPathNSResolver resolver)  raises (XPathException, DOMException); */
  nsresult CreateExpression(nsAString * expression, nsIDOMXPathNSResolver resolver, nsIDOMXPathExpression *_retval);

  /* nsIDOMXPathNSResolver createNSResolver (in nsIDOMNode nodeResolver); */
  nsresult CreateNSResolver(nsIDOMNode nodeResolver, nsIDOMXPathNSResolver *_retval);

  /* nsISupports evaluate (in DOMString expression, in nsIDOMNode contextNode, in nsIDOMXPathNSResolver resolver, in unsigned short type, in nsISupports result)  raises (XPathException, DOMException); */
  nsresult Evaluate(nsAString * expression, nsIDOMNode contextNode, nsIDOMXPathNSResolver resolver, PRUint16 type, nsISupports result, nsISupports *_retval);

}

