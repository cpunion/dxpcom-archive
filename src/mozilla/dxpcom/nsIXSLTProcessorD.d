/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXSLTProcessor.idl
 */

module mozilla.dxpcom.nsIXSLTProcessorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXSLTProcessor;


public import mozilla.dxpcom.nsIXSLTProcessorD;

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


public import mozilla.xpcom.nsIVariant;

public import mozilla.dxpcom.nsIVariantD;


/* starting wrapper class:    nsIXSLTProcessor */
class nsIXSLTProcessorD : public nsISupportsD {

  static const nsIID IID = NS_IXSLTPROCESSOR_IID;


  alias nsIXSLTProcessor InnerType;

  this(nsIXSLTProcessor intr){
    super(intr);
    this.inner = intr;
  }

  nsIXSLTProcessor opCast() {
    return inner;
  }

  void opAssign(nsIXSLTProcessor value) {
    inner = value;
  }

  /**
     * Import the stylesheet into this XSLTProcessor for transformations.
     *
     * @param style The root-node of a XSLT stylesheet. This can be either
     *              a document node or an element node. If a document node
     *              then the document can contain either a XSLT stylesheet
     *              or a LRE stylesheet.
     *              If the argument is an element node it must be the
     *              xsl:stylesheet (or xsl:transform) element of an XSLT
     *              stylesheet.
     *
     * @exception nsIXSLTException
     */
  /* void importStylesheet (in nsIDOMNode style); */
  void ImportStylesheet(nsIDOMNodeD style){
    nsresult __result = inner.ImportStylesheet(style ? cast(nsIDOMNode)style : null);
    CheckException(__result);
  }

  /**
     * Transforms the node source applying the stylesheet given by
     * the importStylesheet() function. The owner document of the output node
     * owns the returned document fragment.
     *
     * @param source The node to be transformed
     * @param output This document is used to generate the output
     * @return DocumentFragment The result of the transformation
     *
     * @exception nsIXSLTException
     */
  /* nsIDOMDocumentFragment transformToFragment (in nsIDOMNode source, in nsIDOMDocument output); */
  nsIDOMDocumentFragmentD  TransformToFragment(nsIDOMNodeD source, nsIDOMDocumentD output){
    nsIDOMDocumentFragment _retval;
    nsresult __result = inner.TransformToFragment(source ? cast(nsIDOMNode)source : null, output ? cast(nsIDOMDocument)output : null, &_retval);
    CheckException(__result);
    return new nsIDOMDocumentFragmentD(_retval);
  }

  /**
     * Transforms the node source applying the stylesheet given by the
     * importStylesheet() function.
     *
     * @param source The node to be transformed
     * @return Document The result of the transformation
     *
     * @exception nsIXSLTException
     */
  /* nsIDOMDocument transformToDocument (in nsIDOMNode source); */
  nsIDOMDocumentD  TransformToDocument(nsIDOMNodeD source){
    nsIDOMDocument _retval;
    nsresult __result = inner.TransformToDocument(source ? cast(nsIDOMNode)source : null, &_retval);
    CheckException(__result);
    return new nsIDOMDocumentD(_retval);
  }

  /**
     * Sets a parameter to be used in subsequent transformations with this
     * nsIXSLTProcessor. If the parameter doesn't exist in the stylesheet the
     * parameter will be ignored.
     *
     * @param namespaceURI The namespaceURI of the XSLT parameter
     * @param localName    The local name of the XSLT parameter
     * @param value        The new value of the XSLT parameter
     *
     * @exception NS_ERROR_ILLEGAL_VALUE The datatype of value is
     *                                   not supported
     */
  /* void setParameter (in DOMString namespaceURI, in DOMString localName, in nsIVariant value); */
  void SetParameter(wchar[] namespaceURI, wchar[] localName, nsIVariantD value){
    scope auto _namespaceURI = new AString(namespaceURI);
    scope auto _localName = new AString(localName);
    nsresult __result = inner.SetParameter(cast(nsAString*)_namespaceURI, cast(nsAString*)_localName, value ? cast(nsIVariant)value : null);
    CheckException(__result);
  }

  /**
     * Gets a parameter if previously set by setParameter. Returns null
     * otherwise.
     *
     * @param namespaceURI The namespaceURI of the XSLT parameter
     * @param localName    The local name of the XSLT parameter
     * @return nsIVariant  The value of the XSLT parameter
     */
  /* nsIVariant getParameter (in DOMString namespaceURI, in DOMString localName); */
  nsIVariantD  GetParameter(wchar[] namespaceURI, wchar[] localName){
    scope auto _namespaceURI = new AString(namespaceURI);
    scope auto _localName = new AString(localName);
    nsIVariant _retval;
    nsresult __result = inner.GetParameter(cast(nsAString*)_namespaceURI, cast(nsAString*)_localName, &_retval);
    CheckException(__result);
    return new nsIVariantD(_retval);
  }

  /**
     * Removes a parameter, if set. This will make the processor use the
     * default-value for the parameter as specified in the stylesheet.
     *
     * @param namespaceURI The namespaceURI of the XSLT parameter
     * @param localName    The local name of the XSLT parameter
     */
  /* void removeParameter (in DOMString namespaceURI, in DOMString localName); */
  void RemoveParameter(wchar[] namespaceURI, wchar[] localName){
    scope auto _namespaceURI = new AString(namespaceURI);
    scope auto _localName = new AString(localName);
    nsresult __result = inner.RemoveParameter(cast(nsAString*)_namespaceURI, cast(nsAString*)_localName);
    CheckException(__result);
  }

  /**
     * Removes all set parameters from this nsIXSLTProcessor. This will make
     * the processor use the default-value for all parameters as specified in
     * the stylesheet.
     */
  /* void clearParameters (); */
  void ClearParameters(){
    nsresult __result = inner.ClearParameters();
    CheckException(__result);
  }

  /**
     * Remove all parameters and stylesheets from this nsIXSLTProcessor.
     */
  /* void reset (); */
  void Reset(){
    nsresult __result = inner.Reset();
    CheckException(__result);
  }

private:
  nsIXSLTProcessor inner;

}

