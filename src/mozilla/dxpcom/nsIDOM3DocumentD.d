/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOM3Document.idl
 */

module mozilla.dxpcom.nsIDOM3DocumentD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOM3Document;


public import mozilla.dxpcom.nsIDOM3DocumentD;

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

public import mozilla.xpcom.nsIDOM3Node;
public import mozilla.dxpcom.nsIDOM3NodeD;

public import mozilla.xpcom.nsIDOMDOMConfiguration;

public import mozilla.dxpcom.nsIDOMDOMConfigurationD;


/* starting wrapper class:    nsIDOM3Document */
/**
 * For more information on this interface, please see
 * http://www.w3.org/TR/DOM-Level-3-Core/
 */
class nsIDOM3DocumentD : public nsIDOM3NodeD {

  static const nsIID IID = NS_IDOM3DOCUMENT_IID;


  alias nsIDOM3Document InnerType;

  this(nsIDOM3Document intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOM3Document opCast() {
    return inner;
  }

  void opAssign(nsIDOM3Document value) {
    inner = value;
  }

  /* readonly attribute DOMString inputEncoding; */
  wchar[] InputEncoding(){
    scope auto value = new AString();
    nsresult __result = inner.GetInputEncoding(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute DOMString xmlEncoding; */
  wchar[] XmlEncoding(){
    scope auto value = new AString();
    nsresult __result = inner.GetXmlEncoding(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* attribute boolean xmlStandalone; */
  PRBool XmlStandalone(){
    PRBool value;
    nsresult __result = inner.GetXmlStandalone(&value);
    CheckException(__result);
    return value;
  }
  void XmlStandalone(PRBool aXmlStandalone){
    nsresult __result = inner.SetXmlStandalone(aXmlStandalone);
    CheckException(__result);
  }

  /* attribute DOMString xmlVersion; */
  wchar[] XmlVersion(){
    scope auto value = new AString();
    nsresult __result = inner.GetXmlVersion(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void XmlVersion(wchar[] aXmlVersion){
    scope auto value = new AString(aXmlVersion);
    nsresult __result = inner.SetXmlVersion(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute boolean strictErrorChecking; */
  PRBool StrictErrorChecking(){
    PRBool value;
    nsresult __result = inner.GetStrictErrorChecking(&value);
    CheckException(__result);
    return value;
  }
  void StrictErrorChecking(PRBool aStrictErrorChecking){
    nsresult __result = inner.SetStrictErrorChecking(aStrictErrorChecking);
    CheckException(__result);
  }

  /* attribute DOMString documentURI; */
  wchar[] DocumentURI(){
    scope auto value = new AString();
    nsresult __result = inner.GetDocumentURI(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void DocumentURI(wchar[] aDocumentURI){
    scope auto value = new AString(aDocumentURI);
    nsresult __result = inner.SetDocumentURI(cast(nsAString*)value);
    CheckException(__result);
  }

  /* nsIDOMNode adoptNode (in nsIDOMNode source)  raises (DOMException); */
  nsIDOMNodeD  AdoptNode(nsIDOMNodeD source){
    nsIDOMNode _retval;
    nsresult __result = inner.AdoptNode(source ? cast(nsIDOMNode)source : null, &_retval);
    CheckException(__result);
    return new nsIDOMNodeD(_retval);
  }

  /* readonly attribute nsIDOMDOMConfiguration domConfig; */
  nsIDOMDOMConfigurationD  DomConfig(){
    nsIDOMDOMConfiguration value;
    nsresult __result = inner.GetDomConfig(&value);
    CheckException(__result);
    return new nsIDOMDOMConfigurationD(value);
  }

  /* void normalizeDocument (); */
  void NormalizeDocument(){
    nsresult __result = inner.NormalizeDocument();
    CheckException(__result);
  }

  /* nsIDOMNode renameNode (in nsIDOMNode node, in DOMString namespaceURI, in DOMString qualifiedName)  raises (DOMException); */
  nsIDOMNodeD  RenameNode(nsIDOMNodeD node, wchar[] namespaceURI, wchar[] qualifiedName){
    scope auto _namespaceURI = new AString(namespaceURI);
    scope auto _qualifiedName = new AString(qualifiedName);
    nsIDOMNode _retval;
    nsresult __result = inner.RenameNode(node ? cast(nsIDOMNode)node : null, cast(nsAString*)_namespaceURI, cast(nsAString*)_qualifiedName, &_retval);
    CheckException(__result);
    return new nsIDOMNodeD(_retval);
  }

private:
  nsIDOM3Document inner;

}

