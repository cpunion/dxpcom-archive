/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGPathSeg.idl
 */

module mozilla.dxpcom.nsIDOMSVGPathSegD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGPathSeg;


public import mozilla.dxpcom.nsIDOMSVGPathSegD;

public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

alias PRUint64 DOMTimeStamp;

public import mozilla.xpcom.nsIDOMAttr;

public import mozilla.xpcom.nsIDOMCDATASection;

public import mozilla.xpcom.nsIDOMCharacterData;

public import mozilla.xpcom.nsIDOMComment;

public import mozilla.xpcom.nsIDOMDOMImplementation;
    
public import mozilla.xpcom.nsIDOMDocument;

public import mozilla.xpcom.nsIDOMDocumentFragment;

public import mozilla.xpcom.nsIDOMDocumentType;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.xpcom.nsIDOMEntity;

public import mozilla.xpcom.nsIDOMEntityReference;

public import mozilla.xpcom.nsIDOMNSDocument;

public import mozilla.xpcom.nsIDOMNamedNodeMap;

public import mozilla.xpcom.nsIDOMNode;

public import mozilla.xpcom.nsIDOMNodeList;

public import mozilla.xpcom.nsIDOMNotation;

public import mozilla.xpcom.nsIDOMProcessingInstruction;

public import mozilla.xpcom.nsIDOMText;

public import mozilla.xpcom.nsIDOMDOMStringList;

public import mozilla.xpcom.nsIDOMNameList;

//public import mozilla.xpcom.DOMException;

//public import mozilla.xpcom.RangeException;

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

public import mozilla.dxpcom.nsrootidlD;

public import mozilla.dxpcom.nsISupportsD;

alias PRUint64 DOMTimeStampD;

public import mozilla.dxpcom.nsIDOMAttrD;

public import mozilla.dxpcom.nsIDOMCDATASectionD;

public import mozilla.dxpcom.nsIDOMCharacterDataD;

public import mozilla.dxpcom.nsIDOMCommentD;

public import mozilla.dxpcom.nsIDOMDOMImplementationD;
    
public import mozilla.dxpcom.nsIDOMDocumentD;

public import mozilla.dxpcom.nsIDOMDocumentFragmentD;

public import mozilla.dxpcom.nsIDOMDocumentTypeD;

public import mozilla.dxpcom.nsIDOMElementD;

public import mozilla.dxpcom.nsIDOMEntityD;

public import mozilla.dxpcom.nsIDOMEntityReferenceD;

public import mozilla.dxpcom.nsIDOMNSDocumentD;

public import mozilla.dxpcom.nsIDOMNamedNodeMapD;

public import mozilla.dxpcom.nsIDOMNodeD;

public import mozilla.dxpcom.nsIDOMNodeListD;

public import mozilla.dxpcom.nsIDOMNotationD;

public import mozilla.dxpcom.nsIDOMProcessingInstructionD;

public import mozilla.dxpcom.nsIDOMTextD;

public import mozilla.dxpcom.nsIDOMDOMStringListD;

public import mozilla.dxpcom.nsIDOMNameListD;

//public import mozilla.dxpcom.DOMExceptionD;

//public import mozilla.dxpcom.RangeExceptionD;

public import mozilla.dxpcom.nsIDOMEventD;

public import mozilla.dxpcom.nsIDOMEventListenerD;

public import mozilla.dxpcom.nsIDOMWindowD;

public import mozilla.dxpcom.nsIDOMHTMLFormElementD;

public import mozilla.dxpcom.nsIDOMBarPropD;

public import mozilla.dxpcom.nsIDOMWindowCollectionD;

public import mozilla.dxpcom.nsIDOMHTMLCollectionD;

public import mozilla.dxpcom.nsIDOMNavigatorD;

public import mozilla.dxpcom.nsIDOMScreenD;

public import mozilla.dxpcom.nsIDOMHistoryD;

public import mozilla.dxpcom.nsIDOMPkcs11D;

public import mozilla.dxpcom.nsIDOMMimeTypeArrayD;

public import mozilla.dxpcom.nsIDOMPluginArrayD;

public import mozilla.dxpcom.nsIDOMCryptoD;

public import mozilla.dxpcom.nsIDOMCRMFObjectD;

public import mozilla.dxpcom.nsIDOMPluginD;

public import mozilla.dxpcom.nsIDOMMimeTypeD;

public import mozilla.dxpcom.nsIDOMCSSRuleD;

public import mozilla.dxpcom.nsIDOMCSSRuleListD;

public import mozilla.dxpcom.nsIDOMStyleSheetD;

public import mozilla.dxpcom.nsIDOMCSSValueD;

public import mozilla.dxpcom.nsIDOMMediaListD;

public import mozilla.dxpcom.nsIDOMCSSStyleSheetD;

public import mozilla.dxpcom.nsIDOMCSSStyleDeclarationD;

public import mozilla.dxpcom.nsIDOMAbstractViewD;

public import mozilla.dxpcom.nsIDOMDocumentViewD;

public import mozilla.dxpcom.nsIDOMXULSelectCntrlItemElD;

public import mozilla.dxpcom.nsIDOMHTMLTableCaptionElemD;

public import mozilla.dxpcom.nsIDOMHTMLTableSectionElemD;

public import mozilla.dxpcom.nsIDOMStyleSheetListD;

public import mozilla.dxpcom.nsIDOMKeyEventD;

public import mozilla.dxpcom.nsIDOMCounterD;

public import mozilla.dxpcom.nsIDOMRectD;

public import mozilla.dxpcom.nsIDOMRGBColorD;

public import mozilla.dxpcom.nsIDOMCounterD;

public import mozilla.dxpcom.nsIDOMCSSPrimitiveValueD;

public import mozilla.dxpcom.nsIDOMEventGroupD;



/* starting wrapper class:    nsIDOMSVGPathSeg */
class nsIDOMSVGPathSegD : public nsISupportsD {

  static const nsIID IID = NS_IDOMSVGPATHSEG_IID;


  alias nsIDOMSVGPathSeg InnerType;

  this(nsIDOMSVGPathSeg intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGPathSeg opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGPathSeg value) {
    inner = value;
  }

  enum { PATHSEG_UNKNOWN = 0U }

  enum { PATHSEG_CLOSEPATH = 1U }

  enum { PATHSEG_MOVETO_ABS = 2U }

  enum { PATHSEG_MOVETO_REL = 3U }

  enum { PATHSEG_LINETO_ABS = 4U }

  enum { PATHSEG_LINETO_REL = 5U }

  enum { PATHSEG_CURVETO_CUBIC_ABS = 6U }

  enum { PATHSEG_CURVETO_CUBIC_REL = 7U }

  enum { PATHSEG_CURVETO_QUADRATIC_ABS = 8U }

  enum { PATHSEG_CURVETO_QUADRATIC_REL = 9U }

  enum { PATHSEG_ARC_ABS = 10U }

  enum { PATHSEG_ARC_REL = 11U }

  enum { PATHSEG_LINETO_HORIZONTAL_ABS = 12U }

  enum { PATHSEG_LINETO_HORIZONTAL_REL = 13U }

  enum { PATHSEG_LINETO_VERTICAL_ABS = 14U }

  enum { PATHSEG_LINETO_VERTICAL_REL = 15U }

  enum { PATHSEG_CURVETO_CUBIC_SMOOTH_ABS = 16U }

  enum { PATHSEG_CURVETO_CUBIC_SMOOTH_REL = 17U }

  enum { PATHSEG_CURVETO_QUADRATIC_SMOOTH_ABS = 18U }

  enum { PATHSEG_CURVETO_QUADRATIC_SMOOTH_REL = 19U }

  /* readonly attribute unsigned short pathSegType; */
  PRUint16 PathSegType(){
    PRUint16 value;
    nsresult __result = inner.GetPathSegType(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute DOMString pathSegTypeAsLetter; */
  wchar[] PathSegTypeAsLetter(){
    scope auto value = new AString();
    nsresult __result = inner.GetPathSegTypeAsLetter(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

private:
  nsIDOMSVGPathSeg inner;

}


/* starting wrapper class:    nsIDOMSVGPathSegClosePath */
class nsIDOMSVGPathSegClosePathD : public nsIDOMSVGPathSegD {

  static const nsIID IID = NS_IDOMSVGPATHSEGCLOSEPATH_IID;


  alias nsIDOMSVGPathSegClosePath InnerType;

  this(nsIDOMSVGPathSegClosePath intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGPathSegClosePath opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGPathSegClosePath value) {
    inner = value;
  }

private:
  nsIDOMSVGPathSegClosePath inner;

}


/* starting wrapper class:    nsIDOMSVGPathSegMovetoAbs */
class nsIDOMSVGPathSegMovetoAbsD : public nsIDOMSVGPathSegD {

  static const nsIID IID = NS_IDOMSVGPATHSEGMOVETOABS_IID;


  alias nsIDOMSVGPathSegMovetoAbs InnerType;

  this(nsIDOMSVGPathSegMovetoAbs intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGPathSegMovetoAbs opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGPathSegMovetoAbs value) {
    inner = value;
  }

  /* attribute float x; */
  float X(){
    float value;
    nsresult __result = inner.GetX(&value);
    CheckException(__result);
    return value;
  }
  void X(float aX){
    nsresult __result = inner.SetX(aX);
    CheckException(__result);
  }

  /* attribute float y; */
  float Y(){
    float value;
    nsresult __result = inner.GetY(&value);
    CheckException(__result);
    return value;
  }
  void Y(float aY){
    nsresult __result = inner.SetY(aY);
    CheckException(__result);
  }

private:
  nsIDOMSVGPathSegMovetoAbs inner;

}


/* starting wrapper class:    nsIDOMSVGPathSegMovetoRel */
class nsIDOMSVGPathSegMovetoRelD : public nsIDOMSVGPathSegD {

  static const nsIID IID = NS_IDOMSVGPATHSEGMOVETOREL_IID;


  alias nsIDOMSVGPathSegMovetoRel InnerType;

  this(nsIDOMSVGPathSegMovetoRel intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGPathSegMovetoRel opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGPathSegMovetoRel value) {
    inner = value;
  }

  /* attribute float x; */
  float X(){
    float value;
    nsresult __result = inner.GetX(&value);
    CheckException(__result);
    return value;
  }
  void X(float aX){
    nsresult __result = inner.SetX(aX);
    CheckException(__result);
  }

  /* attribute float y; */
  float Y(){
    float value;
    nsresult __result = inner.GetY(&value);
    CheckException(__result);
    return value;
  }
  void Y(float aY){
    nsresult __result = inner.SetY(aY);
    CheckException(__result);
  }

private:
  nsIDOMSVGPathSegMovetoRel inner;

}


/* starting wrapper class:    nsIDOMSVGPathSegLinetoAbs */
class nsIDOMSVGPathSegLinetoAbsD : public nsIDOMSVGPathSegD {

  static const nsIID IID = NS_IDOMSVGPATHSEGLINETOABS_IID;


  alias nsIDOMSVGPathSegLinetoAbs InnerType;

  this(nsIDOMSVGPathSegLinetoAbs intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGPathSegLinetoAbs opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGPathSegLinetoAbs value) {
    inner = value;
  }

  /* attribute float x; */
  float X(){
    float value;
    nsresult __result = inner.GetX(&value);
    CheckException(__result);
    return value;
  }
  void X(float aX){
    nsresult __result = inner.SetX(aX);
    CheckException(__result);
  }

  /* attribute float y; */
  float Y(){
    float value;
    nsresult __result = inner.GetY(&value);
    CheckException(__result);
    return value;
  }
  void Y(float aY){
    nsresult __result = inner.SetY(aY);
    CheckException(__result);
  }

private:
  nsIDOMSVGPathSegLinetoAbs inner;

}


/* starting wrapper class:    nsIDOMSVGPathSegLinetoRel */
class nsIDOMSVGPathSegLinetoRelD : public nsIDOMSVGPathSegD {

  static const nsIID IID = NS_IDOMSVGPATHSEGLINETOREL_IID;


  alias nsIDOMSVGPathSegLinetoRel InnerType;

  this(nsIDOMSVGPathSegLinetoRel intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGPathSegLinetoRel opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGPathSegLinetoRel value) {
    inner = value;
  }

  /* attribute float x; */
  float X(){
    float value;
    nsresult __result = inner.GetX(&value);
    CheckException(__result);
    return value;
  }
  void X(float aX){
    nsresult __result = inner.SetX(aX);
    CheckException(__result);
  }

  /* attribute float y; */
  float Y(){
    float value;
    nsresult __result = inner.GetY(&value);
    CheckException(__result);
    return value;
  }
  void Y(float aY){
    nsresult __result = inner.SetY(aY);
    CheckException(__result);
  }

private:
  nsIDOMSVGPathSegLinetoRel inner;

}


/* starting wrapper class:    nsIDOMSVGPathSegCurvetoCubicAbs */
class nsIDOMSVGPathSegCurvetoCubicAbsD : public nsIDOMSVGPathSegD {

  static const nsIID IID = NS_IDOMSVGPATHSEGCURVETOCUBICABS_IID;


  alias nsIDOMSVGPathSegCurvetoCubicAbs InnerType;

  this(nsIDOMSVGPathSegCurvetoCubicAbs intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGPathSegCurvetoCubicAbs opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGPathSegCurvetoCubicAbs value) {
    inner = value;
  }

  /* attribute float x; */
  float X(){
    float value;
    nsresult __result = inner.GetX(&value);
    CheckException(__result);
    return value;
  }
  void X(float aX){
    nsresult __result = inner.SetX(aX);
    CheckException(__result);
  }

  /* attribute float y; */
  float Y(){
    float value;
    nsresult __result = inner.GetY(&value);
    CheckException(__result);
    return value;
  }
  void Y(float aY){
    nsresult __result = inner.SetY(aY);
    CheckException(__result);
  }

  /* attribute float x1; */
  float X1(){
    float value;
    nsresult __result = inner.GetX1(&value);
    CheckException(__result);
    return value;
  }
  void X1(float aX1){
    nsresult __result = inner.SetX1(aX1);
    CheckException(__result);
  }

  /* attribute float y1; */
  float Y1(){
    float value;
    nsresult __result = inner.GetY1(&value);
    CheckException(__result);
    return value;
  }
  void Y1(float aY1){
    nsresult __result = inner.SetY1(aY1);
    CheckException(__result);
  }

  /* attribute float x2; */
  float X2(){
    float value;
    nsresult __result = inner.GetX2(&value);
    CheckException(__result);
    return value;
  }
  void X2(float aX2){
    nsresult __result = inner.SetX2(aX2);
    CheckException(__result);
  }

  /* attribute float y2; */
  float Y2(){
    float value;
    nsresult __result = inner.GetY2(&value);
    CheckException(__result);
    return value;
  }
  void Y2(float aY2){
    nsresult __result = inner.SetY2(aY2);
    CheckException(__result);
  }

private:
  nsIDOMSVGPathSegCurvetoCubicAbs inner;

}


/* starting wrapper class:    nsIDOMSVGPathSegCurvetoCubicRel */
class nsIDOMSVGPathSegCurvetoCubicRelD : public nsIDOMSVGPathSegD {

  static const nsIID IID = NS_IDOMSVGPATHSEGCURVETOCUBICREL_IID;


  alias nsIDOMSVGPathSegCurvetoCubicRel InnerType;

  this(nsIDOMSVGPathSegCurvetoCubicRel intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGPathSegCurvetoCubicRel opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGPathSegCurvetoCubicRel value) {
    inner = value;
  }

  /* attribute float x; */
  float X(){
    float value;
    nsresult __result = inner.GetX(&value);
    CheckException(__result);
    return value;
  }
  void X(float aX){
    nsresult __result = inner.SetX(aX);
    CheckException(__result);
  }

  /* attribute float y; */
  float Y(){
    float value;
    nsresult __result = inner.GetY(&value);
    CheckException(__result);
    return value;
  }
  void Y(float aY){
    nsresult __result = inner.SetY(aY);
    CheckException(__result);
  }

  /* attribute float x1; */
  float X1(){
    float value;
    nsresult __result = inner.GetX1(&value);
    CheckException(__result);
    return value;
  }
  void X1(float aX1){
    nsresult __result = inner.SetX1(aX1);
    CheckException(__result);
  }

  /* attribute float y1; */
  float Y1(){
    float value;
    nsresult __result = inner.GetY1(&value);
    CheckException(__result);
    return value;
  }
  void Y1(float aY1){
    nsresult __result = inner.SetY1(aY1);
    CheckException(__result);
  }

  /* attribute float x2; */
  float X2(){
    float value;
    nsresult __result = inner.GetX2(&value);
    CheckException(__result);
    return value;
  }
  void X2(float aX2){
    nsresult __result = inner.SetX2(aX2);
    CheckException(__result);
  }

  /* attribute float y2; */
  float Y2(){
    float value;
    nsresult __result = inner.GetY2(&value);
    CheckException(__result);
    return value;
  }
  void Y2(float aY2){
    nsresult __result = inner.SetY2(aY2);
    CheckException(__result);
  }

private:
  nsIDOMSVGPathSegCurvetoCubicRel inner;

}


/* starting wrapper class:    nsIDOMSVGPathSegCurvetoQuadraticAbs */
class nsIDOMSVGPathSegCurvetoQuadraticAbsD : public nsIDOMSVGPathSegD {

  static const nsIID IID = NS_IDOMSVGPATHSEGCURVETOQUADRATICABS_IID;


  alias nsIDOMSVGPathSegCurvetoQuadraticAbs InnerType;

  this(nsIDOMSVGPathSegCurvetoQuadraticAbs intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGPathSegCurvetoQuadraticAbs opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGPathSegCurvetoQuadraticAbs value) {
    inner = value;
  }

  /* attribute float x; */
  float X(){
    float value;
    nsresult __result = inner.GetX(&value);
    CheckException(__result);
    return value;
  }
  void X(float aX){
    nsresult __result = inner.SetX(aX);
    CheckException(__result);
  }

  /* attribute float y; */
  float Y(){
    float value;
    nsresult __result = inner.GetY(&value);
    CheckException(__result);
    return value;
  }
  void Y(float aY){
    nsresult __result = inner.SetY(aY);
    CheckException(__result);
  }

  /* attribute float x1; */
  float X1(){
    float value;
    nsresult __result = inner.GetX1(&value);
    CheckException(__result);
    return value;
  }
  void X1(float aX1){
    nsresult __result = inner.SetX1(aX1);
    CheckException(__result);
  }

  /* attribute float y1; */
  float Y1(){
    float value;
    nsresult __result = inner.GetY1(&value);
    CheckException(__result);
    return value;
  }
  void Y1(float aY1){
    nsresult __result = inner.SetY1(aY1);
    CheckException(__result);
  }

private:
  nsIDOMSVGPathSegCurvetoQuadraticAbs inner;

}


/* starting wrapper class:    nsIDOMSVGPathSegCurvetoQuadraticRel */
class nsIDOMSVGPathSegCurvetoQuadraticRelD : public nsIDOMSVGPathSegD {

  static const nsIID IID = NS_IDOMSVGPATHSEGCURVETOQUADRATICREL_IID;


  alias nsIDOMSVGPathSegCurvetoQuadraticRel InnerType;

  this(nsIDOMSVGPathSegCurvetoQuadraticRel intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGPathSegCurvetoQuadraticRel opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGPathSegCurvetoQuadraticRel value) {
    inner = value;
  }

  /* attribute float x; */
  float X(){
    float value;
    nsresult __result = inner.GetX(&value);
    CheckException(__result);
    return value;
  }
  void X(float aX){
    nsresult __result = inner.SetX(aX);
    CheckException(__result);
  }

  /* attribute float y; */
  float Y(){
    float value;
    nsresult __result = inner.GetY(&value);
    CheckException(__result);
    return value;
  }
  void Y(float aY){
    nsresult __result = inner.SetY(aY);
    CheckException(__result);
  }

  /* attribute float x1; */
  float X1(){
    float value;
    nsresult __result = inner.GetX1(&value);
    CheckException(__result);
    return value;
  }
  void X1(float aX1){
    nsresult __result = inner.SetX1(aX1);
    CheckException(__result);
  }

  /* attribute float y1; */
  float Y1(){
    float value;
    nsresult __result = inner.GetY1(&value);
    CheckException(__result);
    return value;
  }
  void Y1(float aY1){
    nsresult __result = inner.SetY1(aY1);
    CheckException(__result);
  }

private:
  nsIDOMSVGPathSegCurvetoQuadraticRel inner;

}


/* starting wrapper class:    nsIDOMSVGPathSegArcAbs */
class nsIDOMSVGPathSegArcAbsD : public nsIDOMSVGPathSegD {

  static const nsIID IID = NS_IDOMSVGPATHSEGARCABS_IID;


  alias nsIDOMSVGPathSegArcAbs InnerType;

  this(nsIDOMSVGPathSegArcAbs intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGPathSegArcAbs opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGPathSegArcAbs value) {
    inner = value;
  }

  /* attribute float x; */
  float X(){
    float value;
    nsresult __result = inner.GetX(&value);
    CheckException(__result);
    return value;
  }
  void X(float aX){
    nsresult __result = inner.SetX(aX);
    CheckException(__result);
  }

  /* attribute float y; */
  float Y(){
    float value;
    nsresult __result = inner.GetY(&value);
    CheckException(__result);
    return value;
  }
  void Y(float aY){
    nsresult __result = inner.SetY(aY);
    CheckException(__result);
  }

  /* attribute float r1; */
  float R1(){
    float value;
    nsresult __result = inner.GetR1(&value);
    CheckException(__result);
    return value;
  }
  void R1(float aR1){
    nsresult __result = inner.SetR1(aR1);
    CheckException(__result);
  }

  /* attribute float r2; */
  float R2(){
    float value;
    nsresult __result = inner.GetR2(&value);
    CheckException(__result);
    return value;
  }
  void R2(float aR2){
    nsresult __result = inner.SetR2(aR2);
    CheckException(__result);
  }

  /* attribute float angle; */
  float Angle(){
    float value;
    nsresult __result = inner.GetAngle(&value);
    CheckException(__result);
    return value;
  }
  void Angle(float aAngle){
    nsresult __result = inner.SetAngle(aAngle);
    CheckException(__result);
  }

  /* attribute boolean largeArcFlag; */
  PRBool LargeArcFlag(){
    PRBool value;
    nsresult __result = inner.GetLargeArcFlag(&value);
    CheckException(__result);
    return value;
  }
  void LargeArcFlag(PRBool aLargeArcFlag){
    nsresult __result = inner.SetLargeArcFlag(aLargeArcFlag);
    CheckException(__result);
  }

  /* attribute boolean sweepFlag; */
  PRBool SweepFlag(){
    PRBool value;
    nsresult __result = inner.GetSweepFlag(&value);
    CheckException(__result);
    return value;
  }
  void SweepFlag(PRBool aSweepFlag){
    nsresult __result = inner.SetSweepFlag(aSweepFlag);
    CheckException(__result);
  }

private:
  nsIDOMSVGPathSegArcAbs inner;

}


/* starting wrapper class:    nsIDOMSVGPathSegArcRel */
class nsIDOMSVGPathSegArcRelD : public nsIDOMSVGPathSegD {

  static const nsIID IID = NS_IDOMSVGPATHSEGARCREL_IID;


  alias nsIDOMSVGPathSegArcRel InnerType;

  this(nsIDOMSVGPathSegArcRel intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGPathSegArcRel opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGPathSegArcRel value) {
    inner = value;
  }

  /* attribute float x; */
  float X(){
    float value;
    nsresult __result = inner.GetX(&value);
    CheckException(__result);
    return value;
  }
  void X(float aX){
    nsresult __result = inner.SetX(aX);
    CheckException(__result);
  }

  /* attribute float y; */
  float Y(){
    float value;
    nsresult __result = inner.GetY(&value);
    CheckException(__result);
    return value;
  }
  void Y(float aY){
    nsresult __result = inner.SetY(aY);
    CheckException(__result);
  }

  /* attribute float r1; */
  float R1(){
    float value;
    nsresult __result = inner.GetR1(&value);
    CheckException(__result);
    return value;
  }
  void R1(float aR1){
    nsresult __result = inner.SetR1(aR1);
    CheckException(__result);
  }

  /* attribute float r2; */
  float R2(){
    float value;
    nsresult __result = inner.GetR2(&value);
    CheckException(__result);
    return value;
  }
  void R2(float aR2){
    nsresult __result = inner.SetR2(aR2);
    CheckException(__result);
  }

  /* attribute float angle; */
  float Angle(){
    float value;
    nsresult __result = inner.GetAngle(&value);
    CheckException(__result);
    return value;
  }
  void Angle(float aAngle){
    nsresult __result = inner.SetAngle(aAngle);
    CheckException(__result);
  }

  /* attribute boolean largeArcFlag; */
  PRBool LargeArcFlag(){
    PRBool value;
    nsresult __result = inner.GetLargeArcFlag(&value);
    CheckException(__result);
    return value;
  }
  void LargeArcFlag(PRBool aLargeArcFlag){
    nsresult __result = inner.SetLargeArcFlag(aLargeArcFlag);
    CheckException(__result);
  }

  /* attribute boolean sweepFlag; */
  PRBool SweepFlag(){
    PRBool value;
    nsresult __result = inner.GetSweepFlag(&value);
    CheckException(__result);
    return value;
  }
  void SweepFlag(PRBool aSweepFlag){
    nsresult __result = inner.SetSweepFlag(aSweepFlag);
    CheckException(__result);
  }

private:
  nsIDOMSVGPathSegArcRel inner;

}


/* starting wrapper class:    nsIDOMSVGPathSegLinetoHorizontalAbs */
class nsIDOMSVGPathSegLinetoHorizontalAbsD : public nsIDOMSVGPathSegD {

  static const nsIID IID = NS_IDOMSVGPATHSEGLINETOHORIZONTALABS_IID;


  alias nsIDOMSVGPathSegLinetoHorizontalAbs InnerType;

  this(nsIDOMSVGPathSegLinetoHorizontalAbs intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGPathSegLinetoHorizontalAbs opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGPathSegLinetoHorizontalAbs value) {
    inner = value;
  }

  /* attribute float x; */
  float X(){
    float value;
    nsresult __result = inner.GetX(&value);
    CheckException(__result);
    return value;
  }
  void X(float aX){
    nsresult __result = inner.SetX(aX);
    CheckException(__result);
  }

private:
  nsIDOMSVGPathSegLinetoHorizontalAbs inner;

}


/* starting wrapper class:    nsIDOMSVGPathSegLinetoHorizontalRel */
class nsIDOMSVGPathSegLinetoHorizontalRelD : public nsIDOMSVGPathSegD {

  static const nsIID IID = NS_IDOMSVGPATHSEGLINETOHORIZONTALREL_IID;


  alias nsIDOMSVGPathSegLinetoHorizontalRel InnerType;

  this(nsIDOMSVGPathSegLinetoHorizontalRel intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGPathSegLinetoHorizontalRel opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGPathSegLinetoHorizontalRel value) {
    inner = value;
  }

  /* attribute float x; */
  float X(){
    float value;
    nsresult __result = inner.GetX(&value);
    CheckException(__result);
    return value;
  }
  void X(float aX){
    nsresult __result = inner.SetX(aX);
    CheckException(__result);
  }

private:
  nsIDOMSVGPathSegLinetoHorizontalRel inner;

}


/* starting wrapper class:    nsIDOMSVGPathSegLinetoVerticalAbs */
class nsIDOMSVGPathSegLinetoVerticalAbsD : public nsIDOMSVGPathSegD {

  static const nsIID IID = NS_IDOMSVGPATHSEGLINETOVERTICALABS_IID;


  alias nsIDOMSVGPathSegLinetoVerticalAbs InnerType;

  this(nsIDOMSVGPathSegLinetoVerticalAbs intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGPathSegLinetoVerticalAbs opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGPathSegLinetoVerticalAbs value) {
    inner = value;
  }

  /* attribute float y; */
  float Y(){
    float value;
    nsresult __result = inner.GetY(&value);
    CheckException(__result);
    return value;
  }
  void Y(float aY){
    nsresult __result = inner.SetY(aY);
    CheckException(__result);
  }

private:
  nsIDOMSVGPathSegLinetoVerticalAbs inner;

}


/* starting wrapper class:    nsIDOMSVGPathSegLinetoVerticalRel */
class nsIDOMSVGPathSegLinetoVerticalRelD : public nsIDOMSVGPathSegD {

  static const nsIID IID = NS_IDOMSVGPATHSEGLINETOVERTICALREL_IID;


  alias nsIDOMSVGPathSegLinetoVerticalRel InnerType;

  this(nsIDOMSVGPathSegLinetoVerticalRel intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGPathSegLinetoVerticalRel opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGPathSegLinetoVerticalRel value) {
    inner = value;
  }

  /* attribute float y; */
  float Y(){
    float value;
    nsresult __result = inner.GetY(&value);
    CheckException(__result);
    return value;
  }
  void Y(float aY){
    nsresult __result = inner.SetY(aY);
    CheckException(__result);
  }

private:
  nsIDOMSVGPathSegLinetoVerticalRel inner;

}


/* starting wrapper class:    nsIDOMSVGPathSegCurvetoCubicSmoothAbs */
class nsIDOMSVGPathSegCurvetoCubicSmoothAbsD : public nsIDOMSVGPathSegD {

  static const nsIID IID = NS_IDOMSVGPATHSEGCURVETOCUBICSMOOTHABS_IID;


  alias nsIDOMSVGPathSegCurvetoCubicSmoothAbs InnerType;

  this(nsIDOMSVGPathSegCurvetoCubicSmoothAbs intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGPathSegCurvetoCubicSmoothAbs opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGPathSegCurvetoCubicSmoothAbs value) {
    inner = value;
  }

  /* attribute float x; */
  float X(){
    float value;
    nsresult __result = inner.GetX(&value);
    CheckException(__result);
    return value;
  }
  void X(float aX){
    nsresult __result = inner.SetX(aX);
    CheckException(__result);
  }

  /* attribute float y; */
  float Y(){
    float value;
    nsresult __result = inner.GetY(&value);
    CheckException(__result);
    return value;
  }
  void Y(float aY){
    nsresult __result = inner.SetY(aY);
    CheckException(__result);
  }

  /* attribute float x2; */
  float X2(){
    float value;
    nsresult __result = inner.GetX2(&value);
    CheckException(__result);
    return value;
  }
  void X2(float aX2){
    nsresult __result = inner.SetX2(aX2);
    CheckException(__result);
  }

  /* attribute float y2; */
  float Y2(){
    float value;
    nsresult __result = inner.GetY2(&value);
    CheckException(__result);
    return value;
  }
  void Y2(float aY2){
    nsresult __result = inner.SetY2(aY2);
    CheckException(__result);
  }

private:
  nsIDOMSVGPathSegCurvetoCubicSmoothAbs inner;

}


/* starting wrapper class:    nsIDOMSVGPathSegCurvetoCubicSmoothRel */
class nsIDOMSVGPathSegCurvetoCubicSmoothRelD : public nsIDOMSVGPathSegD {

  static const nsIID IID = NS_IDOMSVGPATHSEGCURVETOCUBICSMOOTHREL_IID;


  alias nsIDOMSVGPathSegCurvetoCubicSmoothRel InnerType;

  this(nsIDOMSVGPathSegCurvetoCubicSmoothRel intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGPathSegCurvetoCubicSmoothRel opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGPathSegCurvetoCubicSmoothRel value) {
    inner = value;
  }

  /* attribute float x; */
  float X(){
    float value;
    nsresult __result = inner.GetX(&value);
    CheckException(__result);
    return value;
  }
  void X(float aX){
    nsresult __result = inner.SetX(aX);
    CheckException(__result);
  }

  /* attribute float y; */
  float Y(){
    float value;
    nsresult __result = inner.GetY(&value);
    CheckException(__result);
    return value;
  }
  void Y(float aY){
    nsresult __result = inner.SetY(aY);
    CheckException(__result);
  }

  /* attribute float x2; */
  float X2(){
    float value;
    nsresult __result = inner.GetX2(&value);
    CheckException(__result);
    return value;
  }
  void X2(float aX2){
    nsresult __result = inner.SetX2(aX2);
    CheckException(__result);
  }

  /* attribute float y2; */
  float Y2(){
    float value;
    nsresult __result = inner.GetY2(&value);
    CheckException(__result);
    return value;
  }
  void Y2(float aY2){
    nsresult __result = inner.SetY2(aY2);
    CheckException(__result);
  }

private:
  nsIDOMSVGPathSegCurvetoCubicSmoothRel inner;

}


/* starting wrapper class:    nsIDOMSVGPathSegCurvetoQuadraticSmoothAbs */
class nsIDOMSVGPathSegCurvetoQuadraticSmoothAbsD : public nsIDOMSVGPathSegD {

  static const nsIID IID = NS_IDOMSVGPATHSEGCURVETOQUADRATICSMOOTHABS_IID;


  alias nsIDOMSVGPathSegCurvetoQuadraticSmoothAbs InnerType;

  this(nsIDOMSVGPathSegCurvetoQuadraticSmoothAbs intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGPathSegCurvetoQuadraticSmoothAbs opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGPathSegCurvetoQuadraticSmoothAbs value) {
    inner = value;
  }

  /* attribute float x; */
  float X(){
    float value;
    nsresult __result = inner.GetX(&value);
    CheckException(__result);
    return value;
  }
  void X(float aX){
    nsresult __result = inner.SetX(aX);
    CheckException(__result);
  }

  /* attribute float y; */
  float Y(){
    float value;
    nsresult __result = inner.GetY(&value);
    CheckException(__result);
    return value;
  }
  void Y(float aY){
    nsresult __result = inner.SetY(aY);
    CheckException(__result);
  }

private:
  nsIDOMSVGPathSegCurvetoQuadraticSmoothAbs inner;

}


/* starting wrapper class:    nsIDOMSVGPathSegCurvetoQuadraticSmoothRel */
class nsIDOMSVGPathSegCurvetoQuadraticSmoothRelD : public nsIDOMSVGPathSegD {

  static const nsIID IID = NS_IDOMSVGPATHSEGCURVETOQUADRATICSMOOTHREL_IID;


  alias nsIDOMSVGPathSegCurvetoQuadraticSmoothRel InnerType;

  this(nsIDOMSVGPathSegCurvetoQuadraticSmoothRel intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGPathSegCurvetoQuadraticSmoothRel opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGPathSegCurvetoQuadraticSmoothRel value) {
    inner = value;
  }

  /* attribute float x; */
  float X(){
    float value;
    nsresult __result = inner.GetX(&value);
    CheckException(__result);
    return value;
  }
  void X(float aX){
    nsresult __result = inner.SetX(aX);
    CheckException(__result);
  }

  /* attribute float y; */
  float Y(){
    float value;
    nsresult __result = inner.GetY(&value);
    CheckException(__result);
    return value;
  }
  void Y(float aY){
    nsresult __result = inner.SetY(aY);
    CheckException(__result);
  }

private:
  nsIDOMSVGPathSegCurvetoQuadraticSmoothRel inner;

}

