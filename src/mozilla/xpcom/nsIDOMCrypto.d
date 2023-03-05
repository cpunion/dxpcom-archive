/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMCrypto.idl
 */

module mozilla.xpcom.nsIDOMCrypto;


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



/* starting interface:    nsIDOMCrypto */
const char[] NS_IDOMCRYPTO_IID_STR = "d2b675a5-f05b-4172-bac2-24cc39ffd398";

const nsIID NS_IDOMCRYPTO_IID= 
  {0xd2b675a5, 0xf05b, 0x4172, 
    [ 0xba, 0xc2, 0x24, 0xcc, 0x39, 0xff, 0xd3, 0x98 ]};

extern(Windows)
interface nsIDOMCrypto : nsISupports {
  static const char[] IID_STR = NS_IDOMCRYPTO_IID_STR;
  static const nsIID IID = NS_IDOMCRYPTO_IID;

  /* readonly attribute DOMString version; */
  nsresult GetVersion(nsAString * aVersion);

  /* attribute boolean enableSmartCardEvents; */
  nsresult GetEnableSmartCardEvents(PRBool *aEnableSmartCardEvents);
  nsresult SetEnableSmartCardEvents(PRBool aEnableSmartCardEvents);

  /* nsIDOMCRMFObject generateCRMFRequest (); */
  nsresult GenerateCRMFRequest(nsIDOMCRMFObject *_retval);

  /* DOMString importUserCertificates (in DOMString nickname, in DOMString cmmfResponse, in boolean doForcedBackup); */
  nsresult ImportUserCertificates(nsAString * nickname, nsAString * cmmfResponse, PRBool doForcedBackup, nsAString * _retval);

  /* DOMString popChallengeResponse (in DOMString challenge); */
  nsresult PopChallengeResponse(nsAString * challenge, nsAString * _retval);

  /* DOMString random (in long numBytes); */
  nsresult Random(PRInt32 numBytes, nsAString * _retval);

  /* DOMString signText (in DOMString stringToSign, in DOMString caOption); */
  nsresult SignText(nsAString * stringToSign, nsAString * caOption, nsAString * _retval);

  /* void alert (in DOMString message); */
  nsresult Alert(nsAString * message);

  /* void logout (); */
  nsresult Logout();

  /* void disableRightClick (); */
  nsresult DisableRightClick();

}

