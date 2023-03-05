/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMNSHTMLAreaElement.idl
 */

module mozilla.xpcom.nsIDOMNSHTMLAreaElement;


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



/* starting interface:    nsIDOMNSHTMLAreaElement */
const char[] NS_IDOMNSHTMLAREAELEMENT_IID_STR = "3dce9071-f3b9-4280-a6ee-776cdfe3dd9e";

const nsIID NS_IDOMNSHTMLAREAELEMENT_IID= 
  {0x3dce9071, 0xf3b9, 0x4280, 
    [ 0xa6, 0xee, 0x77, 0x6c, 0xdf, 0xe3, 0xdd, 0x9e ]};

extern(Windows)
interface nsIDOMNSHTMLAreaElement : nsISupports {
  static const char[] IID_STR = NS_IDOMNSHTMLAREAELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMNSHTMLAREAELEMENT_IID;

  /* attribute DOMString protocol; */
  nsresult GetProtocol(nsAString * aProtocol);
  nsresult SetProtocol(nsAString * aProtocol);

  /* attribute DOMString host; */
  nsresult GetHost(nsAString * aHost);
  nsresult SetHost(nsAString * aHost);

  /* attribute DOMString hostname; */
  nsresult GetHostname(nsAString * aHostname);
  nsresult SetHostname(nsAString * aHostname);

  /* attribute DOMString pathname; */
  nsresult GetPathname(nsAString * aPathname);
  nsresult SetPathname(nsAString * aPathname);

  /* attribute DOMString search; */
  nsresult GetSearch(nsAString * aSearch);
  nsresult SetSearch(nsAString * aSearch);

  /* attribute DOMString port; */
  nsresult GetPort(nsAString * aPort);
  nsresult SetPort(nsAString * aPort);

  /* attribute DOMString hash; */
  nsresult GetHash(nsAString * aHash);
  nsresult SetHash(nsAString * aHash);

  /* DOMString toString (); */
  nsresult ToString(nsAString * _retval);

}

