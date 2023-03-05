/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISVGRendererGlyphMetrics.idl
 */

module mozilla.dxpcom.nsISVGRendererGlyphMetricsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISVGRendererGlyphMetrics;


public import mozilla.dxpcom.nsISVGRendererGlyphMetricsD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMSVGRect;

public import mozilla.dxpcom.nsIDOMSVGRectD;


/* starting wrapper class:    nsISVGRendererGlyphMetrics */
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
 * rendering engine-native glyph metrics objects.
 *
 * A glyph metrics object is instantiated by the backend for a given
 * nsISVGGlyphMetricsSource object with a call to
 * nsISVGRenderer::createGlyphMetrics(). The glyph metrics object is
 * assumed to store a reference to its associated source object and
 * provide metrics information about the (composite) glyph described
 * by nsISVGGlyphMetricsSource::characterData,
 * nsISVGGlyphMetricsSource::font, nsISVGGlyphMetricsSource::canvasTM, and
 * other relevant style such as nsISVGGlyphMetricsSource::strokeWidth.
 */
class nsISVGRendererGlyphMetricsD : public nsISupportsD {

  static const nsIID IID = NS_ISVGRENDERERGLYPHMETRICS_IID;


  alias nsISVGRendererGlyphMetrics InnerType;

  this(nsISVGRendererGlyphMetrics intr){
    super(intr);
    this.inner = intr;
  }

  nsISVGRendererGlyphMetrics opCast() {
    return inner;
  }

  void opAssign(nsISVGRendererGlyphMetrics value) {
    inner = value;
  }

  /**
   * Untransformed width of the composite glyph in pixels.
   */
  /* readonly attribute float advance; */
  float Advance(){
    float value;
    nsresult __result = inner.GetAdvance(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Get the untransformed bounding box of an individual glyph.
   *
   * @param charnum The index of the character in
   * nsISVGGlyphMetricsSource::characterData whose glyph bounding box
   * is to be determined
   * @return The untransformed bounding box in pixel coordinates
   */
  /* nsIDOMSVGRect getExtentOfChar (in unsigned long charnum); */
  nsIDOMSVGRectD  GetExtentOfChar(PRUint32 charnum){
    nsIDOMSVGRect _retval;
    nsresult __result = inner.GetExtentOfChar(charnum, &_retval);
    CheckException(__result);
    return new nsIDOMSVGRectD(_retval);
  }

  /**
   * Get the advance of an individual glyph.
   */
  /* float getAdvanceOfChar (in unsigned long charnum); */
  float GetAdvanceOfChar(PRUint32 charnum){
    float _retval;
    nsresult __result = inner.GetAdvanceOfChar(charnum, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * @name Baseline offset constants for getBaselineOffset()
   * @{
   */
  enum { BASELINE_ALPHABETIC = 0U }

  enum { BASELINE_HANGING = 1U }

  enum { BASELINE_IDEOGRAPHC = 2U }

  enum { BASELINE_MATHEMATICAL = 3U }

  enum { BASELINE_CENTRAL = 4U }

  enum { BASELINE_MIDDLE = 5U }

  enum { BASELINE_TEXT_BEFORE_EDGE = 6U }

  enum { BASELINE_TEXT_AFTER_EDGE = 7U }

  /** @} */
/**
   * Retrieve the (y-axis) offset of the given baseline.
   * 
   * @param baselineIdentifier One of the BASELINE_* constants defined
   * in this interface.
   * @return Y-axis offset in pixels relative to top of bounding box.
   */
  /* float getBaselineOffset (in unsigned short baselineIdentifier); */
  float GetBaselineOffset(PRUint16 baselineIdentifier){
    float _retval;
    nsresult __result = inner.GetBaselineOffset(baselineIdentifier, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Called by this object's corresponding nsISVGGlyphMetricsSource as
   * a notification that some of the source's data (identified by
   * paramter 'updatemask') has changed.
   *
   * @param updatemask An OR-ed combination of the UPDATEMASK_*
   * constants defined in nsISVGGlyphMetricsSource.
   * @return PR_TRUE if the metrics have changed as a result of the
   * source update, PR_FALSE otherwise.
   */
  /* boolean update (in unsigned long updatemask); */
  PRBool Update(PRUint32 updatemask){
    PRBool _retval;
    nsresult __result = inner.Update(updatemask, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISVGRendererGlyphMetrics inner;

}

