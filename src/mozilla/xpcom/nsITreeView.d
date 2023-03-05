/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITreeView.idl
 */

module mozilla.xpcom.nsITreeView;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsITreeBoxObject;
public import mozilla.xpcom.nsISupportsArray;
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


public import mozilla.xpcom.nsITreeSelection; /* forward declaration */

public import mozilla.xpcom.nsITreeColumns;


/* starting interface:    nsITreeView */
const char[] NS_ITREEVIEW_IID_STR = "22f034b7-a879-43ad-baee-ba6fd4d466ce";

const nsIID NS_ITREEVIEW_IID= 
  {0x22f034b7, 0xa879, 0x43ad, 
    [ 0xba, 0xee, 0xba, 0x6f, 0xd4, 0xd4, 0x66, 0xce ]};

extern(Windows)
interface nsITreeView : nsISupports {
  static const char[] IID_STR = NS_ITREEVIEW_IID_STR;
  static const nsIID IID = NS_ITREEVIEW_IID;

  /**
   * The total number of rows in the tree (including the offscreen rows).
   */
  /* readonly attribute long rowCount; */
  nsresult GetRowCount(PRInt32 *aRowCount);

  /**
   * The selection for this view.
   */
  /* attribute nsITreeSelection selection; */
  nsresult GetSelection(nsITreeSelection  *aSelection);
  nsresult SetSelection(nsITreeSelection  aSelection);

  /** 
   * An atomized list of properties for a given row.  Each property, x, that
   * the view gives back will cause the pseudoclass :moz-tree-row-x
   * to be matched on the pseudoelement ::moz-tree-row.
   */
  /* void getRowProperties (in long index, in nsISupportsArray properties); */
  nsresult GetRowProperties(PRInt32 index, nsISupportsArray properties);

  /**
   * An atomized list of properties for a given cell.  Each property, x, that
   * the view gives back will cause the pseudoclass :moz-tree-cell-x
   * to be matched on the ::moz-tree-cell pseudoelement.
   */
  /* void getCellProperties (in long row, in nsITreeColumn col, in nsISupportsArray properties); */
  nsresult GetCellProperties(PRInt32 row, nsITreeColumn col, nsISupportsArray properties);

  /**
   * Called to get properties to paint a column background.  For shading the sort
   * column, etc.
   */
  /* void getColumnProperties (in nsITreeColumn col, in nsISupportsArray properties); */
  nsresult GetColumnProperties(nsITreeColumn col, nsISupportsArray properties);

  /**
   * Methods that can be used to test whether or not a twisty should be drawn,
   * and if so, whether an open or closed twisty should be used.
   */
  /* boolean isContainer (in long index); */
  nsresult IsContainer(PRInt32 index, PRBool *_retval);

  /* boolean isContainerOpen (in long index); */
  nsresult IsContainerOpen(PRInt32 index, PRBool *_retval);

  /* boolean isContainerEmpty (in long index); */
  nsresult IsContainerEmpty(PRInt32 index, PRBool *_retval);

  /**
   * isSeparator is used to determine if the row at index is a separator.
   * A value of true will result in the tree drawing a horizontal separator.
   * The tree uses the ::moz-tree-separator pseudoclass to draw the separator.
   */
  /* boolean isSeparator (in long index); */
  nsresult IsSeparator(PRInt32 index, PRBool *_retval);

  /**
   * Specifies if there is currently a sort on any column. Used mostly by dragdrop
   * to affect drop feedback.
   */
  /* boolean isSorted (); */
  nsresult IsSorted(PRBool *_retval);

  enum { DROP_BEFORE = -1 };

  enum { DROP_ON = 0 };

  enum { DROP_AFTER = 1 };

  /**
   * Methods used by the drag feedback code to determine if a drag is allowable at
   * the current location. To get the behavior where drops are only allowed on
   * items, such as the mailNews folder pane, always return false when
   * the orientation is not DROP_ON.
   */
  /* boolean canDrop (in long index, in long orientation); */
  nsresult CanDrop(PRInt32 index, PRInt32 orientation, PRBool *_retval);

  /**
   * Called when the user drops something on this view. The |orientation| param
   * specifies before/on/after the given |row|.
   */
  /* void drop (in long row, in long orientation); */
  nsresult Drop(PRInt32 row, PRInt32 orientation);

  /**
   * Methods used by the tree to draw thread lines in the tree.
   * getParentIndex is used to obtain the index of a parent row.
   * If there is no parent row, getParentIndex returns -1.
   */
  /* long getParentIndex (in long rowIndex); */
  nsresult GetParentIndex(PRInt32 rowIndex, PRInt32 *_retval);

  /**
   * hasNextSibling is used to determine if the row at rowIndex has a nextSibling
   * that occurs *after* the index specified by afterIndex.  Code that is forced
   * to march down the view looking at levels can optimize the march by starting
   * at afterIndex+1.
   */
  /* boolean hasNextSibling (in long rowIndex, in long afterIndex); */
  nsresult HasNextSibling(PRInt32 rowIndex, PRInt32 afterIndex, PRBool *_retval);

  /**
   * The level is an integer value that represents
   * the level of indentation.  It is multiplied by the width specified in the 
   * :moz-tree-indentation pseudoelement to compute the exact indendation.
   */
  /* long getLevel (in long index); */
  nsresult GetLevel(PRInt32 index, PRInt32 *_retval);

  /**
   * The image path for a given cell. For defining an icon for a cell.
   * If the empty string is returned, the :moz-tree-image pseudoelement
   * will be used.
   */
  /* AString getImageSrc (in long row, in nsITreeColumn col); */
  nsresult GetImageSrc(PRInt32 row, nsITreeColumn col, nsAString * _retval);

  /**
   * The progress mode for a given cell. This method is only called for
   * columns of type |progressmeter|.
   */
  enum { PROGRESS_NORMAL = 1 };

  enum { PROGRESS_UNDETERMINED = 2 };

  enum { PROGRESS_NONE = 3 };

  /* long getProgressMode (in long row, in nsITreeColumn col); */
  nsresult GetProgressMode(PRInt32 row, nsITreeColumn col, PRInt32 *_retval);

  /**
   * The value for a given cell. This method is only called for columns
   * of type other than |text|.
   */
  /* AString getCellValue (in long row, in nsITreeColumn col); */
  nsresult GetCellValue(PRInt32 row, nsITreeColumn col, nsAString * _retval);

  /**
   * The text for a given cell.  If a column consists only of an image, then
   * the empty string is returned.  
   */
  /* AString getCellText (in long row, in nsITreeColumn col); */
  nsresult GetCellText(PRInt32 row, nsITreeColumn col, nsAString * _retval);

  /**
   * Called during initialization to link the view to the front end box object.
   */
  /* void setTree (in nsITreeBoxObject tree); */
  nsresult SetTree(nsITreeBoxObject tree);

  /**
   * Called on the view when an item is opened or closed.
   */
  /* void toggleOpenState (in long index); */
  nsresult ToggleOpenState(PRInt32 index);

  /**
   * Called on the view when a header is clicked.
   */
  /* void cycleHeader (in nsITreeColumn col); */
  nsresult CycleHeader(nsITreeColumn col);

  /**
   * Should be called from a XUL onselect handler whenever the selection changes.
   */
  /* void selectionChanged (); */
  nsresult SelectionChanged();

  /**
   * Called on the view when a cell in a non-selectable cycling column (e.g., unread/flag/etc.) is clicked.
   */
  /* void cycleCell (in long row, in nsITreeColumn col); */
  nsresult CycleCell(PRInt32 row, nsITreeColumn col);

  /**
   * isEditable is called to ask the view if the cell contents are editable.
   * A value of true will result in the tree popping up a text field when 
   * the user tries to inline edit the cell.
   */
  /* boolean isEditable (in long row, in nsITreeColumn col); */
  nsresult IsEditable(PRInt32 row, nsITreeColumn col, PRBool *_retval);

  /**
   * setCellValue is called when the value of the cell has been set by the user.
   * This method is only called for columns of type other than |text|.
   */
  /* void setCellValue (in long row, in nsITreeColumn col, in AString value); */
  nsresult SetCellValue(PRInt32 row, nsITreeColumn col, nsAString * value);

  /**
   * setCellText is called when the contents of the cell have been edited by the user.
   */
  /* void setCellText (in long row, in nsITreeColumn col, in AString value); */
  nsresult SetCellText(PRInt32 row, nsITreeColumn col, nsAString * value);

  /**
   * A command API that can be used to invoke commands on the selection.  The tree
   * will automatically invoke this method when certain keys are pressed.  For example,
   * when the DEL key is pressed, performAction will be called with the "delete" string.
   */
  /* void performAction (in wstring action); */
  nsresult PerformAction(PRUnichar *action);

  /**
   * A command API that can be used to invoke commands on a specific row.
   */
  /* void performActionOnRow (in wstring action, in long row); */
  nsresult PerformActionOnRow(PRUnichar *action, PRInt32 row);

  /**
   * A command API that can be used to invoke commands on a specific cell.
   */
  /* void performActionOnCell (in wstring action, in long row, in nsITreeColumn col); */
  nsresult PerformActionOnCell(PRUnichar *action, PRInt32 row, nsITreeColumn col);

}


/* starting interface:    nsINativeTreeView */
const char[] NS_INATIVETREEVIEW_IID_STR = "38e0b44d-fa08-458c-83fb-3e10b12aeb45";

const nsIID NS_INATIVETREEVIEW_IID= 
  {0x38e0b44d, 0xfa08, 0x458c, 
    [ 0x83, 0xfb, 0x3e, 0x10, 0xb1, 0x2a, 0xeb, 0x45 ]};

/**
 * The following interface is not scriptable and MUST NEVER BE MADE scriptable.
 * Native treeviews implement it, and we use this to check whether a treeview
 * is native (and therefore suitable for use by untrusted content).
 */
extern(Windows)
interface nsINativeTreeView : nsITreeView {
  static const char[] IID_STR = NS_INATIVETREEVIEW_IID_STR;
  static const nsIID IID = NS_INATIVETREEVIEW_IID;

  /* [noscript] void ensureNative (); */
  nsresult EnsureNative();

}

