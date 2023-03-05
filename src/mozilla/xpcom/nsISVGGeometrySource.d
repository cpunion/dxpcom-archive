/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISVGGeometrySource.idl
 */

module mozilla.xpcom.nsISVGGeometrySource;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsISVGRendererCanvas;
public import mozilla.xpcom.nsIDOMSVGMatrix; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsISVGGradient; /* forward declaration */


/* starting interface:    nsISVGGeometrySource */
const char[] NS_ISVGGEOMETRYSOURCE_IID_STR = "b2c3119b-a27d-4b25-97a9-a9d60981a95e";

const nsIID NS_ISVGGEOMETRYSOURCE_IID= 
  {0xb2c3119b, 0xa27d, 0x4b25, 
    [ 0x97, 0xa9, 0xa9, 0xd6, 0x09, 0x81, 0xa9, 0x5e ]};

/**
 * \addtogroup rendering_backend_interfaces Rendering Backend Interfaces
 * @{
 */
/**
 * Describes a 'geometry' object (either a path or a glyph) in the SVG
 * rendering backend. The rendering backend maintains an object
 * implementing this interface for each rendering engine-native
 * geometry object.
 *
 * An engine-native geometry object will be informed of changes in a
 * geometry's description with a call to its 'update' method with an
 * OR-ed combination of the UPDATEMASK_* constants defined in this
 * interface (or one of its sub-interfaces).
 *
 * @nosubgrouping
 */
extern(Windows)
interface nsISVGGeometrySource : nsISupports {
  static const char[] IID_STR = NS_ISVGGEOMETRYSOURCE_IID_STR;
  static const nsIID IID = NS_ISVGGEOMETRYSOURCE_IID;

  /**
   * @name Generic updatemasks
   * @{
   */
  enum { UPDATEMASK_NOTHING = 0U };

  enum { UPDATEMASK_ALL = 4294967295U };

  /** @} */
/**
   * @name Presentation context
   * @{
   */
  /* readonly attribute nsPresContext presContext; */
  nsresult GetPresContext(nsPresContext  *aPresContext);

  enum { UPDATEMASK_PRES_CONTEXT = 1U };

  /** @} */
/**
   * @name Canvas transform matrix
   * @{
   */
  /* readonly attribute nsIDOMSVGMatrix canvasTM; */
  nsresult GetCanvasTM(nsIDOMSVGMatrix  *aCanvasTM);

  enum { UPDATEMASK_CANVAS_TM = 2U };

  /** @} */
/**
   * @name Stroke opacity
   * @{
   */
  /* readonly attribute float strokeOpacity; */
  nsresult GetStrokeOpacity(float *aStrokeOpacity);

  enum { UPDATEMASK_STROKE_OPACITY = 4U };

  /** @} */
/**
   * @name Stroke width
   * @{
   */
  /* readonly attribute float strokeWidth; */
  nsresult GetStrokeWidth(float *aStrokeWidth);

  enum { UPDATEMASK_STROKE_WIDTH = 8U };

  /** @} */
/**
   * @name Stroke dash-array
   * @{
   */
  /* void getStrokeDashArray ([array, size_is (count)] out float arr, out unsigned long count); */
  nsresult GetStrokeDashArray(float **arr, PRUint32 *count);

  enum { UPDATEMASK_STROKE_DASH_ARRAY = 16U };

  /** @} */
/**
   * @name Stroke dash-offset
   * @{
   */
  /* readonly attribute float strokeDashoffset; */
  nsresult GetStrokeDashoffset(float *aStrokeDashoffset);

  enum { UPDATEMASK_STROKE_DASHOFFSET = 32U };

  /** @} */
/**
   * @name Stroke line-cap
   * @{
   */
  enum { STROKE_LINECAP_BUTT = 0U };

  enum { STROKE_LINECAP_ROUND = 1U };

  enum { STROKE_LINECAP_SQUARE = 2U };

  /* readonly attribute unsigned short strokeLinecap; */
  nsresult GetStrokeLinecap(PRUint16 *aStrokeLinecap);

  enum { UPDATEMASK_STROKE_LINECAP = 64U };

  /** @} */
/**
   * @name Stroke line-join
   * @{
   */
  enum { STROKE_LINEJOIN_MITER = 0U };

  enum { STROKE_LINEJOIN_ROUND = 1U };

  enum { STROKE_LINEJOIN_BEVEL = 2U };

  /* readonly attribute unsigned short strokeLinejoin; */
  nsresult GetStrokeLinejoin(PRUint16 *aStrokeLinejoin);

  enum { UPDATEMASK_STROKE_LINEJOIN = 128U };

  /** @} */
/**
   * @name Miterlimit
   * @{
   */
  /* readonly attribute float strokeMiterlimit; */
  nsresult GetStrokeMiterlimit(float *aStrokeMiterlimit);

  enum { UPDATEMASK_STROKE_MITERLIMIT = 256U };

  /** @} */
/**
   * @name Fill opacity
   * @{
   */
  /* readonly attribute float fillOpacity; */
  nsresult GetFillOpacity(float *aFillOpacity);

  enum { UPDATEMASK_FILL_OPACITY = 512U };

  /** @} */
/**
   * @name Fill rule
   * @{
   */
  enum { FILL_RULE_NONZERO = 0U };

  enum { FILL_RULE_EVENODD = 1U };

  /* readonly attribute unsigned short fillRule; */
  nsresult GetFillRule(PRUint16 *aFillRule);

  /* readonly attribute unsigned short clipRule; */
  nsresult GetClipRule(PRUint16 *aClipRule);

  enum { UPDATEMASK_FILL_RULE = 1024U };

  /** @} */
/**
   * @name Paint type constants for stroke and fill paint
   * @{
   */
  enum { PAINT_TYPE_NONE = 0U };

  enum { PAINT_TYPE_SOLID_COLOR = 1U };

  enum { PAINT_TYPE_SERVER = 2U };

  enum { PAINT_TYPE_GRADIENT = 3U };

  enum { PAINT_TYPE_PATTERN = 4U };

  /** @} */
/**
   * @name Stroke paint
   * @{
   */
  /* readonly attribute unsigned short strokePaintType; */
  nsresult GetStrokePaintType(PRUint16 *aStrokePaintType);

  enum { UPDATEMASK_STROKE_PAINT_TYPE = 2048U };

  /* readonly attribute unsigned short strokePaintServerType; */
  nsresult GetStrokePaintServerType(PRUint16 *aStrokePaintServerType);

  /* readonly attribute nscolor strokePaint; */
  nsresult GetStrokePaint(nscolor *aStrokePaint);

  /* void GetStrokeGradient (out nsISVGGradient aGrad); */
  nsresult GetStrokeGradient(nsISVGGradient *aGrad);

  enum { UPDATEMASK_STROKE_PAINT = 4096U };

  /** @} */
/**
   * @name Fill paint
   * @{
   */
  /* readonly attribute unsigned short fillPaintType; */
  nsresult GetFillPaintType(PRUint16 *aFillPaintType);

  enum { UPDATEMASK_FILL_PAINT_TYPE = 16384U };

  /* readonly attribute unsigned short fillPaintServerType; */
  nsresult GetFillPaintServerType(PRUint16 *aFillPaintServerType);

  /* readonly attribute nscolor fillPaint; */
  nsresult GetFillPaint(nscolor *aFillPaint);

  /* void GetFillGradient (out nsISVGGradient aGrad); */
  nsresult GetFillGradient(nsISVGGradient *aGrad);

  enum { UPDATEMASK_FILL_PAINT = 32768U };

  /** @} */
  /* boolean IsClipChild (); */
  nsresult IsClipChild(PRBool *_retval);

}

