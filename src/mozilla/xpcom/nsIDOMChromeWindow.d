/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMChromeWindow.idl
 */

module mozilla.xpcom.nsIDOMChromeWindow;


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


public import mozilla.xpcom.nsIBrowserDOMWindow; /* forward declaration */


/* starting interface:    nsIDOMChromeWindow */
const char[] NS_IDOMCHROMEWINDOW_IID_STR = "445fa0fc-2151-4cb4-83d3-34c3e39453de";

const nsIID NS_IDOMCHROMEWINDOW_IID= 
  {0x445fa0fc, 0x2151, 0x4cb4, 
    [ 0x83, 0xd3, 0x34, 0xc3, 0xe3, 0x94, 0x53, 0xde ]};

extern(Windows)
interface nsIDOMChromeWindow : nsISupports {
  static const char[] IID_STR = NS_IDOMCHROMEWINDOW_IID_STR;
  static const nsIID IID = NS_IDOMCHROMEWINDOW_IID;

  enum { STATE_MAXIMIZED = 1U };

  enum { STATE_MINIMIZED = 2U };

  enum { STATE_NORMAL = 3U };

  /* attribute DOMString title; */
  nsresult GetTitle(nsAString * aTitle);
  nsresult SetTitle(nsAString * aTitle);

  /* readonly attribute unsigned short windowState; */
  nsresult GetWindowState(PRUint16 *aWindowState);

  /**
   * browserDOMWindow provides access to yet another layer of
   * utility functions implemented by chrome script. It will be null
   * for DOMWindows not corresponding to browsers.
   */
  /* attribute nsIBrowserDOMWindow browserDOMWindow; */
  nsresult GetBrowserDOMWindow(nsIBrowserDOMWindow  *aBrowserDOMWindow);
  nsresult SetBrowserDOMWindow(nsIBrowserDOMWindow  aBrowserDOMWindow);

  /* void getAttention (); */
  nsresult GetAttention();

  /* void getAttentionWithCycleCount (in long aCycleCount); */
  nsresult GetAttentionWithCycleCount(PRInt32 aCycleCount);

  /* void setCursor (in DOMString cursor); */
  nsresult SetCursor(nsAString * cursor);

  /* void maximize (); */
  nsresult Maximize();

  /* void minimize (); */
  nsresult Minimize();

  /* void restore (); */
  nsresult Restore();

}

