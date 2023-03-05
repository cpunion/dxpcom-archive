/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMWindow.idl
 */

module mozilla.dxpcom.nsIDOMWindowD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMWindow;


public import mozilla.dxpcom.nsIDOMWindowD;

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


public import mozilla.xpcom.nsISelection;

public import mozilla.dxpcom.nsISelectionD;


/* starting wrapper class:    nsIDOMWindow */
class nsIDOMWindowD : public nsISupportsD {

  static const nsIID IID = NS_IDOMWINDOW_IID;


  alias nsIDOMWindow InnerType;

  this(nsIDOMWindow intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMWindow opCast() {
    return inner;
  }

  void opAssign(nsIDOMWindow value) {
    inner = value;
  }

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
  nsIDOMDocumentD  Document(){
    nsIDOMDocument value;
    nsresult __result = inner.GetDocument(&value);
    CheckException(__result);
    return new nsIDOMDocumentD(value);
  }

  /**
   * Accessor for this window's parent window, or the window itself if
   * there is no parent, or if the parent is of different type
   * (i.e. this does not cross chrome-content boundaries).
   */
  /* readonly attribute nsIDOMWindow parent; */
  nsIDOMWindowD  Parent(){
    nsIDOMWindow value;
    nsresult __result = inner.GetParent(&value);
    CheckException(__result);
    return new nsIDOMWindowD(value);
  }

  /**
   * Accessor for the root of this hierarchy of windows. This root may
   * be the window itself if there is no parent, or if the parent is
   * of different type (i.e. this does not cross chrome-content
   * boundaries).
   *
   * This property is "replaceable" in JavaScript */
  /* readonly attribute nsIDOMWindow top; */
  nsIDOMWindowD  Top(){
    nsIDOMWindow value;
    nsresult __result = inner.GetTop(&value);
    CheckException(__result);
    return new nsIDOMWindowD(value);
  }

  /**
   * Accessor for the object that controls whether or not scrollbars
   * are shown in this window.
   *
   * This attribute is "replaceable" in JavaScript
   */
  /* readonly attribute nsIDOMBarProp scrollbars; */
  nsIDOMBarPropD  Scrollbars(){
    nsIDOMBarProp value;
    nsresult __result = inner.GetScrollbars(&value);
    CheckException(__result);
    return new nsIDOMBarPropD(value);
  }

  /**
   * Accessor for the child windows in this window.
   */
  /* [noscript] readonly attribute nsIDOMWindowCollection frames; */
  nsIDOMWindowCollectionD  Frames(){
    nsIDOMWindowCollection value;
    nsresult __result = inner.GetFrames(&value);
    CheckException(__result);
    return new nsIDOMWindowCollectionD(value);
  }

  /**
   * Set/Get the name of this window.
   *
   * This attribute is "replaceable" in JavaScript
   */
  /* attribute DOMString name; */
  wchar[] Name(){
    scope auto value = new AString();
    nsresult __result = inner.GetName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Name(wchar[] aName){
    scope auto value = new AString(aName);
    nsresult __result = inner.SetName(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
   * Set/Get the document scale factor as a multiplier on the default
   * size. When setting this attribute, a NS_ERROR_NOT_IMPLEMENTED
   * error may be returned by implementations not supporting
   * zoom. Implementations not supporting zoom should return 1.0 all
   * the time for the Get operation. 1.0 is equals normal size,
   * i.e. no zoom.
   */
  /* [noscript] attribute float textZoom; */
  float TextZoom(){
    float value;
    nsresult __result = inner.GetTextZoom(&value);
    CheckException(__result);
    return value;
  }
  void TextZoom(float aTextZoom){
    nsresult __result = inner.SetTextZoom(aTextZoom);
    CheckException(__result);
  }

  /**
   * Accessor for the current x scroll position in this window in
   * pixels.
   *
   * This attribute is "replaceable" in JavaScript
   */
  /* readonly attribute long scrollX; */
  PRInt32 ScrollX(){
    PRInt32 value;
    nsresult __result = inner.GetScrollX(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Accessor for the current y scroll position in this window in
   * pixels.
   *
   * This attribute is "replaceable" in JavaScript
   */
  /* readonly attribute long scrollY; */
  PRInt32 ScrollY(){
    PRInt32 value;
    nsresult __result = inner.GetScrollY(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Method for scrolling this window to an absolute pixel offset.
   */
  /* void scrollTo (in long xScroll, in long yScroll); */
  void ScrollTo(PRInt32 xScroll, PRInt32 yScroll){
    nsresult __result = inner.ScrollTo(xScroll, yScroll);
    CheckException(__result);
  }

  /**
   * Method for scrolling this window to a pixel offset relative to
   * the current scroll position.
   */
  /* void scrollBy (in long xScrollDif, in long yScrollDif); */
  void ScrollBy(PRInt32 xScrollDif, PRInt32 yScrollDif){
    nsresult __result = inner.ScrollBy(xScrollDif, yScrollDif);
    CheckException(__result);
  }

  /**
   * Method for accessing this window's selection object.
   */
  /* nsISelection getSelection (); */
  nsISelectionD  GetSelection(){
    nsISelection _retval;
    nsresult __result = inner.GetSelection(&_retval);
    CheckException(__result);
    return new nsISelectionD(_retval);
  }

  /**
   * Method for scrolling this window by a number of lines.
   */
  /* void scrollByLines (in long numLines); */
  void ScrollByLines(PRInt32 numLines){
    nsresult __result = inner.ScrollByLines(numLines);
    CheckException(__result);
  }

  /**
   * Method for scrolling this window by a number of pages.
   */
  /* void scrollByPages (in long numPages); */
  void ScrollByPages(PRInt32 numPages){
    nsresult __result = inner.ScrollByPages(numPages);
    CheckException(__result);
  }

  /**
   * Method for sizing this window to the content in the window.
   */
  /* void sizeToContent (); */
  void SizeToContent(){
    nsresult __result = inner.SizeToContent();
    CheckException(__result);
  }

private:
  nsIDOMWindow inner;

}

