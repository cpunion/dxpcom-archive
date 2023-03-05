/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXULTemplateBuilder.idl
 */

module mozilla.dxpcom.nsIXULTemplateBuilderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXULTemplateBuilder;


public import mozilla.dxpcom.nsIXULTemplateBuilderD;

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

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIRDFCompositeDataSource;
public import mozilla.dxpcom.nsIRDFCompositeDataSourceD;
public import mozilla.xpcom.nsIRDFResource;
public import mozilla.dxpcom.nsIRDFResourceD;

public import mozilla.xpcom.nsIXULBuilderListener;

public import mozilla.dxpcom.nsIXULBuilderListenerD;


/* starting wrapper class:    nsIXULTemplateBuilder */
class nsIXULTemplateBuilderD : public nsISupportsD {

  static const nsIID IID = NS_IXULTEMPLATEBUILDER_IID;


  alias nsIXULTemplateBuilder InnerType;

  this(nsIXULTemplateBuilder intr){
    super(intr);
    this.inner = intr;
  }

  nsIXULTemplateBuilder opCast() {
    return inner;
  }

  void opAssign(nsIXULTemplateBuilder value) {
    inner = value;
  }

  /**
     * The ``root'' node in the DOM to which this builder is attached
     */
  /* readonly attribute nsIDOMElement root; */
  nsIDOMElementD  Root(){
    nsIDOMElement value;
    nsresult __result = inner.GetRoot(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }

  /**
     * The composite datasource that the template builder observes
     * and uses to create content
     */
  /* readonly attribute nsIRDFCompositeDataSource database; */
  nsIRDFCompositeDataSourceD  Database(){
    nsIRDFCompositeDataSource value;
    nsresult __result = inner.GetDatabase(&value);
    CheckException(__result);
    return new nsIRDFCompositeDataSourceD(value);
  }

  /**
     * Force the template builder to rebuild its content.
     */
  /* void rebuild (); */
  void Rebuild(){
    nsresult __result = inner.Rebuild();
    CheckException(__result);
  }

  /**
     * Reload any of our RDF datasources that support nsIRDFRemoteDatasource. 
     *
     * @note This is a temporary hack so that remote-XUL authors can
     *       reload remote datasources. When RDF becomes remote-scriptable,
     *       this will no longer be necessary.
     */
  /* void refresh (); */
  void Refresh(){
    nsresult __result = inner.Refresh();
    CheckException(__result);
  }

  /**
     * Called to initialize a XUL content builder on a particular root
     * element. This element presumably has a ``datasources''
     * attribute, which the builder will parse to set up the template
     * builder's datasources.
     */
  /* [noscript] void init (in nsIContent_ptr aElement); */
  void Init(nsIContent * aElement){
    nsresult __result = inner.Init(aElement);
    CheckException(__result);
  }

  /**
     * Invoked lazily by a XUL element that needs its child content
     * built.
     */
  /* [noscript] void createContents (in nsIContent_ptr aElement); */
  void CreateContents(nsIContent * aElement){
    nsresult __result = inner.CreateContents(aElement);
    CheckException(__result);
  }

  /**
     * Add a listener to this template builder. The template builder
     * holds a strong reference to the listener.
     */
  /* void addListener (in nsIXULBuilderListener aListener); */
  void AddListener(nsIXULBuilderListenerD aListener){
    nsresult __result = inner.AddListener(aListener ? cast(nsIXULBuilderListener)aListener : null);
    CheckException(__result);
  }

  /**
     * Remove a listener from this template builder.
     */
  /* void removeListener (in nsIXULBuilderListener aListener); */
  void RemoveListener(nsIXULBuilderListenerD aListener){
    nsresult __result = inner.RemoveListener(aListener ? cast(nsIXULBuilderListener)aListener : null);
    CheckException(__result);
  }

private:
  nsIXULTemplateBuilder inner;

}


/* starting wrapper class:    nsIXULTreeBuilderObserver */
/**
 * nsIXULTreeBuilderObserver
 *  This interface allows clients of the XULTreeBuilder to define domain 
 *  specific handling of specific nsITreeView methods that 
 *  XULTreeBuilder does not implement.
 */
class nsIXULTreeBuilderObserverD : public nsISupportsD {

  static const nsIID IID = NS_IXULTREEBUILDEROBSERVER_IID;


  alias nsIXULTreeBuilderObserver InnerType;

  this(nsIXULTreeBuilderObserver intr){
    super(intr);
    this.inner = intr;
  }

  nsIXULTreeBuilderObserver opCast() {
    return inner;
  }

  void opAssign(nsIXULTreeBuilderObserver value) {
    inner = value;
  }

  enum { DROP_BEFORE = -1 }

  enum { DROP_ON = 0 }

  enum { DROP_AFTER = 1 }

  /**
     * Methods used by the drag feedback code to determine if a drag is allowable at
     * the current location. To get the behavior where drops are only allowed on
     * items, such as the mailNews folder pane, always return false whe
     * the orientation is not DROP_ON.
     */
  /* boolean canDrop (in long index, in long orientation); */
  PRBool CanDrop(PRInt32 index, PRInt32 orientation){
    PRBool _retval;
    nsresult __result = inner.CanDrop(index, orientation, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Called when the user drops something on this view. The |orientation| param
     * specifies before/on/after the given |row|.
     */
  /* void onDrop (in long row, in long orientation); */
  void OnDrop(PRInt32 row, PRInt32 orientation){
    nsresult __result = inner.OnDrop(row, orientation);
    CheckException(__result);
  }

  /** 
     * Called when an item is opened or closed. 
     */
  /* void onToggleOpenState (in long index); */
  void OnToggleOpenState(PRInt32 index){
    nsresult __result = inner.OnToggleOpenState(index);
    CheckException(__result);
  }

  /** 
	 * Called when a header is clicked.
     */
  /* void onCycleHeader (in wstring colID, in nsIDOMElement elt); */
  void OnCycleHeader(PRUnichar*colID, nsIDOMElementD elt){
    nsresult __result = inner.OnCycleHeader(colID, elt ? cast(nsIDOMElement)elt : null);
    CheckException(__result);
  }

  /**
     * Called when a cell in a non-selectable cycling column (e.g. 
     * unread/flag/etc.) is clicked.
     */
  /* void onCycleCell (in long row, in wstring colID); */
  void OnCycleCell(PRInt32 row, PRUnichar*colID){
    nsresult __result = inner.OnCycleCell(row, colID);
    CheckException(__result);
  }

  /** 
     * Called when selection in the tree changes
     */
  /* void onSelectionChanged (); */
  void OnSelectionChanged(){
    nsresult __result = inner.OnSelectionChanged();
    CheckException(__result);
  }

  /**
     * A command API that can be used to invoke commands on the selection.  
     * The tree will automatically invoke this method when certain keys 
     * are pressed.  For example, when the DEL key is pressed, performAction 
     * will be called with the "delete" string. 
     */
  /* void onPerformAction (in wstring action); */
  void OnPerformAction(PRUnichar*action){
    nsresult __result = inner.OnPerformAction(action);
    CheckException(__result);
  }

  /**
     * A command API that can be used to invoke commands on a specific row.
     */
  /* void onPerformActionOnRow (in wstring action, in long row); */
  void OnPerformActionOnRow(PRUnichar*action, PRInt32 row){
    nsresult __result = inner.OnPerformActionOnRow(action, row);
    CheckException(__result);
  }

  /**
     * A command API that can be used to invoke commands on a specific cell.
     */
  /* void onPerformActionOnCell (in wstring action, in long row, in wstring colID); */
  void OnPerformActionOnCell(PRUnichar*action, PRInt32 row, PRUnichar*colID){
    nsresult __result = inner.OnPerformActionOnCell(action, row, colID);
    CheckException(__result);
  }

private:
  nsIXULTreeBuilderObserver inner;

}


/* starting wrapper class:    nsIXULTreeBuilder */
class nsIXULTreeBuilderD : public nsISupportsD {

  static const nsIID IID = NS_IXULTREEBUILDER_IID;


  alias nsIXULTreeBuilder InnerType;

  this(nsIXULTreeBuilder intr){
    super(intr);
    this.inner = intr;
  }

  nsIXULTreeBuilder opCast() {
    return inner;
  }

  void opAssign(nsIXULTreeBuilder value) {
    inner = value;
  }

  /**
     * Retrieve the RDF resource associated with the specified row.
     */
  /* nsIRDFResource getResourceAtIndex (in long aRowIndex); */
  nsIRDFResourceD  GetResourceAtIndex(PRInt32 aRowIndex){
    nsIRDFResource _retval;
    nsresult __result = inner.GetResourceAtIndex(aRowIndex, &_retval);
    CheckException(__result);
    return new nsIRDFResourceD(_retval);
  }

  /**
     * Retrieve the index associated with specified RDF resource.
     */
  /* long getIndexOfResource (in nsIRDFResource resource); */
  PRInt32 GetIndexOfResource(nsIRDFResourceD resource){
    PRInt32 _retval;
    nsresult __result = inner.GetIndexOfResource(resource ? cast(nsIRDFResource)resource : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /** 
     * Add a Tree Builder Observer to handle Tree View 
     * methods that the base builder does not implement. 
     */
  /* void addObserver (in nsIXULTreeBuilderObserver aObserver); */
  void AddObserver(nsIXULTreeBuilderObserverD aObserver){
    nsresult __result = inner.AddObserver(aObserver ? cast(nsIXULTreeBuilderObserver)aObserver : null);
    CheckException(__result);
  }

  /** 
     * Remove an Tree Builder Observer.
     */
  /* void removeObserver (in nsIXULTreeBuilderObserver aObserver); */
  void RemoveObserver(nsIXULTreeBuilderObserverD aObserver){
    nsresult __result = inner.RemoveObserver(aObserver ? cast(nsIXULTreeBuilderObserver)aObserver : null);
    CheckException(__result);
  }

  /** 
     * Sort the contents of the tree using the specified column.
     */
  /* void sort (in nsIDOMElement aColumnElement); */
  void Sort(nsIDOMElementD aColumnElement){
    nsresult __result = inner.Sort(aColumnElement ? cast(nsIDOMElement)aColumnElement : null);
    CheckException(__result);
  }

private:
  nsIXULTreeBuilder inner;

}

