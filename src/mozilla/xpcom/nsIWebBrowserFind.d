/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebBrowserFind.idl
 */

module mozilla.xpcom.nsIWebBrowserFind;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
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



/* starting interface:    nsIWebBrowserFind */
const char[] NS_IWEBBROWSERFIND_IID_STR = "2f977d44-5485-11d4-87e2-0010a4e75ef2";

const nsIID NS_IWEBBROWSERFIND_IID= 
  {0x2f977d44, 0x5485, 0x11d4, 
    [ 0x87, 0xe2, 0x00, 0x10, 0xa4, 0xe7, 0x5e, 0xf2 ]};

/**
 * nsIWebBrowserFind
 *
 * Searches for text in a web browser.
 *
 * Get one by doing a GetInterface on an nsIWebBrowser.
 *
 * By default, the implementation will search the focussed frame, or
 * if there is no focussed frame, the web browser content area. It
 * does not by default search subframes or iframes. To change this
 * behaviour, and to explicitly set the frame to search, 
 * QueryInterface to nsIWebBrowserFindInFrames.
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIWebBrowserFind : nsISupports {
  static const char[] IID_STR = NS_IWEBBROWSERFIND_IID_STR;
  static const nsIID IID = NS_IWEBBROWSERFIND_IID;

  /**
     * findNext
     *
     * Finds, highlights, and scrolls into view the next occurrence of the
     * search string, using the current search settings. Fails if the
     * search string is empty.
     *
     * @return  Whether an occurrence was found
     */
  /* boolean findNext (); */
  nsresult FindNext(PRBool *_retval);

  /**
     * searchString
     *
     * The string to search for. This must be non-empty to search.
     */
  /* attribute wstring searchString; */
  nsresult GetSearchString(PRUnichar * *aSearchString);
  nsresult SetSearchString(PRUnichar * aSearchString);

  /**
     * findBackwards
     *
     * Whether to find backwards (towards the beginning of the document).
     * Default is false (search forward).
     */
  /* attribute boolean findBackwards; */
  nsresult GetFindBackwards(PRBool *aFindBackwards);
  nsresult SetFindBackwards(PRBool aFindBackwards);

  /**
     * wrapFind
     *
     * Whether the search wraps around to the start (or end) of the document
     * if no match was found between the current position and the end (or
     * beginning). Works correctly when searching backwards. Default is
     * false.
     */
  /* attribute boolean wrapFind; */
  nsresult GetWrapFind(PRBool *aWrapFind);
  nsresult SetWrapFind(PRBool aWrapFind);

  /**
     * entireWord
     *
     * Whether to match entire words only. Default is false.
     */
  /* attribute boolean entireWord; */
  nsresult GetEntireWord(PRBool *aEntireWord);
  nsresult SetEntireWord(PRBool aEntireWord);

  /**
     * matchCase
     *
     * Whether to match case (case sensitive) when searching. Default is false.
     */
  /* attribute boolean matchCase; */
  nsresult GetMatchCase(PRBool *aMatchCase);
  nsresult SetMatchCase(PRBool aMatchCase);

  /**
     * searchFrames
     *
     * Whether to search through all frames in the content area. Default is true.
     * 
     * Note that you can control whether the search propagates into child or
     * parent frames explicitly using nsIWebBrowserFindInFrames, but if one,
     * but not both, of searchSubframes and searchParentFrames are set, this
     * returns false.
     */
  /* attribute boolean searchFrames; */
  nsresult GetSearchFrames(PRBool *aSearchFrames);
  nsresult SetSearchFrames(PRBool aSearchFrames);

}


/* starting interface:    nsIWebBrowserFindInFrames */
const char[] NS_IWEBBROWSERFINDINFRAMES_IID_STR = "e0f5d182-34bc-11d5-be5b-b760676c6ebc";

const nsIID NS_IWEBBROWSERFINDINFRAMES_IID= 
  {0xe0f5d182, 0x34bc, 0x11d5, 
    [ 0xbe, 0x5b, 0xb7, 0x60, 0x67, 0x6c, 0x6e, 0xbc ]};

/**
 * nsIWebBrowserFindInFrames
 *
 * Controls how find behaves when multiple frames or iframes are present.
 *
 * Get by doing a QueryInterface from nsIWebBrowserFind.
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIWebBrowserFindInFrames : nsISupports {
  static const char[] IID_STR = NS_IWEBBROWSERFINDINFRAMES_IID_STR;
  static const nsIID IID = NS_IWEBBROWSERFINDINFRAMES_IID;

  /**
     * currentSearchFrame
     *
     * Frame at which to start the search. Once the search is done, this will
     * be set to be the last frame searched, whether or not a result was found.
     * Has to be equal to or contained within the rootSearchFrame.
     */
  /* attribute nsIDOMWindow currentSearchFrame; */
  nsresult GetCurrentSearchFrame(nsIDOMWindow  *aCurrentSearchFrame);
  nsresult SetCurrentSearchFrame(nsIDOMWindow  aCurrentSearchFrame);

  /**
     * rootSearchFrame
     *
     * Frame within which to confine the search (normally the content area frame).
     * Set this to only search a subtree of the frame hierarchy.
     */
  /* attribute nsIDOMWindow rootSearchFrame; */
  nsresult GetRootSearchFrame(nsIDOMWindow  *aRootSearchFrame);
  nsresult SetRootSearchFrame(nsIDOMWindow  aRootSearchFrame);

  /**
     * searchSubframes
     *
     * Whether to recurse down into subframes while searching. Default is true.
     *
     * Setting nsIWebBrowserfind.searchFrames to true sets this to true.
     */
  /* attribute boolean searchSubframes; */
  nsresult GetSearchSubframes(PRBool *aSearchSubframes);
  nsresult SetSearchSubframes(PRBool aSearchSubframes);

  /**
     * searchParentFrames
     *
     * Whether to allow the search to propagate out of the currentSearchFrame into its
     * parent frame(s). Search is always confined within the rootSearchFrame. Default
     * is true.
     *
     * Setting nsIWebBrowserfind.searchFrames to true sets this to true.
     */
  /* attribute boolean searchParentFrames; */
  nsresult GetSearchParentFrames(PRBool *aSearchParentFrames);
  nsresult SetSearchParentFrames(PRBool aSearchParentFrames);

}

