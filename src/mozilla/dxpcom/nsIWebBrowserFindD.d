/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebBrowserFind.idl
 */

module mozilla.dxpcom.nsIWebBrowserFindD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWebBrowserFind;


public import mozilla.dxpcom.nsIWebBrowserFindD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

alias PRUint64 DOMTimeStamp;

public import mozilla.xpcom.nsIDOMAttr;

public import mozilla.xpcom.nsIDOMCDATASection;

public import mozilla.xpcom.nsIDOMCharacterData;

public import mozilla.xpcom.nsIDOMComment;

public import mozilla.xpcom.nsIDOMDOMImplementation;
    
public import mozilla.xpcom.nsIDOMDocument;

public import mozilla.xpcom.nsIDOMDocumentFragment;

public import mozilla.xpcom.nsIDOMDocumentType;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.xpcom.nsIDOMEntity;

public import mozilla.xpcom.nsIDOMEntityReference;

public import mozilla.xpcom.nsIDOMNSDocument;

public import mozilla.xpcom.nsIDOMNamedNodeMap;

public import mozilla.xpcom.nsIDOMNode;

public import mozilla.xpcom.nsIDOMNodeList;

public import mozilla.xpcom.nsIDOMNotation;

public import mozilla.xpcom.nsIDOMProcessingInstruction;

public import mozilla.xpcom.nsIDOMText;

public import mozilla.xpcom.nsIDOMDOMStringList;

public import mozilla.xpcom.nsIDOMNameList;

//public import mozilla.xpcom.DOMException;

//public import mozilla.xpcom.RangeException;

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

public import mozilla.dxpcom.nsrootidlD;

public import mozilla.dxpcom.nsISupportsD;

alias PRUint64 DOMTimeStampD;

public import mozilla.dxpcom.nsIDOMAttrD;

public import mozilla.dxpcom.nsIDOMCDATASectionD;

public import mozilla.dxpcom.nsIDOMCharacterDataD;

public import mozilla.dxpcom.nsIDOMCommentD;

public import mozilla.dxpcom.nsIDOMDOMImplementationD;
    
public import mozilla.dxpcom.nsIDOMDocumentD;

public import mozilla.dxpcom.nsIDOMDocumentFragmentD;

public import mozilla.dxpcom.nsIDOMDocumentTypeD;

public import mozilla.dxpcom.nsIDOMElementD;

public import mozilla.dxpcom.nsIDOMEntityD;

public import mozilla.dxpcom.nsIDOMEntityReferenceD;

public import mozilla.dxpcom.nsIDOMNSDocumentD;

public import mozilla.dxpcom.nsIDOMNamedNodeMapD;

public import mozilla.dxpcom.nsIDOMNodeD;

public import mozilla.dxpcom.nsIDOMNodeListD;

public import mozilla.dxpcom.nsIDOMNotationD;

public import mozilla.dxpcom.nsIDOMProcessingInstructionD;

public import mozilla.dxpcom.nsIDOMTextD;

public import mozilla.dxpcom.nsIDOMDOMStringListD;

public import mozilla.dxpcom.nsIDOMNameListD;

//public import mozilla.dxpcom.DOMExceptionD;

//public import mozilla.dxpcom.RangeExceptionD;

public import mozilla.dxpcom.nsIDOMEventD;

public import mozilla.dxpcom.nsIDOMEventListenerD;

public import mozilla.dxpcom.nsIDOMWindowD;

public import mozilla.dxpcom.nsIDOMHTMLFormElementD;

public import mozilla.dxpcom.nsIDOMBarPropD;

public import mozilla.dxpcom.nsIDOMWindowCollectionD;

public import mozilla.dxpcom.nsIDOMHTMLCollectionD;

public import mozilla.dxpcom.nsIDOMNavigatorD;

public import mozilla.dxpcom.nsIDOMScreenD;

public import mozilla.dxpcom.nsIDOMHistoryD;

public import mozilla.dxpcom.nsIDOMPkcs11D;

public import mozilla.dxpcom.nsIDOMMimeTypeArrayD;

public import mozilla.dxpcom.nsIDOMPluginArrayD;

public import mozilla.dxpcom.nsIDOMCryptoD;

public import mozilla.dxpcom.nsIDOMCRMFObjectD;

public import mozilla.dxpcom.nsIDOMPluginD;

public import mozilla.dxpcom.nsIDOMMimeTypeD;

public import mozilla.dxpcom.nsIDOMCSSRuleD;

public import mozilla.dxpcom.nsIDOMCSSRuleListD;

public import mozilla.dxpcom.nsIDOMStyleSheetD;

public import mozilla.dxpcom.nsIDOMCSSValueD;

public import mozilla.dxpcom.nsIDOMMediaListD;

public import mozilla.dxpcom.nsIDOMCSSStyleSheetD;

public import mozilla.dxpcom.nsIDOMCSSStyleDeclarationD;

public import mozilla.dxpcom.nsIDOMAbstractViewD;

public import mozilla.dxpcom.nsIDOMDocumentViewD;

public import mozilla.dxpcom.nsIDOMXULSelectCntrlItemElD;

public import mozilla.dxpcom.nsIDOMHTMLTableCaptionElemD;

public import mozilla.dxpcom.nsIDOMHTMLTableSectionElemD;

public import mozilla.dxpcom.nsIDOMStyleSheetListD;

public import mozilla.dxpcom.nsIDOMKeyEventD;

public import mozilla.dxpcom.nsIDOMCounterD;

public import mozilla.dxpcom.nsIDOMRectD;

public import mozilla.dxpcom.nsIDOMRGBColorD;

public import mozilla.dxpcom.nsIDOMCounterD;

public import mozilla.dxpcom.nsIDOMCSSPrimitiveValueD;

public import mozilla.dxpcom.nsIDOMEventGroupD;



/* starting wrapper class:    nsIWebBrowserFind */
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
class nsIWebBrowserFindD : public nsISupportsD {

  static const nsIID IID = NS_IWEBBROWSERFIND_IID;


  alias nsIWebBrowserFind InnerType;

  this(nsIWebBrowserFind intr){
    super(intr);
    this.inner = intr;
  }

  nsIWebBrowserFind opCast() {
    return inner;
  }

  void opAssign(nsIWebBrowserFind value) {
    inner = value;
  }

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
  PRBool FindNext(){
    PRBool _retval;
    nsresult __result = inner.FindNext(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * searchString
     *
     * The string to search for. This must be non-empty to search.
     */
  /* attribute wstring searchString; */
  PRUnichar* SearchString(){
    PRUnichar* value;
    nsresult __result = inner.GetSearchString(&value);
    CheckException(__result);
    return value;
  }
  void SearchString(PRUnichar* aSearchString){
    nsresult __result = inner.SetSearchString(aSearchString);
    CheckException(__result);
  }

  /**
     * findBackwards
     *
     * Whether to find backwards (towards the beginning of the document).
     * Default is false (search forward).
     */
  /* attribute boolean findBackwards; */
  PRBool FindBackwards(){
    PRBool value;
    nsresult __result = inner.GetFindBackwards(&value);
    CheckException(__result);
    return value;
  }
  void FindBackwards(PRBool aFindBackwards){
    nsresult __result = inner.SetFindBackwards(aFindBackwards);
    CheckException(__result);
  }

  /**
     * wrapFind
     *
     * Whether the search wraps around to the start (or end) of the document
     * if no match was found between the current position and the end (or
     * beginning). Works correctly when searching backwards. Default is
     * false.
     */
  /* attribute boolean wrapFind; */
  PRBool WrapFind(){
    PRBool value;
    nsresult __result = inner.GetWrapFind(&value);
    CheckException(__result);
    return value;
  }
  void WrapFind(PRBool aWrapFind){
    nsresult __result = inner.SetWrapFind(aWrapFind);
    CheckException(__result);
  }

  /**
     * entireWord
     *
     * Whether to match entire words only. Default is false.
     */
  /* attribute boolean entireWord; */
  PRBool EntireWord(){
    PRBool value;
    nsresult __result = inner.GetEntireWord(&value);
    CheckException(__result);
    return value;
  }
  void EntireWord(PRBool aEntireWord){
    nsresult __result = inner.SetEntireWord(aEntireWord);
    CheckException(__result);
  }

  /**
     * matchCase
     *
     * Whether to match case (case sensitive) when searching. Default is false.
     */
  /* attribute boolean matchCase; */
  PRBool MatchCase(){
    PRBool value;
    nsresult __result = inner.GetMatchCase(&value);
    CheckException(__result);
    return value;
  }
  void MatchCase(PRBool aMatchCase){
    nsresult __result = inner.SetMatchCase(aMatchCase);
    CheckException(__result);
  }

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
  PRBool SearchFrames(){
    PRBool value;
    nsresult __result = inner.GetSearchFrames(&value);
    CheckException(__result);
    return value;
  }
  void SearchFrames(PRBool aSearchFrames){
    nsresult __result = inner.SetSearchFrames(aSearchFrames);
    CheckException(__result);
  }

private:
  nsIWebBrowserFind inner;

}


/* starting wrapper class:    nsIWebBrowserFindInFrames */
/**
 * nsIWebBrowserFindInFrames
 *
 * Controls how find behaves when multiple frames or iframes are present.
 *
 * Get by doing a QueryInterface from nsIWebBrowserFind.
 *
 * @status FROZEN
 */
class nsIWebBrowserFindInFramesD : public nsISupportsD {

  static const nsIID IID = NS_IWEBBROWSERFINDINFRAMES_IID;


  alias nsIWebBrowserFindInFrames InnerType;

  this(nsIWebBrowserFindInFrames intr){
    super(intr);
    this.inner = intr;
  }

  nsIWebBrowserFindInFrames opCast() {
    return inner;
  }

  void opAssign(nsIWebBrowserFindInFrames value) {
    inner = value;
  }

  /**
     * currentSearchFrame
     *
     * Frame at which to start the search. Once the search is done, this will
     * be set to be the last frame searched, whether or not a result was found.
     * Has to be equal to or contained within the rootSearchFrame.
     */
  /* attribute nsIDOMWindow currentSearchFrame; */
  nsIDOMWindowD  CurrentSearchFrame(){
    nsIDOMWindow value;
    nsresult __result = inner.GetCurrentSearchFrame(&value);
    CheckException(__result);
    return new nsIDOMWindowD(value);
  }
  void CurrentSearchFrame(nsIDOMWindowD  aCurrentSearchFrame){
    nsIDOMWindow value;
    nsresult __result = inner.SetCurrentSearchFrame(value);
    CheckException(__result);
  }

  /**
     * rootSearchFrame
     *
     * Frame within which to confine the search (normally the content area frame).
     * Set this to only search a subtree of the frame hierarchy.
     */
  /* attribute nsIDOMWindow rootSearchFrame; */
  nsIDOMWindowD  RootSearchFrame(){
    nsIDOMWindow value;
    nsresult __result = inner.GetRootSearchFrame(&value);
    CheckException(__result);
    return new nsIDOMWindowD(value);
  }
  void RootSearchFrame(nsIDOMWindowD  aRootSearchFrame){
    nsIDOMWindow value;
    nsresult __result = inner.SetRootSearchFrame(value);
    CheckException(__result);
  }

  /**
     * searchSubframes
     *
     * Whether to recurse down into subframes while searching. Default is true.
     *
     * Setting nsIWebBrowserfind.searchFrames to true sets this to true.
     */
  /* attribute boolean searchSubframes; */
  PRBool SearchSubframes(){
    PRBool value;
    nsresult __result = inner.GetSearchSubframes(&value);
    CheckException(__result);
    return value;
  }
  void SearchSubframes(PRBool aSearchSubframes){
    nsresult __result = inner.SetSearchSubframes(aSearchSubframes);
    CheckException(__result);
  }

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
  PRBool SearchParentFrames(){
    PRBool value;
    nsresult __result = inner.GetSearchParentFrames(&value);
    CheckException(__result);
    return value;
  }
  void SearchParentFrames(PRBool aSearchParentFrames){
    nsresult __result = inner.SetSearchParentFrames(aSearchParentFrames);
    CheckException(__result);
  }

private:
  nsIWebBrowserFindInFrames inner;

}

