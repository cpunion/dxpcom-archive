/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGTransform.idl
 */

module mozilla.xpcom.nsIDOMSVGTransform;


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


/* starting interface:    nsIDOMSVGTransform */
const char[] NS_IDOMSVGTRANSFORM_IID_STR = "29cc2e14-6d18-4710-bda9-a88d9d3bc8dc";

const nsIID NS_IDOMSVGTRANSFORM_IID= 
  {0x29cc2e14, 0x6d18, 0x4710, 
    [ 0xbd, 0xa9, 0xa8, 0x8d, 0x9d, 0x3b, 0xc8, 0xdc ]};

extern(Windows)
interface nsIDOMSVGTransform : nsISupports {
  static const char[] IID_STR = NS_IDOMSVGTRANSFORM_IID_STR;
  static const nsIID IID = NS_IDOMSVGTRANSFORM_IID;

  enum { SVG_TRANSFORM_UNKNOWN = 0U };

  enum { SVG_TRANSFORM_MATRIX = 1U };

  enum { SVG_TRANSFORM_TRANSLATE = 2U };

  enum { SVG_TRANSFORM_SCALE = 3U };

  enum { SVG_TRANSFORM_ROTATE = 4U };

  enum { SVG_TRANSFORM_SKEWX = 5U };

  enum { SVG_TRANSFORM_SKEWY = 6U };

  /* readonly attribute unsigned short type; */
  nsresult GetType(PRUint16 *aType);

  /* readonly attribute nsIDOMSVGMatrix matrix; */
  nsresult GetMatrix(nsIDOMSVGMatrix  *aMatrix);

  /* readonly attribute float angle; */
  nsresult GetAngle(float *aAngle);

  /* void setMatrix (in nsIDOMSVGMatrix matrix); */
  nsresult SetMatrix(nsIDOMSVGMatrix matrix);

  /* void setTranslate (in float tx, in float ty); */
  nsresult SetTranslate(float tx, float ty);

  /* void setScale (in float sx, in float sy); */
  nsresult SetScale(float sx, float sy);

  /* void setRotate (in float angle, in float cx, in float cy); */
  nsresult SetRotate(float angle, float cx, float cy);

  /* void setSkewX (in float angle); */
  nsresult SetSkewX(float angle);

  /* void setSkewY (in float angle); */
  nsresult SetSkewY(float angle);

}

