/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULDocument.idl
 */

module mozilla.xpcom.nsIDOMXULDocument;


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


public import mozilla.xpcom.nsIDOMXULCommandDispatcher; /* forward declaration */

public import mozilla.xpcom.nsIObserver; /* forward declaration */


/* starting interface:    nsIDOMXULDocument */
const char[] NS_IDOMXULDOCUMENT_IID_STR = "e64bb081-13ba-430e-ab70-73a9f1d3de58";

const nsIID NS_IDOMXULDOCUMENT_IID= 
  {0xe64bb081, 0x13ba, 0x430e, 
    [ 0xab, 0x70, 0x73, 0xa9, 0xf1, 0xd3, 0xde, 0x58 ]};

extern(Windows)
interface nsIDOMXULDocument : nsISupports {
  static const char[] IID_STR = NS_IDOMXULDOCUMENT_IID_STR;
  static const nsIID IID = NS_IDOMXULDOCUMENT_IID;

  /* attribute nsIDOMNode popupNode; */
  nsresult GetPopupNode(nsIDOMNode  *aPopupNode);
  nsresult SetPopupNode(nsIDOMNode  aPopupNode);

  /* attribute nsIDOMNode tooltipNode; */
  nsresult GetTooltipNode(nsIDOMNode  *aTooltipNode);
  nsresult SetTooltipNode(nsIDOMNode  aTooltipNode);

  /* readonly attribute nsIDOMXULCommandDispatcher commandDispatcher; */
  nsresult GetCommandDispatcher(nsIDOMXULCommandDispatcher  *aCommandDispatcher);

  /* readonly attribute long width; */
  nsresult GetWidth(PRInt32 *aWidth);

  /* readonly attribute long height; */
  nsresult GetHeight(PRInt32 *aHeight);

  /* nsIDOMNodeList getElementsByAttribute (in DOMString name, in DOMString value); */
  nsresult GetElementsByAttribute(nsAString * name, nsAString * value, nsIDOMNodeList *_retval);

  /* void addBroadcastListenerFor (in nsIDOMElement broadcaster, in nsIDOMElement observer, in DOMString attr); */
  nsresult AddBroadcastListenerFor(nsIDOMElement broadcaster, nsIDOMElement observer, nsAString * attr);

  /* void removeBroadcastListenerFor (in nsIDOMElement broadcaster, in nsIDOMElement observer, in DOMString attr); */
  nsresult RemoveBroadcastListenerFor(nsIDOMElement broadcaster, nsIDOMElement observer, nsAString * attr);

  /* void persist (in DOMString id, in DOMString attr); */
  nsresult Persist(nsAString * id, nsAString * attr);

  /**
   * Loads a XUL overlay and merges it with the current document, notifying an
   * observer when the merge is complete. 
   * @param   url
   *          The URL of the overlay to load and merge
   * @param   observer
   *          An object implementing nsIObserver that will be notified with a
   *          message of topic "xul-overlay-merged" when the merge is complete. 
   *          The subject parameter of |observe| will QI to a nsIURI - the URI 
   *          of the merged overlay. This parameter is optional and may be null.
   *
   * NOTICE:  In the 2.0 timeframe this API will change such that the 
   *          implementation will fire a DOMXULOverlayMerged event upon merge
   *          completion rather than notifying an observer. Do not rely on this
   *          API's behavior _not_ to change because it will!
   *          - Ben Goodger (8/23/2005)
   */
  /* void loadOverlay (in DOMString url, in nsIObserver aObserver); */
  nsresult LoadOverlay(nsAString * url, nsIObserver aObserver);

}


/* starting interface:    nsIDOMXULDocument2 */
const char[] NS_IDOMXULDOCUMENT2_IID_STR = "87545e48-b966-4579-829a-ca01b0fca9b3";

const nsIID NS_IDOMXULDOCUMENT2_IID= 
  {0x87545e48, 0xb966, 0x4579, 
    [ 0x82, 0x9a, 0xca, 0x01, 0xb0, 0xfc, 0xa9, 0xb3 ]};

/**
 * This interface is a hack for bug 319434 since we have to preserve the
 * nsIDOMXULDocument interface on the branch. It provides non-scriptable
 * functions that don't do security checks to access the popup and tooltip
 * nodes.
 *
 * @status TEMPORARY
 */
extern(Windows)
interface nsIDOMXULDocument2 : nsIDOMXULDocument {
  static const char[] IID_STR = NS_IDOMXULDOCUMENT2_IID_STR;
  static const nsIID IID = NS_IDOMXULDOCUMENT2_IID;

  /* nsIDOMNode trustedGetPopupNode (); */
  nsresult TrustedGetPopupNode(nsIDOMNode *_retval);

  /* nsIDOMNode trustedGetTooltipNode (); */
  nsresult TrustedGetTooltipNode(nsIDOMNode *_retval);

  /* attribute nsIDOMEvent trustedPopupEvent; */
  nsresult GetTrustedPopupEvent(nsIDOMEvent  *aTrustedPopupEvent);
  nsresult SetTrustedPopupEvent(nsIDOMEvent  aTrustedPopupEvent);

}


/* starting interface:    nsIDOMXULDocument_MOZILLA_1_8_BRANCH */
const char[] NS_IDOMXULDOCUMENT_MOZILLA_1_8_BRANCH_IID_STR = "8cc6316d-ecbc-4c5f-8fda-28c91fb56e3d";

const nsIID NS_IDOMXULDOCUMENT_MOZILLA_1_8_BRANCH_IID= 
  {0x8cc6316d, 0xecbc, 0x4c5f, 
    [ 0x8f, 0xda, 0x28, 0xc9, 0x1f, 0xb5, 0x6e, 0x3d ]};

/**
 * This interface adds the popup event for the inline spell checker on brach,
 * because we can't change nsIDOMXULDoucument. We can't use nsIDOMXULDocument2
 * because it isn't scriptable.
 *
 * @status TEMPORARY
 */
extern(Windows)
interface nsIDOMXULDocument_MOZILLA_1_8_BRANCH : nsISupports {
  static const char[] IID_STR = NS_IDOMXULDOCUMENT_MOZILLA_1_8_BRANCH_IID_STR;
  static const nsIID IID = NS_IDOMXULDOCUMENT_MOZILLA_1_8_BRANCH_IID;

  /**
   * These attributes correspond to trustedGetPopupNode().rangeOffset and
   * rangeParent. They will help you find where in the DOM the popup is
   * happening. Can be accessed from chrome only, and only during a popup
   * event. Accessing any other time will be an error.
   */
  /* readonly attribute nsIDOMNode popupRangeParent; */
  nsresult GetPopupRangeParent(nsIDOMNode  *aPopupRangeParent);

  /* readonly attribute long popupRangeOffset; */
  nsresult GetPopupRangeOffset(PRInt32 *aPopupRangeOffset);

}

