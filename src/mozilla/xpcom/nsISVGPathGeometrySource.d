/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISVGPathGeometrySource.idl
 */

module mozilla.xpcom.nsISVGPathGeometrySource;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISVGGeometrySource;

public import mozilla.xpcom.nsISVGRendererPathBuilder; /* forward declaration */


/* starting interface:    nsISVGPathGeometrySource */
const char[] NS_ISVGPATHGEOMETRYSOURCE_IID_STR = "73c9350e-6b0b-4458-aa24-aa5333476eff";

const nsIID NS_ISVGPATHGEOMETRYSOURCE_IID= 
  {0x73c9350e, 0x6b0b, 0x4458, 
    [ 0xaa, 0x24, 0xaa, 0x53, 0x33, 0x47, 0x6e, 0xff ]};

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
extern(Windows)
interface nsISVGPathGeometrySource : nsISVGGeometrySource {
  static const char[] IID_STR = NS_ISVGPATHGEOMETRYSOURCE_IID_STR;
  static const nsIID IID = NS_ISVGPATHGEOMETRYSOURCE_IID;

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
  nsresult ConstructPath(nsISVGRendererPathBuilder pathBuilder);

  enum { UPDATEMASK_PATH = 32768U };

  /** @} */
/**
   * @name Hittest mode of operation
   * @{
   */
  enum { HITTEST_MASK_FILL = 1U };

  enum { HITTEST_MASK_STROKE = 2U };

  /**
   * Determines mode of operation expected of the
   * nsISVGRendererPathGeometry::containsPoint() method.  A
   * combination of the 'HITTEST_MASK_*' constants defined in this
   * interface.
   */
  /* readonly attribute unsigned short hittestMask; */
  nsresult GetHittestMask(PRUint16 *aHittestMask);

  enum { UPDATEMASK_HITTEST_MASK = 65536U };

  /** @} */
/**
   * @name Shape rendering hints
   * @{
   */
  enum { SHAPE_RENDERING_AUTO = 0U };

  enum { SHAPE_RENDERING_OPTIMIZESPEED = 1U };

  enum { SHAPE_RENDERING_CRISPEDGES = 2U };

  enum { SHAPE_RENDERING_GEOMETRICPRECISION = 3U };

  /* readonly attribute unsigned short shapeRendering; */
  nsresult GetShapeRendering(PRUint16 *aShapeRendering);

}

