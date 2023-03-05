/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOM3Node.idl
 */

module mozilla.xpcom.nsIDOM3Node;


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


public import mozilla.xpcom.nsIVariant; /* forward declaration */

public import mozilla.xpcom.nsIDOMUserDataHandler; /* forward declaration */


/* starting interface:    nsIDOM3Node */
const char[] NS_IDOM3NODE_IID_STR = "29fb2a18-1dd2-11b2-8dd9-a6fd5d5ad12f";

const nsIID NS_IDOM3NODE_IID= 
  {0x29fb2a18, 0x1dd2, 0x11b2, 
    [ 0x8d, 0xd9, 0xa6, 0xfd, 0x5d, 0x5a, 0xd1, 0x2f ]};

extern(Windows)
interface nsIDOM3Node : nsISupports {
  static const char[] IID_STR = NS_IDOM3NODE_IID_STR;
  static const nsIID IID = NS_IDOM3NODE_IID;

  /* readonly attribute DOMString baseURI; */
  nsresult GetBaseURI(nsAString * aBaseURI);

  enum { DOCUMENT_POSITION_DISCONNECTED = 1U };

  enum { DOCUMENT_POSITION_PRECEDING = 2U };

  enum { DOCUMENT_POSITION_FOLLOWING = 4U };

  enum { DOCUMENT_POSITION_CONTAINS = 8U };

  enum { DOCUMENT_POSITION_CONTAINED_BY = 16U };

  enum { DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC = 32U };

  /* unsigned short compareDocumentPosition (in nsIDOMNode other)  raises (DOMException); */
  nsresult CompareDocumentPosition(nsIDOMNode other, PRUint16 *_retval);

  /* attribute DOMString textContent; */
  nsresult GetTextContent(nsAString * aTextContent);
  nsresult SetTextContent(nsAString * aTextContent);

  /* boolean isSameNode (in nsIDOMNode other); */
  nsresult IsSameNode(nsIDOMNode other, PRBool *_retval);

  /* DOMString lookupPrefix (in DOMString namespaceURI); */
  nsresult LookupPrefix(nsAString * namespaceURI, nsAString * _retval);

  /* boolean isDefaultNamespace (in DOMString namespaceURI); */
  nsresult IsDefaultNamespace(nsAString * namespaceURI, PRBool *_retval);

  /* DOMString lookupNamespaceURI (in DOMString prefix); */
  nsresult LookupNamespaceURI(nsAString * prefix, nsAString * _retval);

  /* boolean isEqualNode (in nsIDOMNode arg); */
  nsresult IsEqualNode(nsIDOMNode arg, PRBool *_retval);

  /* nsISupports getFeature (in DOMString feature, in DOMString version); */
  nsresult GetFeature(nsAString * feature, nsAString * version_, nsISupports *_retval);

  /* nsIVariant setUserData (in DOMString key, in nsIVariant data, in nsIDOMUserDataHandler handler); */
  nsresult SetUserData(nsAString * key, nsIVariant data, nsIDOMUserDataHandler handler, nsIVariant *_retval);

  /* nsIVariant getUserData (in DOMString key); */
  nsresult GetUserData(nsAString * key, nsIVariant *_retval);

}

