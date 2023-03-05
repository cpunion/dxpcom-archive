/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMNode.idl
 */

module mozilla.xpcom.nsIDOMNode;


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



/* starting interface:    nsIDOMNode */
const char[] NS_IDOMNODE_IID_STR = "a6cf907c-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMNODE_IID= 
  {0xa6cf907c, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

extern(Windows)
interface nsIDOMNode : nsISupports {
  static const char[] IID_STR = NS_IDOMNODE_IID_STR;
  static const nsIID IID = NS_IDOMNODE_IID;

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
  enum { ELEMENT_NODE = 1U };

  enum { ATTRIBUTE_NODE = 2U };

  enum { TEXT_NODE = 3U };

  enum { CDATA_SECTION_NODE = 4U };

  enum { ENTITY_REFERENCE_NODE = 5U };

  enum { ENTITY_NODE = 6U };

  enum { PROCESSING_INSTRUCTION_NODE = 7U };

  enum { COMMENT_NODE = 8U };

  enum { DOCUMENT_NODE = 9U };

  enum { DOCUMENT_TYPE_NODE = 10U };

  enum { DOCUMENT_FRAGMENT_NODE = 11U };

  enum { NOTATION_NODE = 12U };

  /* readonly attribute DOMString nodeName; */
  nsresult GetNodeName(nsAString * aNodeName);

  /* attribute DOMString nodeValue; */
  nsresult GetNodeValue(nsAString * aNodeValue);
  nsresult SetNodeValue(nsAString * aNodeValue);

  /* readonly attribute unsigned short nodeType; */
  nsresult GetNodeType(PRUint16 *aNodeType);

  /* readonly attribute nsIDOMNode parentNode; */
  nsresult GetParentNode(nsIDOMNode  *aParentNode);

  /* readonly attribute nsIDOMNodeList childNodes; */
  nsresult GetChildNodes(nsIDOMNodeList  *aChildNodes);

  /* readonly attribute nsIDOMNode firstChild; */
  nsresult GetFirstChild(nsIDOMNode  *aFirstChild);

  /* readonly attribute nsIDOMNode lastChild; */
  nsresult GetLastChild(nsIDOMNode  *aLastChild);

  /* readonly attribute nsIDOMNode previousSibling; */
  nsresult GetPreviousSibling(nsIDOMNode  *aPreviousSibling);

  /* readonly attribute nsIDOMNode nextSibling; */
  nsresult GetNextSibling(nsIDOMNode  *aNextSibling);

  /* readonly attribute nsIDOMNamedNodeMap attributes; */
  nsresult GetAttributes(nsIDOMNamedNodeMap  *aAttributes);

  /* readonly attribute nsIDOMDocument ownerDocument; */
  nsresult GetOwnerDocument(nsIDOMDocument  *aOwnerDocument);

  /* nsIDOMNode insertBefore (in nsIDOMNode newChild, in nsIDOMNode refChild)  raises (DOMException); */
  nsresult InsertBefore(nsIDOMNode newChild, nsIDOMNode refChild, nsIDOMNode *_retval);

  /* nsIDOMNode replaceChild (in nsIDOMNode newChild, in nsIDOMNode oldChild)  raises (DOMException); */
  nsresult ReplaceChild(nsIDOMNode newChild, nsIDOMNode oldChild, nsIDOMNode *_retval);

  /* nsIDOMNode removeChild (in nsIDOMNode oldChild)  raises (DOMException); */
  nsresult RemoveChild(nsIDOMNode oldChild, nsIDOMNode *_retval);

  /* nsIDOMNode appendChild (in nsIDOMNode newChild)  raises (DOMException); */
  nsresult AppendChild(nsIDOMNode newChild, nsIDOMNode *_retval);

  /* boolean hasChildNodes (); */
  nsresult HasChildNodes(PRBool *_retval);

  /* nsIDOMNode cloneNode (in boolean deep); */
  nsresult CloneNode(PRBool deep, nsIDOMNode *_retval);

  /* void normalize (); */
  nsresult Normalize();

  /* boolean isSupported (in DOMString feature, in DOMString version); */
  nsresult IsSupported(nsAString * feature, nsAString * version_, PRBool *_retval);

  /* readonly attribute DOMString namespaceURI; */
  nsresult GetNamespaceURI(nsAString * aNamespaceURI);

  /* attribute DOMString prefix; */
  nsresult GetPrefix(nsAString * aPrefix);
  nsresult SetPrefix(nsAString * aPrefix);

  /* readonly attribute DOMString localName; */
  nsresult GetLocalName(nsAString * aLocalName);

  /* boolean hasAttributes (); */
  nsresult HasAttributes(PRBool *_retval);

}

