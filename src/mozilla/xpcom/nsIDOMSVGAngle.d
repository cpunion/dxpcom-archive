/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGAngle.idl
 */

module mozilla.xpcom.nsIDOMSVGAngle;


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



/* starting interface:    nsIDOMSVGAngle */
const char[] NS_IDOMSVGANGLE_IID_STR = "58b6190e-37b3-412a-ba02-1d5ad6c6ea7c";

const nsIID NS_IDOMSVGANGLE_IID= 
  {0x58b6190e, 0x37b3, 0x412a, 
    [ 0xba, 0x02, 0x1d, 0x5a, 0xd6, 0xc6, 0xea, 0x7c ]};

/**
 * The nsIDOMSVGAngle interface is the interface to an SVG angle.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/SVG11/types.html#InterfaceSVGAngle
 *
 */
extern(Windows)
interface nsIDOMSVGAngle : nsISupports {
  static const char[] IID_STR = NS_IDOMSVGANGLE_IID_STR;
  static const nsIID IID = NS_IDOMSVGANGLE_IID;

  enum { SVG_ANGLETYPE_UNKNOWN = 0U };

  enum { SVG_ANGLETYPE_UNSPECIFIED = 1U };

  enum { SVG_ANGLETYPE_DEG = 2U };

  enum { SVG_ANGLETYPE_RAD = 3U };

  enum { SVG_ANGLETYPE_GRAD = 4U };

  /* readonly attribute unsigned short unitType; */
  nsresult GetUnitType(PRUint16 *aUnitType);

  /* attribute float value; */
  nsresult GetValue(float *aValue);
  nsresult SetValue(float aValue);

  /* attribute float valueInSpecifiedUnits; */
  nsresult GetValueInSpecifiedUnits(float *aValueInSpecifiedUnits);
  nsresult SetValueInSpecifiedUnits(float aValueInSpecifiedUnits);

  /* attribute DOMString valueAsString; */
  nsresult GetValueAsString(nsAString * aValueAsString);
  nsresult SetValueAsString(nsAString * aValueAsString);

  /* void newValueSpecifiedUnits (in unsigned short unitType, in float valueInSpecifiedUnits); */
  nsresult NewValueSpecifiedUnits(PRUint16 unitType, float valueInSpecifiedUnits);

  /* void convertToSpecifiedUnits (in unsigned short unitType); */
  nsresult ConvertToSpecifiedUnits(PRUint16 unitType);

}

