/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGLocatable.idl
 */

module mozilla.xpcom.nsIDOMSVGLocatable;


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


public import mozilla.xpcom.nsIDOMSVGRect; /* forward declaration */

public import mozilla.xpcom.nsIDOMSVGMatrix; /* forward declaration */

public import mozilla.xpcom.nsIDOMSVGElement; /* forward declaration */


/* starting interface:    nsIDOMSVGLocatable */
const char[] NS_IDOMSVGLOCATABLE_IID_STR = "9cf4fc9c-90b2-4d66-88f5-35049b558aee";

const nsIID NS_IDOMSVGLOCATABLE_IID= 
  {0x9cf4fc9c, 0x90b2, 0x4d66, 
    [ 0x88, 0xf5, 0x35, 0x04, 0x9b, 0x55, 0x8a, 0xee ]};

extern(Windows)
interface nsIDOMSVGLocatable : nsISupports {
  static const char[] IID_STR = NS_IDOMSVGLOCATABLE_IID_STR;
  static const nsIID IID = NS_IDOMSVGLOCATABLE_IID;

  /* readonly attribute nsIDOMSVGElement nearestViewportElement; */
  nsresult GetNearestViewportElement(nsIDOMSVGElement  *aNearestViewportElement);

  /* readonly attribute nsIDOMSVGElement farthestViewportElement; */
  nsresult GetFarthestViewportElement(nsIDOMSVGElement  *aFarthestViewportElement);

  /* nsIDOMSVGRect getBBox (); */
  nsresult GetBBox(nsIDOMSVGRect *_retval);

  /* nsIDOMSVGMatrix getCTM (); */
  nsresult GetCTM(nsIDOMSVGMatrix *_retval);

  /* nsIDOMSVGMatrix getScreenCTM (); */
  nsresult GetScreenCTM(nsIDOMSVGMatrix *_retval);

  /* nsIDOMSVGMatrix getTransformToElement (in nsIDOMSVGElement element); */
  nsresult GetTransformToElement(nsIDOMSVGElement element, nsIDOMSVGMatrix *_retval);

}

