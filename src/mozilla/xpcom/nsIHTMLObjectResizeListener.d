/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIHTMLObjectResizeListener.idl
 */

module mozilla.xpcom.nsIHTMLObjectResizeListener;


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



/* starting interface:    nsIHTMLObjectResizeListener */
const char[] NS_IHTMLOBJECTRESIZELISTENER_IID_STR = "27b00295-349c-429f-ad0c-87b859e77130";

const nsIID NS_IHTMLOBJECTRESIZELISTENER_IID= 
  {0x27b00295, 0x349c, 0x429f, 
    [ 0xad, 0x0c, 0x87, 0xb8, 0x59, 0xe7, 0x71, 0x30 ]};

extern(Windows)
interface nsIHTMLObjectResizeListener : nsISupports {
  static const char[] IID_STR = NS_IHTMLOBJECTRESIZELISTENER_IID_STR;
  static const nsIID IID = NS_IHTMLOBJECTRESIZELISTENER_IID;

  /**
   * Listener's callback called by the editor when the user
   * starts resizing an element
   * @param aElement [IN] the element
   */
  /* void onStartResizing (in nsIDOMElement aElement); */
  nsresult OnStartResizing(nsIDOMElement aElement);

  /**
   * Listener's callback called by the editor when the user
   * has finalized the resizing of an element
   * @param aElement [IN] the element that was resized
   * @param aOldWidth  [IN] the width of the element before resizing
   * @param aOldHeight [IN] the height of the element before resizing
   * @param aNewWidth  [IN] the width of the element after resizing
   * @param aNewHeight [IN] the height of the element after resizing
   */
  /* void onEndResizing (in nsIDOMElement aElement, in long aOldWidth, in long aOldHeight, in long aNewWidth, in long aNewHeight); */
  nsresult OnEndResizing(nsIDOMElement aElement, PRInt32 aOldWidth, PRInt32 aOldHeight, PRInt32 aNewWidth, PRInt32 aNewHeight);

}

