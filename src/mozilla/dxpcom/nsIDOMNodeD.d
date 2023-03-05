/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMNode.idl
 */

module mozilla.dxpcom.nsIDOMNodeD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMNode;


public import mozilla.dxpcom.nsIDOMNodeD;

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



/* starting wrapper class:    nsIDOMNode */
class nsIDOMNodeD : public nsISupportsD {

  static const nsIID IID = NS_IDOMNODE_IID;


  alias nsIDOMNode InnerType;

  this(nsIDOMNode intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMNode opCast() {
    return inner;
  }

  void opAssign(nsIDOMNode value) {
    inner = value;
  }

  /**
 * The nsIDOMNode interface is the primary datatype for the entire 
 * Document Object Model.
 * It represents a single node in the document tree.
 *
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Core/
 *
 * @status FROZEN
 */
  enum { ELEMENT_NODE = 1U }

  enum { ATTRIBUTE_NODE = 2U }

  enum { TEXT_NODE = 3U }

  enum { CDATA_SECTION_NODE = 4U }

  enum { ENTITY_REFERENCE_NODE = 5U }

  enum { ENTITY_NODE = 6U }

  enum { PROCESSING_INSTRUCTION_NODE = 7U }

  enum { COMMENT_NODE = 8U }

  enum { DOCUMENT_NODE = 9U }

  enum { DOCUMENT_TYPE_NODE = 10U }

  enum { DOCUMENT_FRAGMENT_NODE = 11U }

  enum { NOTATION_NODE = 12U }

  /* readonly attribute DOMString nodeName; */
  wchar[] NodeName(){
    scope auto value = new AString();
    nsresult __result = inner.GetNodeName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* attribute DOMString nodeValue; */
  wchar[] NodeValue(){
    scope auto value = new AString();
    nsresult __result = inner.GetNodeValue(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void NodeValue(wchar[] aNodeValue){
    scope auto value = new AString(aNodeValue);
    nsresult __result = inner.SetNodeValue(cast(nsAString*)value);
    CheckException(__result);
  }

  /* readonly attribute unsigned short nodeType; */
  PRUint16 NodeType(){
    PRUint16 value;
    nsresult __result = inner.GetNodeType(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsIDOMNode parentNode; */
  nsIDOMNodeD  ParentNode(){
    nsIDOMNode value;
    nsresult __result = inner.GetParentNode(&value);
    CheckException(__result);
    return new nsIDOMNodeD(value);
  }

  /* readonly attribute nsIDOMNodeList childNodes; */
  nsIDOMNodeListD  ChildNodes(){
    nsIDOMNodeList value;
    nsresult __result = inner.GetChildNodes(&value);
    CheckException(__result);
    return new nsIDOMNodeListD(value);
  }

  /* readonly attribute nsIDOMNode firstChild; */
  nsIDOMNodeD  FirstChild(){
    nsIDOMNode value;
    nsresult __result = inner.GetFirstChild(&value);
    CheckException(__result);
    return new nsIDOMNodeD(value);
  }

  /* readonly attribute nsIDOMNode lastChild; */
  nsIDOMNodeD  LastChild(){
    nsIDOMNode value;
    nsresult __result = inner.GetLastChild(&value);
    CheckException(__result);
    return new nsIDOMNodeD(value);
  }

  /* readonly attribute nsIDOMNode previousSibling; */
  nsIDOMNodeD  PreviousSibling(){
    nsIDOMNode value;
    nsresult __result = inner.GetPreviousSibling(&value);
    CheckException(__result);
    return new nsIDOMNodeD(value);
  }

  /* readonly attribute nsIDOMNode nextSibling; */
  nsIDOMNodeD  NextSibling(){
    nsIDOMNode value;
    nsresult __result = inner.GetNextSibling(&value);
    CheckException(__result);
    return new nsIDOMNodeD(value);
  }

  /* readonly attribute nsIDOMNamedNodeMap attributes; */
  nsIDOMNamedNodeMapD  Attributes(){
    nsIDOMNamedNodeMap value;
    nsresult __result = inner.GetAttributes(&value);
    CheckException(__result);
    return new nsIDOMNamedNodeMapD(value);
  }

  /* readonly attribute nsIDOMDocument ownerDocument; */
  nsIDOMDocumentD  OwnerDocument(){
    nsIDOMDocument value;
    nsresult __result = inner.GetOwnerDocument(&value);
    CheckException(__result);
    return new nsIDOMDocumentD(value);
  }

  /* nsIDOMNode insertBefore (in nsIDOMNode newChild, in nsIDOMNode refChild)  raises (DOMException); */
  nsIDOMNodeD  InsertBefore(nsIDOMNodeD newChild, nsIDOMNodeD refChild){
    nsIDOMNode _retval;
    nsresult __result = inner.InsertBefore(newChild ? cast(nsIDOMNode)newChild : null, refChild ? cast(nsIDOMNode)refChild : null, &_retval);
    CheckException(__result);
    return new nsIDOMNodeD(_retval);
  }

  /* nsIDOMNode replaceChild (in nsIDOMNode newChild, in nsIDOMNode oldChild)  raises (DOMException); */
  nsIDOMNodeD  ReplaceChild(nsIDOMNodeD newChild, nsIDOMNodeD oldChild){
    nsIDOMNode _retval;
    nsresult __result = inner.ReplaceChild(newChild ? cast(nsIDOMNode)newChild : null, oldChild ? cast(nsIDOMNode)oldChild : null, &_retval);
    CheckException(__result);
    return new nsIDOMNodeD(_retval);
  }

  /* nsIDOMNode removeChild (in nsIDOMNode oldChild)  raises (DOMException); */
  nsIDOMNodeD  RemoveChild(nsIDOMNodeD oldChild){
    nsIDOMNode _retval;
    nsresult __result = inner.RemoveChild(oldChild ? cast(nsIDOMNode)oldChild : null, &_retval);
    CheckException(__result);
    return new nsIDOMNodeD(_retval);
  }

  /* nsIDOMNode appendChild (in nsIDOMNode newChild)  raises (DOMException); */
  nsIDOMNodeD  AppendChild(nsIDOMNodeD newChild){
    nsIDOMNode _retval;
    nsresult __result = inner.AppendChild(newChild ? cast(nsIDOMNode)newChild : null, &_retval);
    CheckException(__result);
    return new nsIDOMNodeD(_retval);
  }

  /* boolean hasChildNodes (); */
  PRBool HasChildNodes(){
    PRBool _retval;
    nsresult __result = inner.HasChildNodes(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsIDOMNode cloneNode (in boolean deep); */
  nsIDOMNodeD  CloneNode(PRBool deep){
    nsIDOMNode _retval;
    nsresult __result = inner.CloneNode(deep, &_retval);
    CheckException(__result);
    return new nsIDOMNodeD(_retval);
  }

  /* void normalize (); */
  void Normalize(){
    nsresult __result = inner.Normalize();
    CheckException(__result);
  }

  /* boolean isSupported (in DOMString feature, in DOMString version); */
  PRBool IsSupported(wchar[] feature, wchar[] version_){
    scope auto _feature = new AString(feature);
    scope auto _version = new AString(version_);
    PRBool _retval;
    nsresult __result = inner.IsSupported(cast(nsAString*)_feature, cast(nsAString*)_version, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* readonly attribute DOMString namespaceURI; */
  wchar[] NamespaceURI(){
    scope auto value = new AString();
    nsresult __result = inner.GetNamespaceURI(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* attribute DOMString prefix; */
  wchar[] Prefix(){
    scope auto value = new AString();
    nsresult __result = inner.GetPrefix(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Prefix(wchar[] aPrefix){
    scope auto value = new AString(aPrefix);
    nsresult __result = inner.SetPrefix(cast(nsAString*)value);
    CheckException(__result);
  }

  /* readonly attribute DOMString localName; */
  wchar[] LocalName(){
    scope auto value = new AString();
    nsresult __result = inner.GetLocalName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* boolean hasAttributes (); */
  PRBool HasAttributes(){
    PRBool _retval;
    nsresult __result = inner.HasAttributes(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIDOMNode inner;

}

