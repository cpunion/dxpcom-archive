/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITreeBoxObject.idl
 */

module mozilla.xpcom.nsITreeBoxObject;


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


public import mozilla.xpcom.nsITreeView; /* forward declaration */

public import mozilla.xpcom.nsITreeSelection; /* forward declaration */

public import mozilla.xpcom.nsITreeColumns;

public import mozilla.xpcom.nsITreeColumns; /* forward declaration */


/* starting interface:    nsITreeBoxObject */
const char[] NS_ITREEBOXOBJECT_IID_STR = "55f3b431-1aa8-4e23-ad3d-a9f5644bdaa6";

const nsIID NS_ITREEBOXOBJECT_IID= 
  {0x55f3b431, 0x1aa8, 0x4e23, 
    [ 0xad, 0x3d, 0xa9, 0xf5, 0x64, 0x4b, 0xda, 0xa6 ]};

extern(Windows)
interface nsITreeBoxObject : nsISupports {
  static const char[] IID_STR = NS_ITREEBOXOBJECT_IID_STR;
  static const nsIID IID = NS_ITREEBOXOBJECT_IID;

  /**
   * Obtain the columns.
   */
  /* readonly attribute nsITreeColumns columns; */
  nsresult GetColumns(nsITreeColumns  *aColumns);

  /**
   * The view that backs the tree and that supplies it with its data.
   * It is dynamically settable, either using a view attribute on the
   * tree tag or by setting this attribute to a new value.
   */
  /* attribute nsITreeView view; */
  nsresult GetView(nsITreeView  *aView);
  nsresult SetView(nsITreeView  aView);

  /**
   * Whether or not we are currently focused.
   */
  /* attribute boolean focused; */
  nsresult GetFocused(PRBool *aFocused);
  nsresult SetFocused(PRBool aFocused);

  /**
   * Obtain the treebody content node
   */
  /* readonly attribute nsIDOMElement treeBody; */
  nsresult GetTreeBody(nsIDOMElement  *aTreeBody);

  /**
   * Obtain the height of a row.
   */
  /* readonly attribute long rowHeight; */
  nsresult GetRowHeight(PRInt32 *aRowHeight);

  /**
   * Get the index of the first visible row.
   */
  /* long getFirstVisibleRow (); */
  nsresult GetFirstVisibleRow(PRInt32 *_retval);

  /**
   * Get the index of the last visible row.
   */
  /* long getLastVisibleRow (); */
  nsresult GetLastVisibleRow(PRInt32 *_retval);

  /**
   * Gets the number of possible visible rows.
   */
  /* long getPageLength (); */
  nsresult GetPageLength(PRInt32 *_retval);

  /**
   * Ensures that a row at a given index is visible.
   */
  /* void ensureRowIsVisible (in long index); */
  nsresult EnsureRowIsVisible(PRInt32 index);

  /**
   * Scrolls such that the row at index is at the top of the visible view.
   */
  /* void scrollToRow (in long index); */
  nsresult ScrollToRow(PRInt32 index);

  /**
   * Scroll the tree up or down by numLines lines. Positive
   * values move down in the tree. Prevents scrolling off the
   * end of the tree. 
   */
  /* void scrollByLines (in long numLines); */
  nsresult ScrollByLines(PRInt32 numLines);

  /**
   * Scroll the tree up or down by numPages pages. A page
   * is considered to be the amount displayed by the tree.
   * Positive values move down in the tree. Prevents scrolling
   * off the end of the tree.
   */
  /* void scrollByPages (in long numPages); */
  nsresult ScrollByPages(PRInt32 numPages);

  /**
   * Invalidation methods for fine-grained painting control.
   */
  /* void invalidate (); */
  nsresult Invalidate();

  /* void invalidateColumn (in nsITreeColumn col); */
  nsresult InvalidateColumn(nsITreeColumn col);

  /* void invalidateRow (in long index); */
  nsresult InvalidateRow(PRInt32 index);

  /* void invalidateCell (in long row, in nsITreeColumn col); */
  nsresult InvalidateCell(PRInt32 row, nsITreeColumn col);

  /* void invalidateRange (in long startIndex, in long endIndex); */
  nsresult InvalidateRange(PRInt32 startIndex, PRInt32 endIndex);

  /**
   * A hit test that can tell you what row the mouse is over.
   * returns -1 for invalid mouse coordinates.
   *
   * The coordinate system is the client coordinate system for the
   * document this boxObject lives in, and the units are CSS pixels.
   */
  /* long getRowAt (in long x, in long y); */
  nsresult GetRowAt(PRInt32 x, PRInt32 y, PRInt32 *_retval);

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
  nsresult GetCellAt(PRInt32 x, PRInt32 y, PRInt32 *row, nsITreeColumn *col, nsACString * childElt);

  /** 
   * Find the coordinates of an element within a specific cell. 
   */
  /* void getCoordsForCellItem (in long row, in nsITreeColumn col, in ACString element, out long x, out long y, out long width, out long height); */
  nsresult GetCoordsForCellItem(PRInt32 row, nsITreeColumn col, nsACString * element, PRInt32 *x, PRInt32 *y, PRInt32 *width, PRInt32 *height);

  /** 
   * Determine if the text of a cell is being cropped or not.
   */
  /* boolean isCellCropped (in long row, in nsITreeColumn col); */
  nsresult IsCellCropped(PRInt32 row, nsITreeColumn col, PRBool *_retval);

  /**
   * The view is responsible for calling these notification methods when
   * rows are added or removed.  Index is the position at which the new
   * rows were added or at which rows were removed.  For
   * non-contiguous additions/removals, this method should be called multiple times.
   */
  /* void rowCountChanged (in long index, in long count); */
  nsresult RowCountChanged(PRInt32 index, PRInt32 count);

  /**
   * Notify the tree that the view is about to perform a batch
   * update, that is, add, remove or invalidate several rows at once.
   * This must be followed by calling endUpdateBatch(), otherwise the tree
   * will get out of sync.
   */
  /* void beginUpdateBatch (); */
  nsresult BeginUpdateBatch();

  /**
   * Notify the tree that the view has completed a batch update.
   */
  /* void endUpdateBatch (); */
  nsresult EndUpdateBatch();

  /**
   * Called on a theme switch to flush out the tree's style and image caches.
   */
  /* void clearStyleAndImageCaches (); */
  nsresult ClearStyleAndImageCaches();

}

