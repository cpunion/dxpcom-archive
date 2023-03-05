/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITreeView.idl
 */

module mozilla.dxpcom.nsITreeViewD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsITreeView;


public import mozilla.dxpcom.nsITreeViewD;

public import mozilla.xpcom.nsITreeBoxObject;
public import mozilla.dxpcom.nsITreeBoxObjectD;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.dxpcom.nsISupportsArrayD;
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


public import mozilla.xpcom.nsITreeSelection;

public import mozilla.dxpcom.nsITreeSelectionD;

public import mozilla.xpcom.nsITreeColumns;

import mozilla.dxpcom.nsITreeColumnsD;


/* starting wrapper class:    nsITreeView */
class nsITreeViewD : public nsISupportsD {

  static const nsIID IID = NS_ITREEVIEW_IID;


  alias nsITreeView InnerType;

  this(nsITreeView intr){
    super(intr);
    this.inner = intr;
  }

  nsITreeView opCast() {
    return inner;
  }

  void opAssign(nsITreeView value) {
    inner = value;
  }

  /**
   * The total number of rows in the tree (including the offscreen rows).
   */
  /* readonly attribute long rowCount; */
  PRInt32 RowCount(){
    PRInt32 value;
    nsresult __result = inner.GetRowCount(&value);
    CheckException(__result);
    return value;
  }

  /**
   * The selection for this view.
   */
  /* attribute nsITreeSelection selection; */
  nsITreeSelectionD  Selection(){
    nsITreeSelection value;
    nsresult __result = inner.GetSelection(&value);
    CheckException(__result);
    return new nsITreeSelectionD(value);
  }
  void Selection(nsITreeSelectionD  aSelection){
    nsITreeSelection value;
    nsresult __result = inner.SetSelection(value);
    CheckException(__result);
  }

  /** 
   * An atomized list of properties for a given row.  Each property, x, that
   * the view gives back will cause the pseudoclass :moz-tree-row-x
   * to be matched on the pseudoelement ::moz-tree-row.
   */
  /* void getRowProperties (in long index, in nsISupportsArray properties); */
  void GetRowProperties(PRInt32 index, nsISupportsArrayD properties){
    nsresult __result = inner.GetRowProperties(index, properties ? cast(nsISupportsArray)properties : null);
    CheckException(__result);
  }

  /**
   * An atomized list of properties for a given cell.  Each property, x, that
   * the view gives back will cause the pseudoclass :moz-tree-cell-x
   * to be matched on the ::moz-tree-cell pseudoelement.
   */
  /* void getCellProperties (in long row, in nsITreeColumn col, in nsISupportsArray properties); */
  void GetCellProperties(PRInt32 row, nsITreeColumnD col, nsISupportsArrayD properties){
    nsresult __result = inner.GetCellProperties(row, col ? cast(nsITreeColumn)col : null, properties ? cast(nsISupportsArray)properties : null);
    CheckException(__result);
  }

  /**
   * Called to get properties to paint a column background.  For shading the sort
   * column, etc.
   */
  /* void getColumnProperties (in nsITreeColumn col, in nsISupportsArray properties); */
  void GetColumnProperties(nsITreeColumnD col, nsISupportsArrayD properties){
    nsresult __result = inner.GetColumnProperties(col ? cast(nsITreeColumn)col : null, properties ? cast(nsISupportsArray)properties : null);
    CheckException(__result);
  }

  /**
   * Methods that can be used to test whether or not a twisty should be drawn,
   * and if so, whether an open or closed twisty should be used.
   */
  /* boolean isContainer (in long index); */
  PRBool IsContainer(PRInt32 index){
    PRBool _retval;
    nsresult __result = inner.IsContainer(index, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean isContainerOpen (in long index); */
  PRBool IsContainerOpen(PRInt32 index){
    PRBool _retval;
    nsresult __result = inner.IsContainerOpen(index, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean isContainerEmpty (in long index); */
  PRBool IsContainerEmpty(PRInt32 index){
    PRBool _retval;
    nsresult __result = inner.IsContainerEmpty(index, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * isSeparator is used to determine if the row at index is a separator.
   * A value of true will result in the tree drawing a horizontal separator.
   * The tree uses the ::moz-tree-separator pseudoclass to draw the separator.
   */
  /* boolean isSeparator (in long index); */
  PRBool IsSeparator(PRInt32 index){
    PRBool _retval;
    nsresult __result = inner.IsSeparator(index, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Specifies if there is currently a sort on any column. Used mostly by dragdrop
   * to affect drop feedback.
   */
  /* boolean isSorted (); */
  PRBool IsSorted(){
    PRBool _retval;
    nsresult __result = inner.IsSorted(&_retval);
    CheckException(__result);
    return _retval;
  }

  enum { DROP_BEFORE = -1 }

  enum { DROP_ON = 0 }

  enum { DROP_AFTER = 1 }

  /**
   * Methods used by the drag feedback code to determine if a drag is allowable at
   * the current location. To get the behavior where drops are only allowed on
   * items, such as the mailNews folder pane, always return false when
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
  /* void drop (in long row, in long orientation); */
  void Drop(PRInt32 row, PRInt32 orientation){
    nsresult __result = inner.Drop(row, orientation);
    CheckException(__result);
  }

  /**
   * Methods used by the tree to draw thread lines in the tree.
   * getParentIndex is used to obtain the index of a parent row.
   * If there is no parent row, getParentIndex returns -1.
   */
  /* long getParentIndex (in long rowIndex); */
  PRInt32 GetParentIndex(PRInt32 rowIndex){
    PRInt32 _retval;
    nsresult __result = inner.GetParentIndex(rowIndex, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * hasNextSibling is used to determine if the row at rowIndex has a nextSibling
   * that occurs *after* the index specified by afterIndex.  Code that is forced
   * to march down the view looking at levels can optimize the march by starting
   * at afterIndex+1.
   */
  /* boolean hasNextSibling (in long rowIndex, in long afterIndex); */
  PRBool HasNextSibling(PRInt32 rowIndex, PRInt32 afterIndex){
    PRBool _retval;
    nsresult __result = inner.HasNextSibling(rowIndex, afterIndex, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * The level is an integer value that represents
   * the level of indentation.  It is multiplied by the width specified in the 
   * :moz-tree-indentation pseudoelement to compute the exact indendation.
   */
  /* long getLevel (in long index); */
  PRInt32 GetLevel(PRInt32 index){
    PRInt32 _retval;
    nsresult __result = inner.GetLevel(index, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * The image path for a given cell. For defining an icon for a cell.
   * If the empty string is returned, the :moz-tree-image pseudoelement
   * will be used.
   */
  /* AString getImageSrc (in long row, in nsITreeColumn col); */
  wchar[] GetImageSrc(PRInt32 row, nsITreeColumnD col){
    scope auto _retval = new AString;
    nsresult __result = inner.GetImageSrc(row, col ? cast(nsITreeColumn)col : null, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * The progress mode for a given cell. This method is only called for
   * columns of type |progressmeter|.
   */
  enum { PROGRESS_NORMAL = 1 }

  enum { PROGRESS_UNDETERMINED = 2 }

  enum { PROGRESS_NONE = 3 }

  /* long getProgressMode (in long row, in nsITreeColumn col); */
  PRInt32 GetProgressMode(PRInt32 row, nsITreeColumnD col){
    PRInt32 _retval;
    nsresult __result = inner.GetProgressMode(row, col ? cast(nsITreeColumn)col : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * The value for a given cell. This method is only called for columns
   * of type other than |text|.
   */
  /* AString getCellValue (in long row, in nsITreeColumn col); */
  wchar[] GetCellValue(PRInt32 row, nsITreeColumnD col){
    scope auto _retval = new AString;
    nsresult __result = inner.GetCellValue(row, col ? cast(nsITreeColumn)col : null, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * The text for a given cell.  If a column consists only of an image, then
   * the empty string is returned.  
   */
  /* AString getCellText (in long row, in nsITreeColumn col); */
  wchar[] GetCellText(PRInt32 row, nsITreeColumnD col){
    scope auto _retval = new AString;
    nsresult __result = inner.GetCellText(row, col ? cast(nsITreeColumn)col : null, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Called during initialization to link the view to the front end box object.
   */
  /* void setTree (in nsITreeBoxObject tree); */
  void SetTree(nsITreeBoxObjectD tree){
    nsresult __result = inner.SetTree(tree ? cast(nsITreeBoxObject)tree : null);
    CheckException(__result);
  }

  /**
   * Called on the view when an item is opened or closed.
   */
  /* void toggleOpenState (in long index); */
  void ToggleOpenState(PRInt32 index){
    nsresult __result = inner.ToggleOpenState(index);
    CheckException(__result);
  }

  /**
   * Called on the view when a header is clicked.
   */
  /* void cycleHeader (in nsITreeColumn col); */
  void CycleHeader(nsITreeColumnD col){
    nsresult __result = inner.CycleHeader(col ? cast(nsITreeColumn)col : null);
    CheckException(__result);
  }

  /**
   * Should be called from a XUL onselect handler whenever the selection changes.
   */
  /* void selectionChanged (); */
  void SelectionChanged(){
    nsresult __result = inner.SelectionChanged();
    CheckException(__result);
  }

  /**
   * Called on the view when a cell in a non-selectable cycling column (e.g., unread/flag/etc.) is clicked.
   */
  /* void cycleCell (in long row, in nsITreeColumn col); */
  void CycleCell(PRInt32 row, nsITreeColumnD col){
    nsresult __result = inner.CycleCell(row, col ? cast(nsITreeColumn)col : null);
    CheckException(__result);
  }

  /**
   * isEditable is called to ask the view if the cell contents are editable.
   * A value of true will result in the tree popping up a text field when 
   * the user tries to inline edit the cell.
   */
  /* boolean isEditable (in long row, in nsITreeColumn col); */
  PRBool IsEditable(PRInt32 row, nsITreeColumnD col){
    PRBool _retval;
    nsresult __result = inner.IsEditable(row, col ? cast(nsITreeColumn)col : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * setCellValue is called when the value of the cell has been set by the user.
   * This method is only called for columns of type other than |text|.
   */
  /* void setCellValue (in long row, in nsITreeColumn col, in AString value); */
  void SetCellValue(PRInt32 row, nsITreeColumnD col, wchar[] value){
    scope auto _value = new AString(value);
    nsresult __result = inner.SetCellValue(row, col ? cast(nsITreeColumn)col : null, cast(nsAString*)_value);
    CheckException(__result);
  }

  /**
   * setCellText is called when the contents of the cell have been edited by the user.
   */
  /* void setCellText (in long row, in nsITreeColumn col, in AString value); */
  void SetCellText(PRInt32 row, nsITreeColumnD col, wchar[] value){
    scope auto _value = new AString(value);
    nsresult __result = inner.SetCellText(row, col ? cast(nsITreeColumn)col : null, cast(nsAString*)_value);
    CheckException(__result);
  }

  /**
   * A command API that can be used to invoke commands on the selection.  The tree
   * will automatically invoke this method when certain keys are pressed.  For example,
   * when the DEL key is pressed, performAction will be called with the "delete" string.
   */
  /* void performAction (in wstring action); */
  void PerformAction(PRUnichar*action){
    nsresult __result = inner.PerformAction(action);
    CheckException(__result);
  }

  /**
   * A command API that can be used to invoke commands on a specific row.
   */
  /* void performActionOnRow (in wstring action, in long row); */
  void PerformActionOnRow(PRUnichar*action, PRInt32 row){
    nsresult __result = inner.PerformActionOnRow(action, row);
    CheckException(__result);
  }

  /**
   * A command API that can be used to invoke commands on a specific cell.
   */
  /* void performActionOnCell (in wstring action, in long row, in nsITreeColumn col); */
  void PerformActionOnCell(PRUnichar*action, PRInt32 row, nsITreeColumnD col){
    nsresult __result = inner.PerformActionOnCell(action, row, col ? cast(nsITreeColumn)col : null);
    CheckException(__result);
  }

private:
  nsITreeView inner;

}


/* starting wrapper class:    nsINativeTreeView */
/**
 * The following interface is not scriptable and MUST NEVER BE MADE scriptable.
 * Native treeviews implement it, and we use this to check whether a treeview
 * is native (and therefore suitable for use by untrusted content).
 */
class nsINativeTreeViewD : public nsITreeViewD {

  static const nsIID IID = NS_INATIVETREEVIEW_IID;


  alias nsINativeTreeView InnerType;

  this(nsINativeTreeView intr){
    super(intr);
    this.inner = intr;
  }

  nsINativeTreeView opCast() {
    return inner;
  }

  void opAssign(nsINativeTreeView value) {
    inner = value;
  }

  /* [noscript] void ensureNative (); */
  void EnsureNative(){
    nsresult __result = inner.EnsureNative();
    CheckException(__result);
  }

private:
  nsINativeTreeView inner;

}

