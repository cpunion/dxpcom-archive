/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISVGRendererGlyphGeometry.idl
 */

module mozilla.xpcom.nsISVGRendererGlyphGeometry;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsISVGRendererRegion; /* forward declaration */

public import mozilla.xpcom.nsISVGRendererGlyphMetrics; /* forward declaration */

public import mozilla.xpcom.nsISVGRendererCanvas; /* forward declaration */

public import mozilla.xpcom.nsIDOMSVGRect; /* forward declaration */


/* starting interface:    nsISVGRendererGlyphGeometry */
const char[] NS_ISVGRENDERERGLYPHGEOMETRY_IID_STR = "e2b739d0-8415-4f36-982c-3579876e1435";

const nsIID NS_ISVGRENDERERGLYPHGEOMETRY_IID= 
  {0xe2b739d0, 0x8415, 0x4f36, 
    [ 0x98, 0x2c, 0x35, 0x79, 0x87, 0x6e, 0x14, 0x35 ]};

/**
 * \addtogroup renderer_interfaces Rendering Engine Interfaces
 * @{
 */
/**
 * One of a number of interfaces (all starting with nsISVGRenderer*)
 * to be implemented by an SVG rendering engine. See nsISVGRenderer
 * for more details.
 *
 * The SVG rendering backend uses this interface to communicate to the
 * rendering engine-native glyph objects.
 *
 * A glyph object is instantiated by the rendering backend for a given
 * nsISVGGlyphGeometrySource object with a call to
 * nsISVGRenderer::createGlyphGeometry(). The glyph object is assumed
 * to store a reference to its associated source object and provide
 * glyph rendering and hit-testing for the (composite) glyph described
 * by the nsISVGGlyphGeometrySource members.
 */
extern(Windows)
interface nsISVGRendererGlyphGeometry : nsISupports {
  static const char[] IID_STR = NS_ISVGRENDERERGLYPHGEOMETRY_IID_STR;
  static const nsIID IID = NS_ISVGRENDERERGLYPHGEOMETRY_IID;

  /**
   * Paint this object.
   *
   * @param canvas The canvas to render to.
   */
  /* void render (in nsISVGRendererCanvas canvas); */
  nsresult Render(nsISVGRendererCanvas canvas);

  /**
   * Called by this object's corresponding nsISVGGlyphGeometrySource
   * as a notification that some of the source's data (identified by
   * paramter 'updatemask') has changed.
   *
   * @param updatemask An OR-ed combination of the UPDATEMASK_*
   * constants defined in nsISVGGlyphGeometrySource.
   * @return Region that needs to be redrawn.
   */
  /* nsISVGRendererRegion update (in unsigned long updatemask); */
  nsresult Update(PRUint32 updatemask, nsISVGRendererRegion *_retval);

  /**
   * Get a region object describing the area covered with paint by
   * this glyph geometry.
   *
   * @return Covered region.
   */
  /* nsISVGRendererRegion getCoveredRegion (); */
  nsresult GetCoveredRegion(nsISVGRendererRegion *_retval);

  /**
   * Hit-testing method. Does this glyph geometry (with all relevant
   * transformations applied) contain the point x,y?  Should work on a
   * character-cell basis, rather than the actual character outline.
   *
   * @param x X-coordinate of test point.  @param y Y-coordinate of
   * test point.
   * @return PR_TRUE if the glyph geometry contains the point,
   * PR_FALSE otherwise.
   */
  /* boolean containsPoint (in float x, in float y); */
  nsresult ContainsPoint(float x, float y, PRBool *_retval);

  /**
   * Transformed bounding box (does not include stroke width)
   */
  /* readonly attribute nsIDOMSVGRect boundingBox; */
  nsresult GetBoundingBox(nsIDOMSVGRect  *aBoundingBox);

}

