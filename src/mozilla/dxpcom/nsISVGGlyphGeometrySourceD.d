/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISVGGlyphGeometrySource.idl
 */

module mozilla.dxpcom.nsISVGGlyphGeometrySourceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISVGGlyphGeometrySource;


public import mozilla.dxpcom.nsISVGGlyphGeometrySourceD;

public import mozilla.xpcom.nsISVGGlyphMetricsSource;
public import mozilla.dxpcom.nsISVGGlyphMetricsSourceD;

public import mozilla.xpcom.nsISVGRendererGlyphMetrics;

public import mozilla.dxpcom.nsISVGRendererGlyphMetricsD;


/* starting wrapper class:    nsISVGGlyphGeometrySource */
/**
 * \addtogroup rendering_backend_interfaces Rendering Backend Interfaces
 * @{
 */
/**
 * Abstracts a description of a 'composite glyph' (character string
 * with associated font and styling information) in the SVG rendering
 * backend for use by a rendering engine's nsISVGRendererGlyphGeometry
 * objects. In addition to the attributes of the
 * nsISVGGlyphMetricsSource interface, this interface contains
 * absolute positioning and other information, such as e.g. individual
 * character highlighting, which doesn't affect the actual metrics of
 * the glyph. The metrics of the glyph, as given by the rendering
 * engine-native object implementing nsISVGRendererGlyphMetrics are
 * also provided as an attribute.
 *
 * An engine-native glyph geometry object will be informed of changes
 * in its associated composite glyph with a call to its
 * nsISVGRendererGlyphMetrics::update() method with an OR-ed
 * combination of the UPDATEMASK_* constants defined in this interface
 * (and its base-interface).
 *
 * @nosubgrouping
 */
class nsISVGGlyphGeometrySourceD : public nsISVGGlyphMetricsSourceD {

  static const nsIID IID = NS_ISVGGLYPHGEOMETRYSOURCE_IID;


  alias nsISVGGlyphGeometrySource InnerType;

  this(nsISVGGlyphGeometrySource intr){
    super(intr);
    this.inner = intr;
  }

  nsISVGGlyphGeometrySource opCast() {
    return inner;
  }

  void opAssign(nsISVGGlyphGeometrySource value) {
    inner = value;
  }

  /**
   * @name Glyph metrics
   * @{
   */
  /* readonly attribute nsISVGRendererGlyphMetrics metrics; */
  nsISVGRendererGlyphMetricsD  Metrics(){
    nsISVGRendererGlyphMetrics value;
    nsresult __result = inner.GetMetrics(&value);
    CheckException(__result);
    return new nsISVGRendererGlyphMetricsD(value);
  }

  enum { UPDATEMASK_METRICS = 262144U }

  /** @} */
/**
   * @name Glyph start position
   * @{
   */
  /* readonly attribute float x; */
  float X(){
    float value;
    nsresult __result = inner.GetX(&value);
    CheckException(__result);
    return value;
  }

  enum { UPDATEMASK_X = 524288U }

  /* readonly attribute float y; */
  float Y(){
    float value;
    nsresult __result = inner.GetY(&value);
    CheckException(__result);
    return value;
  }

  enum { UPDATEMASK_Y = 1048576U }

  /** @} */
/**
   * @name Partial highlighting for selection feedback
   * @{
   */
  /* readonly attribute boolean hasHighlight; */
  PRBool HasHighlight(){
    PRBool value;
    nsresult __result = inner.GetHasHighlight(&value);
    CheckException(__result);
    return value;
  }

  enum { UPDATEMASK_HAS_HIGHLIGHT = 2097152U }

  /* [noscript] void getHighlight (out unsigned long charnum, out unsigned long nchars, out nscolor foreground, out nscolor background); */
  void GetHighlight(out PRUint32 charnum, out PRUint32 nchars, out nscolor foreground, out nscolor background){
    nsresult __result = inner.GetHighlight(&charnum, &nchars, &foreground, &background);
    CheckException(__result);
  }

  enum { UPDATEMASK_HIGHLIGHT = 4194304U }

private:
  nsISVGGlyphGeometrySource inner;

}

