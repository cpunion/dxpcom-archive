/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXULTemplateBuilder.idl
 */

module mozilla.xpcom.nsIXULTemplateBuilder;


public import mozilla.xpcom.nsrootidl;

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

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIRDFCompositeDataSource;
public import mozilla.xpcom.nsIRDFResource;

public import mozilla.xpcom.nsIXULBuilderListener; /* forward declaration */


/* starting interface:    nsIXULTemplateBuilder */
const char[] NS_IXULTEMPLATEBUILDER_IID_STR = "9da147a7-5854-49e3-a397-22ecdd93e96d";

const nsIID NS_IXULTEMPLATEBUILDER_IID= 
  {0x9da147a7, 0x5854, 0x49e3, 
    [ 0xa3, 0x97, 0x22, 0xec, 0xdd, 0x93, 0xe9, 0x6d ]};

extern(Windows)
interface nsIXULTemplateBuilder : nsISupports {
  static const char[] IID_STR = NS_IXULTEMPLATEBUILDER_IID_STR;
  static const nsIID IID = NS_IXULTEMPLATEBUILDER_IID;

  /**
     * The ``root'' node in the DOM to which this builder is attached
     */
  /* readonly attribute nsIDOMElement root; */
  nsresult GetRoot(nsIDOMElement  *aRoot);

  /**
     * The composite datasource that the template builder observes
     * and uses to create content
     */
  /* readonly attribute nsIRDFCompositeDataSource database; */
  nsresult GetDatabase(nsIRDFCompositeDataSource  *aDatabase);

  /**
     * Force the template builder to rebuild its content.
     */
  /* void rebuild (); */
  nsresult Rebuild();

  /**
     * Reload any of our RDF datasources that support nsIRDFRemoteDatasource. 
     *
     * @note This is a temporary hack so that remote-XUL authors can
     *       reload remote datasources. When RDF becomes remote-scriptable,
     *       this will no longer be necessary.
     */
  /* void refresh (); */
  nsresult Refresh();

  /**
     * Called to initialize a XUL content builder on a particular root
     * element. This element presumably has a ``datasources''
     * attribute, which the builder will parse to set up the template
     * builder's datasources.
     */
  /* [noscript] void init (in nsIContent_ptr aElement); */
  nsresult Init(nsIContent * aElement);

  /**
     * Invoked lazily by a XUL element that needs its child content
     * built.
     */
  /* [noscript] void createContents (in nsIContent_ptr aElement); */
  nsresult CreateContents(nsIContent * aElement);

  /**
     * Add a listener to this template builder. The template builder
     * holds a strong reference to the listener.
     */
  /* void addListener (in nsIXULBuilderListener aListener); */
  nsresult AddListener(nsIXULBuilderListener aListener);

  /**
     * Remove a listener from this template builder.
     */
  /* void removeListener (in nsIXULBuilderListener aListener); */
  nsresult RemoveListener(nsIXULBuilderListener aListener);

}


/* starting interface:    nsIXULTreeBuilderObserver */
const char[] NS_IXULTREEBUILDEROBSERVER_IID_STR = "a5480e0d-ac7c-42e5-aca5-d7f0bbffa207";

const nsIID NS_IXULTREEBUILDEROBSERVER_IID= 
  {0xa5480e0d, 0xac7c, 0x42e5, 
    [ 0xac, 0xa5, 0xd7, 0xf0, 0xbb, 0xff, 0xa2, 0x07 ]};

/**
 * nsIXULTreeBuilderObserver
 *  This interface allows clients of the XULTreeBuilder to define domain 
 *  specific handling of specific nsITreeView methods that 
 *  XULTreeBuilder does not implement.
 */
extern(Windows)
interface nsIXULTreeBuilderObserver : nsISupports {
  static const char[] IID_STR = NS_IXULTREEBUILDEROBSERVER_IID_STR;
  static const nsIID IID = NS_IXULTREEBUILDEROBSERVER_IID;

  enum { DROP_BEFORE = -1 };

  enum { DROP_ON = 0 };

  enum { DROP_AFTER = 1 };

  /**
     * Methods used by the drag feedback code to determine if a drag is allowable at
     * the current location. To get the behavior where drops are only allowed on
     * items, such as the mailNews folder pane, always return false whe
     * the orientation is not DROP_ON.
     */
  /* boolean canDrop (in long index, in long orientation); */
  nsresult CanDrop(PRInt32 index, PRInt32 orientation, PRBool *_retval);

  /**
     * Called when the user drops something on this view. The |orientation| param
     * specifies before/on/after the given |row|.
     */
  /* void onDrop (in long row, in long orientation); */
  nsresult OnDrop(PRInt32 row, PRInt32 orientation);

  /** 
     * Called when an item is opened or closed. 
     */
  /* void onToggleOpenState (in long index); */
  nsresult OnToggleOpenState(PRInt32 index);

  /** 
	 * Called when a header is clicked.
     */
  /* void onCycleHeader (in wstring colID, in nsIDOMElement elt); */
  nsresult OnCycleHeader(PRUnichar *colID, nsIDOMElement elt);

  /**
     * Called when a cell in a non-selectable cycling column (e.g. 
     * unread/flag/etc.) is clicked.
     */
  /* void onCycleCell (in long row, in wstring colID); */
  nsresult OnCycleCell(PRInt32 row, PRUnichar *colID);

  /** 
     * Called when selection in the tree changes
     */
  /* void onSelectionChanged (); */
  nsresult OnSelectionChanged();

  /**
     * A command API that can be used to invoke commands on the selection.  
     * The tree will automatically invoke this method when certain keys 
     * are pressed.  For example, when the DEL key is pressed, performAction 
     * will be called with the "delete" string. 
     */
  /* void onPerformAction (in wstring action); */
  nsresult OnPerformAction(PRUnichar *action);

  /**
     * A command API that can be used to invoke commands on a specific row.
     */
  /* void onPerformActionOnRow (in wstring action, in long row); */
  nsresult OnPerformActionOnRow(PRUnichar *action, PRInt32 row);

  /**
     * A command API that can be used to invoke commands on a specific cell.
     */
  /* void onPerformActionOnCell (in wstring action, in long row, in wstring colID); */
  nsresult OnPerformActionOnCell(PRUnichar *action, PRInt32 row, PRUnichar *colID);

}


/* starting interface:    nsIXULTreeBuilder */
const char[] NS_IXULTREEBUILDER_IID_STR = "06b31b15-ebf5-4e74-a0e2-6bc0a18a3969";

const nsIID NS_IXULTREEBUILDER_IID= 
  {0x06b31b15, 0xebf5, 0x4e74, 
    [ 0xa0, 0xe2, 0x6b, 0xc0, 0xa1, 0x8a, 0x39, 0x69 ]};

extern(Windows)
interface nsIXULTreeBuilder : nsISupports {
  static const char[] IID_STR = NS_IXULTREEBUILDER_IID_STR;
  static const nsIID IID = NS_IXULTREEBUILDER_IID;

  /**
     * Retrieve the RDF resource associated with the specified row.
     */
  /* nsIRDFResource getResourceAtIndex (in long aRowIndex); */
  nsresult GetResourceAtIndex(PRInt32 aRowIndex, nsIRDFResource *_retval);

  /**
     * Retrieve the index associated with specified RDF resource.
     */
  /* long getIndexOfResource (in nsIRDFResource resource); */
  nsresult GetIndexOfResource(nsIRDFResource resource, PRInt32 *_retval);

  /** 
     * Add a Tree Builder Observer to handle Tree View 
     * methods that the base builder does not implement. 
     */
  /* void addObserver (in nsIXULTreeBuilderObserver aObserver); */
  nsresult AddObserver(nsIXULTreeBuilderObserver aObserver);

  /** 
     * Remove an Tree Builder Observer.
     */
  /* void removeObserver (in nsIXULTreeBuilderObserver aObserver); */
  nsresult RemoveObserver(nsIXULTreeBuilderObserver aObserver);

  /** 
     * Sort the contents of the tree using the specified column.
     */
  /* void sort (in nsIDOMElement aColumnElement); */
  nsresult Sort(nsIDOMElement aColumnElement);

}

