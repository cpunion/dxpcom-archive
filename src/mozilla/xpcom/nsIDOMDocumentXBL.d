/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMDocumentXBL.idl
 */

module mozilla.xpcom.nsIDOMDocumentXBL;


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



/* starting interface:    nsIDOMDocumentXBL */
const char[] NS_IDOMDOCUMENTXBL_IID_STR = "c7c0ae9b-a0ba-4f4e-9f2c-c18deb62ee8b";

const nsIID NS_IDOMDOCUMENTXBL_IID= 
  {0xc7c0ae9b, 0xa0ba, 0x4f4e, 
    [ 0x9f, 0x2c, 0xc1, 0x8d, 0xeb, 0x62, 0xee, 0x8b ]};

extern(Windows)
interface nsIDOMDocumentXBL : nsISupports {
  static const char[] IID_STR = NS_IDOMDOCUMENTXBL_IID_STR;
  static const nsIID IID = NS_IDOMDOCUMENTXBL_IID;

  /* nsIDOMNodeList getAnonymousNodes (in nsIDOMElement elt); */
  nsresult GetAnonymousNodes(nsIDOMElement elt, nsIDOMNodeList *_retval);

  /* nsIDOMElement getAnonymousElementByAttribute (in nsIDOMElement elt, in DOMString attrName, in DOMString attrValue); */
  nsresult GetAnonymousElementByAttribute(nsIDOMElement elt, nsAString * attrName, nsAString * attrValue, nsIDOMElement *_retval);

  /* void addBinding (in nsIDOMElement elt, in DOMString bindingURL); */
  nsresult AddBinding(nsIDOMElement elt, nsAString * bindingURL);

  /* void removeBinding (in nsIDOMElement elt, in DOMString bindingURL); */
  nsresult RemoveBinding(nsIDOMElement elt, nsAString * bindingURL);

  /* nsIDOMElement getBindingParent (in nsIDOMNode node); */
  nsresult GetBindingParent(nsIDOMNode node, nsIDOMElement *_retval);

  /* nsIDOMDocument loadBindingDocument (in DOMString documentURL); */
  nsresult LoadBindingDocument(nsAString * documentURL, nsIDOMDocument *_retval);

}

