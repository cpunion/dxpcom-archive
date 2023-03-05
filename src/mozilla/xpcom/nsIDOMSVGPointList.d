/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGPointList.idl
 */

module mozilla.xpcom.nsIDOMSVGPointList;


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


public import mozilla.xpcom.nsIDOMSVGPoint; /* forward declaration */


/* starting interface:    nsIDOMSVGPointList */
const char[] NS_IDOMSVGPOINTLIST_IID_STR = "4c12af24-0fc2-4fe7-b71d-5d6b41d463c1";

const nsIID NS_IDOMSVGPOINTLIST_IID= 
  {0x4c12af24, 0x0fc2, 0x4fe7, 
    [ 0xb7, 0x1d, 0x5d, 0x6b, 0x41, 0xd4, 0x63, 0xc1 ]};

extern(Windows)
interface nsIDOMSVGPointList : nsISupports {
  static const char[] IID_STR = NS_IDOMSVGPOINTLIST_IID_STR;
  static const nsIID IID = NS_IDOMSVGPOINTLIST_IID;

  /* readonly attribute unsigned long numberOfItems; */
  nsresult GetNumberOfItems(PRUint32 *aNumberOfItems);

  /* void clear (); */
  nsresult Clear();

  /* nsIDOMSVGPoint initialize (in nsIDOMSVGPoint newItem); */
  nsresult Initialize(nsIDOMSVGPoint newItem, nsIDOMSVGPoint *_retval);

  /* nsIDOMSVGPoint getItem (in unsigned long index); */
  nsresult GetItem(PRUint32 index, nsIDOMSVGPoint *_retval);

  /* nsIDOMSVGPoint insertItemBefore (in nsIDOMSVGPoint newItem, in unsigned long index); */
  nsresult InsertItemBefore(nsIDOMSVGPoint newItem, PRUint32 index, nsIDOMSVGPoint *_retval);

  /* nsIDOMSVGPoint replaceItem (in nsIDOMSVGPoint newItem, in unsigned long index); */
  nsresult ReplaceItem(nsIDOMSVGPoint newItem, PRUint32 index, nsIDOMSVGPoint *_retval);

  /* nsIDOMSVGPoint removeItem (in unsigned long index); */
  nsresult RemoveItem(PRUint32 index, nsIDOMSVGPoint *_retval);

  /* nsIDOMSVGPoint appendItem (in nsIDOMSVGPoint newItem); */
  nsresult AppendItem(nsIDOMSVGPoint newItem, nsIDOMSVGPoint *_retval);

}

