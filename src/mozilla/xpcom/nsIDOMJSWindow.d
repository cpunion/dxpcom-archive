/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMJSWindow.idl
 */

module mozilla.xpcom.nsIDOMJSWindow;


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



/* starting interface:    nsIDOMJSWindow */
const char[] NS_IDOMJSWINDOW_IID_STR = "c8188620-1dd1-11b2-bc88-df8440498add";

const nsIID NS_IDOMJSWINDOW_IID= 
  {0xc8188620, 0x1dd1, 0x11b2, 
    [ 0xbc, 0x88, 0xdf, 0x84, 0x40, 0x49, 0x8a, 0xdd ]};

extern(Windows)
interface nsIDOMJSWindow : nsISupports {
  static const char[] IID_STR = NS_IDOMJSWINDOW_IID_STR;
  static const nsIID IID = NS_IDOMJSWINDOW_IID;

  /* void dump (in DOMString str); */
  nsresult Dump(nsAString * str);

  /**
   * These methods take typeless arguments and optional arguments, the
   * first argument is either a function or a string, the second
   * argument must be a number (ms) and the rest of the arguments (2
   * ... n) are passed to the callback function
   */
  /* long setTimeout (); */
  nsresult SetTimeout(PRInt32 *_retval);

  /* long setInterval (); */
  nsresult SetInterval(PRInt32 *_retval);

  /**
   * These methods take one optional argument that's the timer ID to
   * clear. Often in existing code these methods are passed undefined,
   * which is a nop so we need to support that as well.
   */
  /* void clearTimeout (); */
  nsresult ClearTimeout();

  /* void clearInterval (); */
  nsresult ClearInterval();

  /* void setResizable (in boolean resizable); */
  nsresult SetResizable(PRBool resizable);

  /* void captureEvents (in long eventFlags); */
  nsresult CaptureEvents(PRInt32 eventFlags);

  /* void releaseEvents (in long eventFlags); */
  nsresult ReleaseEvents(PRInt32 eventFlags);

  /* void routeEvent (in nsIDOMEvent evt); */
  nsresult RouteEvent(nsIDOMEvent evt);

  /* void enableExternalCapture (); */
  nsresult EnableExternalCapture();

  /* void disableExternalCapture (); */
  nsresult DisableExternalCapture();

  /**
   * The prompt method takes up to four arguments, the arguments are
   * message, initial prompt value, title and a save password flag
   */
  /* DOMString prompt (); */
  nsresult Prompt(nsAString * _retval);

  /**
   * These are the scriptable versions of nsIDOMWindowInternal::open() and
   * nsIDOMWindowInternal::openDialog() that take 3 optional arguments.  Unlike
   * the nsIDOMWindowInternal methods, these methods assume that they are
   * called from JavaScript and hence will look on the JS context stack to
   * determine the caller and hence correct security context for doing their
   * search for an existing named window.  Also, these methods will set the
   * default charset on the newly opened window based on the current document
   * charset in the caller.
   */
  /* nsIDOMWindow open (); */
  nsresult Open(nsIDOMWindow *_retval);

  /* nsIDOMWindow openDialog (); */
  nsresult OpenDialog(nsIDOMWindow *_retval);

  /**
   * window.frames in Netscape 4.x and IE is just a reference to the
   * window itself (i.e. window.frames === window), but this doesn't
   * make sense from a generic API point of view so that's why this is
   * JS specific.
   *
   * This property is "replaceable" in JavaScript.
   */
  /* readonly attribute nsIDOMWindow frames; */
  nsresult GetFrames(nsIDOMWindow  *aFrames);

  /* boolean find (); */
  nsresult Find(PRBool *_retval);

}

