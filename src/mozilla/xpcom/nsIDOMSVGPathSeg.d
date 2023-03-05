/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGPathSeg.idl
 */

module mozilla.xpcom.nsIDOMSVGPathSeg;


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



/* starting interface:    nsIDOMSVGPathSeg */
const char[] NS_IDOMSVGPATHSEG_IID_STR = "b9022da7-e26d-4df3-8c94-b45c4aedda7c";

const nsIID NS_IDOMSVGPATHSEG_IID= 
  {0xb9022da7, 0xe26d, 0x4df3, 
    [ 0x8c, 0x94, 0xb4, 0x5c, 0x4a, 0xed, 0xda, 0x7c ]};

extern(Windows)
interface nsIDOMSVGPathSeg : nsISupports {
  static const char[] IID_STR = NS_IDOMSVGPATHSEG_IID_STR;
  static const nsIID IID = NS_IDOMSVGPATHSEG_IID;

  enum { PATHSEG_UNKNOWN = 0U };

  enum { PATHSEG_CLOSEPATH = 1U };

  enum { PATHSEG_MOVETO_ABS = 2U };

  enum { PATHSEG_MOVETO_REL = 3U };

  enum { PATHSEG_LINETO_ABS = 4U };

  enum { PATHSEG_LINETO_REL = 5U };

  enum { PATHSEG_CURVETO_CUBIC_ABS = 6U };

  enum { PATHSEG_CURVETO_CUBIC_REL = 7U };

  enum { PATHSEG_CURVETO_QUADRATIC_ABS = 8U };

  enum { PATHSEG_CURVETO_QUADRATIC_REL = 9U };

  enum { PATHSEG_ARC_ABS = 10U };

  enum { PATHSEG_ARC_REL = 11U };

  enum { PATHSEG_LINETO_HORIZONTAL_ABS = 12U };

  enum { PATHSEG_LINETO_HORIZONTAL_REL = 13U };

  enum { PATHSEG_LINETO_VERTICAL_ABS = 14U };

  enum { PATHSEG_LINETO_VERTICAL_REL = 15U };

  enum { PATHSEG_CURVETO_CUBIC_SMOOTH_ABS = 16U };

  enum { PATHSEG_CURVETO_CUBIC_SMOOTH_REL = 17U };

  enum { PATHSEG_CURVETO_QUADRATIC_SMOOTH_ABS = 18U };

  enum { PATHSEG_CURVETO_QUADRATIC_SMOOTH_REL = 19U };

  /* readonly attribute unsigned short pathSegType; */
  nsresult GetPathSegType(PRUint16 *aPathSegType);

  /* readonly attribute DOMString pathSegTypeAsLetter; */
  nsresult GetPathSegTypeAsLetter(nsAString * aPathSegTypeAsLetter);

}


/* starting interface:    nsIDOMSVGPathSegClosePath */
const char[] NS_IDOMSVGPATHSEGCLOSEPATH_IID_STR = "2b72d033-f115-45aa-9748-8c11ea07b845";

const nsIID NS_IDOMSVGPATHSEGCLOSEPATH_IID= 
  {0x2b72d033, 0xf115, 0x45aa, 
    [ 0x97, 0x48, 0x8c, 0x11, 0xea, 0x07, 0xb8, 0x45 ]};

extern(Windows)
interface nsIDOMSVGPathSegClosePath : nsIDOMSVGPathSeg {
  static const char[] IID_STR = NS_IDOMSVGPATHSEGCLOSEPATH_IID_STR;
  static const nsIID IID = NS_IDOMSVGPATHSEGCLOSEPATH_IID;

}


/* starting interface:    nsIDOMSVGPathSegMovetoAbs */
const char[] NS_IDOMSVGPATHSEGMOVETOABS_IID_STR = "b0106d01-9746-440b-b067-68ee043dabc3";

const nsIID NS_IDOMSVGPATHSEGMOVETOABS_IID= 
  {0xb0106d01, 0x9746, 0x440b, 
    [ 0xb0, 0x67, 0x68, 0xee, 0x04, 0x3d, 0xab, 0xc3 ]};

extern(Windows)
interface nsIDOMSVGPathSegMovetoAbs : nsIDOMSVGPathSeg {
  static const char[] IID_STR = NS_IDOMSVGPATHSEGMOVETOABS_IID_STR;
  static const nsIID IID = NS_IDOMSVGPATHSEGMOVETOABS_IID;

  /* attribute float x; */
  nsresult GetX(float *aX);
  nsresult SetX(float aX);

  /* attribute float y; */
  nsresult GetY(float *aY);
  nsresult SetY(float aY);

}


/* starting interface:    nsIDOMSVGPathSegMovetoRel */
const char[] NS_IDOMSVGPATHSEGMOVETOREL_IID_STR = "c6ee1ddd-8b35-4e1b-b381-c063a28012d9";

const nsIID NS_IDOMSVGPATHSEGMOVETOREL_IID= 
  {0xc6ee1ddd, 0x8b35, 0x4e1b, 
    [ 0xb3, 0x81, 0xc0, 0x63, 0xa2, 0x80, 0x12, 0xd9 ]};

extern(Windows)
interface nsIDOMSVGPathSegMovetoRel : nsIDOMSVGPathSeg {
  static const char[] IID_STR = NS_IDOMSVGPATHSEGMOVETOREL_IID_STR;
  static const nsIID IID = NS_IDOMSVGPATHSEGMOVETOREL_IID;

  /* attribute float x; */
  nsresult GetX(float *aX);
  nsresult SetX(float aX);

  /* attribute float y; */
  nsresult GetY(float *aY);
  nsresult SetY(float aY);

}


/* starting interface:    nsIDOMSVGPathSegLinetoAbs */
const char[] NS_IDOMSVGPATHSEGLINETOABS_IID_STR = "bac3648d-55a3-491b-9863-a18fd7506689";

const nsIID NS_IDOMSVGPATHSEGLINETOABS_IID= 
  {0xbac3648d, 0x55a3, 0x491b, 
    [ 0x98, 0x63, 0xa1, 0x8f, 0xd7, 0x50, 0x66, 0x89 ]};

extern(Windows)
interface nsIDOMSVGPathSegLinetoAbs : nsIDOMSVGPathSeg {
  static const char[] IID_STR = NS_IDOMSVGPATHSEGLINETOABS_IID_STR;
  static const nsIID IID = NS_IDOMSVGPATHSEGLINETOABS_IID;

  /* attribute float x; */
  nsresult GetX(float *aX);
  nsresult SetX(float aX);

  /* attribute float y; */
  nsresult GetY(float *aY);
  nsresult SetY(float aY);

}


/* starting interface:    nsIDOMSVGPathSegLinetoRel */
const char[] NS_IDOMSVGPATHSEGLINETOREL_IID_STR = "3294d20e-c707-4e59-a625-bde93fc0b25f";

const nsIID NS_IDOMSVGPATHSEGLINETOREL_IID= 
  {0x3294d20e, 0xc707, 0x4e59, 
    [ 0xa6, 0x25, 0xbd, 0xe9, 0x3f, 0xc0, 0xb2, 0x5f ]};

extern(Windows)
interface nsIDOMSVGPathSegLinetoRel : nsIDOMSVGPathSeg {
  static const char[] IID_STR = NS_IDOMSVGPATHSEGLINETOREL_IID_STR;
  static const nsIID IID = NS_IDOMSVGPATHSEGLINETOREL_IID;

  /* attribute float x; */
  nsresult GetX(float *aX);
  nsresult SetX(float aX);

  /* attribute float y; */
  nsresult GetY(float *aY);
  nsresult SetY(float aY);

}


/* starting interface:    nsIDOMSVGPathSegCurvetoCubicAbs */
const char[] NS_IDOMSVGPATHSEGCURVETOCUBICABS_IID_STR = "ad929b96-ef81-4002-b596-c6a8b3a878e9";

const nsIID NS_IDOMSVGPATHSEGCURVETOCUBICABS_IID= 
  {0xad929b96, 0xef81, 0x4002, 
    [ 0xb5, 0x96, 0xc6, 0xa8, 0xb3, 0xa8, 0x78, 0xe9 ]};

extern(Windows)
interface nsIDOMSVGPathSegCurvetoCubicAbs : nsIDOMSVGPathSeg {
  static const char[] IID_STR = NS_IDOMSVGPATHSEGCURVETOCUBICABS_IID_STR;
  static const nsIID IID = NS_IDOMSVGPATHSEGCURVETOCUBICABS_IID;

  /* attribute float x; */
  nsresult GetX(float *aX);
  nsresult SetX(float aX);

  /* attribute float y; */
  nsresult GetY(float *aY);
  nsresult SetY(float aY);

  /* attribute float x1; */
  nsresult GetX1(float *aX1);
  nsresult SetX1(float aX1);

  /* attribute float y1; */
  nsresult GetY1(float *aY1);
  nsresult SetY1(float aY1);

  /* attribute float x2; */
  nsresult GetX2(float *aX2);
  nsresult SetX2(float aX2);

  /* attribute float y2; */
  nsresult GetY2(float *aY2);
  nsresult SetY2(float aY2);

}


/* starting interface:    nsIDOMSVGPathSegCurvetoCubicRel */
const char[] NS_IDOMSVGPATHSEGCURVETOCUBICREL_IID_STR = "dc7ba13f-8cb6-48d2-9e22-a4a6817abbb9";

const nsIID NS_IDOMSVGPATHSEGCURVETOCUBICREL_IID= 
  {0xdc7ba13f, 0x8cb6, 0x48d2, 
    [ 0x9e, 0x22, 0xa4, 0xa6, 0x81, 0x7a, 0xbb, 0xb9 ]};

extern(Windows)
interface nsIDOMSVGPathSegCurvetoCubicRel : nsIDOMSVGPathSeg {
  static const char[] IID_STR = NS_IDOMSVGPATHSEGCURVETOCUBICREL_IID_STR;
  static const nsIID IID = NS_IDOMSVGPATHSEGCURVETOCUBICREL_IID;

  /* attribute float x; */
  nsresult GetX(float *aX);
  nsresult SetX(float aX);

  /* attribute float y; */
  nsresult GetY(float *aY);
  nsresult SetY(float aY);

  /* attribute float x1; */
  nsresult GetX1(float *aX1);
  nsresult SetX1(float aX1);

  /* attribute float y1; */
  nsresult GetY1(float *aY1);
  nsresult SetY1(float aY1);

  /* attribute float x2; */
  nsresult GetX2(float *aX2);
  nsresult SetX2(float aX2);

  /* attribute float y2; */
  nsresult GetY2(float *aY2);
  nsresult SetY2(float aY2);

}


/* starting interface:    nsIDOMSVGPathSegCurvetoQuadraticAbs */
const char[] NS_IDOMSVGPATHSEGCURVETOQUADRATICABS_IID_STR = "ec4e8f65-5f4a-495e-a5f2-00e18d5e5f96";

const nsIID NS_IDOMSVGPATHSEGCURVETOQUADRATICABS_IID= 
  {0xec4e8f65, 0x5f4a, 0x495e, 
    [ 0xa5, 0xf2, 0x00, 0xe1, 0x8d, 0x5e, 0x5f, 0x96 ]};

extern(Windows)
interface nsIDOMSVGPathSegCurvetoQuadraticAbs : nsIDOMSVGPathSeg {
  static const char[] IID_STR = NS_IDOMSVGPATHSEGCURVETOQUADRATICABS_IID_STR;
  static const nsIID IID = NS_IDOMSVGPATHSEGCURVETOQUADRATICABS_IID;

  /* attribute float x; */
  nsresult GetX(float *aX);
  nsresult SetX(float aX);

  /* attribute float y; */
  nsresult GetY(float *aY);
  nsresult SetY(float aY);

  /* attribute float x1; */
  nsresult GetX1(float *aX1);
  nsresult SetX1(float aX1);

  /* attribute float y1; */
  nsresult GetY1(float *aY1);
  nsresult SetY1(float aY1);

}


/* starting interface:    nsIDOMSVGPathSegCurvetoQuadraticRel */
const char[] NS_IDOMSVGPATHSEGCURVETOQUADRATICREL_IID_STR = "7007113c-e06b-4256-8530-4884d5d769c6";

const nsIID NS_IDOMSVGPATHSEGCURVETOQUADRATICREL_IID= 
  {0x7007113c, 0xe06b, 0x4256, 
    [ 0x85, 0x30, 0x48, 0x84, 0xd5, 0xd7, 0x69, 0xc6 ]};

extern(Windows)
interface nsIDOMSVGPathSegCurvetoQuadraticRel : nsIDOMSVGPathSeg {
  static const char[] IID_STR = NS_IDOMSVGPATHSEGCURVETOQUADRATICREL_IID_STR;
  static const nsIID IID = NS_IDOMSVGPATHSEGCURVETOQUADRATICREL_IID;

  /* attribute float x; */
  nsresult GetX(float *aX);
  nsresult SetX(float aX);

  /* attribute float y; */
  nsresult GetY(float *aY);
  nsresult SetY(float aY);

  /* attribute float x1; */
  nsresult GetX1(float *aX1);
  nsresult SetX1(float aX1);

  /* attribute float y1; */
  nsresult GetY1(float *aY1);
  nsresult SetY1(float aY1);

}


/* starting interface:    nsIDOMSVGPathSegArcAbs */
const char[] NS_IDOMSVGPATHSEGARCABS_IID_STR = "c26e1779-604b-4bad-8a29-02d2a2113769";

const nsIID NS_IDOMSVGPATHSEGARCABS_IID= 
  {0xc26e1779, 0x604b, 0x4bad, 
    [ 0x8a, 0x29, 0x02, 0xd2, 0xa2, 0x11, 0x37, 0x69 ]};

extern(Windows)
interface nsIDOMSVGPathSegArcAbs : nsIDOMSVGPathSeg {
  static const char[] IID_STR = NS_IDOMSVGPATHSEGARCABS_IID_STR;
  static const nsIID IID = NS_IDOMSVGPATHSEGARCABS_IID;

  /* attribute float x; */
  nsresult GetX(float *aX);
  nsresult SetX(float aX);

  /* attribute float y; */
  nsresult GetY(float *aY);
  nsresult SetY(float aY);

  /* attribute float r1; */
  nsresult GetR1(float *aR1);
  nsresult SetR1(float aR1);

  /* attribute float r2; */
  nsresult GetR2(float *aR2);
  nsresult SetR2(float aR2);

  /* attribute float angle; */
  nsresult GetAngle(float *aAngle);
  nsresult SetAngle(float aAngle);

  /* attribute boolean largeArcFlag; */
  nsresult GetLargeArcFlag(PRBool *aLargeArcFlag);
  nsresult SetLargeArcFlag(PRBool aLargeArcFlag);

  /* attribute boolean sweepFlag; */
  nsresult GetSweepFlag(PRBool *aSweepFlag);
  nsresult SetSweepFlag(PRBool aSweepFlag);

}


/* starting interface:    nsIDOMSVGPathSegArcRel */
const char[] NS_IDOMSVGPATHSEGARCREL_IID_STR = "a685997e-fb47-47c0-a34c-5da11cb66537";

const nsIID NS_IDOMSVGPATHSEGARCREL_IID= 
  {0xa685997e, 0xfb47, 0x47c0, 
    [ 0xa3, 0x4c, 0x5d, 0xa1, 0x1c, 0xb6, 0x65, 0x37 ]};

extern(Windows)
interface nsIDOMSVGPathSegArcRel : nsIDOMSVGPathSeg {
  static const char[] IID_STR = NS_IDOMSVGPATHSEGARCREL_IID_STR;
  static const nsIID IID = NS_IDOMSVGPATHSEGARCREL_IID;

  /* attribute float x; */
  nsresult GetX(float *aX);
  nsresult SetX(float aX);

  /* attribute float y; */
  nsresult GetY(float *aY);
  nsresult SetY(float aY);

  /* attribute float r1; */
  nsresult GetR1(float *aR1);
  nsresult SetR1(float aR1);

  /* attribute float r2; */
  nsresult GetR2(float *aR2);
  nsresult SetR2(float aR2);

  /* attribute float angle; */
  nsresult GetAngle(float *aAngle);
  nsresult SetAngle(float aAngle);

  /* attribute boolean largeArcFlag; */
  nsresult GetLargeArcFlag(PRBool *aLargeArcFlag);
  nsresult SetLargeArcFlag(PRBool aLargeArcFlag);

  /* attribute boolean sweepFlag; */
  nsresult GetSweepFlag(PRBool *aSweepFlag);
  nsresult SetSweepFlag(PRBool aSweepFlag);

}


/* starting interface:    nsIDOMSVGPathSegLinetoHorizontalAbs */
const char[] NS_IDOMSVGPATHSEGLINETOHORIZONTALABS_IID_STR = "e74b55ef-1c44-4a40-9f51-a2196b11283a";

const nsIID NS_IDOMSVGPATHSEGLINETOHORIZONTALABS_IID= 
  {0xe74b55ef, 0x1c44, 0x4a40, 
    [ 0x9f, 0x51, 0xa2, 0x19, 0x6b, 0x11, 0x28, 0x3a ]};

extern(Windows)
interface nsIDOMSVGPathSegLinetoHorizontalAbs : nsIDOMSVGPathSeg {
  static const char[] IID_STR = NS_IDOMSVGPATHSEGLINETOHORIZONTALABS_IID_STR;
  static const nsIID IID = NS_IDOMSVGPATHSEGLINETOHORIZONTALABS_IID;

  /* attribute float x; */
  nsresult GetX(float *aX);
  nsresult SetX(float aX);

}


/* starting interface:    nsIDOMSVGPathSegLinetoHorizontalRel */
const char[] NS_IDOMSVGPATHSEGLINETOHORIZONTALREL_IID_STR = "0a797fdc-8b60-4cb3-a0da-4c898832ba30";

const nsIID NS_IDOMSVGPATHSEGLINETOHORIZONTALREL_IID= 
  {0x0a797fdc, 0x8b60, 0x4cb3, 
    [ 0xa0, 0xda, 0x4c, 0x89, 0x88, 0x32, 0xba, 0x30 ]};

extern(Windows)
interface nsIDOMSVGPathSegLinetoHorizontalRel : nsIDOMSVGPathSeg {
  static const char[] IID_STR = NS_IDOMSVGPATHSEGLINETOHORIZONTALREL_IID_STR;
  static const nsIID IID = NS_IDOMSVGPATHSEGLINETOHORIZONTALREL_IID;

  /* attribute float x; */
  nsresult GetX(float *aX);
  nsresult SetX(float aX);

}


/* starting interface:    nsIDOMSVGPathSegLinetoVerticalAbs */
const char[] NS_IDOMSVGPATHSEGLINETOVERTICALABS_IID_STR = "0811d434-3d90-4eec-8fa2-066dde037917";

const nsIID NS_IDOMSVGPATHSEGLINETOVERTICALABS_IID= 
  {0x0811d434, 0x3d90, 0x4eec, 
    [ 0x8f, 0xa2, 0x06, 0x6d, 0xde, 0x03, 0x79, 0x17 ]};

extern(Windows)
interface nsIDOMSVGPathSegLinetoVerticalAbs : nsIDOMSVGPathSeg {
  static const char[] IID_STR = NS_IDOMSVGPATHSEGLINETOVERTICALABS_IID_STR;
  static const nsIID IID = NS_IDOMSVGPATHSEGLINETOVERTICALABS_IID;

  /* attribute float y; */
  nsresult GetY(float *aY);
  nsresult SetY(float aY);

}


/* starting interface:    nsIDOMSVGPathSegLinetoVerticalRel */
const char[] NS_IDOMSVGPATHSEGLINETOVERTICALREL_IID_STR = "93db35b1-6b33-49d5-ad25-1ed1a7611ad2";

const nsIID NS_IDOMSVGPATHSEGLINETOVERTICALREL_IID= 
  {0x93db35b1, 0x6b33, 0x49d5, 
    [ 0xad, 0x25, 0x1e, 0xd1, 0xa7, 0x61, 0x1a, 0xd2 ]};

extern(Windows)
interface nsIDOMSVGPathSegLinetoVerticalRel : nsIDOMSVGPathSeg {
  static const char[] IID_STR = NS_IDOMSVGPATHSEGLINETOVERTICALREL_IID_STR;
  static const nsIID IID = NS_IDOMSVGPATHSEGLINETOVERTICALREL_IID;

  /* attribute float y; */
  nsresult GetY(float *aY);
  nsresult SetY(float aY);

}


/* starting interface:    nsIDOMSVGPathSegCurvetoCubicSmoothAbs */
const char[] NS_IDOMSVGPATHSEGCURVETOCUBICSMOOTHABS_IID_STR = "eb422132-514e-4a1c-81ec-b84a5df5fb96";

const nsIID NS_IDOMSVGPATHSEGCURVETOCUBICSMOOTHABS_IID= 
  {0xeb422132, 0x514e, 0x4a1c, 
    [ 0x81, 0xec, 0xb8, 0x4a, 0x5d, 0xf5, 0xfb, 0x96 ]};

extern(Windows)
interface nsIDOMSVGPathSegCurvetoCubicSmoothAbs : nsIDOMSVGPathSeg {
  static const char[] IID_STR = NS_IDOMSVGPATHSEGCURVETOCUBICSMOOTHABS_IID_STR;
  static const nsIID IID = NS_IDOMSVGPATHSEGCURVETOCUBICSMOOTHABS_IID;

  /* attribute float x; */
  nsresult GetX(float *aX);
  nsresult SetX(float aX);

  /* attribute float y; */
  nsresult GetY(float *aY);
  nsresult SetY(float aY);

  /* attribute float x2; */
  nsresult GetX2(float *aX2);
  nsresult SetX2(float aX2);

  /* attribute float y2; */
  nsresult GetY2(float *aY2);
  nsresult SetY2(float aY2);

}


/* starting interface:    nsIDOMSVGPathSegCurvetoCubicSmoothRel */
const char[] NS_IDOMSVGPATHSEGCURVETOCUBICSMOOTHREL_IID_STR = "5860bccd-f86b-47f8-86c1-cb1245b6a8e1";

const nsIID NS_IDOMSVGPATHSEGCURVETOCUBICSMOOTHREL_IID= 
  {0x5860bccd, 0xf86b, 0x47f8, 
    [ 0x86, 0xc1, 0xcb, 0x12, 0x45, 0xb6, 0xa8, 0xe1 ]};

extern(Windows)
interface nsIDOMSVGPathSegCurvetoCubicSmoothRel : nsIDOMSVGPathSeg {
  static const char[] IID_STR = NS_IDOMSVGPATHSEGCURVETOCUBICSMOOTHREL_IID_STR;
  static const nsIID IID = NS_IDOMSVGPATHSEGCURVETOCUBICSMOOTHREL_IID;

  /* attribute float x; */
  nsresult GetX(float *aX);
  nsresult SetX(float aX);

  /* attribute float y; */
  nsresult GetY(float *aY);
  nsresult SetY(float aY);

  /* attribute float x2; */
  nsresult GetX2(float *aX2);
  nsresult SetX2(float aX2);

  /* attribute float y2; */
  nsresult GetY2(float *aY2);
  nsresult SetY2(float aY2);

}


/* starting interface:    nsIDOMSVGPathSegCurvetoQuadraticSmoothAbs */
const char[] NS_IDOMSVGPATHSEGCURVETOQUADRATICSMOOTHABS_IID_STR = "3ce86063-0a35-48ec-b372-f198b7d04755";

const nsIID NS_IDOMSVGPATHSEGCURVETOQUADRATICSMOOTHABS_IID= 
  {0x3ce86063, 0x0a35, 0x48ec, 
    [ 0xb3, 0x72, 0xf1, 0x98, 0xb7, 0xd0, 0x47, 0x55 ]};

extern(Windows)
interface nsIDOMSVGPathSegCurvetoQuadraticSmoothAbs : nsIDOMSVGPathSeg {
  static const char[] IID_STR = NS_IDOMSVGPATHSEGCURVETOQUADRATICSMOOTHABS_IID_STR;
  static const nsIID IID = NS_IDOMSVGPATHSEGCURVETOQUADRATICSMOOTHABS_IID;

  /* attribute float x; */
  nsresult GetX(float *aX);
  nsresult SetX(float aX);

  /* attribute float y; */
  nsresult GetY(float *aY);
  nsresult SetY(float aY);

}


/* starting interface:    nsIDOMSVGPathSegCurvetoQuadraticSmoothRel */
const char[] NS_IDOMSVGPATHSEGCURVETOQUADRATICSMOOTHREL_IID_STR = "5c0e4d25-a9f1-4aab-936c-2b61ed6c085f";

const nsIID NS_IDOMSVGPATHSEGCURVETOQUADRATICSMOOTHREL_IID= 
  {0x5c0e4d25, 0xa9f1, 0x4aab, 
    [ 0x93, 0x6c, 0x2b, 0x61, 0xed, 0x6c, 0x08, 0x5f ]};

extern(Windows)
interface nsIDOMSVGPathSegCurvetoQuadraticSmoothRel : nsIDOMSVGPathSeg {
  static const char[] IID_STR = NS_IDOMSVGPATHSEGCURVETOQUADRATICSMOOTHREL_IID_STR;
  static const nsIID IID = NS_IDOMSVGPATHSEGCURVETOQUADRATICSMOOTHREL_IID;

  /* attribute float x; */
  nsresult GetX(float *aX);
  nsresult SetX(float aX);

  /* attribute float y; */
  nsresult GetY(float *aY);
  nsresult SetY(float aY);

}

