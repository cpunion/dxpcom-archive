/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMLSInput.idl
 */

module mozilla.xpcom.nsIDOMLSInput;


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


public import mozilla.xpcom.nsIInputStream; /* forward declaration */


/* starting interface:    nsIDOMLSInput */
const char[] NS_IDOMLSINPUT_IID_STR = "165e7f61-5048-4c2c-b4bf-6b44bb617ee4";

const nsIID NS_IDOMLSINPUT_IID= 
  {0x165e7f61, 0x5048, 0x4c2c, 
    [ 0xb4, 0xbf, 0x6b, 0x44, 0xbb, 0x61, 0x7e, 0xe4 ]};

extern(Windows)
interface nsIDOMLSInput : nsISupports {
  static const char[] IID_STR = NS_IDOMLSINPUT_IID_STR;
  static const nsIID IID = NS_IDOMLSINPUT_IID;

  /* attribute nsISupports characterStream; */
  nsresult GetCharacterStream(nsISupports  *aCharacterStream);
  nsresult SetCharacterStream(nsISupports  aCharacterStream);

  /* attribute nsIInputStream byteStream; */
  nsresult GetByteStream(nsIInputStream  *aByteStream);
  nsresult SetByteStream(nsIInputStream  aByteStream);

  /* attribute DOMString stringData; */
  nsresult GetStringData(nsAString * aStringData);
  nsresult SetStringData(nsAString * aStringData);

  /* attribute DOMString systemId; */
  nsresult GetSystemId(nsAString * aSystemId);
  nsresult SetSystemId(nsAString * aSystemId);

  /* attribute DOMString publicId; */
  nsresult GetPublicId(nsAString * aPublicId);
  nsresult SetPublicId(nsAString * aPublicId);

  /* attribute DOMString baseURI; */
  nsresult GetBaseURI(nsAString * aBaseURI);
  nsresult SetBaseURI(nsAString * aBaseURI);

  /* attribute DOMString encoding; */
  nsresult GetEncoding(nsAString * aEncoding);
  nsresult SetEncoding(nsAString * aEncoding);

  /* attribute boolean certifiedText; */
  nsresult GetCertifiedText(PRBool *aCertifiedText);
  nsresult SetCertifiedText(PRBool aCertifiedText);

}

