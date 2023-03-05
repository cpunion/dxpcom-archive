/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMStorageEvent.idl
 */

module mozilla.xpcom.nsIDOMStorageEvent;


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

public import mozilla.xpcom.nsIDOMEvent;


/* starting interface:    nsIDOMStorageEvent */
const char[] NS_IDOMSTORAGEEVENT_IID_STR = "fc540c28-8edd-4b7a-9c30-8638289b7a7d";

const nsIID NS_IDOMSTORAGEEVENT_IID= 
  {0xfc540c28, 0x8edd, 0x4b7a, 
    [ 0x9c, 0x30, 0x86, 0x38, 0x28, 0x9b, 0x7a, 0x7d ]};

/**
 * Interface for a client side storage. See
 * http://www.whatwg.org/specs/web-apps/current-work/#scs-client-side
 * for more information.
 *
 * Event sent to a window when a storage area changes.
 */
extern(Windows)
interface nsIDOMStorageEvent : nsIDOMEvent {
  static const char[] IID_STR = NS_IDOMSTORAGEEVENT_IID_STR;
  static const nsIID IID = NS_IDOMSTORAGEEVENT_IID;

  /**
   * Domain of the storage area which changed, or #session for
   * session storage.
   */
  /* readonly attribute DOMString domain; */
  nsresult GetDomain(nsAString * aDomain);

  /**
   * Initialize a storage event.
   */
  /* void initStorageEvent (in DOMString typeArg, in boolean canBubbleArg, in boolean cancelableArg, in DOMString domainArg); */
  nsresult InitStorageEvent(nsAString * typeArg, PRBool canBubbleArg, PRBool cancelableArg, nsAString * domainArg);

  /**
   * Initialize a storage event.
   */
  /* void initStorageEventNS (in DOMString namespaceURIArg, in DOMString typeArg, in boolean canBubbleArg, in boolean cancelableArg, in DOMString domainArg); */
  nsresult InitStorageEventNS(nsAString * namespaceURIArg, nsAString * typeArg, PRBool canBubbleArg, PRBool cancelableArg, nsAString * domainArg);

}

