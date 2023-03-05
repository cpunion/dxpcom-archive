/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIHTMLObjectResizer.idl
 */

module mozilla.xpcom.nsIHTMLObjectResizer;


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


public import mozilla.xpcom.nsIHTMLObjectResizeListener; /* forward declaration */


/* starting interface:    nsIHTMLObjectResizer */
const char[] NS_IHTMLOBJECTRESIZER_IID_STR = "b0338f6c-ded3-4c39-a953-56e8bae494f5";

const nsIID NS_IHTMLOBJECTRESIZER_IID= 
  {0xb0338f6c, 0xded3, 0x4c39, 
    [ 0xa9, 0x53, 0x56, 0xe8, 0xba, 0xe4, 0x94, 0xf5 ]};

extern(Windows)
interface nsIHTMLObjectResizer : nsISupports {
  static const char[] IID_STR = NS_IHTMLOBJECTRESIZER_IID_STR;
  static const nsIID IID = NS_IHTMLOBJECTRESIZER_IID;

  enum { eTopLeft = 0 };

  enum { eTop = 1 };

  enum { eTopRight = 2 };

  enum { eLeft = 3 };

  enum { eRight = 4 };

  enum { eBottomLeft = 5 };

  enum { eBottom = 6 };

  enum { eBottomRight = 7 };

  /**
   * the element currently displaying resizers
   */
  /* readonly attribute nsIDOMElement resizedObject; */
  nsresult GetResizedObject(nsIDOMElement  *aResizedObject);

  /**
   * a boolean indicating if object resizing is enabled in the editor
   */
  /* attribute boolean objectResizingEnabled; */
  nsresult GetObjectResizingEnabled(PRBool *aObjectResizingEnabled);
  nsresult SetObjectResizingEnabled(PRBool aObjectResizingEnabled);

  /**
   * Shows active resizers around an element's frame
   * @param aResizedElement [IN] a DOM Element
   */
  /* void showResizers (in nsIDOMElement aResizedElement); */
  nsresult ShowResizers(nsIDOMElement aResizedElement);

  /**
   * Hide resizers if they are visible
   */
  /* void hideResizers (); */
  nsresult HideResizers();

  /**
   * Refresh visible resizers
   */
  /* void refreshResizers (); */
  nsresult RefreshResizers();

  /**
   * event callback when a mouse button is pressed
   * @param aX      [IN] horizontal position of the pointer
   * @param aY      [IN] vertical position of the pointer
   * @param aTarget [IN] the element triggering the event
   */
  /* void mouseDown (in long aX, in long aY, in nsIDOMElement aTarget); */
  nsresult MouseDown(PRInt32 aX, PRInt32 aY, nsIDOMElement aTarget);

  /**
   * event callback when a mouse button is released
   * @param aX      [IN] horizontal position of the pointer
   * @param aY      [IN] vertical position of the pointer
   * @param aTarget [IN] the element triggering the event
   */
  /* void mouseUp (in long aX, in long aY, in nsIDOMElement aTarget); */
  nsresult MouseUp(PRInt32 aX, PRInt32 aY, nsIDOMElement aTarget);

  /**
   * event callback when the mouse pointer is moved
   * @param aMouseEvent [IN] the event
   */
  /* void mouseMove (in nsIDOMEvent aMouseEvent); */
  nsresult MouseMove(nsIDOMEvent aMouseEvent);

  /**
   * Creates a resize listener that can be used to get notifications
   * that the user started to resize an object or finalized such an operation
   * @param aListener [IN] an instance of nsIHTMLObjectResizeListener
   */
  /* void addObjectResizeEventListener (in nsIHTMLObjectResizeListener aListener); */
  nsresult AddObjectResizeEventListener(nsIHTMLObjectResizeListener aListener);

  /**
   * Deletes a resize listener
   * @param aListener [IN] an instance of nsIHTMLObjectResizeListener
   */
  /* void removeObjectResizeEventListener (in nsIHTMLObjectResizeListener aListener); */
  nsresult RemoveObjectResizeEventListener(nsIHTMLObjectResizeListener aListener);

}

