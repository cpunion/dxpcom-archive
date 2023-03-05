/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXPathResult.idl
 */

module mozilla.xpcom.nsIDOMXPathResult;


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



/* starting interface:    nsIDOMXPathResult */
const char[] NS_IDOMXPATHRESULT_IID_STR = "75506f84-b504-11d5-a7f2-ca108ab8b6fc";

const nsIID NS_IDOMXPATHRESULT_IID= 
  {0x75506f84, 0xb504, 0x11d5, 
    [ 0xa7, 0xf2, 0xca, 0x10, 0x8a, 0xb8, 0xb6, 0xfc ]};

extern(Windows)
interface nsIDOMXPathResult : nsISupports {
  static const char[] IID_STR = NS_IDOMXPATHRESULT_IID_STR;
  static const nsIID IID = NS_IDOMXPATHRESULT_IID;

  enum { ANY_TYPE = 0U };

  enum { NUMBER_TYPE = 1U };

  enum { STRING_TYPE = 2U };

  enum { BOOLEAN_TYPE = 3U };

  enum { UNORDERED_NODE_ITERATOR_TYPE = 4U };

  enum { ORDERED_NODE_ITERATOR_TYPE = 5U };

  enum { UNORDERED_NODE_SNAPSHOT_TYPE = 6U };

  enum { ORDERED_NODE_SNAPSHOT_TYPE = 7U };

  enum { ANY_UNORDERED_NODE_TYPE = 8U };

  enum { FIRST_ORDERED_NODE_TYPE = 9U };

  /* readonly attribute unsigned short resultType; */
  nsresult GetResultType(PRUint16 *aResultType);

  /* readonly attribute double numberValue; */
  nsresult GetNumberValue(double *aNumberValue);

  /* readonly attribute DOMString stringValue; */
  nsresult GetStringValue(nsAString * aStringValue);

  /* readonly attribute boolean booleanValue; */
  nsresult GetBooleanValue(PRBool *aBooleanValue);

  /* readonly attribute nsIDOMNode singleNodeValue; */
  nsresult GetSingleNodeValue(nsIDOMNode  *aSingleNodeValue);

  /* readonly attribute boolean invalidIteratorState; */
  nsresult GetInvalidIteratorState(PRBool *aInvalidIteratorState);

  /* readonly attribute unsigned long snapshotLength; */
  nsresult GetSnapshotLength(PRUint32 *aSnapshotLength);

  /* nsIDOMNode iterateNext ()  raises (XPathException, DOMException); */
  nsresult IterateNext(nsIDOMNode *_retval);

  /* nsIDOMNode snapshotItem (in unsigned long index)  raises (XPathException); */
  nsresult SnapshotItem(PRUint32 index, nsIDOMNode *_retval);

}

