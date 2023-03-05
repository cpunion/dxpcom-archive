/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMNSHTMLInputElement.idl
 */

module mozilla.xpcom.nsIDOMNSHTMLInputElement;


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


public import mozilla.xpcom.nsIControllers; /* forward declaration */


/* starting interface:    nsIDOMNSHTMLInputElement */
const char[] NS_IDOMNSHTMLINPUTELEMENT_IID_STR = "993d2efc-a768-11d3-bccd-0060b0fc76bd";

const nsIID NS_IDOMNSHTMLINPUTELEMENT_IID= 
  {0x993d2efc, 0xa768, 0x11d3, 
    [ 0xbc, 0xcd, 0x00, 0x60, 0xb0, 0xfc, 0x76, 0xbd ]};

extern(Windows)
interface nsIDOMNSHTMLInputElement : nsISupports {
  static const char[] IID_STR = NS_IDOMNSHTMLINPUTELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMNSHTMLINPUTELEMENT_IID;

  /* readonly attribute nsIControllers controllers; */
  nsresult GetControllers(nsIControllers  *aControllers);

  /* readonly attribute long textLength; */
  nsresult GetTextLength(PRInt32 *aTextLength);

  /* attribute long selectionStart; */
  nsresult GetSelectionStart(PRInt32 *aSelectionStart);
  nsresult SetSelectionStart(PRInt32 aSelectionStart);

  /* attribute long selectionEnd; */
  nsresult GetSelectionEnd(PRInt32 *aSelectionEnd);
  nsresult SetSelectionEnd(PRInt32 aSelectionEnd);

  /* void setSelectionRange (in long selectionStart, in long selectionEnd); */
  nsresult SetSelectionRange(PRInt32 selectionStart, PRInt32 selectionEnd);

}

