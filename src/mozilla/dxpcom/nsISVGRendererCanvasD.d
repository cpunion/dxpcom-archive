/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISVGRendererCanvas.idl
 */

module mozilla.dxpcom.nsISVGRendererCanvasD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISVGRendererCanvas;


public import mozilla.dxpcom.nsISVGRendererCanvasD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMSVGMatrix;

public import mozilla.dxpcom.nsIDOMSVGMatrixD;

public import mozilla.xpcom.nsISVGRendererSurface;

public import mozilla.dxpcom.nsISVGRendererSurfaceD;


/* starting wrapper class:    nsISVGRendererCanvas */
/**
 * \addtogroup renderer_interfaces Rendering Engine Interfaces
 * @{
 */
/**
 * One of a number of interfaces (all starting with nsISVGRenderer*)
 * to be implemented by an SVG rendering engine. See nsISVGRenderer
 * for more details.
 *
 * This interface abstracts a rendering engine-native canvas object
 * onto which path and glyph geometries can be painted.
 *
 * A canvas object is instantiated by the backend for a given
 * Mozilla-native rendering object with a call to
 * nsISVGRenderer::createCanvas().
 */
class nsISVGRendererCanvasD : public nsISupportsD {

  static const nsIID IID = NS_ISVGRENDERERCANVAS_IID;


  alias nsISVGRendererCanvas InnerType;

  this(nsISVGRendererCanvas intr){
    super(intr);
    this.inner = intr;
  }

  nsISVGRendererCanvas opCast() {
    return inner;
  }

  void opAssign(nsISVGRendererCanvas value) {
    inner = value;
  }

  /**
   * Lock a portion of the canvas and obtain a rendering context onto
   * which Mozilla can paint non-svg content. This is needed for
   * (partial) foreignObject support.
   *
   * lockRenderingContext() calls are paired with
   * unlockRenderingContext() calls.
   *
   * @param rect Area to be locked.
   * @return Mozilla-native rendering context for the locked area.
   */
  /* [noscript] nsIRenderingContext lockRenderingContext ([const] in nsRectRef rect); */
  nsIRenderingContextD  LockRenderingContext(nsRect * rect){
    nsIRenderingContext _retval;
    nsresult __result = inner.LockRenderingContext(rect, &_retval);
    CheckException(__result);
    return new nsIRenderingContextD(_retval);
  }

  /**
   * Unlock the canvas portion locked with a previous call to
   * lockRenderingContext(). 
   */
  /* void unlockRenderingContext (); */
  void UnlockRenderingContext(){
    nsresult __result = inner.UnlockRenderingContext();
    CheckException(__result);
  }

  /* nsPresContext getPresContext (); */
  nsPresContextD  GetPresContext(){
    nsPresContext _retval;
    nsresult __result = inner.GetPresContext(&_retval);
    CheckException(__result);
    return new nsPresContextD(_retval);
  }

  /**
   * Fill the canvas with the given color.
   *
   * @param color Fill color.
   */
  /* void clear (in nscolor color); */
  void Clear(nscolor color){
    nsresult __result = inner.Clear(color);
    CheckException(__result);
  }

  /**
   * Ensure that all renderings on the canvas have been flushed to the
   * Mozilla-native rendering context.
   */
  /* void flush (); */
  void Flush(){
    nsresult __result = inner.Flush();
    CheckException(__result);
  }

  /**
   * Set render mode (clipping or normal draw)
   */
  enum { SVG_RENDER_MODE_NORMAL = 0U }

  enum { SVG_RENDER_MODE_CLIP = 1U }

  /* attribute unsigned short renderMode; */
  PRUint16 RenderMode(){
    PRUint16 value;
    nsresult __result = inner.GetRenderMode(&value);
    CheckException(__result);
    return value;
  }
  void RenderMode(PRUint16 aRenderMode){
    nsresult __result = inner.SetRenderMode(aRenderMode);
    CheckException(__result);
  }

  /**
   * Push/Pop clip path.
   */
  /* void pushClip (); */
  void PushClip(){
    nsresult __result = inner.PushClip();
    CheckException(__result);
  }

  /* void popClip (); */
  void PopClip(){
    nsresult __result = inner.PopClip();
    CheckException(__result);
  }

  /**
   * Set rectangular clip region.
   */
  /* void setClipRect (in nsIDOMSVGMatrix canvasTM, in float x, in float y, in float width, in float height); */
  void SetClipRect(nsIDOMSVGMatrixD canvasTM, float x, float y, float width, float height){
    nsresult __result = inner.SetClipRect(canvasTM ? cast(nsIDOMSVGMatrix)canvasTM : null, x, y, width, height);
    CheckException(__result);
  }

  /**
   * Push/Pop surface as primary drawing surface.
   */
  /* void pushSurface (in nsISVGRendererSurface surface); */
  void PushSurface(nsISVGRendererSurfaceD surface){
    nsresult __result = inner.PushSurface(surface ? cast(nsISVGRendererSurface)surface : null);
    CheckException(__result);
  }

  /* void popSurface (); */
  void PopSurface(){
    nsresult __result = inner.PopSurface();
    CheckException(__result);
  }

  /**
   * Surface composition.
   */
  /* void compositeSurface (in nsISVGRendererSurface surface, in unsigned long x, in unsigned long y, in float opacity); */
  void CompositeSurface(nsISVGRendererSurfaceD surface, PRUint32 x, PRUint32 y, float opacity){
    nsresult __result = inner.CompositeSurface(surface ? cast(nsISVGRendererSurface)surface : null, x, y, opacity);
    CheckException(__result);
  }

  /* void compositeSurfaceMatrix (in nsISVGRendererSurface surface, in nsIDOMSVGMatrix canvasTM, in float opacity); */
  void CompositeSurfaceMatrix(nsISVGRendererSurfaceD surface, nsIDOMSVGMatrixD canvasTM, float opacity){
    nsresult __result = inner.CompositeSurfaceMatrix(surface ? cast(nsISVGRendererSurface)surface : null, canvasTM ? cast(nsIDOMSVGMatrix)canvasTM : null, opacity);
    CheckException(__result);
  }

private:
  nsISVGRendererCanvas inner;

}

