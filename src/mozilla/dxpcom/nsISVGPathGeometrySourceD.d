/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISVGPathGeometrySource.idl
 */

module mozilla.dxpcom.nsISVGPathGeometrySourceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISVGPathGeometrySource;


public import mozilla.dxpcom.nsISVGPathGeometrySourceD;

public import mozilla.xpcom.nsISVGGeometrySource;
public import mozilla.dxpcom.nsISVGGeometrySourceD;

public import mozilla.xpcom.nsISVGRendererPathBuilder;

public import mozilla.dxpcom.nsISVGRendererPathBuilderD;


/* starting wrapper class:    nsISVGPathGeometrySource */
/**
 * \addtogroup rendering_backend_interfaces Rendering Backend Interfaces
 * @{
 */
/**
 * Describes a 'path geometry' object in the SVG rendering backend,
 * i.e. a graphical object composed of lines, Bezier curves and
 * elliptical arcs, that can be stroked and filled. The rendering
 * backend maintains an object implementing this interface for each
 * rendering engine-native path geometry object.
 *
 * An engine-native path geometry object will be informed of changes
 * in a path geometry's description with a call to its
 * nsISVGRendererPathGeometry::update() method with an OR-ed
 * combination of the UPDATEMASK_* constants defined in this interface
 * (and its base-interface).
 *
 * @nosubgrouping
 */
class nsISVGPathGeometrySourceD : public nsISVGGeometrySourceD {

  static const nsIID IID = NS_ISVGPATHGEOMETRYSOURCE_IID;


  alias nsISVGPathGeometrySource InnerType;

  this(nsISVGPathGeometrySource intr){
    super(intr);
    this.inner = intr;
  }

  nsISVGPathGeometrySource opCast() {
    return inner;
  }

  void opAssign(nsISVGPathGeometrySource value) {
    inner = value;
  }

  /**
   * @name Path description
   * @{
   */
/**
   * Write a description of the path to the 'pathBuilder'.
   *
   * @param pathBuilder Object to write path description to.
   */
  /* void constructPath (in nsISVGRendererPathBuilder pathBuilder); */
  void ConstructPath(nsISVGRendererPathBuilderD pathBuilder){
    nsresult __result = inner.ConstructPath(pathBuilder ? cast(nsISVGRendererPathBuilder)pathBuilder : null);
    CheckException(__result);
  }

  enum { UPDATEMASK_PATH = 32768U }

  /** @} */
/**
   * @name Hittest mode of operation
   * @{
   */
  enum { HITTEST_MASK_FILL = 1U }

  enum { HITTEST_MASK_STROKE = 2U }

  /**
   * Determines mode of operation expected of the
   * nsISVGRendererPathGeometry::containsPoint() method.  A
   * combination of the 'HITTEST_MASK_*' constants defined in this
   * interface.
   */
  /* readonly attribute unsigned short hittestMask; */
  PRUint16 HittestMask(){
    PRUint16 value;
    nsresult __result = inner.GetHittestMask(&value);
    CheckException(__result);
    return value;
  }

  enum { UPDATEMASK_HITTEST_MASK = 65536U }

  /** @} */
/**
   * @name Shape rendering hints
   * @{
   */
  enum { SHAPE_RENDERING_AUTO = 0U }

  enum { SHAPE_RENDERING_OPTIMIZESPEED = 1U }

  enum { SHAPE_RENDERING_CRISPEDGES = 2U }

  enum { SHAPE_RENDERING_GEOMETRICPRECISION = 3U }

  /* readonly attribute unsigned short shapeRendering; */
  PRUint16 ShapeRendering(){
    PRUint16 value;
    nsresult __result = inner.GetShapeRendering(&value);
    CheckException(__result);
    return value;
  }

private:
  nsISVGPathGeometrySource inner;

}

