/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMNavigator.idl
 */

module mozilla.xpcom.nsIDOMNavigator;


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



/* starting interface:    nsIDOMNavigator */
const char[] NS_IDOMNAVIGATOR_IID_STR = "8758b72b-63d4-4685-b908-4275126410fb";

const nsIID NS_IDOMNAVIGATOR_IID= 
  {0x8758b72b, 0x63d4, 0x4685, 
    [ 0xb9, 0x08, 0x42, 0x75, 0x12, 0x64, 0x10, 0xfb ]};

extern(Windows)
interface nsIDOMNavigator : nsISupports {
  static const char[] IID_STR = NS_IDOMNAVIGATOR_IID_STR;
  static const nsIID IID = NS_IDOMNAVIGATOR_IID;

  /* readonly attribute DOMString appCodeName; */
  nsresult GetAppCodeName(nsAString * aAppCodeName);

  /* readonly attribute DOMString appName; */
  nsresult GetAppName(nsAString * aAppName);

  /* readonly attribute DOMString appVersion; */
  nsresult GetAppVersion(nsAString * aAppVersion);

  /* readonly attribute DOMString language; */
  nsresult GetLanguage(nsAString * aLanguage);

  /* readonly attribute nsIDOMMimeTypeArray mimeTypes; */
  nsresult GetMimeTypes(nsIDOMMimeTypeArray  *aMimeTypes);

  /* readonly attribute DOMString platform; */
  nsresult GetPlatform(nsAString * aPlatform);

  /* readonly attribute DOMString oscpu; */
  nsresult GetOscpu(nsAString * aOscpu);

  /* readonly attribute DOMString vendor; */
  nsresult GetVendor(nsAString * aVendor);

  /* readonly attribute DOMString vendorSub; */
  nsresult GetVendorSub(nsAString * aVendorSub);

  /* readonly attribute DOMString product; */
  nsresult GetProduct(nsAString * aProduct);

  /* readonly attribute DOMString productSub; */
  nsresult GetProductSub(nsAString * aProductSub);

  /* readonly attribute nsIDOMPluginArray plugins; */
  nsresult GetPlugins(nsIDOMPluginArray  *aPlugins);

  /* readonly attribute DOMString securityPolicy; */
  nsresult GetSecurityPolicy(nsAString * aSecurityPolicy);

  /* readonly attribute DOMString userAgent; */
  nsresult GetUserAgent(nsAString * aUserAgent);

  /* readonly attribute boolean cookieEnabled; */
  nsresult GetCookieEnabled(PRBool *aCookieEnabled);

  /* readonly attribute boolean onLine; */
  nsresult GetOnLine(PRBool *aOnLine);

  /* boolean javaEnabled (); */
  nsresult JavaEnabled(PRBool *_retval);

  /* boolean taintEnabled (); */
  nsresult TaintEnabled(PRBool *_retval);

}


/* starting interface:    nsIDOMJSNavigator */
const char[] NS_IDOMJSNAVIGATOR_IID_STR = "4b4f8316-1dd2-11b2-b265-9a857376d159";

const nsIID NS_IDOMJSNAVIGATOR_IID= 
  {0x4b4f8316, 0x1dd2, 0x11b2, 
    [ 0xb2, 0x65, 0x9a, 0x85, 0x73, 0x76, 0xd1, 0x59 ]};

extern(Windows)
interface nsIDOMJSNavigator : nsISupports {
  static const char[] IID_STR = NS_IDOMJSNAVIGATOR_IID_STR;
  static const nsIID IID = NS_IDOMJSNAVIGATOR_IID;

  /* void preference (); */
  nsresult Preference();

}


/* starting interface:    nsIDOMNavigator_MOZILLA_1_8_BRANCH */
const char[] NS_IDOMNAVIGATOR_MOZILLA_1_8_BRANCH_IID_STR = "b3abb5c6-a0c4-47e9-84f6-edb873042769";

const nsIID NS_IDOMNAVIGATOR_MOZILLA_1_8_BRANCH_IID= 
  {0xb3abb5c6, 0xa0c4, 0x47e9, 
    [ 0x84, 0xf6, 0xed, 0xb8, 0x73, 0x04, 0x27, 0x69 ]};

extern(Windows)
interface nsIDOMNavigator_MOZILLA_1_8_BRANCH : nsISupports {
  static const char[] IID_STR = NS_IDOMNAVIGATOR_MOZILLA_1_8_BRANCH_IID_STR;
  static const nsIID IID = NS_IDOMNAVIGATOR_MOZILLA_1_8_BRANCH_IID;

  /* readonly attribute DOMString buildID; */
  nsresult GetBuildID(nsAString * aBuildID);

}

