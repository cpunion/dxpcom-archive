/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMNodeFilter.idl
 */

module mozilla.xpcom.nsIDOMNodeFilter;


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



/* starting interface:    nsIDOMNodeFilter */
const char[] NS_IDOMNODEFILTER_IID_STR = "e4723748-1dd1-11b2-8ee6-866a532a6237";

const nsIID NS_IDOMNODEFILTER_IID= 
  {0xe4723748, 0x1dd1, 0x11b2, 
    [ 0x8e, 0xe6, 0x86, 0x6a, 0x53, 0x2a, 0x62, 0x37 ]};

extern(Windows)
interface nsIDOMNodeFilter : nsISupports {
  static const char[] IID_STR = NS_IDOMNODEFILTER_IID_STR;
  static const nsIID IID = NS_IDOMNODEFILTER_IID;

  enum { FILTER_ACCEPT = 1 };

  enum { FILTER_REJECT = 2 };

  enum { FILTER_SKIP = 3 };

  enum { SHOW_ALL = 4294967295U };

  enum { SHOW_ELEMENT = 1U };

  enum { SHOW_ATTRIBUTE = 2U };

  enum { SHOW_TEXT = 4U };

  enum { SHOW_CDATA_SECTION = 8U };

  enum { SHOW_ENTITY_REFERENCE = 16U };

  enum { SHOW_ENTITY = 32U };

  enum { SHOW_PROCESSING_INSTRUCTION = 64U };

  enum { SHOW_COMMENT = 128U };

  enum { SHOW_DOCUMENT = 256U };

  enum { SHOW_DOCUMENT_TYPE = 512U };

  enum { SHOW_DOCUMENT_FRAGMENT = 1024U };

  enum { SHOW_NOTATION = 2048U };

  /* short acceptNode (in nsIDOMNode n); */
  nsresult AcceptNode(nsIDOMNode n, PRInt16 *_retval);

}

