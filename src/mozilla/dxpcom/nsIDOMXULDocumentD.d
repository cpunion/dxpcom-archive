/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULDocument.idl
 */

module mozilla.dxpcom.nsIDOMXULDocumentD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMXULDocument;


public import mozilla.dxpcom.nsIDOMXULDocumentD;

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


public import mozilla.xpcom.nsIDOMXULCommandDispatcher;

public import mozilla.dxpcom.nsIDOMXULCommandDispatcherD;

public import mozilla.xpcom.nsIObserver;

public import mozilla.dxpcom.nsIObserverD;


/* starting wrapper class:    nsIDOMXULDocument */
class nsIDOMXULDocumentD : public nsISupportsD {

  static const nsIID IID = NS_IDOMXULDOCUMENT_IID;


  alias nsIDOMXULDocument InnerType;

  this(nsIDOMXULDocument intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMXULDocument opCast() {
    return inner;
  }

  void opAssign(nsIDOMXULDocument value) {
    inner = value;
  }

  /* attribute nsIDOMNode popupNode; */
  nsIDOMNodeD  PopupNode(){
    nsIDOMNode value;
    nsresult __result = inner.GetPopupNode(&value);
    CheckException(__result);
    return new nsIDOMNodeD(value);
  }
  void PopupNode(nsIDOMNodeD  aPopupNode){
    nsIDOMNode value;
    nsresult __result = inner.SetPopupNode(value);
    CheckException(__result);
  }

  /* attribute nsIDOMNode tooltipNode; */
  nsIDOMNodeD  TooltipNode(){
    nsIDOMNode value;
    nsresult __result = inner.GetTooltipNode(&value);
    CheckException(__result);
    return new nsIDOMNodeD(value);
  }
  void TooltipNode(nsIDOMNodeD  aTooltipNode){
    nsIDOMNode value;
    nsresult __result = inner.SetTooltipNode(value);
    CheckException(__result);
  }

  /* readonly attribute nsIDOMXULCommandDispatcher commandDispatcher; */
  nsIDOMXULCommandDispatcherD  CommandDispatcher(){
    nsIDOMXULCommandDispatcher value;
    nsresult __result = inner.GetCommandDispatcher(&value);
    CheckException(__result);
    return new nsIDOMXULCommandDispatcherD(value);
  }

  /* readonly attribute long width; */
  PRInt32 Width(){
    PRInt32 value;
    nsresult __result = inner.GetWidth(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long height; */
  PRInt32 Height(){
    PRInt32 value;
    nsresult __result = inner.GetHeight(&value);
    CheckException(__result);
    return value;
  }

  /* nsIDOMNodeList getElementsByAttribute (in DOMString name, in DOMString value); */
  nsIDOMNodeListD  GetElementsByAttribute(wchar[] name, wchar[] value){
    scope auto _name = new AString(name);
    scope auto _value = new AString(value);
    nsIDOMNodeList _retval;
    nsresult __result = inner.GetElementsByAttribute(cast(nsAString*)_name, cast(nsAString*)_value, &_retval);
    CheckException(__result);
    return new nsIDOMNodeListD(_retval);
  }

  /* void addBroadcastListenerFor (in nsIDOMElement broadcaster, in nsIDOMElement observer, in DOMString attr); */
  void AddBroadcastListenerFor(nsIDOMElementD broadcaster, nsIDOMElementD observer, wchar[] attr){
    scope auto _attr = new AString(attr);
    nsresult __result = inner.AddBroadcastListenerFor(broadcaster ? cast(nsIDOMElement)broadcaster : null, observer ? cast(nsIDOMElement)observer : null, cast(nsAString*)_attr);
    CheckException(__result);
  }

  /* void removeBroadcastListenerFor (in nsIDOMElement broadcaster, in nsIDOMElement observer, in DOMString attr); */
  void RemoveBroadcastListenerFor(nsIDOMElementD broadcaster, nsIDOMElementD observer, wchar[] attr){
    scope auto _attr = new AString(attr);
    nsresult __result = inner.RemoveBroadcastListenerFor(broadcaster ? cast(nsIDOMElement)broadcaster : null, observer ? cast(nsIDOMElement)observer : null, cast(nsAString*)_attr);
    CheckException(__result);
  }

  /* void persist (in DOMString id, in DOMString attr); */
  void Persist(wchar[] id, wchar[] attr){
    scope auto _id = new AString(id);
    scope auto _attr = new AString(attr);
    nsresult __result = inner.Persist(cast(nsAString*)_id, cast(nsAString*)_attr);
    CheckException(__result);
  }

  /**
   * Loads a XUL overlay and merges it with the current document, notifying an
   * observer when the merge is complete. 
   * @param   url
   *          The URL of the overlay to load and merge
   * @param   observer
   *          An object implementing nsIObserver that will be notified with a
   *          message of topic "xul-overlay-merged" when the merge is complete. 
   *          The subject parameter of |observe| will QI to a nsIURI - the URI 
   *          of the merged overlay. This parameter is optional and may be null.
   *
   * NOTICE:  In the 2.0 timeframe this API will change such that the 
   *          implementation will fire a DOMXULOverlayMerged event upon merge
   *          completion rather than notifying an observer. Do not rely on this
   *          API's behavior _not_ to change because it will!
   *          - Ben Goodger (8/23/2005)
   */
  /* void loadOverlay (in DOMString url, in nsIObserver aObserver); */
  void LoadOverlay(wchar[] url, nsIObserverD aObserver){
    scope auto _url = new AString(url);
    nsresult __result = inner.LoadOverlay(cast(nsAString*)_url, aObserver ? cast(nsIObserver)aObserver : null);
    CheckException(__result);
  }

private:
  nsIDOMXULDocument inner;

}


/* starting wrapper class:    nsIDOMXULDocument2 */
/**
 * This interface is a hack for bug 319434 since we have to preserve the
 * nsIDOMXULDocument interface on the branch. It provides non-scriptable
 * functions that don't do security checks to access the popup and tooltip
 * nodes.
 *
 * @status TEMPORARY
 */
class nsIDOMXULDocument2D : public nsIDOMXULDocumentD {

  static const nsIID IID = NS_IDOMXULDOCUMENT2_IID;


  alias nsIDOMXULDocument2 InnerType;

  this(nsIDOMXULDocument2 intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMXULDocument2 opCast() {
    return inner;
  }

  void opAssign(nsIDOMXULDocument2 value) {
    inner = value;
  }

  /* nsIDOMNode trustedGetPopupNode (); */
  nsIDOMNodeD  TrustedGetPopupNode(){
    nsIDOMNode _retval;
    nsresult __result = inner.TrustedGetPopupNode(&_retval);
    CheckException(__result);
    return new nsIDOMNodeD(_retval);
  }

  /* nsIDOMNode trustedGetTooltipNode (); */
  nsIDOMNodeD  TrustedGetTooltipNode(){
    nsIDOMNode _retval;
    nsresult __result = inner.TrustedGetTooltipNode(&_retval);
    CheckException(__result);
    return new nsIDOMNodeD(_retval);
  }

  /* attribute nsIDOMEvent trustedPopupEvent; */
  nsIDOMEventD  TrustedPopupEvent(){
    nsIDOMEvent value;
    nsresult __result = inner.GetTrustedPopupEvent(&value);
    CheckException(__result);
    return new nsIDOMEventD(value);
  }
  void TrustedPopupEvent(nsIDOMEventD  aTrustedPopupEvent){
    nsIDOMEvent value;
    nsresult __result = inner.SetTrustedPopupEvent(value);
    CheckException(__result);
  }

private:
  nsIDOMXULDocument2 inner;

}


/* starting wrapper class:    nsIDOMXULDocument_MOZILLA_1_8_BRANCH */
/**
 * This interface adds the popup event for the inline spell checker on brach,
 * because we can't change nsIDOMXULDoucument. We can't use nsIDOMXULDocument2
 * because it isn't scriptable.
 *
 * @status TEMPORARY
 */
class nsIDOMXULDocument_MOZILLA_1_8_BRANCHD : public nsISupportsD {

  static const nsIID IID = NS_IDOMXULDOCUMENT_MOZILLA_1_8_BRANCH_IID;


  alias nsIDOMXULDocument_MOZILLA_1_8_BRANCH InnerType;

  this(nsIDOMXULDocument_MOZILLA_1_8_BRANCH intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMXULDocument_MOZILLA_1_8_BRANCH opCast() {
    return inner;
  }

  void opAssign(nsIDOMXULDocument_MOZILLA_1_8_BRANCH value) {
    inner = value;
  }

  /**
   * These attributes correspond to trustedGetPopupNode().rangeOffset and
   * rangeParent. They will help you find where in the DOM the popup is
   * happening. Can be accessed from chrome only, and only during a popup
   * event. Accessing any other time will be an error.
   */
  /* readonly attribute nsIDOMNode popupRangeParent; */
  nsIDOMNodeD  PopupRangeParent(){
    nsIDOMNode value;
    nsresult __result = inner.GetPopupRangeParent(&value);
    CheckException(__result);
    return new nsIDOMNodeD(value);
  }

  /* readonly attribute long popupRangeOffset; */
  PRInt32 PopupRangeOffset(){
    PRInt32 value;
    nsresult __result = inner.GetPopupRangeOffset(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIDOMXULDocument_MOZILLA_1_8_BRANCH inner;

}

