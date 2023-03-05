/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMPluginArray.idl
 */

module mozilla.xpcom.nsIDOMPluginArray;


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



/* starting interface:    nsIDOMPluginArray */
const char[] NS_IDOMPLUGINARRAY_IID_STR = "f6134680-f28b-11d2-8360-c90899049c3c";

const nsIID NS_IDOMPLUGINARRAY_IID= 
  {0xf6134680, 0xf28b, 0x11d2, 
    [ 0x83, 0x60, 0xc9, 0x08, 0x99, 0x04, 0x9c, 0x3c ]};

extern(Windows)
interface nsIDOMPluginArray : nsISupports {
  static const char[] IID_STR = NS_IDOMPLUGINARRAY_IID_STR;
  static const nsIID IID = NS_IDOMPLUGINARRAY_IID;

  /* readonly attribute unsigned long length; */
  nsresult GetLength(PRUint32 *aLength);

  /* nsIDOMPlugin item (in unsigned long index); */
  nsresult Item(PRUint32 index, nsIDOMPlugin *_retval);

  /* nsIDOMPlugin namedItem (in DOMString name); */
  nsresult NamedItem(nsAString * name, nsIDOMPlugin *_retval);

  /* [noscript] void refresh (in boolean reloadDocuments); */
  nsresult Refresh(PRBool reloadDocuments);

}


/* starting interface:    nsIDOMJSPluginArray */
const char[] NS_IDOMJSPLUGINARRAY_IID_STR = "ee753352-1dd1-11b2-b18d-b0b7320a28c3";

const nsIID NS_IDOMJSPLUGINARRAY_IID= 
  {0xee753352, 0x1dd1, 0x11b2, 
    [ 0xb1, 0x8d, 0xb0, 0xb7, 0x32, 0x0a, 0x28, 0xc3 ]};

extern(Windows)
interface nsIDOMJSPluginArray : nsISupports {
  static const char[] IID_STR = NS_IDOMJSPLUGINARRAY_IID_STR;
  static const nsIID IID = NS_IDOMJSPLUGINARRAY_IID;

  /* void refresh (); */
  nsresult Refresh();

}

