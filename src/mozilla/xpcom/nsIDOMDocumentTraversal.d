/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMDocumentTraversal.idl
 */

module mozilla.xpcom.nsIDOMDocumentTraversal;


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


public import mozilla.xpcom.nsIDOMNodeIterator; /* forward declaration */

public import mozilla.xpcom.nsIDOMNodeFilter; /* forward declaration */

public import mozilla.xpcom.nsIDOMTreeWalker; /* forward declaration */


/* starting interface:    nsIDOMDocumentTraversal */
const char[] NS_IDOMDOCUMENTTRAVERSAL_IID_STR = "13f236c0-47f8-11d5-b6a3-009027446e84";

const nsIID NS_IDOMDOCUMENTTRAVERSAL_IID= 
  {0x13f236c0, 0x47f8, 0x11d5, 
    [ 0xb6, 0xa3, 0x00, 0x90, 0x27, 0x44, 0x6e, 0x84 ]};

extern(Windows)
interface nsIDOMDocumentTraversal : nsISupports {
  static const char[] IID_STR = NS_IDOMDOCUMENTTRAVERSAL_IID_STR;
  static const nsIID IID = NS_IDOMDOCUMENTTRAVERSAL_IID;

  /* nsIDOMNodeIterator createNodeIterator (in nsIDOMNode root, in unsigned long whatToShow, in nsIDOMNodeFilter filter, in boolean entityReferenceExpansion)  raises (DOMException); */
  nsresult CreateNodeIterator(nsIDOMNode root, PRUint32 whatToShow, nsIDOMNodeFilter filter, PRBool entityReferenceExpansion, nsIDOMNodeIterator *_retval);

  /* nsIDOMTreeWalker createTreeWalker (in nsIDOMNode root, in unsigned long whatToShow, in nsIDOMNodeFilter filter, in boolean entityReferenceExpansion)  raises (DOMException); */
  nsresult CreateTreeWalker(nsIDOMNode root, PRUint32 whatToShow, nsIDOMNodeFilter filter, PRBool entityReferenceExpansion, nsIDOMTreeWalker *_retval);

}

