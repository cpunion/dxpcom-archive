/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMLSParser.idl
 */

module mozilla.xpcom.nsIDOMLSParser;


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


public import mozilla.xpcom.nsIDOMDOMConfiguration; /* forward declaration */

public import mozilla.xpcom.nsIDOMLSParserFilter; /* forward declaration */

public import mozilla.xpcom.nsIDOMLSInput; /* forward declaration */


/* starting interface:    nsIDOMLSParser */
const char[] NS_IDOMLSPARSER_IID_STR = "2a31a3a0-be68-40af-9f64-914192f0fba2";

const nsIID NS_IDOMLSPARSER_IID= 
  {0x2a31a3a0, 0xbe68, 0x40af, 
    [ 0x9f, 0x64, 0x91, 0x41, 0x92, 0xf0, 0xfb, 0xa2 ]};

extern(Windows)
interface nsIDOMLSParser : nsISupports {
  static const char[] IID_STR = NS_IDOMLSPARSER_IID_STR;
  static const nsIID IID = NS_IDOMLSPARSER_IID;

  /* readonly attribute nsIDOMDOMConfiguration domConfig; */
  nsresult GetDomConfig(nsIDOMDOMConfiguration  *aDomConfig);

  /* attribute nsIDOMLSParserFilter filter; */
  nsresult GetFilter(nsIDOMLSParserFilter  *aFilter);
  nsresult SetFilter(nsIDOMLSParserFilter  aFilter);

  /* readonly attribute boolean async; */
  nsresult GetAsync(PRBool *aAsync);

  /* readonly attribute boolean busy; */
  nsresult GetBusy(PRBool *aBusy);

  /* nsIDOMDocument parse (in nsIDOMLSInput input)  raises (DOMException, LSException); */
  nsresult Parse(nsIDOMLSInput input, nsIDOMDocument *_retval);

  /* nsIDOMDocument parseURI (in DOMString uri)  raises (DOMException, LSException); */
  nsresult ParseURI(nsAString * uri, nsIDOMDocument *_retval);

  enum { ACTION_APPEND_AS_CHILDREN = 1U };

  enum { ACTION_REPLACE_CHILDREN = 2U };

  enum { ACTION_INSERT_BEFORE = 3U };

  enum { ACTION_INSERT_AFTER = 4U };

  enum { ACTION_REPLACE = 5U };

  /* nsIDOMNode parseWithContext (in nsIDOMLSInput input, in nsIDOMNode contextArg, in unsigned short action)  raises (DOMException, LSException); */
  nsresult ParseWithContext(nsIDOMLSInput input, nsIDOMNode contextArg, PRUint16 action, nsIDOMNode *_retval);

  /* void abort (); */
  nsresult Abort();

}

