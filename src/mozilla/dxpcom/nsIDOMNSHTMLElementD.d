/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMNSHTMLElement.idl
 */

module mozilla.dxpcom.nsIDOMNSHTMLElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMNSHTMLElement;


public import mozilla.dxpcom.nsIDOMNSHTMLElementD;

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



/* starting wrapper class:    nsIDOMNSHTMLElement */
class nsIDOMNSHTMLElementD : public nsISupportsD {

  static const nsIID IID = NS_IDOMNSHTMLELEMENT_IID;


  alias nsIDOMNSHTMLElement InnerType;

  this(nsIDOMNSHTMLElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMNSHTMLElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMNSHTMLElement value) {
    inner = value;
  }

  /* readonly attribute long offsetTop; */
  PRInt32 OffsetTop(){
    PRInt32 value;
    nsresult __result = inner.GetOffsetTop(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long offsetLeft; */
  PRInt32 OffsetLeft(){
    PRInt32 value;
    nsresult __result = inner.GetOffsetLeft(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long offsetWidth; */
  PRInt32 OffsetWidth(){
    PRInt32 value;
    nsresult __result = inner.GetOffsetWidth(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long offsetHeight; */
  PRInt32 OffsetHeight(){
    PRInt32 value;
    nsresult __result = inner.GetOffsetHeight(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsIDOMElement offsetParent; */
  nsIDOMElementD  OffsetParent(){
    nsIDOMElement value;
    nsresult __result = inner.GetOffsetParent(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }

  /* attribute DOMString innerHTML; */
  wchar[] InnerHTML(){
    scope auto value = new AString();
    nsresult __result = inner.GetInnerHTML(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void InnerHTML(wchar[] aInnerHTML){
    scope auto value = new AString(aInnerHTML);
    nsresult __result = inner.SetInnerHTML(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute long scrollTop; */
  PRInt32 ScrollTop(){
    PRInt32 value;
    nsresult __result = inner.GetScrollTop(&value);
    CheckException(__result);
    return value;
  }
  void ScrollTop(PRInt32 aScrollTop){
    nsresult __result = inner.SetScrollTop(aScrollTop);
    CheckException(__result);
  }

  /* attribute long scrollLeft; */
  PRInt32 ScrollLeft(){
    PRInt32 value;
    nsresult __result = inner.GetScrollLeft(&value);
    CheckException(__result);
    return value;
  }
  void ScrollLeft(PRInt32 aScrollLeft){
    nsresult __result = inner.SetScrollLeft(aScrollLeft);
    CheckException(__result);
  }

  /* readonly attribute long scrollHeight; */
  PRInt32 ScrollHeight(){
    PRInt32 value;
    nsresult __result = inner.GetScrollHeight(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long scrollWidth; */
  PRInt32 ScrollWidth(){
    PRInt32 value;
    nsresult __result = inner.GetScrollWidth(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long clientHeight; */
  PRInt32 ClientHeight(){
    PRInt32 value;
    nsresult __result = inner.GetClientHeight(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long clientWidth; */
  PRInt32 ClientWidth(){
    PRInt32 value;
    nsresult __result = inner.GetClientWidth(&value);
    CheckException(__result);
    return value;
  }

  /* attribute long tabIndex; */
  PRInt32 TabIndex(){
    PRInt32 value;
    nsresult __result = inner.GetTabIndex(&value);
    CheckException(__result);
    return value;
  }
  void TabIndex(PRInt32 aTabIndex){
    nsresult __result = inner.SetTabIndex(aTabIndex);
    CheckException(__result);
  }

  /* void blur (); */
  void Blur(){
    nsresult __result = inner.Blur();
    CheckException(__result);
  }

  /* void focus (); */
  void Focus(){
    nsresult __result = inner.Focus();
    CheckException(__result);
  }

  /* void scrollIntoView (in boolean top); */
  void ScrollIntoView(PRBool top){
    nsresult __result = inner.ScrollIntoView(top);
    CheckException(__result);
  }

private:
  nsIDOMNSHTMLElement inner;

}


/* starting wrapper class:    nsIDOMNSHTMLElement_MOZILLA_1_8_BRANCH */
class nsIDOMNSHTMLElement_MOZILLA_1_8_BRANCHD : public nsIDOMNSHTMLElementD {

  static const nsIID IID = NS_IDOMNSHTMLELEMENT_MOZILLA_1_8_BRANCH_IID;


  alias nsIDOMNSHTMLElement_MOZILLA_1_8_BRANCH InnerType;

  this(nsIDOMNSHTMLElement_MOZILLA_1_8_BRANCH intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMNSHTMLElement_MOZILLA_1_8_BRANCH opCast() {
    return inner;
  }

  void opAssign(nsIDOMNSHTMLElement_MOZILLA_1_8_BRANCH value) {
    inner = value;
  }

  /* attribute boolean spellcheck; */
  PRBool Spellcheck(){
    PRBool value;
    nsresult __result = inner.GetSpellcheck(&value);
    CheckException(__result);
    return value;
  }
  void Spellcheck(PRBool aSpellcheck){
    nsresult __result = inner.SetSpellcheck(aSpellcheck);
    CheckException(__result);
  }

private:
  nsIDOMNSHTMLElement_MOZILLA_1_8_BRANCH inner;

}

