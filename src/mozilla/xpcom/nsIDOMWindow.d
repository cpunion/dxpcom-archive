/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMWindow.idl
 */

module mozilla.xpcom.nsIDOMWindow;


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


public import mozilla.xpcom.nsISelection; /* forward declaration */


/* starting interface:    nsIDOMWindow */
const char[] NS_IDOMWINDOW_IID_STR = "a6cf906b-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMWINDOW_IID= 
  {0xa6cf906b, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

extern(Windows)
interface nsIDOMWindow : nsISupports {
  static const char[] IID_STR = NS_IDOMWINDOW_IID_STR;
  static const nsIID IID = NS_IDOMWINDOW_IID;

  /**
 * The nsIDOMWindow interface is the primary interface for a DOM
 * window object. It represents a single window object that may
 * contain child windows if the document in the window contains a
 * HTML frameset document or if the document contains iframe elements.
 *
 * This interface is not officially defined by any standard bodies, it
 * originates from the defacto DOM Level 0 standard.
 *
 * @status FROZEN
 */
/**
   * Accessor for the document in this window.
   */
  /* readonly attribute nsIDOMDocument document; */
  nsresult GetDocument(nsIDOMDocument  *aDocument);

  /**
   * Accessor for this window's parent window, or the window itself if
   * there is no parent, or if the parent is of different type
   * (i.e. this does not cross chrome-content boundaries).
   */
  /* readonly attribute nsIDOMWindow parent; */
  nsresult GetParent(nsIDOMWindow  *aParent);

  /**
   * Accessor for the root of this hierarchy of windows. This root may
   * be the window itself if there is no parent, or if the parent is
   * of different type (i.e. this does not cross chrome-content
   * boundaries).
   *
   * This property is "replaceable" in JavaScript */
  /* readonly attribute nsIDOMWindow top; */
  nsresult GetTop(nsIDOMWindow  *aTop);

  /**
   * Accessor for the object that controls whether or not scrollbars
   * are shown in this window.
   *
   * This attribute is "replaceable" in JavaScript
   */
  /* readonly attribute nsIDOMBarProp scrollbars; */
  nsresult GetScrollbars(nsIDOMBarProp  *aScrollbars);

  /**
   * Accessor for the child windows in this window.
   */
  /* [noscript] readonly attribute nsIDOMWindowCollection frames; */
  nsresult GetFrames(nsIDOMWindowCollection  *aFrames);

  /**
   * Set/Get the name of this window.
   *
   * This attribute is "replaceable" in JavaScript
   */
  /* attribute DOMString name; */
  nsresult GetName(nsAString * aName);
  nsresult SetName(nsAString * aName);

  /**
   * Set/Get the document scale factor as a multiplier on the default
   * size. When setting this attribute, a NS_ERROR_NOT_IMPLEMENTED
   * error may be returned by implementations not supporting
   * zoom. Implementations not supporting zoom should return 1.0 all
   * the time for the Get operation. 1.0 is equals normal size,
   * i.e. no zoom.
   */
  /* [noscript] attribute float textZoom; */
  nsresult GetTextZoom(float *aTextZoom);
  nsresult SetTextZoom(float aTextZoom);

  /**
   * Accessor for the current x scroll position in this window in
   * pixels.
   *
   * This attribute is "replaceable" in JavaScript
   */
  /* readonly attribute long scrollX; */
  nsresult GetScrollX(PRInt32 *aScrollX);

  /**
   * Accessor for the current y scroll position in this window in
   * pixels.
   *
   * This attribute is "replaceable" in JavaScript
   */
  /* readonly attribute long scrollY; */
  nsresult GetScrollY(PRInt32 *aScrollY);

  /**
   * Method for scrolling this window to an absolute pixel offset.
   */
  /* void scrollTo (in long xScroll, in long yScroll); */
  nsresult ScrollTo(PRInt32 xScroll, PRInt32 yScroll);

  /**
   * Method for scrolling this window to a pixel offset relative to
   * the current scroll position.
   */
  /* void scrollBy (in long xScrollDif, in long yScrollDif); */
  nsresult ScrollBy(PRInt32 xScrollDif, PRInt32 yScrollDif);

  /**
   * Method for accessing this window's selection object.
   */
  /* nsISelection getSelection (); */
  nsresult GetSelection(nsISelection *_retval);

  /**
   * Method for scrolling this window by a number of lines.
   */
  /* void scrollByLines (in long numLines); */
  nsresult ScrollByLines(PRInt32 numLines);

  /**
   * Method for scrolling this window by a number of pages.
   */
  /* void scrollByPages (in long numPages); */
  nsresult ScrollByPages(PRInt32 numPages);

  /**
   * Method for sizing this window to the content in the window.
   */
  /* void sizeToContent (); */
  nsresult SizeToContent();

}

