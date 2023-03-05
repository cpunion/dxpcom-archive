/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMDOMImplementationLS.idl
 */

module mozilla.xpcom.nsIDOMDOMImplementationLS;


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


public import mozilla.xpcom.nsIDOMLSParser; /* forward declaration */

public import mozilla.xpcom.nsIDOMLSSerializer; /* forward declaration */

public import mozilla.xpcom.nsIDOMLSInput; /* forward declaration */

public import mozilla.xpcom.nsIDOMLSOutput; /* forward declaration */


/* starting interface:    nsIDOMDOMImplementationLS */
const char[] NS_IDOMDOMIMPLEMENTATIONLS_IID_STR = "e2c8b03c-a49a-4923-81b0-ba9a86da0e21";

const nsIID NS_IDOMDOMIMPLEMENTATIONLS_IID= 
  {0xe2c8b03c, 0xa49a, 0x4923, 
    [ 0x81, 0xb0, 0xba, 0x9a, 0x86, 0xda, 0x0e, 0x21 ]};

extern(Windows)
interface nsIDOMDOMImplementationLS : nsISupports {
  static const char[] IID_STR = NS_IDOMDOMIMPLEMENTATIONLS_IID_STR;
  static const nsIID IID = NS_IDOMDOMIMPLEMENTATIONLS_IID;

  enum { MODE_SYNCHRONOUS = 1U };

  enum { MODE_ASYNCHRONOUS = 2U };

  /* nsIDOMLSParser createLSParser (in unsigned short mode, in DOMString schemaType)  raises (DOMException); */
  nsresult CreateLSParser(PRUint16 mode, nsAString * schemaType, nsIDOMLSParser *_retval);

  /* nsIDOMLSSerializer createLSSerializer (); */
  nsresult CreateLSSerializer(nsIDOMLSSerializer *_retval);

  /* nsIDOMLSInput createLSInput (); */
  nsresult CreateLSInput(nsIDOMLSInput *_retval);

  /* nsIDOMLSOutput createLSOutput (); */
  nsresult CreateLSOutput(nsIDOMLSOutput *_retval);

}

