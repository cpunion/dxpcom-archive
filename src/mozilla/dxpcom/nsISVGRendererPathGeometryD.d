/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISVGRendererPathGeometry.idl
 */

module mozilla.dxpcom.nsISVGRendererPathGeometryD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISVGRendererPathGeometry;


public import mozilla.dxpcom.nsISVGRendererPathGeometryD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsISVGRendererRegion;

public import mozilla.dxpcom.nsISVGRendererRegionD;

public import mozilla.xpcom.nsISVGRendererCanvas;

public import mozilla.dxpcom.nsISVGRendererCanvasD;

public import mozilla.xpcom.nsIDOMSVGRect;

public import mozilla.dxpcom.nsIDOMSVGRectD;


/* starting wrapper class:    nsISVGRendererPathGeometry */
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
 * rendering engine-native path objects.
 *
 * A path geometry object is instantiated by the rendering backend for
 * a given nsISVGPathGeometrySource object with a call to
 * nsISVGRenderer::createPathGeometry(). The path geometry object is
 * assumed to store a reference to its associated source object and
 * provide rendering, hit-testing and metrics for the path described
 * by the nsISVGPathGeometrySource members.
 */
class nsISVGRendererPathGeometryD : public nsISupportsD {

  static const nsIID IID = NS_ISVGRENDERERPATHGEOMETRY_IID;


  alias nsISVGRendererPathGeometry InnerType;

  this(nsISVGRendererPathGeometry intr){
    super(intr);
    this.inner = intr;
  }

  nsISVGRendererPathGeometry opCast() {
    return inner;
  }

  void opAssign(nsISVGRendererPathGeometry value) {
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
   * Called by this object's corresponding nsISVGPathGeometrySource as
   * a notification that some of the source's data (identified by
   * paramter 'updatemask') has changed.
   *
   * @param updatemask An OR-ed combination of the UPDATEMASK_*
   * constants defined in nsISVGPathGeometrySource.
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
   * this path geometry.
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
   * Hit-testing method. Does this path geometry (with all relevant
   * transformations applied) contain the point x,y? Mode of operation
   * (e.g. whether to test fill or stroke) is determined by
   * nsISVGPathGeometrySource::hittestMask.
   *
   * @param x X-coordinate of test point.  @param y Y-coordinate of
   * test point.
   * @return PR_TRUE if the path geometry contains the point,
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
   * Bounding box (does not include stroke width)
   */
  /* readonly attribute nsIDOMSVGRect boundingBox; */
  nsIDOMSVGRectD  BoundingBox(){
    nsIDOMSVGRect value;
    nsresult __result = inner.GetBoundingBox(&value);
    CheckException(__result);
    return new nsIDOMSVGRectD(value);
  }

  /* void flatten (out nsSVGPathData data); */
  void Flatten(out nsSVGPathDataD data){
    nsSVGPathData _data;
    nsresult __result = inner.Flatten(&_data);
    CheckException(__result);
    data = _data ? new nsSVGPathDataD(_data) : null;
  }

private:
  nsISVGRendererPathGeometry inner;

}

