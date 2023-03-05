/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEditActionListener.idl
 */

module mozilla.xpcom.nsIEditActionListener;


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


public import mozilla.xpcom.nsISelection; /* forward declaration */


/* starting interface:    nsIEditActionListener */
const char[] NS_IEDITACTIONLISTENER_IID_STR = "b22907b1-ee93-11d2-8d50-000064657374";

const nsIID NS_IEDITACTIONLISTENER_IID= 
  {0xb22907b1, 0xee93, 0x11d2, 
    [ 0x8d, 0x50, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

/**
 * A generic editor action listener interface. 
 * <P>
 * nsIEditActionListener is the interface used by applications wishing to be notified
 * when the editor modifies the DOM tree.
 *
 * Note:  this is the wrong class to implement if you are interested in generic
 * change notifications.  For generic notifications, you should implement
 * nsIDocumentObserver.
 */
extern(Windows)
interface nsIEditActionListener : nsISupports {
  static const char[] IID_STR = NS_IEDITACTIONLISTENER_IID_STR;
  static const nsIID IID = NS_IEDITACTIONLISTENER_IID;

  /** 
   * Called before the editor creates a node.
   * @param aTag      The tag name of the DOM Node to create.
   * @param aParent   The node to insert the new object into
   * @param aPosition The place in aParent to insert the new node
   *                  0=first child, 1=second child, etc.
   *                  any number > number of current children = last child
   */
  /* void WillCreateNode (in DOMString aTag, in nsIDOMNode aParent, in long aPosition); */
  nsresult WillCreateNode(nsAString * aTag, nsIDOMNode aParent, PRInt32 aPosition);

  /** 
   * Called after the editor creates a node.
   * @param aTag      The tag name of the DOM Node to create.
   * @param aNode     The DOM Node that was created.
   * @param aParent   The node to insert the new object into
   * @param aPosition The place in aParent to insert the new node
   *                  0=first child, 1=second child, etc.
   *                  any number > number of current children = last child
   * @param aResult   The result of the create node operation.
   */
  /* void DidCreateNode (in DOMString aTag, in nsIDOMNode aNode, in nsIDOMNode aParent, in long aPosition, in nsresult aResult); */
  nsresult DidCreateNode(nsAString * aTag, nsIDOMNode aNode, nsIDOMNode aParent, PRInt32 aPosition, nsresult aResult);

  /** 
   * Called before the editor inserts a node.
   * @param aNode     The DOM Node to insert.
   * @param aParent   The node to insert the new object into
   * @param aPosition The place in aParent to insert the new node
   *                  0=first child, 1=second child, etc.
   *                  any number > number of current children = last child
   */
  /* void WillInsertNode (in nsIDOMNode aNode, in nsIDOMNode aParent, in long aPosition); */
  nsresult WillInsertNode(nsIDOMNode aNode, nsIDOMNode aParent, PRInt32 aPosition);

  /** 
   * Called after the editor inserts a node.
   * @param aNode     The DOM Node to insert.
   * @param aParent   The node to insert the new object into
   * @param aPosition The place in aParent to insert the new node
   *                  0=first child, 1=second child, etc.
   *                  any number > number of current children = last child
   * @param aResult   The result of the insert node operation.
   */
  /* void DidInsertNode (in nsIDOMNode aNode, in nsIDOMNode aParent, in long aPosition, in nsresult aResult); */
  nsresult DidInsertNode(nsIDOMNode aNode, nsIDOMNode aParent, PRInt32 aPosition, nsresult aResult);

  /** 
   * Called before the editor deletes a node.
   * @param aChild    The node to delete
   */
  /* void WillDeleteNode (in nsIDOMNode aChild); */
  nsresult WillDeleteNode(nsIDOMNode aChild);

  /** 
   * Called after the editor deletes a node.
   * @param aChild    The node to delete
   * @param aResult   The result of the delete node operation.
   */
  /* void DidDeleteNode (in nsIDOMNode aChild, in nsresult aResult); */
  nsresult DidDeleteNode(nsIDOMNode aChild, nsresult aResult);

  /** 
   * Called before the editor splits a node.
   * @param aExistingRightNode   the node to split.  It will become the new node's next sibling.
   * @param aOffset              the offset of aExistingRightNode's content|children to do the split at
   * @param aNewLeftNode         [OUT] the new node resulting from the split, becomes aExistingRightNode's previous sibling.
   */
  /* void WillSplitNode (in nsIDOMNode aExistingRightNode, in long aOffset); */
  nsresult WillSplitNode(nsIDOMNode aExistingRightNode, PRInt32 aOffset);

  /** 
   * Called after the editor splits a node.
   * @param aExistingRightNode   the node to split.  It will become the new node's next sibling.
   * @param aOffset              the offset of aExistingRightNode's content|children to do the split at
   * @param aNewLeftNode         [OUT] the new node resulting from the split, becomes aExistingRightNode's previous sibling.
   */
  /* void DidSplitNode (in nsIDOMNode aExistingRightNode, in long aOffset, in nsIDOMNode aNewLeftNode, in nsresult aResult); */
  nsresult DidSplitNode(nsIDOMNode aExistingRightNode, PRInt32 aOffset, nsIDOMNode aNewLeftNode, nsresult aResult);

  /** 
   * Called before the editor joins 2 nodes.
   * @param aLeftNode   This node will be merged into the right node
   * @param aRightNode  The node that will be merged into.
   *                    There is no requirement that the two nodes be of
   *                    the same type.
   * @param aParent     The parent of aRightNode
   */
  /* void WillJoinNodes (in nsIDOMNode aLeftNode, in nsIDOMNode aRightNode, in nsIDOMNode aParent); */
  nsresult WillJoinNodes(nsIDOMNode aLeftNode, nsIDOMNode aRightNode, nsIDOMNode aParent);

  /** 
   * Called after the editor joins 2 nodes.
   * @param aLeftNode   This node will be merged into the right node
   * @param aRightNode  The node that will be merged into.
   *                    There is no requirement that the two nodes be of
   *                    the same type.
   * @param aParent     The parent of aRightNode
   * @param aResult     The result of the join operation.
   */
  /* void DidJoinNodes (in nsIDOMNode aLeftNode, in nsIDOMNode aRightNode, in nsIDOMNode aParent, in nsresult aResult); */
  nsresult DidJoinNodes(nsIDOMNode aLeftNode, nsIDOMNode aRightNode, nsIDOMNode aParent, nsresult aResult);

  /** 
   * Called before the editor inserts text.
   * @param aTextNode   This node getting inserted text
   * @param aOffset     The offset in aTextNode to insert at.
   * @param aString     The string that gets inserted.
   */
  /* void WillInsertText (in nsIDOMCharacterData aTextNode, in long aOffset, in DOMString aString); */
  nsresult WillInsertText(nsIDOMCharacterData aTextNode, PRInt32 aOffset, nsAString * aString);

  /** 
   * Called after the editor inserts text.
   * @param aTextNode   This node getting inserted text
   * @param aOffset     The offset in aTextNode to insert at.
   * @param aString     The string that gets inserted.
   * @param aResult     The result of the insert text operation.
   */
  /* void DidInsertText (in nsIDOMCharacterData aTextNode, in long aOffset, in DOMString aString, in nsresult aResult); */
  nsresult DidInsertText(nsIDOMCharacterData aTextNode, PRInt32 aOffset, nsAString * aString, nsresult aResult);

  /** 
   * Called before the editor deletes text.
   * @param aTextNode   This node getting text deleted
   * @param aOffset     The offset in aTextNode to delete at.
   * @param aLength     The amount of text to delete.
   */
  /* void WillDeleteText (in nsIDOMCharacterData aTextNode, in long aOffset, in long aLength); */
  nsresult WillDeleteText(nsIDOMCharacterData aTextNode, PRInt32 aOffset, PRInt32 aLength);

  /** 
   * Called before the editor deletes text.
   * @param aTextNode   This node getting text deleted
   * @param aOffset     The offset in aTextNode to delete at.
   * @param aLength     The amount of text to delete.
   * @param aResult     The result of the delete text operation.
   */
  /* void DidDeleteText (in nsIDOMCharacterData aTextNode, in long aOffset, in long aLength, in nsresult aResult); */
  nsresult DidDeleteText(nsIDOMCharacterData aTextNode, PRInt32 aOffset, PRInt32 aLength, nsresult aResult);

  /** 
   * Called before the editor deletes the selection.
   * @param aSelection   The selection to be deleted
   */
  /* void WillDeleteSelection (in nsISelection aSelection); */
  nsresult WillDeleteSelection(nsISelection aSelection);

  /** 
   * Called after the editor deletes the selection.
   * @param aSelection   The selection, after deletion
   */
  /* void DidDeleteSelection (in nsISelection aSelection); */
  nsresult DidDeleteSelection(nsISelection aSelection);

}

