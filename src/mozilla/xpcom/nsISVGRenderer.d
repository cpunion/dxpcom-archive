/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISVGRenderer.idl
 */

module mozilla.xpcom.nsISVGRenderer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsISVGPathGeometrySource; /* forward declaration */

public import mozilla.xpcom.nsISVGGlyphMetricsSource; /* forward declaration */

public import mozilla.xpcom.nsISVGGlyphGeometrySource; /* forward declaration */

public import mozilla.xpcom.nsISVGRendererPathGeometry; /* forward declaration */

public import mozilla.xpcom.nsISVGRendererGlyphMetrics; /* forward declaration */

public import mozilla.xpcom.nsISVGRendererGlyphGeometry; /* forward declaration */

public import mozilla.xpcom.nsISVGRendererCanvas; /* forward declaration */

public import mozilla.xpcom.nsISVGRendererSurface; /* forward declaration */

public import mozilla.xpcom.nsISVGRendererRegion; /* forward declaration */


/* starting interface:    nsISVGRenderer */
const char[] NS_ISVGRENDERER_IID_STR = "14e914e0-f283-4fd0-9d71-d3e842927007";

const nsIID NS_ISVGRENDERER_IID= 
  {0x14e914e0, 0xf283, 0x4fd0, 
    [ 0x9d, 0x71, 0xd3, 0xe8, 0x42, 0x92, 0x70, 0x07 ]};

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
extern(Windows)
interface nsISVGRenderer : nsISupports {
  static const char[] IID_STR = NS_ISVGRENDERER_IID_STR;
  static const nsIID IID = NS_ISVGRENDERER_IID;

  /**
   * Create a rendering engine-native path geometry object for the
   * source object given by 'src'.
   *
   * @param src The source object describing the path for which
   * this object is being created.
   * @return A rendering engine-native path geometry object.
   */
  /* nsISVGRendererPathGeometry createPathGeometry (in nsISVGPathGeometrySource src); */
  nsresult CreatePathGeometry(nsISVGPathGeometrySource src, nsISVGRendererPathGeometry *_retval);

  /**
   * Create a rendering engine-native glyph metrics object for the
   * source object given by 'src'.
   *
   * @param src The source object describing the glyph for which
   * this metrics object is being created.
   * @return A rendering engine-native glyph metrics object.
   */
  /* nsISVGRendererGlyphMetrics createGlyphMetrics (in nsISVGGlyphMetricsSource src); */
  nsresult CreateGlyphMetrics(nsISVGGlyphMetricsSource src, nsISVGRendererGlyphMetrics *_retval);

  /**
   * Create a rendering engine-native glyph geometry object for the
   * source object given by 'src'.
   *
   * @param src The source object describing the glyph for which
   * this object is being created.
   * @return A rendering engine-native glyph geometry object.
   */
  /* nsISVGRendererGlyphGeometry createGlyphGeometry (in nsISVGGlyphGeometrySource src); */
  nsresult CreateGlyphGeometry(nsISVGGlyphGeometrySource src, nsISVGRendererGlyphGeometry *_retval);

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
  nsresult CreateCanvas(nsIRenderingContext ctx, nsPresContext presContext, nsRect * dirtyRect, nsISVGRendererCanvas *_retval);

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
  nsresult CreateRectRegion(float x, float y, float width, float height, nsISVGRendererRegion *_retval);

  /**
   * Create a rendering engine-native surface object.
   *
   * @param width Width of rectangle (pixels).
   * @param height Height of rectangle (pixels).
   *
   * @return A rendering engine-native surface object.
   */
  /* [noscript] nsISVGRendererSurface createSurface (in unsigned long width, in unsigned long height); */
  nsresult CreateSurface(PRUint32 width, PRUint32 height, nsISVGRendererSurface *_retval);

}

