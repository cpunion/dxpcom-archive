/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISVGRendererPathGeometry.idl
 */

module mozilla.xpcom.nsISVGRendererPathGeometry;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsISVGRendererRegion; /* forward declaration */

public import mozilla.xpcom.nsISVGRendererCanvas; /* forward declaration */

public import mozilla.xpcom.nsIDOMSVGRect; /* forward declaration */


/* starting interface:    nsISVGRendererPathGeometry */
const char[] NS_ISVGRENDERERPATHGEOMETRY_IID_STR = "95f9e432-90e6-48c1-a242-5346517b93d1";

const nsIID NS_ISVGRENDERERPATHGEOMETRY_IID= 
  {0x95f9e432, 0x90e6, 0x48c1, 
    [ 0xa2, 0x42, 0x53, 0x46, 0x51, 0x7b, 0x93, 0xd1 ]};

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
extern(Windows)
interface nsISVGRendererPathGeometry : nsISupports {
  static const char[] IID_STR = NS_ISVGRENDERERPATHGEOMETRY_IID_STR;
  static const nsIID IID = NS_ISVGRENDERERPATHGEOMETRY_IID;

  /**
   * Paint this object.
   *
   * @param canvas The canvas to render to.
   */
  /* void render (in nsISVGRendererCanvas canvas); */
  nsresult Render(nsISVGRendererCanvas canvas);

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
  nsresult Update(PRUint32 updatemask, nsISVGRendererRegion *_retval);

  /**
   * Get a region object describing the area covered with paint by
   * this path geometry.
   *
   * @return Covered region.
   */
  /* nsISVGRendererRegion getCoveredRegion (); */
  nsresult GetCoveredRegion(nsISVGRendererRegion *_retval);

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
  nsresult ContainsPoint(float x, float y, PRBool *_retval);

  /**
   * Bounding box (does not include stroke width)
   */
  /* readonly attribute nsIDOMSVGRect boundingBox; */
  nsresult GetBoundingBox(nsIDOMSVGRect  *aBoundingBox);

  /* void flatten (out nsSVGPathData data); */
  nsresult Flatten(nsSVGPathData *data);

}

