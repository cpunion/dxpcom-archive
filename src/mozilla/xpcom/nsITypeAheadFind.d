/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITypeAheadFind.idl
 */

module mozilla.xpcom.nsITypeAheadFind;


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

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDocShell; /* forward declaration */


/* starting interface:    nsITypeAheadFind */
const char[] NS_ITYPEAHEADFIND_IID_STR = "376da416-e6b3-4bac-98f3-6aa408742751";

const nsIID NS_ITYPEAHEADFIND_IID= 
  {0x376da416, 0xe6b3, 0x4bac, 
    [ 0x98, 0xf3, 0x6a, 0xa4, 0x08, 0x74, 0x27, 0x51 ]};

/****************************** nsTypeAheadFind ******************************/
extern(Windows)
interface nsITypeAheadFind : nsISupports {
  static const char[] IID_STR = NS_ITYPEAHEADFIND_IID_STR;
  static const nsIID IID = NS_ITYPEAHEADFIND_IID;

  /****************************** Initializer ******************************/
  /* void init (in nsIDocShell aDocShell); */
  nsresult Init(nsIDocShell aDocShell);

  /***************************** Core functions ****************************/
  /* unsigned short find (in AString aSearchString, in boolean aLinksOnly); */
  nsresult Find(nsAString * aSearchString, PRBool aLinksOnly, PRUint16 *_retval);

  /* unsigned short findNext (); */
  nsresult FindNext(PRUint16 *_retval);

  /* unsigned short findPrevious (); */
  nsresult FindPrevious(PRUint16 *_retval);

  /**************************** Helper functions ***************************/
  /* void setDocShell (in nsIDocShell aDocShell); */
  nsresult SetDocShell(nsIDocShell aDocShell);

  /******************************* Attributes ******************************/
  /* readonly attribute AString searchString; */
  nsresult GetSearchString(nsAString * aSearchString);

  /* attribute boolean focusLinks; */
  nsresult GetFocusLinks(PRBool *aFocusLinks);
  nsresult SetFocusLinks(PRBool aFocusLinks);

  /* attribute boolean caseSensitive; */
  nsresult GetCaseSensitive(PRBool *aCaseSensitive);
  nsresult SetCaseSensitive(PRBool aCaseSensitive);

  /* readonly attribute nsIDOMElement foundLink; */
  nsresult GetFoundLink(nsIDOMElement  *aFoundLink);

  /* readonly attribute nsIDOMWindow currentWindow; */
  nsresult GetCurrentWindow(nsIDOMWindow  *aCurrentWindow);

  /******************************* Constants *******************************/
  enum { FIND_FOUND = 0U };

  enum { FIND_NOTFOUND = 1U };

  enum { FIND_WRAPPED = 2U };

}


/* starting interface:    nsITypeAheadFind_MOZILLA_1_8_BRANCH */
const char[] NS_ITYPEAHEADFIND_MOZILLA_1_8_BRANCH_IID_STR = "6e934f17-1975-49c2-880e-4f9fa79a1b2e";

const nsIID NS_ITYPEAHEADFIND_MOZILLA_1_8_BRANCH_IID= 
  {0x6e934f17, 0x1975, 0x49c2, 
    [ 0x88, 0x0e, 0x4f, 0x9f, 0xa7, 0x9a, 0x1b, 0x2e ]};

/*************************************************************************/
/********************* nsTypeAheadFind_MOZILLA_1_8_BRANCH ********************/
extern(Windows)
interface nsITypeAheadFind_MOZILLA_1_8_BRANCH : nsITypeAheadFind {
  static const char[] IID_STR = NS_ITYPEAHEADFIND_MOZILLA_1_8_BRANCH_IID_STR;
  static const nsIID IID = NS_ITYPEAHEADFIND_MOZILLA_1_8_BRANCH_IID;

  /**************************** Helper functions ***************************/
  /* void setSelectionModeAndRepaint (in short toggle); */
  nsresult SetSelectionModeAndRepaint(PRInt16 toggle);

  /* void collapseSelection (); */
  nsresult CollapseSelection();

  /******************************* Attributes ******************************/
  /* readonly attribute nsIDOMElement foundEditable; */
  nsresult GetFoundEditable(nsIDOMElement  *aFoundEditable);

}

