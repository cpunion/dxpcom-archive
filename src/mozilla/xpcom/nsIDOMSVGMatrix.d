/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGMatrix.idl
 */

module mozilla.xpcom.nsIDOMSVGMatrix;


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



/* starting interface:    nsIDOMSVGMatrix */
const char[] NS_IDOMSVGMATRIX_IID_STR = "ec2da3ef-5a99-49ed-aaef-b5af916c14ac";

const nsIID NS_IDOMSVGMATRIX_IID= 
  {0xec2da3ef, 0x5a99, 0x49ed, 
    [ 0xaa, 0xef, 0xb5, 0xaf, 0x91, 0x6c, 0x14, 0xac ]};

extern(Windows)
interface nsIDOMSVGMatrix : nsISupports {
  static const char[] IID_STR = NS_IDOMSVGMATRIX_IID_STR;
  static const nsIID IID = NS_IDOMSVGMATRIX_IID;

  /* attribute float a; */
  nsresult GetA(float *aA);
  nsresult SetA(float aA);

  /* attribute float b; */
  nsresult GetB(float *aB);
  nsresult SetB(float aB);

  /* attribute float c; */
  nsresult GetC(float *aC);
  nsresult SetC(float aC);

  /* attribute float d; */
  nsresult GetD(float *aD);
  nsresult SetD(float aD);

  /* attribute float e; */
  nsresult GetE(float *aE);
  nsresult SetE(float aE);

  /* attribute float f; */
  nsresult GetF(float *aF);
  nsresult SetF(float aF);

  /* nsIDOMSVGMatrix multiply (in nsIDOMSVGMatrix secondMatrix); */
  nsresult Multiply(nsIDOMSVGMatrix secondMatrix, nsIDOMSVGMatrix *_retval);

  /* nsIDOMSVGMatrix inverse (); */
  nsresult Inverse(nsIDOMSVGMatrix *_retval);

  /* nsIDOMSVGMatrix translate (in float x, in float y); */
  nsresult Translate(float x, float y, nsIDOMSVGMatrix *_retval);

  /* nsIDOMSVGMatrix scale (in float scaleFactor); */
  nsresult Scale(float scaleFactor, nsIDOMSVGMatrix *_retval);

  /* nsIDOMSVGMatrix scaleNonUniform (in float scaleFactorX, in float scaleFactorY); */
  nsresult ScaleNonUniform(float scaleFactorX, float scaleFactorY, nsIDOMSVGMatrix *_retval);

  /* nsIDOMSVGMatrix rotate (in float angle); */
  nsresult Rotate(float angle, nsIDOMSVGMatrix *_retval);

  /* nsIDOMSVGMatrix rotateFromVector (in float x, in float y); */
  nsresult RotateFromVector(float x, float y, nsIDOMSVGMatrix *_retval);

  /* nsIDOMSVGMatrix flipX (); */
  nsresult FlipX(nsIDOMSVGMatrix *_retval);

  /* nsIDOMSVGMatrix flipY (); */
  nsresult FlipY(nsIDOMSVGMatrix *_retval);

  /* nsIDOMSVGMatrix skewX (in float angle); */
  nsresult SkewX(float angle, nsIDOMSVGMatrix *_retval);

  /* nsIDOMSVGMatrix skewY (in float angle); */
  nsresult SkewY(float angle, nsIDOMSVGMatrix *_retval);

}

