/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMRange.idl
 */

module mozilla.dxpcom.nsIDOMRangeD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMRange;


public import mozilla.dxpcom.nsIDOMRangeD;

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



/* starting wrapper class:    nsIDOMRange */
class nsIDOMRangeD : public nsISupportsD {

  static const nsIID IID = NS_IDOMRANGE_IID;


  alias nsIDOMRange InnerType;

  this(nsIDOMRange intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMRange opCast() {
    return inner;
  }

  void opAssign(nsIDOMRange value) {
    inner = value;
  }

  /**
 * The nsIDOMRange interface is an interface to a DOM range object.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-Traversal-Range/
 *
 * @status FROZEN
 */
  /* readonly attribute nsIDOMNode startContainer; */
  nsIDOMNodeD  StartContainer(){
    nsIDOMNode value;
    nsresult __result = inner.GetStartContainer(&value);
    CheckException(__result);
    return new nsIDOMNodeD(value);
  }

  /* readonly attribute long startOffset; */
  PRInt32 StartOffset(){
    PRInt32 value;
    nsresult __result = inner.GetStartOffset(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsIDOMNode endContainer; */
  nsIDOMNodeD  EndContainer(){
    nsIDOMNode value;
    nsresult __result = inner.GetEndContainer(&value);
    CheckException(__result);
    return new nsIDOMNodeD(value);
  }

  /* readonly attribute long endOffset; */
  PRInt32 EndOffset(){
    PRInt32 value;
    nsresult __result = inner.GetEndOffset(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean collapsed; */
  PRBool Collapsed(){
    PRBool value;
    nsresult __result = inner.GetCollapsed(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsIDOMNode commonAncestorContainer; */
  nsIDOMNodeD  CommonAncestorContainer(){
    nsIDOMNode value;
    nsresult __result = inner.GetCommonAncestorContainer(&value);
    CheckException(__result);
    return new nsIDOMNodeD(value);
  }

  /* void setStart (in nsIDOMNode refNode, in long offset)  raises (RangeException, DOMException); */
  void SetStart(nsIDOMNodeD refNode, PRInt32 offset){
    nsresult __result = inner.SetStart(refNode ? cast(nsIDOMNode)refNode : null, offset);
    CheckException(__result);
  }

  /* void setEnd (in nsIDOMNode refNode, in long offset)  raises (RangeException, DOMException); */
  void SetEnd(nsIDOMNodeD refNode, PRInt32 offset){
    nsresult __result = inner.SetEnd(refNode ? cast(nsIDOMNode)refNode : null, offset);
    CheckException(__result);
  }

  /* void setStartBefore (in nsIDOMNode refNode)  raises (RangeException, DOMException); */
  void SetStartBefore(nsIDOMNodeD refNode){
    nsresult __result = inner.SetStartBefore(refNode ? cast(nsIDOMNode)refNode : null);
    CheckException(__result);
  }

  /* void setStartAfter (in nsIDOMNode refNode)  raises (RangeException, DOMException); */
  void SetStartAfter(nsIDOMNodeD refNode){
    nsresult __result = inner.SetStartAfter(refNode ? cast(nsIDOMNode)refNode : null);
    CheckException(__result);
  }

  /* void setEndBefore (in nsIDOMNode refNode)  raises (RangeException, DOMException); */
  void SetEndBefore(nsIDOMNodeD refNode){
    nsresult __result = inner.SetEndBefore(refNode ? cast(nsIDOMNode)refNode : null);
    CheckException(__result);
  }

  /* void setEndAfter (in nsIDOMNode refNode)  raises (RangeException, DOMException); */
  void SetEndAfter(nsIDOMNodeD refNode){
    nsresult __result = inner.SetEndAfter(refNode ? cast(nsIDOMNode)refNode : null);
    CheckException(__result);
  }

  /* void collapse (in boolean toStart)  raises (DOMException); */
  void Collapse(PRBool toStart){
    nsresult __result = inner.Collapse(toStart);
    CheckException(__result);
  }

  /* void selectNode (in nsIDOMNode refNode)  raises (RangeException, DOMException); */
  void SelectNode(nsIDOMNodeD refNode){
    nsresult __result = inner.SelectNode(refNode ? cast(nsIDOMNode)refNode : null);
    CheckException(__result);
  }

  /* void selectNodeContents (in nsIDOMNode refNode)  raises (RangeException, DOMException); */
  void SelectNodeContents(nsIDOMNodeD refNode){
    nsresult __result = inner.SelectNodeContents(refNode ? cast(nsIDOMNode)refNode : null);
    CheckException(__result);
  }

  enum { START_TO_START = 0U }

  enum { START_TO_END = 1U }

  enum { END_TO_END = 2U }

  enum { END_TO_START = 3U }

  /* short compareBoundaryPoints (in unsigned short how, in nsIDOMRange sourceRange)  raises (DOMException); */
  PRInt16 CompareBoundaryPoints(PRUint16 how, nsIDOMRangeD sourceRange){
    PRInt16 _retval;
    nsresult __result = inner.CompareBoundaryPoints(how, sourceRange ? cast(nsIDOMRange)sourceRange : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void deleteContents ()  raises (DOMException); */
  void DeleteContents(){
    nsresult __result = inner.DeleteContents();
    CheckException(__result);
  }

  /* nsIDOMDocumentFragment extractContents ()  raises (DOMException); */
  nsIDOMDocumentFragmentD  ExtractContents(){
    nsIDOMDocumentFragment _retval;
    nsresult __result = inner.ExtractContents(&_retval);
    CheckException(__result);
    return new nsIDOMDocumentFragmentD(_retval);
  }

  /* nsIDOMDocumentFragment cloneContents ()  raises (DOMException); */
  nsIDOMDocumentFragmentD  CloneContents(){
    nsIDOMDocumentFragment _retval;
    nsresult __result = inner.CloneContents(&_retval);
    CheckException(__result);
    return new nsIDOMDocumentFragmentD(_retval);
  }

  /* void insertNode (in nsIDOMNode newNode)  raises (DOMException, RangeException); */
  void InsertNode(nsIDOMNodeD newNode){
    nsresult __result = inner.InsertNode(newNode ? cast(nsIDOMNode)newNode : null);
    CheckException(__result);
  }

  /* void surroundContents (in nsIDOMNode newParent)  raises (DOMException, RangeException); */
  void SurroundContents(nsIDOMNodeD newParent){
    nsresult __result = inner.SurroundContents(newParent ? cast(nsIDOMNode)newParent : null);
    CheckException(__result);
  }

  /* nsIDOMRange cloneRange ()  raises (DOMException); */
  nsIDOMRangeD  CloneRange(){
    nsIDOMRange _retval;
    nsresult __result = inner.CloneRange(&_retval);
    CheckException(__result);
    return new nsIDOMRangeD(_retval);
  }

  /* DOMString toString ()  raises (DOMException); */
  wchar[] ToString(){
    scope auto _retval = new AString;
    nsresult __result = inner.ToString(cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* void detach ()  raises (DOMException); */
  void Detach(){
    nsresult __result = inner.Detach();
    CheckException(__result);
  }

private:
  nsIDOMRange inner;

}

