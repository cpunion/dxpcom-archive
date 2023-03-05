/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXSLTProcessor.idl
 */

module mozilla.xpcom.nsIXSLTProcessor;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

alias PRUint64 DOMTimeStamp;

public import mozilla.xpcom.nsIDOMAttr; /* forward declaration */

public import mozilla.xpcom.nsIDOMCDATASection; /* forward declaration */

public import mozilla.xpcom.nsIDOMCharacterData; /* forward declaration */

public import mozilla.xpcom.nsIDOMComment; /* forward declaration */

public import mozilla.xpcom.nsIDOMDOMImplementation; /* forward declaration */
    
public import mozilla.xpcom.nsIDOMDocument; /* forward declaration */
    
public import mozilla.xpcom.nsIDOMDocumentFragment; /* forward declaration */

public import mozilla.xpcom.nsIDOMDocumentType; /* forward declaration */

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */

public import mozilla.xpcom.nsIDOMEntity; /* forward declaration */
    
public import mozilla.xpcom.nsIDOMEntityReference; /* forward declaration */

public import mozilla.xpcom.nsIDOMNSDocument; /* forward declaration */

public import mozilla.xpcom.nsIDOMNamedNodeMap; /* forward declaration */

public import mozilla.xpcom.nsIDOMNode; /* forward declaration */

public import mozilla.xpcom.nsIDOMNodeList; /* forward declaration */

public import mozilla.xpcom.nsIDOMNotation; /* forward declaration */

public import mozilla.xpcom.nsIDOMProcessingInstruction; /* forward declaration */

public import mozilla.xpcom.nsIDOMText; /* forward declaration */

public import mozilla.xpcom.nsIDOMDOMStringList; /* forward declaration */

public import mozilla.xpcom.nsIDOMNameList; /* forward declaration */

//public import mozilla.xpcom.DOMException; /* forward declaration */

//public import mozilla.xpcom.RangeException; /* forward declaration */

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


public import mozilla.xpcom.nsIVariant; /* forward declaration */


/* starting interface:    nsIXSLTProcessor */
const char[] NS_IXSLTPROCESSOR_IID_STR = "4a91aeb3-4100-43ee-a21e-9866268757c5";

const nsIID NS_IXSLTPROCESSOR_IID= 
  {0x4a91aeb3, 0x4100, 0x43ee, 
    [ 0xa2, 0x1e, 0x98, 0x66, 0x26, 0x87, 0x57, 0xc5 ]};

extern(Windows)
interface nsIXSLTProcessor : nsISupports {
  static const char[] IID_STR = NS_IXSLTPROCESSOR_IID_STR;
  static const nsIID IID = NS_IXSLTPROCESSOR_IID;

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
  nsresult ImportStylesheet(nsIDOMNode style);

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
  nsresult TransformToFragment(nsIDOMNode source, nsIDOMDocument output, nsIDOMDocumentFragment *_retval);

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
  nsresult TransformToDocument(nsIDOMNode source, nsIDOMDocument *_retval);

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
  nsresult SetParameter(nsAString * namespaceURI, nsAString * localName, nsIVariant value);

  /**
     * Gets a parameter if previously set by setParameter. Returns null
     * otherwise.
     *
     * @param namespaceURI The namespaceURI of the XSLT parameter
     * @param localName    The local name of the XSLT parameter
     * @return nsIVariant  The value of the XSLT parameter
     */
  /* nsIVariant getParameter (in DOMString namespaceURI, in DOMString localName); */
  nsresult GetParameter(nsAString * namespaceURI, nsAString * localName, nsIVariant *_retval);

  /**
     * Removes a parameter, if set. This will make the processor use the
     * default-value for the parameter as specified in the stylesheet.
     *
     * @param namespaceURI The namespaceURI of the XSLT parameter
     * @param localName    The local name of the XSLT parameter
     */
  /* void removeParameter (in DOMString namespaceURI, in DOMString localName); */
  nsresult RemoveParameter(nsAString * namespaceURI, nsAString * localName);

  /**
     * Removes all set parameters from this nsIXSLTProcessor. This will make
     * the processor use the default-value for all parameters as specified in
     * the stylesheet.
     */
  /* void clearParameters (); */
  nsresult ClearParameters();

  /**
     * Remove all parameters and stylesheets from this nsIXSLTProcessor.
     */
  /* void reset (); */
  nsresult Reset();

}

