/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMLSParser.idl
 */

module mozilla.dxpcom.nsIDOMLSParserD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMLSParser;


public import mozilla.dxpcom.nsIDOMLSParserD;

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


public import mozilla.xpcom.nsIDOMDOMConfiguration;

public import mozilla.dxpcom.nsIDOMDOMConfigurationD;

public import mozilla.xpcom.nsIDOMLSParserFilter;

public import mozilla.dxpcom.nsIDOMLSParserFilterD;

public import mozilla.xpcom.nsIDOMLSInput;

public import mozilla.dxpcom.nsIDOMLSInputD;


/* starting wrapper class:    nsIDOMLSParser */
class nsIDOMLSParserD : public nsISupportsD {

  static const nsIID IID = NS_IDOMLSPARSER_IID;


  alias nsIDOMLSParser InnerType;

  this(nsIDOMLSParser intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMLSParser opCast() {
    return inner;
  }

  void opAssign(nsIDOMLSParser value) {
    inner = value;
  }

  /* readonly attribute nsIDOMDOMConfiguration domConfig; */
  nsIDOMDOMConfigurationD  DomConfig(){
    nsIDOMDOMConfiguration value;
    nsresult __result = inner.GetDomConfig(&value);
    CheckException(__result);
    return new nsIDOMDOMConfigurationD(value);
  }

  /* attribute nsIDOMLSParserFilter filter; */
  nsIDOMLSParserFilterD  Filter(){
    nsIDOMLSParserFilter value;
    nsresult __result = inner.GetFilter(&value);
    CheckException(__result);
    return new nsIDOMLSParserFilterD(value);
  }
  void Filter(nsIDOMLSParserFilterD  aFilter){
    nsIDOMLSParserFilter value;
    nsresult __result = inner.SetFilter(value);
    CheckException(__result);
  }

  /* readonly attribute boolean async; */
  PRBool Async(){
    PRBool value;
    nsresult __result = inner.GetAsync(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean busy; */
  PRBool Busy(){
    PRBool value;
    nsresult __result = inner.GetBusy(&value);
    CheckException(__result);
    return value;
  }

  /* nsIDOMDocument parse (in nsIDOMLSInput input)  raises (DOMException, LSException); */
  nsIDOMDocumentD  Parse(nsIDOMLSInputD input){
    nsIDOMDocument _retval;
    nsresult __result = inner.Parse(input ? cast(nsIDOMLSInput)input : null, &_retval);
    CheckException(__result);
    return new nsIDOMDocumentD(_retval);
  }

  /* nsIDOMDocument parseURI (in DOMString uri)  raises (DOMException, LSException); */
  nsIDOMDocumentD  ParseURI(wchar[] uri){
    scope auto _uri = new AString(uri);
    nsIDOMDocument _retval;
    nsresult __result = inner.ParseURI(cast(nsAString*)_uri, &_retval);
    CheckException(__result);
    return new nsIDOMDocumentD(_retval);
  }

  enum { ACTION_APPEND_AS_CHILDREN = 1U }

  enum { ACTION_REPLACE_CHILDREN = 2U }

  enum { ACTION_INSERT_BEFORE = 3U }

  enum { ACTION_INSERT_AFTER = 4U }

  enum { ACTION_REPLACE = 5U }

  /* nsIDOMNode parseWithContext (in nsIDOMLSInput input, in nsIDOMNode contextArg, in unsigned short action)  raises (DOMException, LSException); */
  nsIDOMNodeD  ParseWithContext(nsIDOMLSInputD input, nsIDOMNodeD contextArg, PRUint16 action){
    nsIDOMNode _retval;
    nsresult __result = inner.ParseWithContext(input ? cast(nsIDOMLSInput)input : null, contextArg ? cast(nsIDOMNode)contextArg : null, action, &_retval);
    CheckException(__result);
    return new nsIDOMNodeD(_retval);
  }

  /* void abort (); */
  void Abort(){
    nsresult __result = inner.Abort();
    CheckException(__result);
  }

private:
  nsIDOMLSParser inner;

}

