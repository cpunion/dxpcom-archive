/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMCSSStyleDeclaration.idl
 */

module mozilla.xpcom.nsIDOMCSSStyleDeclaration;


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



/* starting interface:    nsIDOMCSSStyleDeclaration */
const char[] NS_IDOMCSSSTYLEDECLARATION_IID_STR = "a6cf90be-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMCSSSTYLEDECLARATION_IID= 
  {0xa6cf90be, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

extern(Windows)
interface nsIDOMCSSStyleDeclaration : nsISupports {
  static const char[] IID_STR = NS_IDOMCSSSTYLEDECLARATION_IID_STR;
  static const nsIID IID = NS_IDOMCSSSTYLEDECLARATION_IID;

  /**
 * The nsIDOMCSSStyleDeclaration interface is a datatype for a CSS
 * style declaration in the Document Object Model.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-Style
 *
 * @status FROZEN
 */
  /* attribute DOMString cssText; */
  nsresult GetCssText(nsAString * aCssText);
  nsresult SetCssText(nsAString * aCssText);

  /* DOMString getPropertyValue (in DOMString propertyName); */
  nsresult GetPropertyValue(nsAString * propertyName, nsAString * _retval);

  /* nsIDOMCSSValue getPropertyCSSValue (in DOMString propertyName); */
  nsresult GetPropertyCSSValue(nsAString * propertyName, nsIDOMCSSValue *_retval);

  /* DOMString removeProperty (in DOMString propertyName)  raises (DOMException); */
  nsresult RemoveProperty(nsAString * propertyName, nsAString * _retval);

  /* DOMString getPropertyPriority (in DOMString propertyName); */
  nsresult GetPropertyPriority(nsAString * propertyName, nsAString * _retval);

  /* void setProperty (in DOMString propertyName, in DOMString value, in DOMString priority)  raises (DOMException); */
  nsresult SetProperty(nsAString * propertyName, nsAString * value, nsAString * priority);

  /* readonly attribute unsigned long length; */
  nsresult GetLength(PRUint32 *aLength);

  /* DOMString item (in unsigned long index); */
  nsresult Item(PRUint32 index, nsAString * _retval);

  /* readonly attribute nsIDOMCSSRule parentRule; */
  nsresult GetParentRule(nsIDOMCSSRule  *aParentRule);

}

