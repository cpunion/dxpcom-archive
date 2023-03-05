/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGNumberList.idl
 */

module mozilla.xpcom.nsIDOMSVGNumberList;


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


public import mozilla.xpcom.nsIDOMSVGNumber; /* forward declaration */


/* starting interface:    nsIDOMSVGNumberList */
const char[] NS_IDOMSVGNUMBERLIST_IID_STR = "59364ec4-faf1-460f-bf58-e6a6a2769a3a";

const nsIID NS_IDOMSVGNUMBERLIST_IID= 
  {0x59364ec4, 0xfaf1, 0x460f, 
    [ 0xbf, 0x58, 0xe6, 0xa6, 0xa2, 0x76, 0x9a, 0x3a ]};

extern(Windows)
interface nsIDOMSVGNumberList : nsISupports {
  static const char[] IID_STR = NS_IDOMSVGNUMBERLIST_IID_STR;
  static const nsIID IID = NS_IDOMSVGNUMBERLIST_IID;

  /* readonly attribute unsigned long numberOfItems; */
  nsresult GetNumberOfItems(PRUint32 *aNumberOfItems);

  /* void clear (); */
  nsresult Clear();

  /* nsIDOMSVGNumber initialize (in nsIDOMSVGNumber newItem); */
  nsresult Initialize(nsIDOMSVGNumber newItem, nsIDOMSVGNumber *_retval);

  /* nsIDOMSVGNumber getItem (in unsigned long index); */
  nsresult GetItem(PRUint32 index, nsIDOMSVGNumber *_retval);

  /* nsIDOMSVGNumber insertItemBefore (in nsIDOMSVGNumber newItem, in unsigned long index); */
  nsresult InsertItemBefore(nsIDOMSVGNumber newItem, PRUint32 index, nsIDOMSVGNumber *_retval);

  /* nsIDOMSVGNumber replaceItem (in nsIDOMSVGNumber newItem, in unsigned long index); */
  nsresult ReplaceItem(nsIDOMSVGNumber newItem, PRUint32 index, nsIDOMSVGNumber *_retval);

  /* nsIDOMSVGNumber removeItem (in unsigned long index); */
  nsresult RemoveItem(PRUint32 index, nsIDOMSVGNumber *_retval);

  /* nsIDOMSVGNumber appendItem (in nsIDOMSVGNumber newItem); */
  nsresult AppendItem(nsIDOMSVGNumber newItem, nsIDOMSVGNumber *_retval);

}

