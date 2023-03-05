/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEditActionListener.idl
 */

module mozilla.dxpcom.nsIEditActionListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIEditActionListener;


public import mozilla.dxpcom.nsIEditActionListenerD;

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


public import mozilla.xpcom.nsISelection;

public import mozilla.dxpcom.nsISelectionD;


/* starting wrapper class:    nsIEditActionListener */
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
class nsIEditActionListenerD : public nsISupportsD {

  static const nsIID IID = NS_IEDITACTIONLISTENER_IID;


  alias nsIEditActionListener InnerType;

  this(nsIEditActionListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIEditActionListener opCast() {
    return inner;
  }

  void opAssign(nsIEditActionListener value) {
    inner = value;
  }

  /** 
   * Called before the editor creates a node.
   * @param aTag      The tag name of the DOM Node to create.
   * @param aParent   The node to insert the new object into
   * @param aPosition The place in aParent to insert the new node
   *                  0=first child, 1=second child, etc.
   *                  any number > number of current children = last child
   */
  /* void WillCreateNode (in DOMString aTag, in nsIDOMNode aParent, in long aPosition); */
  void WillCreateNode(wchar[] aTag, nsIDOMNodeD aParent, PRInt32 aPosition){
    scope auto _aTag = new AString(aTag);
    nsresult __result = inner.WillCreateNode(cast(nsAString*)_aTag, aParent ? cast(nsIDOMNode)aParent : null, aPosition);
    CheckException(__result);
  }

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
  void DidCreateNode(wchar[] aTag, nsIDOMNodeD aNode, nsIDOMNodeD aParent, PRInt32 aPosition, nsresult aResult){
    scope auto _aTag = new AString(aTag);
    nsresult __result = inner.DidCreateNode(cast(nsAString*)_aTag, aNode ? cast(nsIDOMNode)aNode : null, aParent ? cast(nsIDOMNode)aParent : null, aPosition, aResult);
    CheckException(__result);
  }

  /** 
   * Called before the editor inserts a node.
   * @param aNode     The DOM Node to insert.
   * @param aParent   The node to insert the new object into
   * @param aPosition The place in aParent to insert the new node
   *                  0=first child, 1=second child, etc.
   *                  any number > number of current children = last child
   */
  /* void WillInsertNode (in nsIDOMNode aNode, in nsIDOMNode aParent, in long aPosition); */
  void WillInsertNode(nsIDOMNodeD aNode, nsIDOMNodeD aParent, PRInt32 aPosition){
    nsresult __result = inner.WillInsertNode(aNode ? cast(nsIDOMNode)aNode : null, aParent ? cast(nsIDOMNode)aParent : null, aPosition);
    CheckException(__result);
  }

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
  void DidInsertNode(nsIDOMNodeD aNode, nsIDOMNodeD aParent, PRInt32 aPosition, nsresult aResult){
    nsresult __result = inner.DidInsertNode(aNode ? cast(nsIDOMNode)aNode : null, aParent ? cast(nsIDOMNode)aParent : null, aPosition, aResult);
    CheckException(__result);
  }

  /** 
   * Called before the editor deletes a node.
   * @param aChild    The node to delete
   */
  /* void WillDeleteNode (in nsIDOMNode aChild); */
  void WillDeleteNode(nsIDOMNodeD aChild){
    nsresult __result = inner.WillDeleteNode(aChild ? cast(nsIDOMNode)aChild : null);
    CheckException(__result);
  }

  /** 
   * Called after the editor deletes a node.
   * @param aChild    The node to delete
   * @param aResult   The result of the delete node operation.
   */
  /* void DidDeleteNode (in nsIDOMNode aChild, in nsresult aResult); */
  void DidDeleteNode(nsIDOMNodeD aChild, nsresult aResult){
    nsresult __result = inner.DidDeleteNode(aChild ? cast(nsIDOMNode)aChild : null, aResult);
    CheckException(__result);
  }

  /** 
   * Called before the editor splits a node.
   * @param aExistingRightNode   the node to split.  It will become the new node's next sibling.
   * @param aOffset              the offset of aExistingRightNode's content|children to do the split at
   * @param aNewLeftNode         [OUT] the new node resulting from the split, becomes aExistingRightNode's previous sibling.
   */
  /* void WillSplitNode (in nsIDOMNode aExistingRightNode, in long aOffset); */
  void WillSplitNode(nsIDOMNodeD aExistingRightNode, PRInt32 aOffset){
    nsresult __result = inner.WillSplitNode(aExistingRightNode ? cast(nsIDOMNode)aExistingRightNode : null, aOffset);
    CheckException(__result);
  }

  /** 
   * Called after the editor splits a node.
   * @param aExistingRightNode   the node to split.  It will become the new node's next sibling.
   * @param aOffset              the offset of aExistingRightNode's content|children to do the split at
   * @param aNewLeftNode         [OUT] the new node resulting from the split, becomes aExistingRightNode's previous sibling.
   */
  /* void DidSplitNode (in nsIDOMNode aExistingRightNode, in long aOffset, in nsIDOMNode aNewLeftNode, in nsresult aResult); */
  void DidSplitNode(nsIDOMNodeD aExistingRightNode, PRInt32 aOffset, nsIDOMNodeD aNewLeftNode, nsresult aResult){
    nsresult __result = inner.DidSplitNode(aExistingRightNode ? cast(nsIDOMNode)aExistingRightNode : null, aOffset, aNewLeftNode ? cast(nsIDOMNode)aNewLeftNode : null, aResult);
    CheckException(__result);
  }

  /** 
   * Called before the editor joins 2 nodes.
   * @param aLeftNode   This node will be merged into the right node
   * @param aRightNode  The node that will be merged into.
   *                    There is no requirement that the two nodes be of
   *                    the same type.
   * @param aParent     The parent of aRightNode
   */
  /* void WillJoinNodes (in nsIDOMNode aLeftNode, in nsIDOMNode aRightNode, in nsIDOMNode aParent); */
  void WillJoinNodes(nsIDOMNodeD aLeftNode, nsIDOMNodeD aRightNode, nsIDOMNodeD aParent){
    nsresult __result = inner.WillJoinNodes(aLeftNode ? cast(nsIDOMNode)aLeftNode : null, aRightNode ? cast(nsIDOMNode)aRightNode : null, aParent ? cast(nsIDOMNode)aParent : null);
    CheckException(__result);
  }

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
  void DidJoinNodes(nsIDOMNodeD aLeftNode, nsIDOMNodeD aRightNode, nsIDOMNodeD aParent, nsresult aResult){
    nsresult __result = inner.DidJoinNodes(aLeftNode ? cast(nsIDOMNode)aLeftNode : null, aRightNode ? cast(nsIDOMNode)aRightNode : null, aParent ? cast(nsIDOMNode)aParent : null, aResult);
    CheckException(__result);
  }

  /** 
   * Called before the editor inserts text.
   * @param aTextNode   This node getting inserted text
   * @param aOffset     The offset in aTextNode to insert at.
   * @param aString     The string that gets inserted.
   */
  /* void WillInsertText (in nsIDOMCharacterData aTextNode, in long aOffset, in DOMString aString); */
  void WillInsertText(nsIDOMCharacterDataD aTextNode, PRInt32 aOffset, wchar[] aString){
    scope auto _aString = new AString(aString);
    nsresult __result = inner.WillInsertText(aTextNode ? cast(nsIDOMCharacterData)aTextNode : null, aOffset, cast(nsAString*)_aString);
    CheckException(__result);
  }

  /** 
   * Called after the editor inserts text.
   * @param aTextNode   This node getting inserted text
   * @param aOffset     The offset in aTextNode to insert at.
   * @param aString     The string that gets inserted.
   * @param aResult     The result of the insert text operation.
   */
  /* void DidInsertText (in nsIDOMCharacterData aTextNode, in long aOffset, in DOMString aString, in nsresult aResult); */
  void DidInsertText(nsIDOMCharacterDataD aTextNode, PRInt32 aOffset, wchar[] aString, nsresult aResult){
    scope auto _aString = new AString(aString);
    nsresult __result = inner.DidInsertText(aTextNode ? cast(nsIDOMCharacterData)aTextNode : null, aOffset, cast(nsAString*)_aString, aResult);
    CheckException(__result);
  }

  /** 
   * Called before the editor deletes text.
   * @param aTextNode   This node getting text deleted
   * @param aOffset     The offset in aTextNode to delete at.
   * @param aLength     The amount of text to delete.
   */
  /* void WillDeleteText (in nsIDOMCharacterData aTextNode, in long aOffset, in long aLength); */
  void WillDeleteText(nsIDOMCharacterDataD aTextNode, PRInt32 aOffset, PRInt32 aLength){
    nsresult __result = inner.WillDeleteText(aTextNode ? cast(nsIDOMCharacterData)aTextNode : null, aOffset, aLength);
    CheckException(__result);
  }

  /** 
   * Called before the editor deletes text.
   * @param aTextNode   This node getting text deleted
   * @param aOffset     The offset in aTextNode to delete at.
   * @param aLength     The amount of text to delete.
   * @param aResult     The result of the delete text operation.
   */
  /* void DidDeleteText (in nsIDOMCharacterData aTextNode, in long aOffset, in long aLength, in nsresult aResult); */
  void DidDeleteText(nsIDOMCharacterDataD aTextNode, PRInt32 aOffset, PRInt32 aLength, nsresult aResult){
    nsresult __result = inner.DidDeleteText(aTextNode ? cast(nsIDOMCharacterData)aTextNode : null, aOffset, aLength, aResult);
    CheckException(__result);
  }

  /** 
   * Called before the editor deletes the selection.
   * @param aSelection   The selection to be deleted
   */
  /* void WillDeleteSelection (in nsISelection aSelection); */
  void WillDeleteSelection(nsISelectionD aSelection){
    nsresult __result = inner.WillDeleteSelection(aSelection ? cast(nsISelection)aSelection : null);
    CheckException(__result);
  }

  /** 
   * Called after the editor deletes the selection.
   * @param aSelection   The selection, after deletion
   */
  /* void DidDeleteSelection (in nsISelection aSelection); */
  void DidDeleteSelection(nsISelectionD aSelection){
    nsresult __result = inner.DidDeleteSelection(aSelection ? cast(nsISelection)aSelection : null);
    CheckException(__result);
  }

private:
  nsIEditActionListener inner;

}

