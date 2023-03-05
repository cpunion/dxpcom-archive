/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGSVGElement.idl
 */

module mozilla.xpcom.nsIDOMSVGSVGElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMSVGElement;

public import mozilla.xpcom.nsIDOMSVGAnimatedLength; /* forward declaration */

public import mozilla.xpcom.nsIDOMSVGRect; /* forward declaration */

public import mozilla.xpcom.nsIDOMSVGViewSpec; /* forward declaration */

public import mozilla.xpcom.nsIDOMSVGPoint; /* forward declaration */

public import mozilla.xpcom.nsIDOMSVGNumber; /* forward declaration */

public import mozilla.xpcom.nsIDOMSVGLength; /* forward declaration */

public import mozilla.xpcom.nsIDOMSVGAngle; /* forward declaration */

public import mozilla.xpcom.nsIDOMSVGMatrix; /* forward declaration */

public import mozilla.xpcom.nsIDOMSVGTransform; /* forward declaration */


/* starting interface:    nsIDOMSVGSVGElement */
const char[] NS_IDOMSVGSVGELEMENT_IID_STR = "67b8f41e-3577-4c8a-b1de-bef51186fe08";

const nsIID NS_IDOMSVGSVGELEMENT_IID= 
  {0x67b8f41e, 0x3577, 0x4c8a, 
    [ 0xb1, 0xde, 0xbe, 0xf5, 0x11, 0x86, 0xfe, 0x08 ]};

extern(Windows)
interface nsIDOMSVGSVGElement : nsIDOMSVGElement {
  static const char[] IID_STR = NS_IDOMSVGSVGELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMSVGSVGELEMENT_IID;

  /* readonly attribute nsIDOMSVGAnimatedLength x; */
  nsresult GetX(nsIDOMSVGAnimatedLength  *aX);

  /* readonly attribute nsIDOMSVGAnimatedLength y; */
  nsresult GetY(nsIDOMSVGAnimatedLength  *aY);

  /* readonly attribute nsIDOMSVGAnimatedLength width; */
  nsresult GetWidth(nsIDOMSVGAnimatedLength  *aWidth);

  /* readonly attribute nsIDOMSVGAnimatedLength height; */
  nsresult GetHeight(nsIDOMSVGAnimatedLength  *aHeight);

  /* attribute DOMString contentScriptType; */
  nsresult GetContentScriptType(nsAString * aContentScriptType);
  nsresult SetContentScriptType(nsAString * aContentScriptType);

  /* attribute DOMString contentStyleType; */
  nsresult GetContentStyleType(nsAString * aContentStyleType);
  nsresult SetContentStyleType(nsAString * aContentStyleType);

  /* readonly attribute nsIDOMSVGRect viewport; */
  nsresult GetViewport(nsIDOMSVGRect  *aViewport);

  /* readonly attribute float pixelUnitToMillimeterX; */
  nsresult GetPixelUnitToMillimeterX(float *aPixelUnitToMillimeterX);

  /* readonly attribute float pixelUnitToMillimeterY; */
  nsresult GetPixelUnitToMillimeterY(float *aPixelUnitToMillimeterY);

  /* readonly attribute float screenPixelToMillimeterX; */
  nsresult GetScreenPixelToMillimeterX(float *aScreenPixelToMillimeterX);

  /* readonly attribute float screenPixelToMillimeterY; */
  nsresult GetScreenPixelToMillimeterY(float *aScreenPixelToMillimeterY);

  /* attribute boolean useCurrentView; */
  nsresult GetUseCurrentView(PRBool *aUseCurrentView);
  nsresult SetUseCurrentView(PRBool aUseCurrentView);

  /* readonly attribute nsIDOMSVGViewSpec currentView; */
  nsresult GetCurrentView(nsIDOMSVGViewSpec  *aCurrentView);

  /* attribute float currentScale; */
  nsresult GetCurrentScale(float *aCurrentScale);
  nsresult SetCurrentScale(float aCurrentScale);

  /* readonly attribute nsIDOMSVGPoint currentTranslate; */
  nsresult GetCurrentTranslate(nsIDOMSVGPoint  *aCurrentTranslate);

  /* unsigned long suspendRedraw (in unsigned long max_wait_milliseconds); */
  nsresult SuspendRedraw(PRUint32 max_wait_milliseconds, PRUint32 *_retval);

  /* void unsuspendRedraw (in unsigned long suspend_handle_id); */
  nsresult UnsuspendRedraw(PRUint32 suspend_handle_id);

  /* void unsuspendRedrawAll (); */
  nsresult UnsuspendRedrawAll();

  /* void forceRedraw (); */
  nsresult ForceRedraw();

  /* void pauseAnimations (); */
  nsresult PauseAnimations();

  /* void unpauseAnimations (); */
  nsresult UnpauseAnimations();

  /* boolean animationsPaused (); */
  nsresult AnimationsPaused(PRBool *_retval);

  /* float getCurrentTime (); */
  nsresult GetCurrentTime(float *_retval);

  /* void setCurrentTime (in float seconds); */
  nsresult SetCurrentTime(float seconds);

  /* nsIDOMNodeList getIntersectionList (in nsIDOMSVGRect rect, in nsIDOMSVGElement referenceElement); */
  nsresult GetIntersectionList(nsIDOMSVGRect rect, nsIDOMSVGElement referenceElement, nsIDOMNodeList *_retval);

  /* nsIDOMNodeList getEnclosureList (in nsIDOMSVGRect rect, in nsIDOMSVGElement referenceElement); */
  nsresult GetEnclosureList(nsIDOMSVGRect rect, nsIDOMSVGElement referenceElement, nsIDOMNodeList *_retval);

  /* boolean checkIntersection (in nsIDOMSVGElement element, in nsIDOMSVGRect rect); */
  nsresult CheckIntersection(nsIDOMSVGElement element, nsIDOMSVGRect rect, PRBool *_retval);

  /* boolean checkEnclosure (in nsIDOMSVGElement element, in nsIDOMSVGRect rect); */
  nsresult CheckEnclosure(nsIDOMSVGElement element, nsIDOMSVGRect rect, PRBool *_retval);

  /* void deSelectAll (); */
  nsresult DeSelectAll();

  /* nsIDOMSVGNumber createSVGNumber (); */
  nsresult CreateSVGNumber(nsIDOMSVGNumber *_retval);

  /* nsIDOMSVGLength createSVGLength (); */
  nsresult CreateSVGLength(nsIDOMSVGLength *_retval);

  /* nsIDOMSVGAngle createSVGAngle (); */
  nsresult CreateSVGAngle(nsIDOMSVGAngle *_retval);

  /* nsIDOMSVGPoint createSVGPoint (); */
  nsresult CreateSVGPoint(nsIDOMSVGPoint *_retval);

  /* nsIDOMSVGMatrix createSVGMatrix (); */
  nsresult CreateSVGMatrix(nsIDOMSVGMatrix *_retval);

  /* nsIDOMSVGRect createSVGRect (); */
  nsresult CreateSVGRect(nsIDOMSVGRect *_retval);

  /* nsIDOMSVGTransform createSVGTransform (); */
  nsresult CreateSVGTransform(nsIDOMSVGTransform *_retval);

  /* nsIDOMSVGTransform createSVGTransformFromMatrix (in nsIDOMSVGMatrix matrix); */
  nsresult CreateSVGTransformFromMatrix(nsIDOMSVGMatrix matrix, nsIDOMSVGTransform *_retval);

  /* DOMString createSVGString (); */
  nsresult CreateSVGString(nsAString * _retval);

  /* nsIDOMElement getElementById (in DOMString elementId); */
  nsresult GetElementById(nsAString * elementId, nsIDOMElement *_retval);

  /* nsIDOMSVGMatrix getViewboxToViewportTransform (); */
  nsresult GetViewboxToViewportTransform(nsIDOMSVGMatrix *_retval);

}

