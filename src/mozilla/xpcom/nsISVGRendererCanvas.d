/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISVGRendererCanvas.idl
 */

module mozilla.xpcom.nsISVGRendererCanvas;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

alias PRUint32 nscolor;

public import mozilla.xpcom.nsIDOMSVGMatrix; /* forward declaration */

public import mozilla.xpcom.nsISVGRendererSurface; /* forward declaration */


/* starting interface:    nsISVGRendererCanvas */
const char[] NS_ISVGRENDERERCANVAS_IID_STR = "2e64a227-de4b-4a69-ab82-5dda1579e90f";

const nsIID NS_ISVGRENDERERCANVAS_IID= 
  {0x2e64a227, 0xde4b, 0x4a69, 
    [ 0xab, 0x82, 0x5d, 0xda, 0x15, 0x79, 0xe9, 0x0f ]};

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
extern(Windows)
interface nsISVGRendererCanvas : nsISupports {
  static const char[] IID_STR = NS_ISVGRENDERERCANVAS_IID_STR;
  static const nsIID IID = NS_ISVGRENDERERCANVAS_IID;

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
  nsresult LockRenderingContext(nsRect * rect, nsIRenderingContext *_retval);

  /**
   * Unlock the canvas portion locked with a previous call to
   * lockRenderingContext(). 
   */
  /* void unlockRenderingContext (); */
  nsresult UnlockRenderingContext();

  /* nsPresContext getPresContext (); */
  nsresult GetPresContext(nsPresContext *_retval);

  /**
   * Fill the canvas with the given color.
   *
   * @param color Fill color.
   */
  /* void clear (in nscolor color); */
  nsresult Clear(nscolor color);

  /**
   * Ensure that all renderings on the canvas have been flushed to the
   * Mozilla-native rendering context.
   */
  /* void flush (); */
  nsresult Flush();

  /**
   * Set render mode (clipping or normal draw)
   */
  enum { SVG_RENDER_MODE_NORMAL = 0U };

  enum { SVG_RENDER_MODE_CLIP = 1U };

  /* attribute unsigned short renderMode; */
  nsresult GetRenderMode(PRUint16 *aRenderMode);
  nsresult SetRenderMode(PRUint16 aRenderMode);

  /**
   * Push/Pop clip path.
   */
  /* void pushClip (); */
  nsresult PushClip();

  /* void popClip (); */
  nsresult PopClip();

  /**
   * Set rectangular clip region.
   */
  /* void setClipRect (in nsIDOMSVGMatrix canvasTM, in float x, in float y, in float width, in float height); */
  nsresult SetClipRect(nsIDOMSVGMatrix canvasTM, float x, float y, float width, float height);

  /**
   * Push/Pop surface as primary drawing surface.
   */
  /* void pushSurface (in nsISVGRendererSurface surface); */
  nsresult PushSurface(nsISVGRendererSurface surface);

  /* void popSurface (); */
  nsresult PopSurface();

  /**
   * Surface composition.
   */
  /* void compositeSurface (in nsISVGRendererSurface surface, in unsigned long x, in unsigned long y, in float opacity); */
  nsresult CompositeSurface(nsISVGRendererSurface surface, PRUint32 x, PRUint32 y, float opacity);

  /* void compositeSurfaceMatrix (in nsISVGRendererSurface surface, in nsIDOMSVGMatrix canvasTM, in float opacity); */
  nsresult CompositeSurfaceMatrix(nsISVGRendererSurface surface, nsIDOMSVGMatrix canvasTM, float opacity);

}

