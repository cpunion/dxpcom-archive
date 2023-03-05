/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISVGGeometrySource.idl
 */

module mozilla.dxpcom.nsISVGGeometrySourceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISVGGeometrySource;


public import mozilla.dxpcom.nsISVGGeometrySourceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMSVGMatrix;

public import mozilla.dxpcom.nsIDOMSVGMatrixD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsISVGGradient;

public import mozilla.dxpcom.nsISVGGradientD;


/* starting wrapper class:    nsISVGGeometrySource */
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
class nsISVGGeometrySourceD : public nsISupportsD {

  static const nsIID IID = NS_ISVGGEOMETRYSOURCE_IID;


  alias nsISVGGeometrySource InnerType;

  this(nsISVGGeometrySource intr){
    super(intr);
    this.inner = intr;
  }

  nsISVGGeometrySource opCast() {
    return inner;
  }

  void opAssign(nsISVGGeometrySource value) {
    inner = value;
  }

  /**
   * @name Generic updatemasks
   * @{
   */
  enum { UPDATEMASK_NOTHING = 0U }

  enum { UPDATEMASK_ALL = 4294967295U }

  /** @} */
/**
   * @name Presentation context
   * @{
   */
  /* readonly attribute nsPresContext presContext; */
  nsPresContextD  PresContext(){
    nsPresContext value;
    nsresult __result = inner.GetPresContext(&value);
    CheckException(__result);
    return new nsPresContextD(value);
  }

  enum { UPDATEMASK_PRES_CONTEXT = 1U }

  /** @} */
/**
   * @name Canvas transform matrix
   * @{
   */
  /* readonly attribute nsIDOMSVGMatrix canvasTM; */
  nsIDOMSVGMatrixD  CanvasTM(){
    nsIDOMSVGMatrix value;
    nsresult __result = inner.GetCanvasTM(&value);
    CheckException(__result);
    return new nsIDOMSVGMatrixD(value);
  }

  enum { UPDATEMASK_CANVAS_TM = 2U }

  /** @} */
/**
   * @name Stroke opacity
   * @{
   */
  /* readonly attribute float strokeOpacity; */
  float StrokeOpacity(){
    float value;
    nsresult __result = inner.GetStrokeOpacity(&value);
    CheckException(__result);
    return value;
  }

  enum { UPDATEMASK_STROKE_OPACITY = 4U }

  /** @} */
/**
   * @name Stroke width
   * @{
   */
  /* readonly attribute float strokeWidth; */
  float StrokeWidth(){
    float value;
    nsresult __result = inner.GetStrokeWidth(&value);
    CheckException(__result);
    return value;
  }

  enum { UPDATEMASK_STROKE_WIDTH = 8U }

  /** @} */
/**
   * @name Stroke dash-array
   * @{
   */
  /* void getStrokeDashArray ([array, size_is (count)] out float arr, out unsigned long count); */
  void GetStrokeDashArray(out float *arr, out PRUint32 count){
    nsresult __result = inner.GetStrokeDashArray(&arr, &count);
    CheckException(__result);
  }

  enum { UPDATEMASK_STROKE_DASH_ARRAY = 16U }

  /** @} */
/**
   * @name Stroke dash-offset
   * @{
   */
  /* readonly attribute float strokeDashoffset; */
  float StrokeDashoffset(){
    float value;
    nsresult __result = inner.GetStrokeDashoffset(&value);
    CheckException(__result);
    return value;
  }

  enum { UPDATEMASK_STROKE_DASHOFFSET = 32U }

  /** @} */
/**
   * @name Stroke line-cap
   * @{
   */
  enum { STROKE_LINECAP_BUTT = 0U }

  enum { STROKE_LINECAP_ROUND = 1U }

  enum { STROKE_LINECAP_SQUARE = 2U }

  /* readonly attribute unsigned short strokeLinecap; */
  PRUint16 StrokeLinecap(){
    PRUint16 value;
    nsresult __result = inner.GetStrokeLinecap(&value);
    CheckException(__result);
    return value;
  }

  enum { UPDATEMASK_STROKE_LINECAP = 64U }

  /** @} */
/**
   * @name Stroke line-join
   * @{
   */
  enum { STROKE_LINEJOIN_MITER = 0U }

  enum { STROKE_LINEJOIN_ROUND = 1U }

  enum { STROKE_LINEJOIN_BEVEL = 2U }

  /* readonly attribute unsigned short strokeLinejoin; */
  PRUint16 StrokeLinejoin(){
    PRUint16 value;
    nsresult __result = inner.GetStrokeLinejoin(&value);
    CheckException(__result);
    return value;
  }

  enum { UPDATEMASK_STROKE_LINEJOIN = 128U }

  /** @} */
/**
   * @name Miterlimit
   * @{
   */
  /* readonly attribute float strokeMiterlimit; */
  float StrokeMiterlimit(){
    float value;
    nsresult __result = inner.GetStrokeMiterlimit(&value);
    CheckException(__result);
    return value;
  }

  enum { UPDATEMASK_STROKE_MITERLIMIT = 256U }

  /** @} */
/**
   * @name Fill opacity
   * @{
   */
  /* readonly attribute float fillOpacity; */
  float FillOpacity(){
    float value;
    nsresult __result = inner.GetFillOpacity(&value);
    CheckException(__result);
    return value;
  }

  enum { UPDATEMASK_FILL_OPACITY = 512U }

  /** @} */
/**
   * @name Fill rule
   * @{
   */
  enum { FILL_RULE_NONZERO = 0U }

  enum { FILL_RULE_EVENODD = 1U }

  /* readonly attribute unsigned short fillRule; */
  PRUint16 FillRule(){
    PRUint16 value;
    nsresult __result = inner.GetFillRule(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute unsigned short clipRule; */
  PRUint16 ClipRule(){
    PRUint16 value;
    nsresult __result = inner.GetClipRule(&value);
    CheckException(__result);
    return value;
  }

  enum { UPDATEMASK_FILL_RULE = 1024U }

  /** @} */
/**
   * @name Paint type constants for stroke and fill paint
   * @{
   */
  enum { PAINT_TYPE_NONE = 0U }

  enum { PAINT_TYPE_SOLID_COLOR = 1U }

  enum { PAINT_TYPE_SERVER = 2U }

  enum { PAINT_TYPE_GRADIENT = 3U }

  enum { PAINT_TYPE_PATTERN = 4U }

  /** @} */
/**
   * @name Stroke paint
   * @{
   */
  /* readonly attribute unsigned short strokePaintType; */
  PRUint16 StrokePaintType(){
    PRUint16 value;
    nsresult __result = inner.GetStrokePaintType(&value);
    CheckException(__result);
    return value;
  }

  enum { UPDATEMASK_STROKE_PAINT_TYPE = 2048U }

  /* readonly attribute unsigned short strokePaintServerType; */
  PRUint16 StrokePaintServerType(){
    PRUint16 value;
    nsresult __result = inner.GetStrokePaintServerType(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nscolor strokePaint; */
  nscolor StrokePaint(){
    nscolor value;
    nsresult __result = inner.GetStrokePaint(&value);
    CheckException(__result);
    return value;
  }

  /* void GetStrokeGradient (out nsISVGGradient aGrad); */
  void GetStrokeGradient(out nsISVGGradientD aGrad){
    nsISVGGradient _aGrad;
    nsresult __result = inner.GetStrokeGradient(&_aGrad);
    CheckException(__result);
    aGrad = _aGrad ? new nsISVGGradientD(_aGrad) : null;
  }

  enum { UPDATEMASK_STROKE_PAINT = 4096U }

  /** @} */
/**
   * @name Fill paint
   * @{
   */
  /* readonly attribute unsigned short fillPaintType; */
  PRUint16 FillPaintType(){
    PRUint16 value;
    nsresult __result = inner.GetFillPaintType(&value);
    CheckException(__result);
    return value;
  }

  enum { UPDATEMASK_FILL_PAINT_TYPE = 16384U }

  /* readonly attribute unsigned short fillPaintServerType; */
  PRUint16 FillPaintServerType(){
    PRUint16 value;
    nsresult __result = inner.GetFillPaintServerType(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nscolor fillPaint; */
  nscolor FillPaint(){
    nscolor value;
    nsresult __result = inner.GetFillPaint(&value);
    CheckException(__result);
    return value;
  }

  /* void GetFillGradient (out nsISVGGradient aGrad); */
  void GetFillGradient(out nsISVGGradientD aGrad){
    nsISVGGradient _aGrad;
    nsresult __result = inner.GetFillGradient(&_aGrad);
    CheckException(__result);
    aGrad = _aGrad ? new nsISVGGradientD(_aGrad) : null;
  }

  enum { UPDATEMASK_FILL_PAINT = 32768U }

  /** @} */
  /* boolean IsClipChild (); */
  PRBool IsClipChild(){
    PRBool _retval;
    nsresult __result = inner.IsClipChild(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISVGGeometrySource inner;

}

