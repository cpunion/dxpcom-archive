/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISVGRenderer.idl
 */

module mozilla.dxpcom.nsISVGRendererD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISVGRenderer;


public import mozilla.dxpcom.nsISVGRendererD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsISVGPathGeometrySource;

public import mozilla.dxpcom.nsISVGPathGeometrySourceD;

public import mozilla.xpcom.nsISVGGlyphMetricsSource;

public import mozilla.dxpcom.nsISVGGlyphMetricsSourceD;

public import mozilla.xpcom.nsISVGGlyphGeometrySource;

public import mozilla.dxpcom.nsISVGGlyphGeometrySourceD;

public import mozilla.xpcom.nsISVGRendererPathGeometry;

public import mozilla.dxpcom.nsISVGRendererPathGeometryD;

public import mozilla.xpcom.nsISVGRendererGlyphMetrics;

public import mozilla.dxpcom.nsISVGRendererGlyphMetricsD;

public import mozilla.xpcom.nsISVGRendererGlyphGeometry;

public import mozilla.dxpcom.nsISVGRendererGlyphGeometryD;

public import mozilla.xpcom.nsISVGRendererCanvas;

public import mozilla.dxpcom.nsISVGRendererCanvasD;

public import mozilla.xpcom.nsISVGRendererSurface;

public import mozilla.dxpcom.nsISVGRendererSurfaceD;

public import mozilla.xpcom.nsISVGRendererRegion;

public import mozilla.dxpcom.nsISVGRendererRegionD;


/* starting wrapper class:    nsISVGRenderer */
/**
 * \addtogroup renderer_interfaces Rendering Engine Interfaces
 * @{
 */
/**
 * One of a number of interfaces (all starting with nsISVGRenderer*)
 * to be implemented by an SVG rendering engine. 
 *
 * This interface serves as a factory for rendering engine-related
 * objects. Each rendering engine needs to make available an
 * nsIRenderer-object with a contract id of the form
 * "@mozilla.org/svg/renderer;1?tech=NAME".
 *
 * Engines implemented at the moment include an ms windows gdi+ engine
 * ("@mozilla.org/svg/renderer;1?tech=GDIPLUS") and a (somewhat)
 * cross-platform libart engine
 * ("@mozilla.org/svg/renderer;1?tech=LIBART").
 */
class nsISVGRendererD : public nsISupportsD {

  static const nsIID IID = NS_ISVGRENDERER_IID;


  alias nsISVGRenderer InnerType;

  this(nsISVGRenderer intr){
    super(intr);
    this.inner = intr;
  }

  nsISVGRenderer opCast() {
    return inner;
  }

  void opAssign(nsISVGRenderer value) {
    inner = value;
  }

  /**
   * Create a rendering engine-native path geometry object for the
   * source object given by 'src'.
   *
   * @param src The source object describing the path for which
   * this object is being created.
   * @return A rendering engine-native path geometry object.
   */
  /* nsISVGRendererPathGeometry createPathGeometry (in nsISVGPathGeometrySource src); */
  nsISVGRendererPathGeometryD  CreatePathGeometry(nsISVGPathGeometrySourceD src){
    nsISVGRendererPathGeometry _retval;
    nsresult __result = inner.CreatePathGeometry(src ? cast(nsISVGPathGeometrySource)src : null, &_retval);
    CheckException(__result);
    return new nsISVGRendererPathGeometryD(_retval);
  }

  /**
   * Create a rendering engine-native glyph metrics object for the
   * source object given by 'src'.
   *
   * @param src The source object describing the glyph for which
   * this metrics object is being created.
   * @return A rendering engine-native glyph metrics object.
   */
  /* nsISVGRendererGlyphMetrics createGlyphMetrics (in nsISVGGlyphMetricsSource src); */
  nsISVGRendererGlyphMetricsD  CreateGlyphMetrics(nsISVGGlyphMetricsSourceD src){
    nsISVGRendererGlyphMetrics _retval;
    nsresult __result = inner.CreateGlyphMetrics(src ? cast(nsISVGGlyphMetricsSource)src : null, &_retval);
    CheckException(__result);
    return new nsISVGRendererGlyphMetricsD(_retval);
  }

  /**
   * Create a rendering engine-native glyph geometry object for the
   * source object given by 'src'.
   *
   * @param src The source object describing the glyph for which
   * this object is being created.
   * @return A rendering engine-native glyph geometry object.
   */
  /* nsISVGRendererGlyphGeometry createGlyphGeometry (in nsISVGGlyphGeometrySource src); */
  nsISVGRendererGlyphGeometryD  CreateGlyphGeometry(nsISVGGlyphGeometrySourceD src){
    nsISVGRendererGlyphGeometry _retval;
    nsresult __result = inner.CreateGlyphGeometry(src ? cast(nsISVGGlyphGeometrySource)src : null, &_retval);
    CheckException(__result);
    return new nsISVGRendererGlyphGeometryD(_retval);
  }

  /**
   * Create a rendering engine-native canvas object for the
   * Mozilla-native rendering context 'ctx' and presentation context
   * 'presContext'.
   *
   * @param ctx Mozilla-native rendering context.
   * @param presContext Presentation context.
   * @param dirtyRect Area that the canvas should cover.
   * @return A rendering engine-native canvas object.
   */
  /* [noscript] nsISVGRendererCanvas createCanvas (in nsIRenderingContext ctx, in nsPresContext presContext, [const] in nsRectRef dirtyRect); */
  nsISVGRendererCanvasD  CreateCanvas(nsIRenderingContextD ctx, nsPresContextD presContext, nsRect * dirtyRect){
    nsISVGRendererCanvas _retval;
    nsresult __result = inner.CreateCanvas(ctx ? cast(nsIRenderingContext)ctx : null, presContext ? cast(nsPresContext)presContext : null, dirtyRect, &_retval);
    CheckException(__result);
    return new nsISVGRendererCanvasD(_retval);
  }

  /**
   * Create a rendering engine-native region object for the
   * given axis-aligned rectangle.
   *
   * @param x X-coordinate of rectangle (pixels).
   * @param y Y-coordinate of rectangle (pixels).
   * @param width Width of rectangle (pixels).
   * @param height Height of rectangle (pixels).
   *
   * @return A rendering engine-native region object.
   */
  /* nsISVGRendererRegion createRectRegion (in float x, in float y, in float width, in float height); */
  nsISVGRendererRegionD  CreateRectRegion(float x, float y, float width, float height){
    nsISVGRendererRegion _retval;
    nsresult __result = inner.CreateRectRegion(x, y, width, height, &_retval);
    CheckException(__result);
    return new nsISVGRendererRegionD(_retval);
  }

  /**
   * Create a rendering engine-native surface object.
   *
   * @param width Width of rectangle (pixels).
   * @param height Height of rectangle (pixels).
   *
   * @return A rendering engine-native surface object.
   */
  /* [noscript] nsISVGRendererSurface createSurface (in unsigned long width, in unsigned long height); */
  nsISVGRendererSurfaceD  CreateSurface(PRUint32 width, PRUint32 height){
    nsISVGRendererSurface _retval;
    nsresult __result = inner.CreateSurface(width, height, &_retval);
    CheckException(__result);
    return new nsISVGRendererSurfaceD(_retval);
  }

private:
  nsISVGRenderer inner;

}

