/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMNSHTMLElement.idl
 */

module mozilla.xpcom.nsIDOMNSHTMLElement;


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



/* starting interface:    nsIDOMNSHTMLElement */
const char[] NS_IDOMNSHTMLELEMENT_IID_STR = "da83b2ec-8264-4410-8496-ada3acd2ae42";

const nsIID NS_IDOMNSHTMLELEMENT_IID= 
  {0xda83b2ec, 0x8264, 0x4410, 
    [ 0x84, 0x96, 0xad, 0xa3, 0xac, 0xd2, 0xae, 0x42 ]};

extern(Windows)
interface nsIDOMNSHTMLElement : nsISupports {
  static const char[] IID_STR = NS_IDOMNSHTMLELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMNSHTMLELEMENT_IID;

  /* readonly attribute long offsetTop; */
  nsresult GetOffsetTop(PRInt32 *aOffsetTop);

  /* readonly attribute long offsetLeft; */
  nsresult GetOffsetLeft(PRInt32 *aOffsetLeft);

  /* readonly attribute long offsetWidth; */
  nsresult GetOffsetWidth(PRInt32 *aOffsetWidth);

  /* readonly attribute long offsetHeight; */
  nsresult GetOffsetHeight(PRInt32 *aOffsetHeight);

  /* readonly attribute nsIDOMElement offsetParent; */
  nsresult GetOffsetParent(nsIDOMElement  *aOffsetParent);

  /* attribute DOMString innerHTML; */
  nsresult GetInnerHTML(nsAString * aInnerHTML);
  nsresult SetInnerHTML(nsAString * aInnerHTML);

  /* attribute long scrollTop; */
  nsresult GetScrollTop(PRInt32 *aScrollTop);
  nsresult SetScrollTop(PRInt32 aScrollTop);

  /* attribute long scrollLeft; */
  nsresult GetScrollLeft(PRInt32 *aScrollLeft);
  nsresult SetScrollLeft(PRInt32 aScrollLeft);

  /* readonly attribute long scrollHeight; */
  nsresult GetScrollHeight(PRInt32 *aScrollHeight);

  /* readonly attribute long scrollWidth; */
  nsresult GetScrollWidth(PRInt32 *aScrollWidth);

  /* readonly attribute long clientHeight; */
  nsresult GetClientHeight(PRInt32 *aClientHeight);

  /* readonly attribute long clientWidth; */
  nsresult GetClientWidth(PRInt32 *aClientWidth);

  /* attribute long tabIndex; */
  nsresult GetTabIndex(PRInt32 *aTabIndex);
  nsresult SetTabIndex(PRInt32 aTabIndex);

  /* void blur (); */
  nsresult Blur();

  /* void focus (); */
  nsresult Focus();

  /* void scrollIntoView (in boolean top); */
  nsresult ScrollIntoView(PRBool top);

}


/* starting interface:    nsIDOMNSHTMLElement_MOZILLA_1_8_BRANCH */
const char[] NS_IDOMNSHTMLELEMENT_MOZILLA_1_8_BRANCH_IID_STR = "91fdb05e-f1af-4857-a604-45448bc02471";

const nsIID NS_IDOMNSHTMLELEMENT_MOZILLA_1_8_BRANCH_IID= 
  {0x91fdb05e, 0xf1af, 0x4857, 
    [ 0xa6, 0x04, 0x45, 0x44, 0x8b, 0xc0, 0x24, 0x71 ]};

extern(Windows)
interface nsIDOMNSHTMLElement_MOZILLA_1_8_BRANCH : nsIDOMNSHTMLElement {
  static const char[] IID_STR = NS_IDOMNSHTMLELEMENT_MOZILLA_1_8_BRANCH_IID_STR;
  static const nsIID IID = NS_IDOMNSHTMLELEMENT_MOZILLA_1_8_BRANCH_IID;

  /* attribute boolean spellcheck; */
  nsresult GetSpellcheck(PRBool *aSpellcheck);
  nsresult SetSpellcheck(PRBool aSpellcheck);

}

