/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEditor.idl
 */

module mozilla.dxpcom.nsIEditorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIEditor;


public import mozilla.dxpcom.nsIEditorD;

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


public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIAtom;

public import mozilla.dxpcom.nsIAtomD;

public import mozilla.xpcom.nsISelection;

public import mozilla.dxpcom.nsISelectionD;

public import mozilla.xpcom.nsISelectionController;

public import mozilla.dxpcom.nsISelectionControllerD;

public import mozilla.xpcom.nsIDocumentStateListener;

public import mozilla.dxpcom.nsIDocumentStateListenerD;

public import mozilla.xpcom.nsIOutputStream;

public import mozilla.dxpcom.nsIOutputStreamD;

public import mozilla.xpcom.nsITransactionManager;

public import mozilla.dxpcom.nsITransactionManagerD;

public import mozilla.xpcom.nsITransaction;

public import mozilla.dxpcom.nsITransactionD;

public import mozilla.xpcom.nsIEditorObserver;

public import mozilla.dxpcom.nsIEditorObserverD;

public import mozilla.xpcom.nsIEditActionListener;

public import mozilla.dxpcom.nsIEditActionListenerD;

public import mozilla.xpcom.nsIInlineSpellChecker;

public import mozilla.dxpcom.nsIInlineSpellCheckerD;


/* starting wrapper class:    nsIEditor */
class nsIEditorD : public nsISupportsD {

  static const nsIID IID = NS_IEDITOR_IID;


  alias nsIEditor InnerType;

  this(nsIEditor intr){
    super(intr);
    this.inner = intr;
  }

  nsIEditor opCast() {
    return inner;
  }

  void opAssign(nsIEditor value) {
    inner = value;
  }

  enum { eNone = 0 }

  enum { eNext = 1 }

  enum { ePrevious = 2 }

  enum { eNextWord = 3 }

  enum { ePreviousWord = 4 }

  enum { eToBeginningOfLine = 5 }

  enum { eToEndOfLine = 6 }

  /* readonly attribute nsISelection selection; */
  nsISelectionD  Selection(){
    nsISelection value;
    nsresult __result = inner.GetSelection(&value);
    CheckException(__result);
    return new nsISelectionD(value);
  }

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
  void Init(nsIDOMDocumentD doc, nsIPresShell * shell, nsIContent * aRoot, nsISelectionControllerD aSelCon, PRUint32 aFlags){
    nsresult __result = inner.Init(doc ? cast(nsIDOMDocument)doc : null, shell, aRoot, aSelCon ? cast(nsISelectionController)aSelCon : null, aFlags);
    CheckException(__result);
  }

  /* void setAttributeOrEquivalent (in nsIDOMElement element, in AString sourceAttrName, in AString sourceAttrValue, in boolean aSuppressTransaction); */
  void SetAttributeOrEquivalent(nsIDOMElementD element, wchar[] sourceAttrName, wchar[] sourceAttrValue, PRBool aSuppressTransaction){
    scope auto _sourceAttrName = new AString(sourceAttrName);
    scope auto _sourceAttrValue = new AString(sourceAttrValue);
    nsresult __result = inner.SetAttributeOrEquivalent(element ? cast(nsIDOMElement)element : null, cast(nsAString*)_sourceAttrName, cast(nsAString*)_sourceAttrValue, aSuppressTransaction);
    CheckException(__result);
  }

  /* void removeAttributeOrEquivalent (in nsIDOMElement element, in DOMString sourceAttrName, in boolean aSuppressTransaction); */
  void RemoveAttributeOrEquivalent(nsIDOMElementD element, wchar[] sourceAttrName, PRBool aSuppressTransaction){
    scope auto _sourceAttrName = new AString(sourceAttrName);
    nsresult __result = inner.RemoveAttributeOrEquivalent(element ? cast(nsIDOMElement)element : null, cast(nsAString*)_sourceAttrName, aSuppressTransaction);
    CheckException(__result);
  }

  /**
   * postCreate should be called after Init, and is the time that the editor
   * tells its documentStateObservers that the document has been created.
   */
  /* void postCreate (); */
  void PostCreate(){
    nsresult __result = inner.PostCreate();
    CheckException(__result);
  }

  /**
   * preDestroy is called before the editor goes away, and gives the editor a
   * chance to tell its documentStateObservers that the document is going away.
   */
  /* void preDestroy (); */
  void PreDestroy(){
    nsresult __result = inner.PreDestroy();
    CheckException(__result);
  }

  /** edit flags for this editor.  May be set at any time. */
  /* attribute unsigned long flags; */
  PRUint32 Flags(){
    PRUint32 value;
    nsresult __result = inner.GetFlags(&value);
    CheckException(__result);
    return value;
  }
  void Flags(PRUint32 aFlags){
    nsresult __result = inner.SetFlags(aFlags);
    CheckException(__result);
  }

  /**
   * the MimeType of the document
   */
  /* attribute string contentsMIMEType; */
  char* ContentsMIMEType(){
    char* value;
    nsresult __result = inner.GetContentsMIMEType(&value);
    CheckException(__result);
    return value;
  }
  void ContentsMIMEType(char* aContentsMIMEType){
    nsresult __result = inner.SetContentsMIMEType(aContentsMIMEType);
    CheckException(__result);
  }

  /** Returns true if we have a document that is not marked read-only */
  /* readonly attribute boolean isDocumentEditable; */
  PRBool IsDocumentEditable(){
    PRBool value;
    nsresult __result = inner.GetIsDocumentEditable(&value);
    CheckException(__result);
    return value;
  }

  /**
   * the DOM Document this editor is associated with, refcounted.
   */
  /* readonly attribute nsIDOMDocument document; */
  nsIDOMDocumentD  Document(){
    nsIDOMDocument value;
    nsresult __result = inner.GetDocument(&value);
    CheckException(__result);
    return new nsIDOMDocumentD(value);
  }

  /** the body element, i.e. the root of the editable document.
   */
  /* readonly attribute nsIDOMElement rootElement; */
  nsIDOMElementD  RootElement(){
    nsIDOMElement value;
    nsresult __result = inner.GetRootElement(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }

  /**
   * the selection controller for the current presentation, refcounted.
   */
  /* readonly attribute nsISelectionController selectionController; */
  nsISelectionControllerD  SelectionController(){
    nsISelectionController value;
    nsresult __result = inner.GetSelectionController(&value);
    CheckException(__result);
    return new nsISelectionControllerD(value);
  }

  /** 
   * DeleteSelection removes all nodes in the current selection.
   * @param aDir  if eNext, delete to the right (for example, the DEL key)
   *              if ePrevious, delete to the left (for example, the BACKSPACE key)
   */
  /* void deleteSelection (in short action); */
  void DeleteSelection(PRInt16 action){
    nsresult __result = inner.DeleteSelection(action);
    CheckException(__result);
  }

  /** Returns true if the document has no *meaningful* content */
  /* readonly attribute boolean documentIsEmpty; */
  PRBool DocumentIsEmpty(){
    PRBool value;
    nsresult __result = inner.GetDocumentIsEmpty(&value);
    CheckException(__result);
    return value;
  }

  /** Returns true if the document is modifed and needs saving */
  /* readonly attribute boolean documentModified; */
  PRBool DocumentModified(){
    PRBool value;
    nsresult __result = inner.GetDocumentModified(&value);
    CheckException(__result);
    return value;
  }

  /** Sets the current 'Save' document character set */
  /* attribute ACString documentCharacterSet; */
  char[] DocumentCharacterSet(){
    scope auto value = new ACString();
    nsresult __result = inner.GetDocumentCharacterSet(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void DocumentCharacterSet(char[] aDocumentCharacterSet){
    scope auto value = new ACString(aDocumentCharacterSet);
    nsresult __result = inner.SetDocumentCharacterSet(cast(nsACString*)value);
    CheckException(__result);
  }

  /** to be used ONLY when we need to override the doc's modification
    * state (such as when it's saved).
    */
  /* void resetModificationCount (); */
  void ResetModificationCount(){
    nsresult __result = inner.ResetModificationCount();
    CheckException(__result);
  }

  /** Gets the modification count of the document we are editing.
    * @return the modification count of the document being edited.
    *         Zero means unchanged.
    */
  /* long getModificationCount (); */
  PRInt32 GetModificationCount(){
    PRInt32 _retval;
    nsresult __result = inner.GetModificationCount(&_retval);
    CheckException(__result);
    return _retval;
  }

  /** called each time we modify the document.
    * Increments the modification count of the document.
    * @param  aModCount  the number of modifications by which
    *                    to increase or decrease the count
    */
  /* void incrementModificationCount (in long aModCount); */
  void IncrementModificationCount(PRInt32 aModCount){
    nsresult __result = inner.IncrementModificationCount(aModCount);
    CheckException(__result);
  }

  /** transactionManager Get the transaction manager the editor is using.
    */
  /* readonly attribute nsITransactionManager transactionManager; */
  nsITransactionManagerD  TransactionManager(){
    nsITransactionManager value;
    nsresult __result = inner.GetTransactionManager(&value);
    CheckException(__result);
    return new nsITransactionManagerD(value);
  }

  /** doTransaction() fires a transaction.
    * It is provided here so clients can create their own transactions.
    * If a transaction manager is present, it is used.  
    * Otherwise, the transaction is just executed directly.
    *
    * @param aTxn the transaction to execute
    */
  /* void doTransaction (in nsITransaction txn); */
  void DoTransaction(nsITransactionD txn){
    nsresult __result = inner.DoTransaction(txn ? cast(nsITransaction)txn : null);
    CheckException(__result);
  }

  /** turn the undo system on or off
    * @param aEnable  if PR_TRUE, the undo system is turned on if available
    *                 if PR_FALSE the undo system is turned off if it
    *                 was previously on
    * @return         if aEnable is PR_TRUE, returns NS_OK if
    *                 the undo system could be initialized properly
    *                 if aEnable is PR_FALSE, returns NS_OK.
    */
  /* void enableUndo (in boolean enable); */
  void EnableUndo(PRBool enable){
    nsresult __result = inner.EnableUndo(enable);
    CheckException(__result);
  }

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
  void Undo(PRUint32 count){
    nsresult __result = inner.Undo(count);
    CheckException(__result);
  }

  /** returns state information about the undo system.
    * @param aIsEnabled [OUT] PR_TRUE if undo is enabled
    * @param aCanUndo   [OUT] PR_TRUE if at least one transaction is
    *                         currently ready to be undone.
    */
  /* void canUndo (out boolean isEnabled, out boolean canUndo); */
  void CanUndo(out PRBool isEnabled, out PRBool canUndo){
    nsresult __result = inner.CanUndo(&isEnabled, &canUndo);
    CheckException(__result);
  }

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
  void Redo(PRUint32 count){
    nsresult __result = inner.Redo(count);
    CheckException(__result);
  }

  /** returns state information about the redo system.
    * @param aIsEnabled [OUT] PR_TRUE if redo is enabled
    * @param aCanRedo   [OUT] PR_TRUE if at least one transaction is
                              currently ready to be redone.
    */
  /* void canRedo (out boolean isEnabled, out boolean canRedo); */
  void CanRedo(out PRBool isEnabled, out PRBool canRedo){
    nsresult __result = inner.CanRedo(&isEnabled, &canRedo);
    CheckException(__result);
  }

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
  void BeginTransaction(){
    nsresult __result = inner.BeginTransaction();
    CheckException(__result);
  }

  /** endTransaction is a signal to the editor that the caller is
    * finished updating the content model.<br>
    * beginUpdate must be called before endTransaction is called.<br>
    * Calls to beginTransaction can be nested, as long as endTransaction
    * is called once per beginTransaction.
    */
  /* void endTransaction (); */
  void EndTransaction(){
    nsresult __result = inner.EndTransaction();
    CheckException(__result);
  }

  /* void beginPlaceHolderTransaction (in nsIAtom name); */
  void BeginPlaceHolderTransaction(nsIAtomD name){
    nsresult __result = inner.BeginPlaceHolderTransaction(name ? cast(nsIAtom)name : null);
    CheckException(__result);
  }

  /* void endPlaceHolderTransaction (); */
  void EndPlaceHolderTransaction(){
    nsresult __result = inner.EndPlaceHolderTransaction();
    CheckException(__result);
  }

  /* boolean shouldTxnSetSelection (); */
  PRBool ShouldTxnSetSelection(){
    PRBool _retval;
    nsresult __result = inner.ShouldTxnSetSelection(&_retval);
    CheckException(__result);
    return _retval;
  }

  /** Set the flag that prevents insertElementTxn from changing the selection
    * @param   should  Set false to suppress changing the selection;
    *                  i.e., before using InsertElement() to insert
    *                  under <head> element
    * WARNING: You must be very careful to reset back to PR_TRUE after
    *          setting PR_FALSE, else selection/caret is trashed
    *          for further editing.
    */
  /* void setShouldTxnSetSelection (in boolean should); */
  void SetShouldTxnSetSelection(PRBool should){
    nsresult __result = inner.SetShouldTxnSetSelection(should);
    CheckException(__result);
  }

  /* readonly attribute nsIInlineSpellChecker inlineSpellChecker; */
  nsIInlineSpellCheckerD  InlineSpellChecker(){
    nsIInlineSpellChecker value;
    nsresult __result = inner.GetInlineSpellChecker(&value);
    CheckException(__result);
    return new nsIInlineSpellCheckerD(value);
  }

  /** cut the currently selected text, putting it into the OS clipboard
    * What if no text is selected?
    * What about mixed selections?
    * What are the clipboard formats?
    */
  /* void cut (); */
  void Cut(){
    nsresult __result = inner.Cut();
    CheckException(__result);
  }

  /** Can we cut? True if the doc is modifiable, and we have a non-
    * collapsed selection.
    */
  /* boolean canCut (); */
  PRBool CanCut(){
    PRBool _retval;
    nsresult __result = inner.CanCut(&_retval);
    CheckException(__result);
    return _retval;
  }

  /** copy the currently selected text, putting it into the OS clipboard
    * What if no text is selected?
    * What about mixed selections?
    * What are the clipboard formats?
    */
  /* void copy (); */
  void Copy(){
    nsresult __result = inner.Copy();
    CheckException(__result);
  }

  /** Can we copy? True if we have a non-collapsed selection.
    */
  /* boolean canCopy (); */
  PRBool CanCopy(){
    PRBool _retval;
    nsresult __result = inner.CanCopy(&_retval);
    CheckException(__result);
    return _retval;
  }

  /** paste the text in the OS clipboard at the cursor position, replacing
    * the selected text (if any)
    */
  /* void paste (in long aSelectionType); */
  void Paste(PRInt32 aSelectionType){
    nsresult __result = inner.Paste(aSelectionType);
    CheckException(__result);
  }

  /** Can we paste? True if the doc is modifiable, and we have
    * pasteable data in the clipboard.
    */
  /* boolean canPaste (in long aSelectionType); */
  PRBool CanPaste(PRInt32 aSelectionType){
    PRBool _retval;
    nsresult __result = inner.CanPaste(aSelectionType, &_retval);
    CheckException(__result);
    return _retval;
  }

  /** sets the document selection to the entire contents of the document */
  /* void selectAll (); */
  void SelectAll(){
    nsresult __result = inner.SelectAll();
    CheckException(__result);
  }

  /** sets the document selection to the beginning of the document */
  /* void beginningOfDocument (); */
  void BeginningOfDocument(){
    nsresult __result = inner.BeginningOfDocument();
    CheckException(__result);
  }

  /** sets the document selection to the end of the document */
  /* void endOfDocument (); */
  void EndOfDocument(){
    nsresult __result = inner.EndOfDocument();
    CheckException(__result);
  }

  /** 
    * canDrag decides if a drag should be started
    * (for example, based on the current selection and mousepoint).
    */
  /* boolean canDrag (in nsIDOMEvent aEvent); */
  PRBool CanDrag(nsIDOMEventD aEvent){
    PRBool _retval;
    nsresult __result = inner.CanDrag(aEvent ? cast(nsIDOMEvent)aEvent : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /** 
    * doDrag transfers the relevant data (as appropriate)
    * to a transferable so it can later be dropped.
    */
  /* void doDrag (in nsIDOMEvent aEvent); */
  void DoDrag(nsIDOMEventD aEvent){
    nsresult __result = inner.DoDrag(aEvent ? cast(nsIDOMEvent)aEvent : null);
    CheckException(__result);
  }

  /** 
    * insertFromDrop looks for a dragsession and inserts the
    * relevant data in response to a drop.
    */
  /* void insertFromDrop (in nsIDOMEvent aEvent); */
  void InsertFromDrop(nsIDOMEventD aEvent){
    nsresult __result = inner.InsertFromDrop(aEvent ? cast(nsIDOMEvent)aEvent : null);
    CheckException(__result);
  }

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
  void SetAttribute(nsIDOMElementD aElement, wchar[] attributestr, wchar[] attvalue){
    scope auto _attributestr = new AString(attributestr);
    scope auto _attvalue = new AString(attvalue);
    nsresult __result = inner.SetAttribute(aElement ? cast(nsIDOMElement)aElement : null, cast(nsAString*)_attributestr, cast(nsAString*)_attvalue);
    CheckException(__result);
  }

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
  PRBool GetAttributeValue(nsIDOMElementD aElement, wchar[] attributestr, wchar[] resultValue){
    scope auto _attributestr = new AString(attributestr);
    scope auto _resultValue = new AString;
    PRBool _retval;
    nsresult __result = inner.GetAttributeValue(aElement ? cast(nsIDOMElement)aElement : null, cast(nsAString*)_attributestr, cast(nsAString*)_resultValue, &_retval);
    CheckException(__result);
    resultValue = _resultValue.GetString();
    return _retval;
  }

  /**
   * removeAttribute() deletes aAttribute from the attribute list of aElement.
   * If aAttribute is not an attribute of aElement, nothing is done.
   *
   * @param aElement      the content element to operate on
   * @param aAttribute    the string representation of the attribute to get
   */
  /* void removeAttribute (in nsIDOMElement aElement, in AString aAttribute); */
  void RemoveAttribute(nsIDOMElementD aElement, wchar[] aAttribute){
    scope auto _aAttribute = new AString(aAttribute);
    nsresult __result = inner.RemoveAttribute(aElement ? cast(nsIDOMElement)aElement : null, cast(nsAString*)_aAttribute);
    CheckException(__result);
  }

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
  void CloneAttribute(wchar[] aAttribute, nsIDOMNodeD aDestNode, nsIDOMNodeD aSourceNode){
    scope auto _aAttribute = new AString(aAttribute);
    nsresult __result = inner.CloneAttribute(cast(nsAString*)_aAttribute, aDestNode ? cast(nsIDOMNode)aDestNode : null, aSourceNode ? cast(nsIDOMNode)aSourceNode : null);
    CheckException(__result);
  }

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
  void CloneAttributes(nsIDOMNodeD destNode, nsIDOMNodeD sourceNode){
    nsresult __result = inner.CloneAttributes(destNode ? cast(nsIDOMNode)destNode : null, sourceNode ? cast(nsIDOMNode)sourceNode : null);
    CheckException(__result);
  }

  /** 
   * createNode instantiates a new element of type aTag and inserts it
   * into aParent at aPosition.
   * @param aTag      The type of object to create
   * @param aParent   The node to insert the new object into
   * @param aPosition The place in aParent to insert the new node
   * @return          The node created.  Caller must release aNewNode.
   */
  /* nsIDOMNode createNode (in AString tag, in nsIDOMNode parent, in long position); */
  nsIDOMNodeD  CreateNode(wchar[] tag, nsIDOMNodeD parent, PRInt32 position){
    scope auto _tag = new AString(tag);
    nsIDOMNode _retval;
    nsresult __result = inner.CreateNode(cast(nsAString*)_tag, parent ? cast(nsIDOMNode)parent : null, position, &_retval);
    CheckException(__result);
    return new nsIDOMNodeD(_retval);
  }

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
  void InsertNode(nsIDOMNodeD node, nsIDOMNodeD parent, PRInt32 aPosition){
    nsresult __result = inner.InsertNode(node ? cast(nsIDOMNode)node : null, parent ? cast(nsIDOMNode)parent : null, aPosition);
    CheckException(__result);
  }

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
  void SplitNode(nsIDOMNodeD existingRightNode, PRInt32 offset, out nsIDOMNodeD newLeftNode){
    nsIDOMNode _newLeftNode;
    nsresult __result = inner.SplitNode(existingRightNode ? cast(nsIDOMNode)existingRightNode : null, offset, &_newLeftNode);
    CheckException(__result);
    newLeftNode = _newLeftNode ? new nsIDOMNodeD(_newLeftNode) : null;
  }

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
  void JoinNodes(nsIDOMNodeD leftNode, nsIDOMNodeD rightNode, nsIDOMNodeD parent){
    nsresult __result = inner.JoinNodes(leftNode ? cast(nsIDOMNode)leftNode : null, rightNode ? cast(nsIDOMNode)rightNode : null, parent ? cast(nsIDOMNode)parent : null);
    CheckException(__result);
  }

  /** 
   * deleteNode removes aChild from aParent.
   * @param aChild    The node to delete
   */
  /* void deleteNode (in nsIDOMNode child); */
  void DeleteNode(nsIDOMNodeD child){
    nsresult __result = inner.DeleteNode(child ? cast(nsIDOMNode)child : null);
    CheckException(__result);
  }

  /** 
   * markNodeDirty() sets a special dirty attribute on the node.
   * Usually this will be called immediately after creating a new node.
   * @param aNode      The node for which to insert formatting.
   */
  /* void markNodeDirty (in nsIDOMNode node); */
  void MarkNodeDirty(nsIDOMNodeD node){
    nsresult __result = inner.MarkNodeDirty(node ? cast(nsIDOMNode)node : null);
    CheckException(__result);
  }

  /** 
   * Switches the editor element direction; from "Left-to-Right" to
   * "Right-to-Left", and vice versa.
   */
  /* void switchTextDirection (); */
  void SwitchTextDirection(){
    nsresult __result = inner.SwitchTextDirection();
    CheckException(__result);
  }

  /**
   * Output methods:
   * aFormatType is a mime type, like text/plain.
   */
  /* AString outputToString (in AString formatType, in unsigned long flags); */
  wchar[] OutputToString(wchar[] formatType, PRUint32 flags){
    scope auto _formatType = new AString(formatType);
    scope auto _retval = new AString;
    nsresult __result = inner.OutputToString(cast(nsAString*)_formatType, flags, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* void outputToStream (in nsIOutputStream aStream, in AString formatType, in ACString charsetOverride, in unsigned long flags); */
  void OutputToStream(nsIOutputStreamD aStream, wchar[] formatType, char[] charsetOverride, PRUint32 flags){
    scope auto _formatType = new AString(formatType);
    scope auto _charsetOverride = new ACString(charsetOverride);
    nsresult __result = inner.OutputToStream(aStream ? cast(nsIOutputStream)aStream : null, cast(nsAString*)_formatType, cast(nsACString*)_charsetOverride, flags);
    CheckException(__result);
  }

  /** add an EditorObserver to the editors list of observers. */
  /* void addEditorObserver (in nsIEditorObserver observer); */
  void AddEditorObserver(nsIEditorObserverD observer){
    nsresult __result = inner.AddEditorObserver(observer ? cast(nsIEditorObserver)observer : null);
    CheckException(__result);
  }

  /** Remove an EditorObserver from the editor's list of observers. */
  /* void removeEditorObserver (in nsIEditorObserver observer); */
  void RemoveEditorObserver(nsIEditorObserverD observer){
    nsresult __result = inner.RemoveEditorObserver(observer ? cast(nsIEditorObserver)observer : null);
    CheckException(__result);
  }

  /** add an EditActionListener to the editors list of listeners. */
  /* void addEditActionListener (in nsIEditActionListener listener); */
  void AddEditActionListener(nsIEditActionListenerD listener){
    nsresult __result = inner.AddEditActionListener(listener ? cast(nsIEditActionListener)listener : null);
    CheckException(__result);
  }

  /** Remove an EditActionListener from the editor's list of listeners. */
  /* void removeEditActionListener (in nsIEditActionListener listener); */
  void RemoveEditActionListener(nsIEditActionListenerD listener){
    nsresult __result = inner.RemoveEditActionListener(listener ? cast(nsIEditActionListener)listener : null);
    CheckException(__result);
  }

  /** Add a DocumentStateListener to the editors list of doc state listeners. */
  /* void addDocumentStateListener (in nsIDocumentStateListener listener); */
  void AddDocumentStateListener(nsIDocumentStateListenerD listener){
    nsresult __result = inner.AddDocumentStateListener(listener ? cast(nsIDocumentStateListener)listener : null);
    CheckException(__result);
  }

  /** Remove a DocumentStateListener to the editors list of doc state listeners. */
  /* void removeDocumentStateListener (in nsIDocumentStateListener listener); */
  void RemoveDocumentStateListener(nsIDocumentStateListenerD listener){
    nsresult __result = inner.RemoveDocumentStateListener(listener ? cast(nsIDocumentStateListener)listener : null);
    CheckException(__result);
  }

  /**
   * And a debug method -- show us what the tree looks like right now
   */
  /* void dumpContentTree (); */
  void DumpContentTree(){
    nsresult __result = inner.DumpContentTree();
    CheckException(__result);
  }

  /** Dumps a text representation of the content tree to standard out */
  /* void debugDumpContent (); */
  void DebugDumpContent(){
    nsresult __result = inner.DebugDumpContent();
    CheckException(__result);
  }

  /* void debugUnitTests (out long outNumTests, out long outNumTestsFailed); */
  void DebugUnitTests(out PRInt32 outNumTests, out PRInt32 outNumTestsFailed){
    nsresult __result = inner.DebugUnitTests(&outNumTests, &outNumTestsFailed);
    CheckException(__result);
  }

private:
  nsIEditor inner;

}


/* starting wrapper class:    nsIEditor_MOZILLA_1_8_BRANCH */
/**
 * This enables optional lazy creation of the spellchecking object. On the
 * trunk getInlineSpellChecker replaces the attribute inlineSpellChecker. Here,
 * we support that on a special interface to avoid changing branch interfaces,
 * and rename it to getInlineSpellCheckerOptionally to avoid conflicting with
 * the automatically generated getter for the attribute.
 *
 * @status TEMPORARY
 */
class nsIEditor_MOZILLA_1_8_BRANCHD : public nsIEditorD {

  static const nsIID IID = NS_IEDITOR_MOZILLA_1_8_BRANCH_IID;


  alias nsIEditor_MOZILLA_1_8_BRANCH InnerType;

  this(nsIEditor_MOZILLA_1_8_BRANCH intr){
    super(intr);
    this.inner = intr;
  }

  nsIEditor_MOZILLA_1_8_BRANCH opCast() {
    return inner;
  }

  void opAssign(nsIEditor_MOZILLA_1_8_BRANCH value) {
    inner = value;
  }

  /** Returns the inline spell checker associated with this object. The spell
   * checker is lazily created, so this function may create the object for
   * you during this call.
   * @param  autoCreate  If true, this will create a spell checker object
   *                     if one does not exist yet for this editor. If false
   *                     and the object has not been created, this function
   *                     WILL RETURN NULL.
   */
  /* nsIInlineSpellChecker getInlineSpellCheckerOptionally (in boolean autoCreate); */
  nsIInlineSpellCheckerD  GetInlineSpellCheckerOptionally(PRBool autoCreate){
    nsIInlineSpellChecker _retval;
    nsresult __result = inner.GetInlineSpellCheckerOptionally(autoCreate, &_retval);
    CheckException(__result);
    return new nsIInlineSpellCheckerD(_retval);
  }

  /** Resyncs spellchecking state (enabled/disabled).  This should be called
    * when anything that affects spellchecking state changes, such as the
    * spellcheck attribute value.
    */
  /* void syncRealTimeSpell (); */
  void SyncRealTimeSpell(){
    nsresult __result = inner.SyncRealTimeSpell();
    CheckException(__result);
  }

  /** Called when the user manually overrides the spellchecking state for this
    * editor.
    * @param  enable  The new state of spellchecking in this editor, as
    *                 requested by the user.
    */
  /* void setSpellcheckUserOverride (in boolean enable); */
  void SetSpellcheckUserOverride(PRBool enable){
    nsresult __result = inner.SetSpellcheckUserOverride(enable);
    CheckException(__result);
  }

private:
  nsIEditor_MOZILLA_1_8_BRANCH inner;

}

