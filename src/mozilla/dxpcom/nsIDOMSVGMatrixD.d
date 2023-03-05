/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGMatrix.idl
 */

module mozilla.dxpcom.nsIDOMSVGMatrixD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGMatrix;


public import mozilla.dxpcom.nsIDOMSVGMatrixD;

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



/* starting wrapper class:    nsIDOMSVGMatrix */
class nsIDOMSVGMatrixD : public nsISupportsD {

  static const nsIID IID = NS_IDOMSVGMATRIX_IID;


  alias nsIDOMSVGMatrix InnerType;

  this(nsIDOMSVGMatrix intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGMatrix opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGMatrix value) {
    inner = value;
  }

  /* attribute float a; */
  float A(){
    float value;
    nsresult __result = inner.GetA(&value);
    CheckException(__result);
    return value;
  }
  void A(float aA){
    nsresult __result = inner.SetA(aA);
    CheckException(__result);
  }

  /* attribute float b; */
  float B(){
    float value;
    nsresult __result = inner.GetB(&value);
    CheckException(__result);
    return value;
  }
  void B(float aB){
    nsresult __result = inner.SetB(aB);
    CheckException(__result);
  }

  /* attribute float c; */
  float C(){
    float value;
    nsresult __result = inner.GetC(&value);
    CheckException(__result);
    return value;
  }
  void C(float aC){
    nsresult __result = inner.SetC(aC);
    CheckException(__result);
  }

  /* attribute float d; */
  float D(){
    float value;
    nsresult __result = inner.GetD(&value);
    CheckException(__result);
    return value;
  }
  void D(float aD){
    nsresult __result = inner.SetD(aD);
    CheckException(__result);
  }

  /* attribute float e; */
  float E(){
    float value;
    nsresult __result = inner.GetE(&value);
    CheckException(__result);
    return value;
  }
  void E(float aE){
    nsresult __result = inner.SetE(aE);
    CheckException(__result);
  }

  /* attribute float f; */
  float F(){
    float value;
    nsresult __result = inner.GetF(&value);
    CheckException(__result);
    return value;
  }
  void F(float aF){
    nsresult __result = inner.SetF(aF);
    CheckException(__result);
  }

  /* nsIDOMSVGMatrix multiply (in nsIDOMSVGMatrix secondMatrix); */
  nsIDOMSVGMatrixD  Multiply(nsIDOMSVGMatrixD secondMatrix){
    nsIDOMSVGMatrix _retval;
    nsresult __result = inner.Multiply(secondMatrix ? cast(nsIDOMSVGMatrix)secondMatrix : null, &_retval);
    CheckException(__result);
    return new nsIDOMSVGMatrixD(_retval);
  }

  /* nsIDOMSVGMatrix inverse (); */
  nsIDOMSVGMatrixD  Inverse(){
    nsIDOMSVGMatrix _retval;
    nsresult __result = inner.Inverse(&_retval);
    CheckException(__result);
    return new nsIDOMSVGMatrixD(_retval);
  }

  /* nsIDOMSVGMatrix translate (in float x, in float y); */
  nsIDOMSVGMatrixD  Translate(float x, float y){
    nsIDOMSVGMatrix _retval;
    nsresult __result = inner.Translate(x, y, &_retval);
    CheckException(__result);
    return new nsIDOMSVGMatrixD(_retval);
  }

  /* nsIDOMSVGMatrix scale (in float scaleFactor); */
  nsIDOMSVGMatrixD  Scale(float scaleFactor){
    nsIDOMSVGMatrix _retval;
    nsresult __result = inner.Scale(scaleFactor, &_retval);
    CheckException(__result);
    return new nsIDOMSVGMatrixD(_retval);
  }

  /* nsIDOMSVGMatrix scaleNonUniform (in float scaleFactorX, in float scaleFactorY); */
  nsIDOMSVGMatrixD  ScaleNonUniform(float scaleFactorX, float scaleFactorY){
    nsIDOMSVGMatrix _retval;
    nsresult __result = inner.ScaleNonUniform(scaleFactorX, scaleFactorY, &_retval);
    CheckException(__result);
    return new nsIDOMSVGMatrixD(_retval);
  }

  /* nsIDOMSVGMatrix rotate (in float angle); */
  nsIDOMSVGMatrixD  Rotate(float angle){
    nsIDOMSVGMatrix _retval;
    nsresult __result = inner.Rotate(angle, &_retval);
    CheckException(__result);
    return new nsIDOMSVGMatrixD(_retval);
  }

  /* nsIDOMSVGMatrix rotateFromVector (in float x, in float y); */
  nsIDOMSVGMatrixD  RotateFromVector(float x, float y){
    nsIDOMSVGMatrix _retval;
    nsresult __result = inner.RotateFromVector(x, y, &_retval);
    CheckException(__result);
    return new nsIDOMSVGMatrixD(_retval);
  }

  /* nsIDOMSVGMatrix flipX (); */
  nsIDOMSVGMatrixD  FlipX(){
    nsIDOMSVGMatrix _retval;
    nsresult __result = inner.FlipX(&_retval);
    CheckException(__result);
    return new nsIDOMSVGMatrixD(_retval);
  }

  /* nsIDOMSVGMatrix flipY (); */
  nsIDOMSVGMatrixD  FlipY(){
    nsIDOMSVGMatrix _retval;
    nsresult __result = inner.FlipY(&_retval);
    CheckException(__result);
    return new nsIDOMSVGMatrixD(_retval);
  }

  /* nsIDOMSVGMatrix skewX (in float angle); */
  nsIDOMSVGMatrixD  SkewX(float angle){
    nsIDOMSVGMatrix _retval;
    nsresult __result = inner.SkewX(angle, &_retval);
    CheckException(__result);
    return new nsIDOMSVGMatrixD(_retval);
  }

  /* nsIDOMSVGMatrix skewY (in float angle); */
  nsIDOMSVGMatrixD  SkewY(float angle){
    nsIDOMSVGMatrix _retval;
    nsresult __result = inner.SkewY(angle, &_retval);
    CheckException(__result);
    return new nsIDOMSVGMatrixD(_retval);
  }

private:
  nsIDOMSVGMatrix inner;

}

