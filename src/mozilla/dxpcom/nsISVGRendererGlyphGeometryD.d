/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISVGRendererGlyphGeometry.idl
 */

module mozilla.dxpcom.nsISVGRendererGlyphGeometryD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISVGRendererGlyphGeometry;


public import mozilla.dxpcom.nsISVGRendererGlyphGeometryD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsISVGRendererRegion;

public import mozilla.dxpcom.nsISVGRendererRegionD;

public import mozilla.xpcom.nsISVGRendererGlyphMetrics;

public import mozilla.dxpcom.nsISVGRendererGlyphMetricsD;

public import mozilla.xpcom.nsISVGRendererCanvas;

public import mozilla.dxpcom.nsISVGRendererCanvasD;

public import mozilla.xpcom.nsIDOMSVGRect;

public import mozilla.dxpcom.nsIDOMSVGRectD;


/* starting wrapper class:    nsISVGRendererGlyphGeometry */
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
class nsISVGRendererGlyphGeometryD : public nsISupportsD {

  static const nsIID IID = NS_ISVGRENDERERGLYPHGEOMETRY_IID;


  alias nsISVGRendererGlyphGeometry InnerType;

  this(nsISVGRendererGlyphGeometry intr){
    super(intr);
    this.inner = intr;
  }

  nsISVGRendererGlyphGeometry opCast() {
    return inner;
  }

  void opAssign(nsISVGRendererGlyphGeometry value) {
    inner = value;
  }

  /**
   * Paint this object.
   *
   * @param canvas The canvas to render to.
   */
  /* void render (in nsISVGRendererCanvas canvas); */
  void Render(nsISVGRendererCanvasD canvas){
    nsresult __result = inner.Render(canvas ? cast(nsISVGRendererCanvas)canvas : null);
    CheckException(__result);
  }

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
  nsISVGRendererRegionD  Update(PRUint32 updatemask){
    nsISVGRendererRegion _retval;
    nsresult __result = inner.Update(updatemask, &_retval);
    CheckException(__result);
    return new nsISVGRendererRegionD(_retval);
  }

  /**
   * Get a region object describing the area covered with paint by
   * this glyph geometry.
   *
   * @return Covered region.
   */
  /* nsISVGRendererRegion getCoveredRegion (); */
  nsISVGRendererRegionD  GetCoveredRegion(){
    nsISVGRendererRegion _retval;
    nsresult __result = inner.GetCoveredRegion(&_retval);
    CheckException(__result);
    return new nsISVGRendererRegionD(_retval);
  }

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
  PRBool ContainsPoint(float x, float y){
    PRBool _retval;
    nsresult __result = inner.ContainsPoint(x, y, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Transformed bounding box (does not include stroke width)
   */
  /* readonly attribute nsIDOMSVGRect boundingBox; */
  nsIDOMSVGRectD  BoundingBox(){
    nsIDOMSVGRect value;
    nsresult __result = inner.GetBoundingBox(&value);
    CheckException(__result);
    return new nsIDOMSVGRectD(value);
  }

private:
  nsISVGRendererGlyphGeometry inner;

}

