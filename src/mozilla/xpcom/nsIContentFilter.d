/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIContentFilter.idl
 */

module mozilla.xpcom.nsIContentFilter;


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


public import mozilla.xpcom.nsIURL; /* forward declaration */


/* starting interface:    nsIContentFilter */
const char[] NS_ICONTENTFILTER_IID_STR = "c18c49a8-62f0-4045-9884-4aa91e388f14";

const nsIID NS_ICONTENTFILTER_IID= 
  {0xc18c49a8, 0x62f0, 0x4045, 
    [ 0x98, 0x84, 0x4a, 0xa9, 0x1e, 0x38, 0x8f, 0x14 ]};

extern(Windows)
interface nsIContentFilter : nsISupports {
  static const char[] IID_STR = NS_ICONTENTFILTER_IID_STR;
  static const nsIID IID = NS_ICONTENTFILTER_IID;

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
  nsresult NotifyOfInsertion(nsAString * mimeType, nsIURL contentSourceURL, nsIDOMDocument sourceDocument, PRBool willDeleteSelection, nsIDOMNode *docFragment, nsIDOMNode *contentStartNode, PRInt32 *contentStartOffset, nsIDOMNode *contentEndNode, PRInt32 *contentEndOffset, nsIDOMNode *insertionPointNode, PRInt32 *insertionPointOffset, PRBool *continueWithInsertion);

}

