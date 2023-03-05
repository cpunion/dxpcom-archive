/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXPathResult.idl
 */

module mozilla.dxpcom.nsIDOMXPathResultD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMXPathResult;


public import mozilla.dxpcom.nsIDOMXPathResultD;

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



/* starting wrapper class:    nsIDOMXPathResult */
class nsIDOMXPathResultD : public nsISupportsD {

  static const nsIID IID = NS_IDOMXPATHRESULT_IID;


  alias nsIDOMXPathResult InnerType;

  this(nsIDOMXPathResult intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMXPathResult opCast() {
    return inner;
  }

  void opAssign(nsIDOMXPathResult value) {
    inner = value;
  }

  enum { ANY_TYPE = 0U }

  enum { NUMBER_TYPE = 1U }

  enum { STRING_TYPE = 2U }

  enum { BOOLEAN_TYPE = 3U }

  enum { UNORDERED_NODE_ITERATOR_TYPE = 4U }

  enum { ORDERED_NODE_ITERATOR_TYPE = 5U }

  enum { UNORDERED_NODE_SNAPSHOT_TYPE = 6U }

  enum { ORDERED_NODE_SNAPSHOT_TYPE = 7U }

  enum { ANY_UNORDERED_NODE_TYPE = 8U }

  enum { FIRST_ORDERED_NODE_TYPE = 9U }

  /* readonly attribute unsigned short resultType; */
  PRUint16 ResultType(){
    PRUint16 value;
    nsresult __result = inner.GetResultType(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute double numberValue; */
  double NumberValue(){
    double value;
    nsresult __result = inner.GetNumberValue(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute DOMString stringValue; */
  wchar[] StringValue(){
    scope auto value = new AString();
    nsresult __result = inner.GetStringValue(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute boolean booleanValue; */
  PRBool BooleanValue(){
    PRBool value;
    nsresult __result = inner.GetBooleanValue(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsIDOMNode singleNodeValue; */
  nsIDOMNodeD  SingleNodeValue(){
    nsIDOMNode value;
    nsresult __result = inner.GetSingleNodeValue(&value);
    CheckException(__result);
    return new nsIDOMNodeD(value);
  }

  /* readonly attribute boolean invalidIteratorState; */
  PRBool InvalidIteratorState(){
    PRBool value;
    nsresult __result = inner.GetInvalidIteratorState(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute unsigned long snapshotLength; */
  PRUint32 SnapshotLength(){
    PRUint32 value;
    nsresult __result = inner.GetSnapshotLength(&value);
    CheckException(__result);
    return value;
  }

  /* nsIDOMNode iterateNext ()  raises (XPathException, DOMException); */
  nsIDOMNodeD  IterateNext(){
    nsIDOMNode _retval;
    nsresult __result = inner.IterateNext(&_retval);
    CheckException(__result);
    return new nsIDOMNodeD(_retval);
  }

  /* nsIDOMNode snapshotItem (in unsigned long index)  raises (XPathException); */
  nsIDOMNodeD  SnapshotItem(PRUint32 index){
    nsIDOMNode _retval;
    nsresult __result = inner.SnapshotItem(index, &_retval);
    CheckException(__result);
    return new nsIDOMNodeD(_retval);
  }

private:
  nsIDOMXPathResult inner;

}

