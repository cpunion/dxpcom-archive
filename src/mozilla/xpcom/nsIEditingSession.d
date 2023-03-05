/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEditingSession.idl
 */

module mozilla.xpcom.nsIEditingSession;


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


public import mozilla.xpcom.nsIEditor; /* forward declaration */


/* starting interface:    nsIEditingSession */
const char[] NS_IEDITINGSESSION_IID_STR = "d39fd2b4-3978-45d2-a4be-ba448171b61b";

const nsIID NS_IEDITINGSESSION_IID= 
  {0xd39fd2b4, 0x3978, 0x45d2, 
    [ 0xa4, 0xbe, 0xba, 0x44, 0x81, 0x71, 0xb6, 0x1b ]};

extern(Windows)
interface nsIEditingSession : nsISupports {
  static const char[] IID_STR = NS_IEDITINGSESSION_IID_STR;
  static const nsIID IID = NS_IEDITINGSESSION_IID;

  /**
   *  Error codes when we fail to create an editor
   *  is placed in attribute editorStatus
   */
  enum { eEditorOK = 0 };

  enum { eEditorCreationInProgress = 1 };

  enum { eEditorErrorCantEditMimeType = 2 };

  enum { eEditorErrorFileNotFound = 3 };

  enum { eEditorErrorCantEditFramesets = 8 };

  enum { eEditorErrorUnknown = 9 };

  /**
   *  Status after editor creation and document loading
   *  Value is one of the above error codes
   */
  /* readonly attribute unsigned long editorStatus; */
  nsresult GetEditorStatus(PRUint32 *aEditorStatus);

  /**
   *  Make this window editable
   *  @param aWindow nsIDOMWindow, the window the embedder needs to make editable
   *  @param aEditorType string, "html" "htmlsimple" "text" "textsimple"
   */
  /* void makeWindowEditable (in nsIDOMWindow window, in string aEditorType, in boolean doAfterUriLoad); */
  nsresult MakeWindowEditable(nsIDOMWindow window, char *aEditorType, PRBool doAfterUriLoad);

  /**
   *  Test whether a specific window has had its editable flag set; it may have an editor
   *  now, or will get one after the uri load.
   *  
   *  Use this, passing the content root window, to test if we've set up editing
   *  for this content.
   */
  /* boolean windowIsEditable (in nsIDOMWindow window); */
  nsresult WindowIsEditable(nsIDOMWindow window, PRBool *_retval);

  /**
   *  Get the editor for this window. May return null
   */
  /* nsIEditor getEditorForWindow (in nsIDOMWindow window); */
  nsresult GetEditorForWindow(nsIDOMWindow window, nsIEditor *_retval);

  /** 
   *  Setup editor and related support objects
   */
  /* void setupEditorOnWindow (in nsIDOMWindow window); */
  nsresult SetupEditorOnWindow(nsIDOMWindow window);

  /** 
   *   Destroy editor and related support objects
   */
  /* void tearDownEditorOnWindow (in nsIDOMWindow window); */
  nsresult TearDownEditorOnWindow(nsIDOMWindow window);

  /* void setEditorOnControllers (in nsIDOMWindow aWindow, in nsIEditor aEditor); */
  nsresult SetEditorOnControllers(nsIDOMWindow aWindow, nsIEditor aEditor);

}

