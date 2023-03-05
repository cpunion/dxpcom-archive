/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGSVGElement.idl
 */

module mozilla.dxpcom.nsIDOMSVGSVGElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMSVGSVGElement;


public import mozilla.dxpcom.nsIDOMSVGSVGElementD;

public import mozilla.xpcom.nsIDOMSVGElement;
public import mozilla.dxpcom.nsIDOMSVGElementD;

public import mozilla.xpcom.nsIDOMSVGAnimatedLength;

public import mozilla.dxpcom.nsIDOMSVGAnimatedLengthD;

public import mozilla.xpcom.nsIDOMSVGRect;

public import mozilla.dxpcom.nsIDOMSVGRectD;

public import mozilla.xpcom.nsIDOMSVGViewSpec;

public import mozilla.dxpcom.nsIDOMSVGViewSpecD;

public import mozilla.xpcom.nsIDOMSVGPoint;

public import mozilla.dxpcom.nsIDOMSVGPointD;

public import mozilla.xpcom.nsIDOMSVGNumber;

public import mozilla.dxpcom.nsIDOMSVGNumberD;

public import mozilla.xpcom.nsIDOMSVGLength;

public import mozilla.dxpcom.nsIDOMSVGLengthD;

public import mozilla.xpcom.nsIDOMSVGAngle;

public import mozilla.dxpcom.nsIDOMSVGAngleD;

public import mozilla.xpcom.nsIDOMSVGMatrix;

public import mozilla.dxpcom.nsIDOMSVGMatrixD;

public import mozilla.xpcom.nsIDOMSVGTransform;

public import mozilla.dxpcom.nsIDOMSVGTransformD;


/* starting wrapper class:    nsIDOMSVGSVGElement */
class nsIDOMSVGSVGElementD : public nsIDOMSVGElementD {

  static const nsIID IID = NS_IDOMSVGSVGELEMENT_IID;


  alias nsIDOMSVGSVGElement InnerType;

  this(nsIDOMSVGSVGElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMSVGSVGElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMSVGSVGElement value) {
    inner = value;
  }

  /* readonly attribute nsIDOMSVGAnimatedLength x; */
  nsIDOMSVGAnimatedLengthD  X(){
    nsIDOMSVGAnimatedLength value;
    nsresult __result = inner.GetX(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedLength y; */
  nsIDOMSVGAnimatedLengthD  Y(){
    nsIDOMSVGAnimatedLength value;
    nsresult __result = inner.GetY(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedLength width; */
  nsIDOMSVGAnimatedLengthD  Width(){
    nsIDOMSVGAnimatedLength value;
    nsresult __result = inner.GetWidth(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthD(value);
  }

  /* readonly attribute nsIDOMSVGAnimatedLength height; */
  nsIDOMSVGAnimatedLengthD  Height(){
    nsIDOMSVGAnimatedLength value;
    nsresult __result = inner.GetHeight(&value);
    CheckException(__result);
    return new nsIDOMSVGAnimatedLengthD(value);
  }

  /* attribute DOMString contentScriptType; */
  wchar[] ContentScriptType(){
    scope auto value = new AString();
    nsresult __result = inner.GetContentScriptType(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void ContentScriptType(wchar[] aContentScriptType){
    scope auto value = new AString(aContentScriptType);
    nsresult __result = inner.SetContentScriptType(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute DOMString contentStyleType; */
  wchar[] ContentStyleType(){
    scope auto value = new AString();
    nsresult __result = inner.GetContentStyleType(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void ContentStyleType(wchar[] aContentStyleType){
    scope auto value = new AString(aContentStyleType);
    nsresult __result = inner.SetContentStyleType(cast(nsAString*)value);
    CheckException(__result);
  }

  /* readonly attribute nsIDOMSVGRect viewport; */
  nsIDOMSVGRectD  Viewport(){
    nsIDOMSVGRect value;
    nsresult __result = inner.GetViewport(&value);
    CheckException(__result);
    return new nsIDOMSVGRectD(value);
  }

  /* readonly attribute float pixelUnitToMillimeterX; */
  float PixelUnitToMillimeterX(){
    float value;
    nsresult __result = inner.GetPixelUnitToMillimeterX(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute float pixelUnitToMillimeterY; */
  float PixelUnitToMillimeterY(){
    float value;
    nsresult __result = inner.GetPixelUnitToMillimeterY(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute float screenPixelToMillimeterX; */
  float ScreenPixelToMillimeterX(){
    float value;
    nsresult __result = inner.GetScreenPixelToMillimeterX(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute float screenPixelToMillimeterY; */
  float ScreenPixelToMillimeterY(){
    float value;
    nsresult __result = inner.GetScreenPixelToMillimeterY(&value);
    CheckException(__result);
    return value;
  }

  /* attribute boolean useCurrentView; */
  PRBool UseCurrentView(){
    PRBool value;
    nsresult __result = inner.GetUseCurrentView(&value);
    CheckException(__result);
    return value;
  }
  void UseCurrentView(PRBool aUseCurrentView){
    nsresult __result = inner.SetUseCurrentView(aUseCurrentView);
    CheckException(__result);
  }

  /* readonly attribute nsIDOMSVGViewSpec currentView; */
  nsIDOMSVGViewSpecD  CurrentView(){
    nsIDOMSVGViewSpec value;
    nsresult __result = inner.GetCurrentView(&value);
    CheckException(__result);
    return new nsIDOMSVGViewSpecD(value);
  }

  /* attribute float currentScale; */
  float CurrentScale(){
    float value;
    nsresult __result = inner.GetCurrentScale(&value);
    CheckException(__result);
    return value;
  }
  void CurrentScale(float aCurrentScale){
    nsresult __result = inner.SetCurrentScale(aCurrentScale);
    CheckException(__result);
  }

  /* readonly attribute nsIDOMSVGPoint currentTranslate; */
  nsIDOMSVGPointD  CurrentTranslate(){
    nsIDOMSVGPoint value;
    nsresult __result = inner.GetCurrentTranslate(&value);
    CheckException(__result);
    return new nsIDOMSVGPointD(value);
  }

  /* unsigned long suspendRedraw (in unsigned long max_wait_milliseconds); */
  PRUint32 SuspendRedraw(PRUint32 max_wait_milliseconds){
    PRUint32 _retval;
    nsresult __result = inner.SuspendRedraw(max_wait_milliseconds, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void unsuspendRedraw (in unsigned long suspend_handle_id); */
  void UnsuspendRedraw(PRUint32 suspend_handle_id){
    nsresult __result = inner.UnsuspendRedraw(suspend_handle_id);
    CheckException(__result);
  }

  /* void unsuspendRedrawAll (); */
  void UnsuspendRedrawAll(){
    nsresult __result = inner.UnsuspendRedrawAll();
    CheckException(__result);
  }

  /* void forceRedraw (); */
  void ForceRedraw(){
    nsresult __result = inner.ForceRedraw();
    CheckException(__result);
  }

  /* void pauseAnimations (); */
  void PauseAnimations(){
    nsresult __result = inner.PauseAnimations();
    CheckException(__result);
  }

  /* void unpauseAnimations (); */
  void UnpauseAnimations(){
    nsresult __result = inner.UnpauseAnimations();
    CheckException(__result);
  }

  /* boolean animationsPaused (); */
  PRBool AnimationsPaused(){
    PRBool _retval;
    nsresult __result = inner.AnimationsPaused(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* float getCurrentTime (); */
  float GetCurrentTime(){
    float _retval;
    nsresult __result = inner.GetCurrentTime(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setCurrentTime (in float seconds); */
  void SetCurrentTime(float seconds){
    nsresult __result = inner.SetCurrentTime(seconds);
    CheckException(__result);
  }

  /* nsIDOMNodeList getIntersectionList (in nsIDOMSVGRect rect, in nsIDOMSVGElement referenceElement); */
  nsIDOMNodeListD  GetIntersectionList(nsIDOMSVGRectD rect, nsIDOMSVGElementD referenceElement){
    nsIDOMNodeList _retval;
    nsresult __result = inner.GetIntersectionList(rect ? cast(nsIDOMSVGRect)rect : null, referenceElement ? cast(nsIDOMSVGElement)referenceElement : null, &_retval);
    CheckException(__result);
    return new nsIDOMNodeListD(_retval);
  }

  /* nsIDOMNodeList getEnclosureList (in nsIDOMSVGRect rect, in nsIDOMSVGElement referenceElement); */
  nsIDOMNodeListD  GetEnclosureList(nsIDOMSVGRectD rect, nsIDOMSVGElementD referenceElement){
    nsIDOMNodeList _retval;
    nsresult __result = inner.GetEnclosureList(rect ? cast(nsIDOMSVGRect)rect : null, referenceElement ? cast(nsIDOMSVGElement)referenceElement : null, &_retval);
    CheckException(__result);
    return new nsIDOMNodeListD(_retval);
  }

  /* boolean checkIntersection (in nsIDOMSVGElement element, in nsIDOMSVGRect rect); */
  PRBool CheckIntersection(nsIDOMSVGElementD element, nsIDOMSVGRectD rect){
    PRBool _retval;
    nsresult __result = inner.CheckIntersection(element ? cast(nsIDOMSVGElement)element : null, rect ? cast(nsIDOMSVGRect)rect : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean checkEnclosure (in nsIDOMSVGElement element, in nsIDOMSVGRect rect); */
  PRBool CheckEnclosure(nsIDOMSVGElementD element, nsIDOMSVGRectD rect){
    PRBool _retval;
    nsresult __result = inner.CheckEnclosure(element ? cast(nsIDOMSVGElement)element : null, rect ? cast(nsIDOMSVGRect)rect : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void deSelectAll (); */
  void DeSelectAll(){
    nsresult __result = inner.DeSelectAll();
    CheckException(__result);
  }

  /* nsIDOMSVGNumber createSVGNumber (); */
  nsIDOMSVGNumberD  CreateSVGNumber(){
    nsIDOMSVGNumber _retval;
    nsresult __result = inner.CreateSVGNumber(&_retval);
    CheckException(__result);
    return new nsIDOMSVGNumberD(_retval);
  }

  /* nsIDOMSVGLength createSVGLength (); */
  nsIDOMSVGLengthD  CreateSVGLength(){
    nsIDOMSVGLength _retval;
    nsresult __result = inner.CreateSVGLength(&_retval);
    CheckException(__result);
    return new nsIDOMSVGLengthD(_retval);
  }

  /* nsIDOMSVGAngle createSVGAngle (); */
  nsIDOMSVGAngleD  CreateSVGAngle(){
    nsIDOMSVGAngle _retval;
    nsresult __result = inner.CreateSVGAngle(&_retval);
    CheckException(__result);
    return new nsIDOMSVGAngleD(_retval);
  }

  /* nsIDOMSVGPoint createSVGPoint (); */
  nsIDOMSVGPointD  CreateSVGPoint(){
    nsIDOMSVGPoint _retval;
    nsresult __result = inner.CreateSVGPoint(&_retval);
    CheckException(__result);
    return new nsIDOMSVGPointD(_retval);
  }

  /* nsIDOMSVGMatrix createSVGMatrix (); */
  nsIDOMSVGMatrixD  CreateSVGMatrix(){
    nsIDOMSVGMatrix _retval;
    nsresult __result = inner.CreateSVGMatrix(&_retval);
    CheckException(__result);
    return new nsIDOMSVGMatrixD(_retval);
  }

  /* nsIDOMSVGRect createSVGRect (); */
  nsIDOMSVGRectD  CreateSVGRect(){
    nsIDOMSVGRect _retval;
    nsresult __result = inner.CreateSVGRect(&_retval);
    CheckException(__result);
    return new nsIDOMSVGRectD(_retval);
  }

  /* nsIDOMSVGTransform createSVGTransform (); */
  nsIDOMSVGTransformD  CreateSVGTransform(){
    nsIDOMSVGTransform _retval;
    nsresult __result = inner.CreateSVGTransform(&_retval);
    CheckException(__result);
    return new nsIDOMSVGTransformD(_retval);
  }

  /* nsIDOMSVGTransform createSVGTransformFromMatrix (in nsIDOMSVGMatrix matrix); */
  nsIDOMSVGTransformD  CreateSVGTransformFromMatrix(nsIDOMSVGMatrixD matrix){
    nsIDOMSVGTransform _retval;
    nsresult __result = inner.CreateSVGTransformFromMatrix(matrix ? cast(nsIDOMSVGMatrix)matrix : null, &_retval);
    CheckException(__result);
    return new nsIDOMSVGTransformD(_retval);
  }

  /* DOMString createSVGString (); */
  wchar[] CreateSVGString(){
    scope auto _retval = new AString;
    nsresult __result = inner.CreateSVGString(cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* nsIDOMElement getElementById (in DOMString elementId); */
  nsIDOMElementD  GetElementById(wchar[] elementId){
    scope auto _elementId = new AString(elementId);
    nsIDOMElement _retval;
    nsresult __result = inner.GetElementById(cast(nsAString*)_elementId, &_retval);
    CheckException(__result);
    return new nsIDOMElementD(_retval);
  }

  /* nsIDOMSVGMatrix getViewboxToViewportTransform (); */
  nsIDOMSVGMatrixD  GetViewboxToViewportTransform(){
    nsIDOMSVGMatrix _retval;
    nsresult __result = inner.GetViewboxToViewportTransform(&_retval);
    CheckException(__result);
    return new nsIDOMSVGMatrixD(_retval);
  }

private:
  nsIDOMSVGSVGElement inner;

}

