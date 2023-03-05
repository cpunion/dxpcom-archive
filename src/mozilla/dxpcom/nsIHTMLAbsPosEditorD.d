/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIHTMLAbsPosEditor.idl
 */

module mozilla.dxpcom.nsIHTMLAbsPosEditorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIHTMLAbsPosEditor;


public import mozilla.dxpcom.nsIHTMLAbsPosEditorD;

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



/* starting wrapper class:    nsIHTMLAbsPosEditor */
class nsIHTMLAbsPosEditorD : public nsISupportsD {

  static const nsIID IID = NS_IHTMLABSPOSEDITOR_IID;


  alias nsIHTMLAbsPosEditor InnerType;

  this(nsIHTMLAbsPosEditor intr){
    super(intr);
    this.inner = intr;
  }

  nsIHTMLAbsPosEditor opCast() {
    return inner;
  }

  void opAssign(nsIHTMLAbsPosEditor value) {
    inner = value;
  }

  /**
   * true if the selection container is absolutely positioned
   */
  /* readonly attribute boolean selectionContainerAbsolutelyPositioned; */
  PRBool SelectionContainerAbsolutelyPositioned(){
    PRBool value;
    nsresult __result = inner.GetSelectionContainerAbsolutelyPositioned(&value);
    CheckException(__result);
    return value;
  }

  /**
   * this contains the absolutely positioned element currently edited
   * or null
   */
  /* readonly attribute nsIDOMElement positionedElement; */
  nsIDOMElementD  PositionedElement(){
    nsIDOMElement value;
    nsresult __result = inner.GetPositionedElement(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }

  /**
   * true if Absolute Positioning handling is enabled in the editor
   */
  /* attribute boolean absolutePositioningEnabled; */
  PRBool AbsolutePositioningEnabled(){
    PRBool value;
    nsresult __result = inner.GetAbsolutePositioningEnabled(&value);
    CheckException(__result);
    return value;
  }
  void AbsolutePositioningEnabled(PRBool aAbsolutePositioningEnabled){
    nsresult __result = inner.SetAbsolutePositioningEnabled(aAbsolutePositioningEnabled);
    CheckException(__result);
  }

  /**
   * true if Snap To Grid is enabled in the editor.
   */
  /* attribute boolean snapToGridEnabled; */
  PRBool SnapToGridEnabled(){
    PRBool value;
    nsresult __result = inner.GetSnapToGridEnabled(&value);
    CheckException(__result);
    return value;
  }
  void SnapToGridEnabled(PRBool aSnapToGridEnabled){
    nsresult __result = inner.SetSnapToGridEnabled(aSnapToGridEnabled);
    CheckException(__result);
  }

  /**
   * sets the grid size in pixels.
   * @param aSizeInPixels [IN] the size of the grid in pixels
   */
  /* attribute unsigned long gridSize; */
  PRUint32 GridSize(){
    PRUint32 value;
    nsresult __result = inner.GetGridSize(&value);
    CheckException(__result);
    return value;
  }
  void GridSize(PRUint32 aGridSize){
    nsresult __result = inner.SetGridSize(aGridSize);
    CheckException(__result);
  }

  /**
   * returns the deepest absolutely positioned container of the selection
   * if it exists or null.
   */
  /* readonly attribute nsIDOMElement absolutelyPositionedSelectionContainer; */
  nsIDOMElementD  AbsolutelyPositionedSelectionContainer(){
    nsIDOMElement value;
    nsresult __result = inner.GetAbsolutelyPositionedSelectionContainer(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }

  /**
   * extracts the selection from the normal flow of the document and
   * positions it.
   * @param aEnabled [IN] true to absolutely position the selection,
   *                      false to put it back in the normal flow
   */
  /* void absolutePositionSelection (in boolean aEnabled); */
  void AbsolutePositionSelection(PRBool aEnabled){
    nsresult __result = inner.AbsolutePositionSelection(aEnabled);
    CheckException(__result);
  }

  /**
   * adds aChange to the z-index of the currently positioned element.
   * @param aChange [IN] relative change to apply to current z-index
   */
  /* void relativeChangeZIndex (in long aChange); */
  void RelativeChangeZIndex(PRInt32 aChange){
    nsresult __result = inner.RelativeChangeZIndex(aChange);
    CheckException(__result);
  }

  /**
   * extracts an element from the normal flow of the document and
   * positions it, and puts it back in the normal flow.
   * @param aElement [IN] the element
   * @param aEnabled [IN] true to absolutely position the element,
   *                      false to put it back in the normal flow
   */
  /* void absolutelyPositionElement (in nsIDOMElement aElement, in boolean aEnabled); */
  void AbsolutelyPositionElement(nsIDOMElementD aElement, PRBool aEnabled){
    nsresult __result = inner.AbsolutelyPositionElement(aElement ? cast(nsIDOMElement)aElement : null, aEnabled);
    CheckException(__result);
  }

  /**
   * sets the position of an element; warning it does NOT check if the
   * element is already positioned or not and that's on purpose.
   * @param aElement [IN] the element
   * @param aX       [IN] the x position in pixels.
   * @param aY       [IN] the y position in pixels.
   */
  /* void setElementPosition (in nsIDOMElement aElement, in long aX, in long aY); */
  void SetElementPosition(nsIDOMElementD aElement, PRInt32 aX, PRInt32 aY){
    nsresult __result = inner.SetElementPosition(aElement ? cast(nsIDOMElement)aElement : null, aX, aY);
    CheckException(__result);
  }

  /**
   * returns the absolute z-index of a positioned element. Never returns 'auto'.
   * @return         the z-index of the element
   * @param aElement [IN] the element.
   */
  /* long getElementZIndex (in nsIDOMElement aElement); */
  PRInt32 GetElementZIndex(nsIDOMElementD aElement){
    PRInt32 _retval;
    nsresult __result = inner.GetElementZIndex(aElement ? cast(nsIDOMElement)aElement : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * sets the z-index of an element.
   * @param aElement [IN] the element
   * @param aZorder  [IN] the z-index
   */
  /* void setElementZIndex (in nsIDOMElement aElement, in long aZorder); */
  void SetElementZIndex(nsIDOMElementD aElement, PRInt32 aZorder){
    nsresult __result = inner.SetElementZIndex(aElement ? cast(nsIDOMElement)aElement : null, aZorder);
    CheckException(__result);
  }

  /**
   * adds aChange to the z-index of an arbitrary element.
   * @return         the new z-index of the element
   * @param aElement [IN] the element
   * @param aChange  [IN] relative change to apply to current z-index of
   *                      the element
   */
  /* long relativeChangeElementZIndex (in nsIDOMElement aElement, in long aChange); */
  PRInt32 RelativeChangeElementZIndex(nsIDOMElementD aElement, PRInt32 aChange){
    PRInt32 _retval;
    nsresult __result = inner.RelativeChangeElementZIndex(aElement ? cast(nsIDOMElement)aElement : null, aChange, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * shows a grabber attached to an arbitrary element. The grabber is an image
   * positioned on the left hand side of the top border of the element. Dragging
   * and dropping it allows to change the element's absolute position in the
   * document. See chrome://editor/content/images/grabber.gif
   * @param aElement [IN] the element
   */
  /* void showGrabberOnElement (in nsIDOMElement aElement); */
  void ShowGrabberOnElement(nsIDOMElementD aElement){
    nsresult __result = inner.ShowGrabberOnElement(aElement ? cast(nsIDOMElement)aElement : null);
    CheckException(__result);
  }

  /**
   * hide the grabber if it shown.
   */
  /* void hideGrabber (); */
  void HideGrabber(){
    nsresult __result = inner.HideGrabber();
    CheckException(__result);
  }

  /**
   * refreshes the grabber if it shown, possibly updating its position or
   * even hiding it.
   */
  /* void refreshGrabber (); */
  void RefreshGrabber(){
    nsresult __result = inner.RefreshGrabber();
    CheckException(__result);
  }

private:
  nsIHTMLAbsPosEditor inner;

}

