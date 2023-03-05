/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEditor.idl
 */

module mozilla.xpcom.nsIEditor;


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


public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIAtom; /* forward declaration */

public import mozilla.xpcom.nsISelection; /* forward declaration */

public import mozilla.xpcom.nsISelectionController; /* forward declaration */

public import mozilla.xpcom.nsIDocumentStateListener; /* forward declaration */

public import mozilla.xpcom.nsIOutputStream; /* forward declaration */

public import mozilla.xpcom.nsITransactionManager; /* forward declaration */

public import mozilla.xpcom.nsITransaction; /* forward declaration */

public import mozilla.xpcom.nsIEditorObserver; /* forward declaration */

public import mozilla.xpcom.nsIEditActionListener; /* forward declaration */

public import mozilla.xpcom.nsIInlineSpellChecker; /* forward declaration */


/* starting interface:    nsIEditor */
const char[] NS_IEDITOR_IID_STR = "d4882ffb-e927-408b-96be-d4391b456fa9";

const nsIID NS_IEDITOR_IID= 
  {0xd4882ffb, 0xe927, 0x408b, 
    [ 0x96, 0xbe, 0xd4, 0x39, 0x1b, 0x45, 0x6f, 0xa9 ]};

extern(Windows)
interface nsIEditor : nsISupports {
  static const char[] IID_STR = NS_IEDITOR_IID_STR;
  static const nsIID IID = NS_IEDITOR_IID;

  enum { eNone = 0 };

  enum { eNext = 1 };

  enum { ePrevious = 2 };

  enum { eNextWord = 3 };

  enum { ePreviousWord = 4 };

  enum { eToBeginningOfLine = 5 };

  enum { eToEndOfLine = 6 };

  /* readonly attribute nsISelection selection; */
  nsresult GetSelection(nsISelection  *aSelection);

  /**
   * Init is to tell the implementation of nsIEditor to begin its services
   * @param aDoc          The dom document interface being observed
   * @param aPresShell    TEMP: The presentation shell displaying the document.
   *                      Once events can tell us from what pres shell
   *                      they originated, this will no longer be
   *                      necessary, and the editor will no longer be
   *                      linked to a single pres shell.
   * @param aRoot         This is the root of the editable section of this
   *                      document. If it is null then we get root
   *                      from document body.
   * @param aSelCon       this should be used to get the selection location
   * @param aFlags        A bitmask of flags for specifying the behavior
   *                      of the editor.
   */
  /* [noscript] void init (in nsIDOMDocument doc, in nsIPresShellPtr shell, in nsIContentPtr aRoot, in nsISelectionController aSelCon, in unsigned long aFlags); */
  nsresult Init(nsIDOMDocument doc, nsIPresShell * shell, nsIContent * aRoot, nsISelectionController aSelCon, PRUint32 aFlags);

  /* void setAttributeOrEquivalent (in nsIDOMElement element, in AString sourceAttrName, in AString sourceAttrValue, in boolean aSuppressTransaction); */
  nsresult SetAttributeOrEquivalent(nsIDOMElement element, nsAString * sourceAttrName, nsAString * sourceAttrValue, PRBool aSuppressTransaction);

  /* void removeAttributeOrEquivalent (in nsIDOMElement element, in DOMString sourceAttrName, in boolean aSuppressTransaction); */
  nsresult RemoveAttributeOrEquivalent(nsIDOMElement element, nsAString * sourceAttrName, PRBool aSuppressTransaction);

  /**
   * postCreate should be called after Init, and is the time that the editor
   * tells its documentStateObservers that the document has been created.
   */
  /* void postCreate (); */
  nsresult PostCreate();

  /**
   * preDestroy is called before the editor goes away, and gives the editor a
   * chance to tell its documentStateObservers that the document is going away.
   */
  /* void preDestroy (); */
  nsresult PreDestroy();

  /** edit flags for this editor.  May be set at any time. */
  /* attribute unsigned long flags; */
  nsresult GetFlags(PRUint32 *aFlags);
  nsresult SetFlags(PRUint32 aFlags);

  /**
   * the MimeType of the document
   */
  /* attribute string contentsMIMEType; */
  nsresult GetContentsMIMEType(char * *aContentsMIMEType);
  nsresult SetContentsMIMEType(char * aContentsMIMEType);

  /** Returns true if we have a document that is not marked read-only */
  /* readonly attribute boolean isDocumentEditable; */
  nsresult GetIsDocumentEditable(PRBool *aIsDocumentEditable);

  /**
   * the DOM Document this editor is associated with, refcounted.
   */
  /* readonly attribute nsIDOMDocument document; */
  nsresult GetDocument(nsIDOMDocument  *aDocument);

  /** the body element, i.e. the root of the editable document.
   */
  /* readonly attribute nsIDOMElement rootElement; */
  nsresult GetRootElement(nsIDOMElement  *aRootElement);

  /**
   * the selection controller for the current presentation, refcounted.
   */
  /* readonly attribute nsISelectionController selectionController; */
  nsresult GetSelectionController(nsISelectionController  *aSelectionController);

  /** 
   * DeleteSelection removes all nodes in the current selection.
   * @param aDir  if eNext, delete to the right (for example, the DEL key)
   *              if ePrevious, delete to the left (for example, the BACKSPACE key)
   */
  /* void deleteSelection (in short action); */
  nsresult DeleteSelection(PRInt16 action);

  /** Returns true if the document has no *meaningful* content */
  /* readonly attribute boolean documentIsEmpty; */
  nsresult GetDocumentIsEmpty(PRBool *aDocumentIsEmpty);

  /** Returns true if the document is modifed and needs saving */
  /* readonly attribute boolean documentModified; */
  nsresult GetDocumentModified(PRBool *aDocumentModified);

  /** Sets the current 'Save' document character set */
  /* attribute ACString documentCharacterSet; */
  nsresult GetDocumentCharacterSet(nsACString * aDocumentCharacterSet);
  nsresult SetDocumentCharacterSet(nsACString * aDocumentCharacterSet);

  /** to be used ONLY when we need to override the doc's modification
    * state (such as when it's saved).
    */
  /* void resetModificationCount (); */
  nsresult ResetModificationCount();

  /** Gets the modification count of the document we are editing.
    * @return the modification count of the document being edited.
    *         Zero means unchanged.
    */
  /* long getModificationCount (); */
  nsresult GetModificationCount(PRInt32 *_retval);

  /** called each time we modify the document.
    * Increments the modification count of the document.
    * @param  aModCount  the number of modifications by which
    *                    to increase or decrease the count
    */
  /* void incrementModificationCount (in long aModCount); */
  nsresult IncrementModificationCount(PRInt32 aModCount);

  /** transactionManager Get the transaction manager the editor is using.
    */
  /* readonly attribute nsITransactionManager transactionManager; */
  nsresult GetTransactionManager(nsITransactionManager  *aTransactionManager);

  /** doTransaction() fires a transaction.
    * It is provided here so clients can create their own transactions.
    * If a transaction manager is present, it is used.  
    * Otherwise, the transaction is just executed directly.
    *
    * @param aTxn the transaction to execute
    */
  /* void doTransaction (in nsITransaction txn); */
  nsresult DoTransaction(nsITransaction txn);

  /** turn the undo system on or off
    * @param aEnable  if PR_TRUE, the undo system is turned on if available
    *                 if PR_FALSE the undo system is turned off if it
    *                 was previously on
    * @return         if aEnable is PR_TRUE, returns NS_OK if
    *                 the undo system could be initialized properly
    *                 if aEnable is PR_FALSE, returns NS_OK.
    */
  /* void enableUndo (in boolean enable); */
  nsresult EnableUndo(PRBool enable);

  /** undo reverses the effects of the last Do operation,
    * if Undo is enabled in the editor.
    * It is provided here so clients need no knowledge of whether
    * the editor has a transaction manager or not.
    * If a transaction manager is present, it is told to undo,
    * and the result of that undo is returned.  
    * Otherwise, the Undo request is ignored and an
    * error NS_ERROR_NOT_AVAILABLE is returned.
    *
    */
  /* void undo (in unsigned long count); */
  nsresult Undo(PRUint32 count);

  /** returns state information about the undo system.
    * @param aIsEnabled [OUT] PR_TRUE if undo is enabled
    * @param aCanUndo   [OUT] PR_TRUE if at least one transaction is
    *                         currently ready to be undone.
    */
  /* void canUndo (out boolean isEnabled, out boolean canUndo); */
  nsresult CanUndo(PRBool *isEnabled, PRBool *canUndo);

  /** redo reverses the effects of the last Undo operation
    * It is provided here so clients need no knowledge of whether
    * the editor has a transaction manager or not.
    * If a transaction manager is present, it is told to redo and the
    * result of the previously undone transaction is reapplied to the document.
    * If no transaction is available for Redo, or if the document
    * has no transaction manager, the Redo request is ignored and an
    * error NS_ERROR_NOT_AVAILABLE is returned.
    *
    */
  /* void redo (in unsigned long count); */
  nsresult Redo(PRUint32 count);

  /** returns state information about the redo system.
    * @param aIsEnabled [OUT] PR_TRUE if redo is enabled
    * @param aCanRedo   [OUT] PR_TRUE if at least one transaction is
                              currently ready to be redone.
    */
  /* void canRedo (out boolean isEnabled, out boolean canRedo); */
  nsresult CanRedo(PRBool *isEnabled, PRBool *canRedo);

  /** beginTransaction is a signal from the caller to the editor that
    * the caller will execute multiple updates to the content tree
    * that should be treated as a single logical operation,
    * in the most efficient way possible.<br>
    * All transactions executed between a call to beginTransaction and
    * endTransaction will be undoable as an atomic action.<br>
    * endTransaction must be called after beginTransaction.<br>
    * Calls to beginTransaction can be nested, as long as endTransaction
    * is called once per beginUpdate.
    */
  /* void beginTransaction (); */
  nsresult BeginTransaction();

  /** endTransaction is a signal to the editor that the caller is
    * finished updating the content model.<br>
    * beginUpdate must be called before endTransaction is called.<br>
    * Calls to beginTransaction can be nested, as long as endTransaction
    * is called once per beginTransaction.
    */
  /* void endTransaction (); */
  nsresult EndTransaction();

  /* void beginPlaceHolderTransaction (in nsIAtom name); */
  nsresult BeginPlaceHolderTransaction(nsIAtom name);

  /* void endPlaceHolderTransaction (); */
  nsresult EndPlaceHolderTransaction();

  /* boolean shouldTxnSetSelection (); */
  nsresult ShouldTxnSetSelection(PRBool *_retval);

  /** Set the flag that prevents insertElementTxn from changing the selection
    * @param   should  Set false to suppress changing the selection;
    *                  i.e., before using InsertElement() to insert
    *                  under <head> element
    * WARNING: You must be very careful to reset back to PR_TRUE after
    *          setting PR_FALSE, else selection/caret is trashed
    *          for further editing.
    */
  /* void setShouldTxnSetSelection (in boolean should); */
  nsresult SetShouldTxnSetSelection(PRBool should);

  /* readonly attribute nsIInlineSpellChecker inlineSpellChecker; */
  nsresult GetInlineSpellChecker(nsIInlineSpellChecker  *aInlineSpellChecker);

  /** cut the currently selected text, putting it into the OS clipboard
    * What if no text is selected?
    * What about mixed selections?
    * What are the clipboard formats?
    */
  /* void cut (); */
  nsresult Cut();

  /** Can we cut? True if the doc is modifiable, and we have a non-
    * collapsed selection.
    */
  /* boolean canCut (); */
  nsresult CanCut(PRBool *_retval);

  /** copy the currently selected text, putting it into the OS clipboard
    * What if no text is selected?
    * What about mixed selections?
    * What are the clipboard formats?
    */
  /* void copy (); */
  nsresult Copy();

  /** Can we copy? True if we have a non-collapsed selection.
    */
  /* boolean canCopy (); */
  nsresult CanCopy(PRBool *_retval);

  /** paste the text in the OS clipboard at the cursor position, replacing
    * the selected text (if any)
    */
  /* void paste (in long aSelectionType); */
  nsresult Paste(PRInt32 aSelectionType);

  /** Can we paste? True if the doc is modifiable, and we have
    * pasteable data in the clipboard.
    */
  /* boolean canPaste (in long aSelectionType); */
  nsresult CanPaste(PRInt32 aSelectionType, PRBool *_retval);

  /** sets the document selection to the entire contents of the document */
  /* void selectAll (); */
  nsresult SelectAll();

  /** sets the document selection to the beginning of the document */
  /* void beginningOfDocument (); */
  nsresult BeginningOfDocument();

  /** sets the document selection to the end of the document */
  /* void endOfDocument (); */
  nsresult EndOfDocument();

  /** 
    * canDrag decides if a drag should be started
    * (for example, based on the current selection and mousepoint).
    */
  /* boolean canDrag (in nsIDOMEvent aEvent); */
  nsresult CanDrag(nsIDOMEvent aEvent, PRBool *_retval);

  /** 
    * doDrag transfers the relevant data (as appropriate)
    * to a transferable so it can later be dropped.
    */
  /* void doDrag (in nsIDOMEvent aEvent); */
  nsresult DoDrag(nsIDOMEvent aEvent);

  /** 
    * insertFromDrop looks for a dragsession and inserts the
    * relevant data in response to a drop.
    */
  /* void insertFromDrop (in nsIDOMEvent aEvent); */
  nsresult InsertFromDrop(nsIDOMEvent aEvent);

  /**
   * setAttribute() sets the attribute of aElement.
   * No checking is done to see if aAttribute is a legal attribute of the node,
   * or if aValue is a legal value of aAttribute.
   *
   * @param aElement    the content element to operate on
   * @param aAttribute  the string representation of the attribute to set
   * @param aValue      the value to set aAttribute to
   */
  /* void setAttribute (in nsIDOMElement aElement, in AString attributestr, in AString attvalue); */
  nsresult SetAttribute(nsIDOMElement aElement, nsAString * attributestr, nsAString * attvalue);

  /**
   * getAttributeValue() retrieves the attribute's value for aElement.
   *
   * @param aElement      the content element to operate on
   * @param aAttribute    the string representation of the attribute to get
   * @param aResultValue  [OUT] the value of aAttribute.
   *                      Only valid if aResultIsSet is PR_TRUE
   * @return              PR_TRUE if aAttribute is set on the current node,
   *                      PR_FALSE if it is not.
   */
  /* boolean getAttributeValue (in nsIDOMElement aElement, in AString attributestr, out AString resultValue); */
  nsresult GetAttributeValue(nsIDOMElement aElement, nsAString * attributestr, nsAString * resultValue, PRBool *_retval);

  /**
   * removeAttribute() deletes aAttribute from the attribute list of aElement.
   * If aAttribute is not an attribute of aElement, nothing is done.
   *
   * @param aElement      the content element to operate on
   * @param aAttribute    the string representation of the attribute to get
   */
  /* void removeAttribute (in nsIDOMElement aElement, in AString aAttribute); */
  nsresult RemoveAttribute(nsIDOMElement aElement, nsAString * aAttribute);

  /**
   * cloneAttribute() copies the attribute from the source node to
   * the destination node and delete those not in the source.
   *
   * The supplied nodes MUST BE ELEMENTS (most callers are working with nodes)
   * @param aAttribute    the name of the attribute to copy
   * @param aDestNode     the destination element to operate on
   * @param aSourceNode   the source element to copy attributes from
   * @exception NS_ERROR_NULL_POINTER at least one of the nodes is null
   * @exception NS_ERROR_NO_INTERFACE at least one of the nodes is not an
   *                                  element
   */
  /* void cloneAttribute (in AString aAttribute, in nsIDOMNode aDestNode, in nsIDOMNode aSourceNode); */
  nsresult CloneAttribute(nsAString * aAttribute, nsIDOMNode aDestNode, nsIDOMNode aSourceNode);

  /**
   * cloneAttributes() is similar to nsIDOMNode::cloneNode(),
   *   it assures the attribute nodes of the destination are identical
   *   with the source node by copying all existing attributes from the
   *   source and deleting those not in the source.
   *   This is used when the destination node (element) already exists
   *
   * The supplied nodes MUST BE ELEMENTS (most callers are working with nodes)
   * @param aDestNode     the destination element to operate on
   * @param aSourceNode   the source element to copy attributes from
   */
  /* void cloneAttributes (in nsIDOMNode destNode, in nsIDOMNode sourceNode); */
  nsresult CloneAttributes(nsIDOMNode destNode, nsIDOMNode sourceNode);

  /** 
   * createNode instantiates a new element of type aTag and inserts it
   * into aParent at aPosition.
   * @param aTag      The type of object to create
   * @param aParent   The node to insert the new object into
   * @param aPosition The place in aParent to insert the new node
   * @return          The node created.  Caller must release aNewNode.
   */
  /* nsIDOMNode createNode (in AString tag, in nsIDOMNode parent, in long position); */
  nsresult CreateNode(nsAString * tag, nsIDOMNode parent, PRInt32 position, nsIDOMNode *_retval);

  /** 
   * insertNode inserts aNode into aParent at aPosition.
   * No checking is done to verify the legality of the insertion.
   * That is the responsibility of the caller.
   * @param aNode     The DOM Node to insert.
   * @param aParent   The node to insert the new object into
   * @param aPosition The place in aParent to insert the new node
   *                  0=first child, 1=second child, etc.
   *                  any number > number of current children = last child
   */
  /* void insertNode (in nsIDOMNode node, in nsIDOMNode parent, in long aPosition); */
  nsresult InsertNode(nsIDOMNode node, nsIDOMNode parent, PRInt32 aPosition);

  /** 
   * splitNode() creates a new node identical to an existing node,
   * and split the contents between the two nodes
   * @param aExistingRightNode   the node to split.
   *                             It will become the new node's next sibling.
   * @param aOffset              the offset of aExistingRightNode's
   *                             content|children to do the split at
   * @param aNewLeftNode         [OUT] the new node resulting from the split,
   *                             becomes aExistingRightNode's previous sibling.
   */
  /* void splitNode (in nsIDOMNode existingRightNode, in long offset, out nsIDOMNode newLeftNode); */
  nsresult SplitNode(nsIDOMNode existingRightNode, PRInt32 offset, nsIDOMNode *newLeftNode);

  /** 
   * joinNodes() takes 2 nodes and merge their content|children.
   * @param aLeftNode     The left node.  It will be deleted.
   * @param aRightNode    The right node. It will remain after the join.
   * @param aParent       The parent of aExistingRightNode
   *
   *                      There is no requirement that the two nodes be
   *                      of the same type.  However, a text node can be
   *                      merged only with another text node.
   */
  /* void joinNodes (in nsIDOMNode leftNode, in nsIDOMNode rightNode, in nsIDOMNode parent); */
  nsresult JoinNodes(nsIDOMNode leftNode, nsIDOMNode rightNode, nsIDOMNode parent);

  /** 
   * deleteNode removes aChild from aParent.
   * @param aChild    The node to delete
   */
  /* void deleteNode (in nsIDOMNode child); */
  nsresult DeleteNode(nsIDOMNode child);

  /** 
   * markNodeDirty() sets a special dirty attribute on the node.
   * Usually this will be called immediately after creating a new node.
   * @param aNode      The node for which to insert formatting.
   */
  /* void markNodeDirty (in nsIDOMNode node); */
  nsresult MarkNodeDirty(nsIDOMNode node);

  /** 
   * Switches the editor element direction; from "Left-to-Right" to
   * "Right-to-Left", and vice versa.
   */
  /* void switchTextDirection (); */
  nsresult SwitchTextDirection();

  /**
   * Output methods:
   * aFormatType is a mime type, like text/plain.
   */
  /* AString outputToString (in AString formatType, in unsigned long flags); */
  nsresult OutputToString(nsAString * formatType, PRUint32 flags, nsAString * _retval);

  /* void outputToStream (in nsIOutputStream aStream, in AString formatType, in ACString charsetOverride, in unsigned long flags); */
  nsresult OutputToStream(nsIOutputStream aStream, nsAString * formatType, nsACString * charsetOverride, PRUint32 flags);

  /** add an EditorObserver to the editors list of observers. */
  /* void addEditorObserver (in nsIEditorObserver observer); */
  nsresult AddEditorObserver(nsIEditorObserver observer);

  /** Remove an EditorObserver from the editor's list of observers. */
  /* void removeEditorObserver (in nsIEditorObserver observer); */
  nsresult RemoveEditorObserver(nsIEditorObserver observer);

  /** add an EditActionListener to the editors list of listeners. */
  /* void addEditActionListener (in nsIEditActionListener listener); */
  nsresult AddEditActionListener(nsIEditActionListener listener);

  /** Remove an EditActionListener from the editor's list of listeners. */
  /* void removeEditActionListener (in nsIEditActionListener listener); */
  nsresult RemoveEditActionListener(nsIEditActionListener listener);

  /** Add a DocumentStateListener to the editors list of doc state listeners. */
  /* void addDocumentStateListener (in nsIDocumentStateListener listener); */
  nsresult AddDocumentStateListener(nsIDocumentStateListener listener);

  /** Remove a DocumentStateListener to the editors list of doc state listeners. */
  /* void removeDocumentStateListener (in nsIDocumentStateListener listener); */
  nsresult RemoveDocumentStateListener(nsIDocumentStateListener listener);

  /**
   * And a debug method -- show us what the tree looks like right now
   */
  /* void dumpContentTree (); */
  nsresult DumpContentTree();

  /** Dumps a text representation of the content tree to standard out */
  /* void debugDumpContent (); */
  nsresult DebugDumpContent();

  /* void debugUnitTests (out long outNumTests, out long outNumTestsFailed); */
  nsresult DebugUnitTests(PRInt32 *outNumTests, PRInt32 *outNumTestsFailed);

}


/* starting interface:    nsIEditor_MOZILLA_1_8_BRANCH */
const char[] NS_IEDITOR_MOZILLA_1_8_BRANCH_IID_STR = "60fbf998-e021-4f81-bdf0-749cc651e221";

const nsIID NS_IEDITOR_MOZILLA_1_8_BRANCH_IID= 
  {0x60fbf998, 0xe021, 0x4f81, 
    [ 0xbd, 0xf0, 0x74, 0x9c, 0xc6, 0x51, 0xe2, 0x21 ]};

/**
 * This enables optional lazy creation of the spellchecking object. On the
 * trunk getInlineSpellChecker replaces the attribute inlineSpellChecker. Here,
 * we support that on a special interface to avoid changing branch interfaces,
 * and rename it to getInlineSpellCheckerOptionally to avoid conflicting with
 * the automatically generated getter for the attribute.
 *
 * @status TEMPORARY
 */
extern(Windows)
interface nsIEditor_MOZILLA_1_8_BRANCH : nsIEditor {
  static const char[] IID_STR = NS_IEDITOR_MOZILLA_1_8_BRANCH_IID_STR;
  static const nsIID IID = NS_IEDITOR_MOZILLA_1_8_BRANCH_IID;

  /** Returns the inline spell checker associated with this object. The spell
   * checker is lazily created, so this function may create the object for
   * you during this call.
   * @param  autoCreate  If true, this will create a spell checker object
   *                     if one does not exist yet for this editor. If false
   *                     and the object has not been created, this function
   *                     WILL RETURN NULL.
   */
  /* nsIInlineSpellChecker getInlineSpellCheckerOptionally (in boolean autoCreate); */
  nsresult GetInlineSpellCheckerOptionally(PRBool autoCreate, nsIInlineSpellChecker *_retval);

  /** Resyncs spellchecking state (enabled/disabled).  This should be called
    * when anything that affects spellchecking state changes, such as the
    * spellcheck attribute value.
    */
  /* void syncRealTimeSpell (); */
  nsresult SyncRealTimeSpell();

  /** Called when the user manually overrides the spellchecking state for this
    * editor.
    * @param  enable  The new state of spellchecking in this editor, as
    *                 requested by the user.
    */
  /* void setSpellcheckUserOverride (in boolean enable); */
  nsresult SetSpellcheckUserOverride(PRBool enable);

}

