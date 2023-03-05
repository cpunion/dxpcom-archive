/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIHTMLAbsPosEditor.idl
 */

module mozilla.xpcom.nsIHTMLAbsPosEditor;


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



/* starting interface:    nsIHTMLAbsPosEditor */
const char[] NS_IHTMLABSPOSEDITOR_IID_STR = "91375f52-20e6-4757-9835-eb04fabe5498";

const nsIID NS_IHTMLABSPOSEDITOR_IID= 
  {0x91375f52, 0x20e6, 0x4757, 
    [ 0x98, 0x35, 0xeb, 0x04, 0xfa, 0xbe, 0x54, 0x98 ]};

extern(Windows)
interface nsIHTMLAbsPosEditor : nsISupports {
  static const char[] IID_STR = NS_IHTMLABSPOSEDITOR_IID_STR;
  static const nsIID IID = NS_IHTMLABSPOSEDITOR_IID;

  /**
   * true if the selection container is absolutely positioned
   */
  /* readonly attribute boolean selectionContainerAbsolutelyPositioned; */
  nsresult GetSelectionContainerAbsolutelyPositioned(PRBool *aSelectionContainerAbsolutelyPositioned);

  /**
   * this contains the absolutely positioned element currently edited
   * or null
   */
  /* readonly attribute nsIDOMElement positionedElement; */
  nsresult GetPositionedElement(nsIDOMElement  *aPositionedElement);

  /**
   * true if Absolute Positioning handling is enabled in the editor
   */
  /* attribute boolean absolutePositioningEnabled; */
  nsresult GetAbsolutePositioningEnabled(PRBool *aAbsolutePositioningEnabled);
  nsresult SetAbsolutePositioningEnabled(PRBool aAbsolutePositioningEnabled);

  /**
   * true if Snap To Grid is enabled in the editor.
   */
  /* attribute boolean snapToGridEnabled; */
  nsresult GetSnapToGridEnabled(PRBool *aSnapToGridEnabled);
  nsresult SetSnapToGridEnabled(PRBool aSnapToGridEnabled);

  /**
   * sets the grid size in pixels.
   * @param aSizeInPixels [IN] the size of the grid in pixels
   */
  /* attribute unsigned long gridSize; */
  nsresult GetGridSize(PRUint32 *aGridSize);
  nsresult SetGridSize(PRUint32 aGridSize);

  /**
   * returns the deepest absolutely positioned container of the selection
   * if it exists or null.
   */
  /* readonly attribute nsIDOMElement absolutelyPositionedSelectionContainer; */
  nsresult GetAbsolutelyPositionedSelectionContainer(nsIDOMElement  *aAbsolutelyPositionedSelectionContainer);

  /**
   * extracts the selection from the normal flow of the document and
   * positions it.
   * @param aEnabled [IN] true to absolutely position the selection,
   *                      false to put it back in the normal flow
   */
  /* void absolutePositionSelection (in boolean aEnabled); */
  nsresult AbsolutePositionSelection(PRBool aEnabled);

  /**
   * adds aChange to the z-index of the currently positioned element.
   * @param aChange [IN] relative change to apply to current z-index
   */
  /* void relativeChangeZIndex (in long aChange); */
  nsresult RelativeChangeZIndex(PRInt32 aChange);

  /**
   * extracts an element from the normal flow of the document and
   * positions it, and puts it back in the normal flow.
   * @param aElement [IN] the element
   * @param aEnabled [IN] true to absolutely position the element,
   *                      false to put it back in the normal flow
   */
  /* void absolutelyPositionElement (in nsIDOMElement aElement, in boolean aEnabled); */
  nsresult AbsolutelyPositionElement(nsIDOMElement aElement, PRBool aEnabled);

  /**
   * sets the position of an element; warning it does NOT check if the
   * element is already positioned or not and that's on purpose.
   * @param aElement [IN] the element
   * @param aX       [IN] the x position in pixels.
   * @param aY       [IN] the y position in pixels.
   */
  /* void setElementPosition (in nsIDOMElement aElement, in long aX, in long aY); */
  nsresult SetElementPosition(nsIDOMElement aElement, PRInt32 aX, PRInt32 aY);

  /**
   * returns the absolute z-index of a positioned element. Never returns 'auto'.
   * @return         the z-index of the element
   * @param aElement [IN] the element.
   */
  /* long getElementZIndex (in nsIDOMElement aElement); */
  nsresult GetElementZIndex(nsIDOMElement aElement, PRInt32 *_retval);

  /**
   * sets the z-index of an element.
   * @param aElement [IN] the element
   * @param aZorder  [IN] the z-index
   */
  /* void setElementZIndex (in nsIDOMElement aElement, in long aZorder); */
  nsresult SetElementZIndex(nsIDOMElement aElement, PRInt32 aZorder);

  /**
   * adds aChange to the z-index of an arbitrary element.
   * @return         the new z-index of the element
   * @param aElement [IN] the element
   * @param aChange  [IN] relative change to apply to current z-index of
   *                      the element
   */
  /* long relativeChangeElementZIndex (in nsIDOMElement aElement, in long aChange); */
  nsresult RelativeChangeElementZIndex(nsIDOMElement aElement, PRInt32 aChange, PRInt32 *_retval);

  /**
   * shows a grabber attached to an arbitrary element. The grabber is an image
   * positioned on the left hand side of the top border of the element. Dragging
   * and dropping it allows to change the element's absolute position in the
   * document. See chrome://editor/content/images/grabber.gif
   * @param aElement [IN] the element
   */
  /* void showGrabberOnElement (in nsIDOMElement aElement); */
  nsresult ShowGrabberOnElement(nsIDOMElement aElement);

  /**
   * hide the grabber if it shown.
   */
  /* void hideGrabber (); */
  nsresult HideGrabber();

  /**
   * refreshes the grabber if it shown, possibly updating its position or
   * even hiding it.
   */
  /* void refreshGrabber (); */
  nsresult RefreshGrabber();

}

