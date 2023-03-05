/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOM3Document.idl
 */

module mozilla.xpcom.nsIDOM3Document;


public import mozilla.xpcom.nsrootidl;

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

public import mozilla.xpcom.nsIDOM3Node;

public import mozilla.xpcom.nsIDOMDOMConfiguration; /* forward declaration */


/* starting interface:    nsIDOM3Document */
const char[] NS_IDOM3DOCUMENT_IID_STR = "2e0e9ea1-72ab-4d9e-bdeb-ca64e1abeba4";

const nsIID NS_IDOM3DOCUMENT_IID= 
  {0x2e0e9ea1, 0x72ab, 0x4d9e, 
    [ 0xbd, 0xeb, 0xca, 0x64, 0xe1, 0xab, 0xeb, 0xa4 ]};

/**
 * For more information on this interface, please see
 * http://www.w3.org/TR/DOM-Level-3-Core/
 */
extern(Windows)
interface nsIDOM3Document : nsIDOM3Node {
  static const char[] IID_STR = NS_IDOM3DOCUMENT_IID_STR;
  static const nsIID IID = NS_IDOM3DOCUMENT_IID;

  /* readonly attribute DOMString inputEncoding; */
  nsresult GetInputEncoding(nsAString * aInputEncoding);

  /* readonly attribute DOMString xmlEncoding; */
  nsresult GetXmlEncoding(nsAString * aXmlEncoding);

  /* attribute boolean xmlStandalone; */
  nsresult GetXmlStandalone(PRBool *aXmlStandalone);
  nsresult SetXmlStandalone(PRBool aXmlStandalone);

  /* attribute DOMString xmlVersion; */
  nsresult GetXmlVersion(nsAString * aXmlVersion);
  nsresult SetXmlVersion(nsAString * aXmlVersion);

  /* attribute boolean strictErrorChecking; */
  nsresult GetStrictErrorChecking(PRBool *aStrictErrorChecking);
  nsresult SetStrictErrorChecking(PRBool aStrictErrorChecking);

  /* attribute DOMString documentURI; */
  nsresult GetDocumentURI(nsAString * aDocumentURI);
  nsresult SetDocumentURI(nsAString * aDocumentURI);

  /* nsIDOMNode adoptNode (in nsIDOMNode source)  raises (DOMException); */
  nsresult AdoptNode(nsIDOMNode source, nsIDOMNode *_retval);

  /* readonly attribute nsIDOMDOMConfiguration domConfig; */
  nsresult GetDomConfig(nsIDOMDOMConfiguration  *aDomConfig);

  /* void normalizeDocument (); */
  nsresult NormalizeDocument();

  /* nsIDOMNode renameNode (in nsIDOMNode node, in DOMString namespaceURI, in DOMString qualifiedName)  raises (DOMException); */
  nsresult RenameNode(nsIDOMNode node, nsAString * namespaceURI, nsAString * qualifiedName, nsIDOMNode *_retval);

}

