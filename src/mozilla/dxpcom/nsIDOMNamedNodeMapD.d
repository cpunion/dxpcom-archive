/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMNamedNodeMap.idl
 */

module mozilla.dxpcom.nsIDOMNamedNodeMapD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMNamedNodeMap;


public import mozilla.dxpcom.nsIDOMNamedNodeMapD;

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



/* starting wrapper class:    nsIDOMNamedNodeMap */
class nsIDOMNamedNodeMapD : public nsISupportsD {

  static const nsIID IID = NS_IDOMNAMEDNODEMAP_IID;


  alias nsIDOMNamedNodeMap InnerType;

  this(nsIDOMNamedNodeMap intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMNamedNodeMap opCast() {
    return inner;
  }

  void opAssign(nsIDOMNamedNodeMap value) {
    inner = value;
  }

  /**
 * Objects implementing the nsIDOMNamedNodeMap interface are used to 
 * represent collections of nodes that can be accessed by name.
 *
 * For more information on this interface please see 
 * http://www.w3.org/TR/DOM-Level-2-Core/
 *
 * @status FROZEN
 */
  /* nsIDOMNode getNamedItem (in DOMString name); */
  nsIDOMNodeD  GetNamedItem(wchar[] name){
    scope auto _name = new AString(name);
    nsIDOMNode _retval;
    nsresult __result = inner.GetNamedItem(cast(nsAString*)_name, &_retval);
    CheckException(__result);
    return new nsIDOMNodeD(_retval);
  }

  /* nsIDOMNode setNamedItem (in nsIDOMNode arg)  raises (DOMException); */
  nsIDOMNodeD  SetNamedItem(nsIDOMNodeD arg){
    nsIDOMNode _retval;
    nsresult __result = inner.SetNamedItem(arg ? cast(nsIDOMNode)arg : null, &_retval);
    CheckException(__result);
    return new nsIDOMNodeD(_retval);
  }

  /* nsIDOMNode removeNamedItem (in DOMString name)  raises (DOMException); */
  nsIDOMNodeD  RemoveNamedItem(wchar[] name){
    scope auto _name = new AString(name);
    nsIDOMNode _retval;
    nsresult __result = inner.RemoveNamedItem(cast(nsAString*)_name, &_retval);
    CheckException(__result);
    return new nsIDOMNodeD(_retval);
  }

  /* nsIDOMNode item (in unsigned long index); */
  nsIDOMNodeD  Item(PRUint32 index){
    nsIDOMNode _retval;
    nsresult __result = inner.Item(index, &_retval);
    CheckException(__result);
    return new nsIDOMNodeD(_retval);
  }

  /* readonly attribute unsigned long length; */
  PRUint32 Length(){
    PRUint32 value;
    nsresult __result = inner.GetLength(&value);
    CheckException(__result);
    return value;
  }

  /* nsIDOMNode getNamedItemNS (in DOMString namespaceURI, in DOMString localName); */
  nsIDOMNodeD  GetNamedItemNS(wchar[] namespaceURI, wchar[] localName){
    scope auto _namespaceURI = new AString(namespaceURI);
    scope auto _localName = new AString(localName);
    nsIDOMNode _retval;
    nsresult __result = inner.GetNamedItemNS(cast(nsAString*)_namespaceURI, cast(nsAString*)_localName, &_retval);
    CheckException(__result);
    return new nsIDOMNodeD(_retval);
  }

  /* nsIDOMNode setNamedItemNS (in nsIDOMNode arg)  raises (DOMException); */
  nsIDOMNodeD  SetNamedItemNS(nsIDOMNodeD arg){
    nsIDOMNode _retval;
    nsresult __result = inner.SetNamedItemNS(arg ? cast(nsIDOMNode)arg : null, &_retval);
    CheckException(__result);
    return new nsIDOMNodeD(_retval);
  }

  /* nsIDOMNode removeNamedItemNS (in DOMString namespaceURI, in DOMString localName)  raises (DOMException); */
  nsIDOMNodeD  RemoveNamedItemNS(wchar[] namespaceURI, wchar[] localName){
    scope auto _namespaceURI = new AString(namespaceURI);
    scope auto _localName = new AString(localName);
    nsIDOMNode _retval;
    nsresult __result = inner.RemoveNamedItemNS(cast(nsAString*)_namespaceURI, cast(nsAString*)_localName, &_retval);
    CheckException(__result);
    return new nsIDOMNodeD(_retval);
  }

private:
  nsIDOMNamedNodeMap inner;

}

