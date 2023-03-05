/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGLength.idl
 */

module mozilla.xpcom.nsIDOMSVGLength;


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


public import mozilla.xpcom.nsIDOMSVGMatrix; /* forward declaration */


/* starting interface:    nsIDOMSVGLength */
const char[] NS_IDOMSVGLENGTH_IID_STR = "10231b04-7482-4960-bada-3dced0d586fc";

const nsIID NS_IDOMSVGLENGTH_IID= 
  {0x10231b04, 0x7482, 0x4960, 
    [ 0xba, 0xda, 0x3d, 0xce, 0xd0, 0xd5, 0x86, 0xfc ]};

extern(Windows)
interface nsIDOMSVGLength : nsISupports {
  static const char[] IID_STR = NS_IDOMSVGLENGTH_IID_STR;
  static const nsIID IID = NS_IDOMSVGLENGTH_IID;

  enum { SVG_LENGTHTYPE_UNKNOWN = 0U };

  enum { SVG_LENGTHTYPE_NUMBER = 1U };

  enum { SVG_LENGTHTYPE_PERCENTAGE = 2U };

  enum { SVG_LENGTHTYPE_EMS = 3U };

  enum { SVG_LENGTHTYPE_EXS = 4U };

  enum { SVG_LENGTHTYPE_PX = 5U };

  enum { SVG_LENGTHTYPE_CM = 6U };

  enum { SVG_LENGTHTYPE_MM = 7U };

  enum { SVG_LENGTHTYPE_IN = 8U };

  enum { SVG_LENGTHTYPE_PT = 9U };

  enum { SVG_LENGTHTYPE_PC = 10U };

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

  /* float getTransformedValue (in nsIDOMSVGMatrix matrix); */
  nsresult GetTransformedValue(nsIDOMSVGMatrix matrix, float *_retval);

}

