/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIContentFilter.idl
 */

module mozilla.dxpcom.nsIContentFilterD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIContentFilter;


public import mozilla.dxpcom.nsIContentFilterD;

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


public import mozilla.xpcom.nsIURL;

public import mozilla.dxpcom.nsIURLD;


/* starting wrapper class:    nsIContentFilter */
class nsIContentFilterD : public nsISupportsD {

  static const nsIID IID = NS_ICONTENTFILTER_IID;


  alias nsIContentFilter InnerType;

  this(nsIContentFilter intr){
    super(intr);
    this.inner = intr;
  }

  nsIContentFilter opCast() {
    return inner;
  }

  void opAssign(nsIContentFilter value) {
    inner = value;
  }

  /**
   * This notification occurs in an editor during these events:
   *    * open of document (once rendered in window but before editable)
   *    * paste from clipboard
   *    * drop from mouse
   *    * insertion of html (such as with "cmd_insertHTML")
   * It provides a hook so the above actions can be canceled or the data
   * can be modified (using standard DOM APIs) or left untouched.  The data
   * that results (if any) from all filter callbacks is what will be used
   * for transaction purposes (undo/redo) except for the open event.
   *
   * The willDeleteSelection parameter is offered for filters who want to
   * handle the insertion themselves and need to handle drag/drop correctly.
   * The flag is true when the editor intends to delete the selection.
   *
   * Callers who want to cancel all insertion can simply set
   * continueWithInsertion to PR_FALSE and return.
   * Note: If cancellation occurs during the "open" event, the editor will
   * still be available but will be empty.
   *
   * Callers who want to allow insertion of the data with no changes
   * can simply set continueWithInsertion to PR_TRUE and return.
   *
   * Callers who want to modify the content (docFragment) being inserted are 
   * responsible for updating contentStartNode, contentStartOffset, 
   * contentEndNode, and contentEndOffset (if necessary).  
   * Callers are responsible for freeing and addref'ing if they want to 
   * completely replace any of the DOM nodes passed in.
   *
   * The location where insertion will occur should be considered an
   * approximation since the editor may need to adjust it if it deletes
   * the selection as part of the event and later determines that insertion
   * point is an empty container which should also be removed (or in other
   * scenarios such as -moz-user-select:none).
   *
   * In some scenarios the selection will be deleted.  If callers choose
   * to adjust the insertion point, they should be careful that the insertion
   * point is not in the current selection.
   *
   * The contentStartNode and contentEndNode are not necessarily
   * immediate children of the docFragment.  Any nodes outside of the range
   * set by contentStartNode and contentEndNode are for context from the
   * source document.
   *
   * @param mimeType          the mimetype used for retrieving data
   * @param contentSourceURL  location where docFragment came from
   * @param sourceDocument      document where content came from (can be null)
   * @param willDeleteSelection tells hook if selection will/should be deleted
   * @param docFragment         fragment of node to be inserted
   * @param contentStartNode    node under which content to be inserted begins
   * @param contentStartOffset  start offset within contentStartNode
   * @param contentEndNode      node under which content to be inserted ends
   * @param contentEndOffset    ending offset withing contentEndNode
   * @param insertionPointNode     location where insertion will occur
   * @param insertionPointOffset   offset within node where insertion occurs
   * @param continueWithInsertion  flag to cancel insertion (if desired)
   */
  /* void notifyOfInsertion (in AString mimeType, in nsIURL contentSourceURL, in nsIDOMDocument sourceDocument, in PRBool willDeleteSelection, inout nsIDOMNode docFragment, inout nsIDOMNode contentStartNode, inout long contentStartOffset, inout nsIDOMNode contentEndNode, inout long contentEndOffset, inout nsIDOMNode insertionPointNode, inout long insertionPointOffset, out boolean continueWithInsertion); */
  void NotifyOfInsertion(wchar[] mimeType, nsIURLD contentSourceURL, nsIDOMDocumentD sourceDocument, PRBool willDeleteSelection, out nsIDOMNodeD docFragment, out nsIDOMNodeD contentStartNode, out PRInt32 contentStartOffset, out nsIDOMNodeD contentEndNode, out PRInt32 contentEndOffset, out nsIDOMNodeD insertionPointNode, out PRInt32 insertionPointOffset, out PRBool continueWithInsertion){
    scope auto _mimeType = new AString(mimeType);
    nsIDOMNode _docFragment;
    nsIDOMNode _contentStartNode;
    nsIDOMNode _contentEndNode;
    nsIDOMNode _insertionPointNode;
    nsresult __result = inner.NotifyOfInsertion(cast(nsAString*)_mimeType, contentSourceURL ? cast(nsIURL)contentSourceURL : null, sourceDocument ? cast(nsIDOMDocument)sourceDocument : null, willDeleteSelection, &_docFragment, &_contentStartNode, &contentStartOffset, &_contentEndNode, &contentEndOffset, &_insertionPointNode, &insertionPointOffset, &continueWithInsertion);
    CheckException(__result);
    docFragment = _docFragment ? new nsIDOMNodeD(_docFragment) : null;
    contentStartNode = _contentStartNode ? new nsIDOMNodeD(_contentStartNode) : null;
    contentEndNode = _contentEndNode ? new nsIDOMNodeD(_contentEndNode) : null;
    insertionPointNode = _insertionPointNode ? new nsIDOMNodeD(_insertionPointNode) : null;
  }

private:
  nsIContentFilter inner;

}

