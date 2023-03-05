/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMNSDocument.idl
 */

module mozilla.xpcom.nsIDOMNSDocument;


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


public import mozilla.xpcom.nsIBoxObject; /* forward declaration */

public import mozilla.xpcom.nsIDOMLocation; /* forward declaration */


/* starting interface:    nsIDOMNSDocument */
const char[] NS_IDOMNSDOCUMENT_IID_STR = "a6cf90cd-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMNSDOCUMENT_IID= 
  {0xa6cf90cd, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

extern(Windows)
interface nsIDOMNSDocument : nsISupports {
  static const char[] IID_STR = NS_IDOMNSDOCUMENT_IID_STR;
  static const nsIID IID = NS_IDOMNSDOCUMENT_IID;

  /* readonly attribute DOMString characterSet; */
  nsresult GetCharacterSet(nsAString * aCharacterSet);

  /* attribute DOMString dir; */
  nsresult GetDir(nsAString * aDir);
  nsresult SetDir(nsAString * aDir);

  /* readonly attribute nsIDOMLocation location; */
  nsresult GetLocation(nsIDOMLocation  *aLocation);

  /* attribute DOMString title; */
  nsresult GetTitle(nsAString * aTitle);
  nsresult SetTitle(nsAString * aTitle);

  /* readonly attribute DOMString contentType; */
  nsresult GetContentType(nsAString * aContentType);

  /* readonly attribute DOMString lastModified; */
  nsresult GetLastModified(nsAString * aLastModified);

  /* readonly attribute DOMString referrer; */
  nsresult GetReferrer(nsAString * aReferrer);

  /* nsIBoxObject getBoxObjectFor (in nsIDOMElement elt); */
  nsresult GetBoxObjectFor(nsIDOMElement elt, nsIBoxObject *_retval);

  /* void setBoxObjectFor (in nsIDOMElement elt, in nsIBoxObject boxObject); */
  nsresult SetBoxObjectFor(nsIDOMElement elt, nsIBoxObject boxObject);

}

