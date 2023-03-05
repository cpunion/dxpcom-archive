/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITreeBoxObject.idl
 */

module mozilla.dxpcom.nsITreeBoxObjectD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsITreeBoxObject;


public import mozilla.dxpcom.nsITreeBoxObjectD;

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


public import mozilla.xpcom.nsITreeView;

public import mozilla.dxpcom.nsITreeViewD;

public import mozilla.xpcom.nsITreeSelection;

public import mozilla.dxpcom.nsITreeSelectionD;

public import mozilla.xpcom.nsITreeColumns;

import mozilla.dxpcom.nsITreeColumnsD;

public import mozilla.xpcom.nsITreeColumns;

public import mozilla.dxpcom.nsITreeColumnsD;


/* starting wrapper class:    nsITreeBoxObject */
class nsITreeBoxObjectD : public nsISupportsD {

  static const nsIID IID = NS_ITREEBOXOBJECT_IID;


  alias nsITreeBoxObject InnerType;

  this(nsITreeBoxObject intr){
    super(intr);
    this.inner = intr;
  }

  nsITreeBoxObject opCast() {
    return inner;
  }

  void opAssign(nsITreeBoxObject value) {
    inner = value;
  }

  /**
   * Obtain the columns.
   */
  /* readonly attribute nsITreeColumns columns; */
  nsITreeColumnsD  Columns(){
    nsITreeColumns value;
    nsresult __result = inner.GetColumns(&value);
    CheckException(__result);
    return new nsITreeColumnsD(value);
  }

  /**
   * The view that backs the tree and that supplies it with its data.
   * It is dynamically settable, either using a view attribute on the
   * tree tag or by setting this attribute to a new value.
   */
  /* attribute nsITreeView view; */
  nsITreeViewD  View(){
    nsITreeView value;
    nsresult __result = inner.GetView(&value);
    CheckException(__result);
    return new nsITreeViewD(value);
  }
  void View(nsITreeViewD  aView){
    nsITreeView value;
    nsresult __result = inner.SetView(value);
    CheckException(__result);
  }

  /**
   * Whether or not we are currently focused.
   */
  /* attribute boolean focused; */
  PRBool Focused(){
    PRBool value;
    nsresult __result = inner.GetFocused(&value);
    CheckException(__result);
    return value;
  }
  void Focused(PRBool aFocused){
    nsresult __result = inner.SetFocused(aFocused);
    CheckException(__result);
  }

  /**
   * Obtain the treebody content node
   */
  /* readonly attribute nsIDOMElement treeBody; */
  nsIDOMElementD  TreeBody(){
    nsIDOMElement value;
    nsresult __result = inner.GetTreeBody(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }

  /**
   * Obtain the height of a row.
   */
  /* readonly attribute long rowHeight; */
  PRInt32 RowHeight(){
    PRInt32 value;
    nsresult __result = inner.GetRowHeight(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Get the index of the first visible row.
   */
  /* long getFirstVisibleRow (); */
  PRInt32 GetFirstVisibleRow(){
    PRInt32 _retval;
    nsresult __result = inner.GetFirstVisibleRow(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Get the index of the last visible row.
   */
  /* long getLastVisibleRow (); */
  PRInt32 GetLastVisibleRow(){
    PRInt32 _retval;
    nsresult __result = inner.GetLastVisibleRow(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Gets the number of possible visible rows.
   */
  /* long getPageLength (); */
  PRInt32 GetPageLength(){
    PRInt32 _retval;
    nsresult __result = inner.GetPageLength(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Ensures that a row at a given index is visible.
   */
  /* void ensureRowIsVisible (in long index); */
  void EnsureRowIsVisible(PRInt32 index){
    nsresult __result = inner.EnsureRowIsVisible(index);
    CheckException(__result);
  }

  /**
   * Scrolls such that the row at index is at the top of the visible view.
   */
  /* void scrollToRow (in long index); */
  void ScrollToRow(PRInt32 index){
    nsresult __result = inner.ScrollToRow(index);
    CheckException(__result);
  }

  /**
   * Scroll the tree up or down by numLines lines. Positive
   * values move down in the tree. Prevents scrolling off the
   * end of the tree. 
   */
  /* void scrollByLines (in long numLines); */
  void ScrollByLines(PRInt32 numLines){
    nsresult __result = inner.ScrollByLines(numLines);
    CheckException(__result);
  }

  /**
   * Scroll the tree up or down by numPages pages. A page
   * is considered to be the amount displayed by the tree.
   * Positive values move down in the tree. Prevents scrolling
   * off the end of the tree.
   */
  /* void scrollByPages (in long numPages); */
  void ScrollByPages(PRInt32 numPages){
    nsresult __result = inner.ScrollByPages(numPages);
    CheckException(__result);
  }

  /**
   * Invalidation methods for fine-grained painting control.
   */
  /* void invalidate (); */
  void Invalidate(){
    nsresult __result = inner.Invalidate();
    CheckException(__result);
  }

  /* void invalidateColumn (in nsITreeColumn col); */
  void InvalidateColumn(nsITreeColumnD col){
    nsresult __result = inner.InvalidateColumn(col ? cast(nsITreeColumn)col : null);
    CheckException(__result);
  }

  /* void invalidateRow (in long index); */
  void InvalidateRow(PRInt32 index){
    nsresult __result = inner.InvalidateRow(index);
    CheckException(__result);
  }

  /* void invalidateCell (in long row, in nsITreeColumn col); */
  void InvalidateCell(PRInt32 row, nsITreeColumnD col){
    nsresult __result = inner.InvalidateCell(row, col ? cast(nsITreeColumn)col : null);
    CheckException(__result);
  }

  /* void invalidateRange (in long startIndex, in long endIndex); */
  void InvalidateRange(PRInt32 startIndex, PRInt32 endIndex){
    nsresult __result = inner.InvalidateRange(startIndex, endIndex);
    CheckException(__result);
  }

  /**
   * A hit test that can tell you what row the mouse is over.
   * returns -1 for invalid mouse coordinates.
   *
   * The coordinate system is the client coordinate system for the
   * document this boxObject lives in, and the units are CSS pixels.
   */
  /* long getRowAt (in long x, in long y); */
  PRInt32 GetRowAt(PRInt32 x, PRInt32 y){
    PRInt32 _retval;
    nsresult __result = inner.GetRowAt(x, y, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * A hit test that can tell you what cell the mouse is over.  Row is the row index
   * hit,  returns -1 for invalid mouse coordinates.  ColID is the column hit.
   * ChildElt is the pseudoelement hit: this can have values of
   * "cell", "twisty", "image", and "text".
   *
   * The coordinate system is the client coordinate system for the
   * document this boxObject lives in, and the units are CSS pixels.
   */
  /* void getCellAt (in long x, in long y, out long row, out nsITreeColumn col, out ACString childElt); */
  void GetCellAt(PRInt32 x, PRInt32 y, out PRInt32 row, out nsITreeColumnD col, char[] childElt){
    nsITreeColumn _col;
    scope auto _childElt = new ACString;
    nsresult __result = inner.GetCellAt(x, y, &row, &_col, cast(nsACString*)_childElt);
    CheckException(__result);
    col = _col ? new nsITreeColumnD(_col) : null;
    childElt = _childElt.GetString();
  }

  /** 
   * Find the coordinates of an element within a specific cell. 
   */
  /* void getCoordsForCellItem (in long row, in nsITreeColumn col, in ACString element, out long x, out long y, out long width, out long height); */
  void GetCoordsForCellItem(PRInt32 row, nsITreeColumnD col, char[] element, out PRInt32 x, out PRInt32 y, out PRInt32 width, out PRInt32 height){
    scope auto _element = new ACString(element);
    nsresult __result = inner.GetCoordsForCellItem(row, col ? cast(nsITreeColumn)col : null, cast(nsACString*)_element, &x, &y, &width, &height);
    CheckException(__result);
  }

  /** 
   * Determine if the text of a cell is being cropped or not.
   */
  /* boolean isCellCropped (in long row, in nsITreeColumn col); */
  PRBool IsCellCropped(PRInt32 row, nsITreeColumnD col){
    PRBool _retval;
    nsresult __result = inner.IsCellCropped(row, col ? cast(nsITreeColumn)col : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * The view is responsible for calling these notification methods when
   * rows are added or removed.  Index is the position at which the new
   * rows were added or at which rows were removed.  For
   * non-contiguous additions/removals, this method should be called multiple times.
   */
  /* void rowCountChanged (in long index, in long count); */
  void RowCountChanged(PRInt32 index, PRInt32 count){
    nsresult __result = inner.RowCountChanged(index, count);
    CheckException(__result);
  }

  /**
   * Notify the tree that the view is about to perform a batch
   * update, that is, add, remove or invalidate several rows at once.
   * This must be followed by calling endUpdateBatch(), otherwise the tree
   * will get out of sync.
   */
  /* void beginUpdateBatch (); */
  void BeginUpdateBatch(){
    nsresult __result = inner.BeginUpdateBatch();
    CheckException(__result);
  }

  /**
   * Notify the tree that the view has completed a batch update.
   */
  /* void endUpdateBatch (); */
  void EndUpdateBatch(){
    nsresult __result = inner.EndUpdateBatch();
    CheckException(__result);
  }

  /**
   * Called on a theme switch to flush out the tree's style and image caches.
   */
  /* void clearStyleAndImageCaches (); */
  void ClearStyleAndImageCaches(){
    nsresult __result = inner.ClearStyleAndImageCaches();
    CheckException(__result);
  }

private:
  nsITreeBoxObject inner;

}

