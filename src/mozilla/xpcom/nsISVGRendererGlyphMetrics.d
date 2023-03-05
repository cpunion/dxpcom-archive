/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISVGRendererGlyphMetrics.idl
 */

module mozilla.xpcom.nsISVGRendererGlyphMetrics;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMSVGRect; /* forward declaration */


/* starting interface:    nsISVGRendererGlyphMetrics */
const char[] NS_ISVGRENDERERGLYPHMETRICS_IID_STR = "2cdc98a4-594f-42a7-970c-e4dcb7a72aa0";

const nsIID NS_ISVGRENDERERGLYPHMETRICS_IID= 
  {0x2cdc98a4, 0x594f, 0x42a7, 
    [ 0x97, 0x0c, 0xe4, 0xdc, 0xb7, 0xa7, 0x2a, 0xa0 ]};

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
extern(Windows)
interface nsISVGRendererGlyphMetrics : nsISupports {
  static const char[] IID_STR = NS_ISVGRENDERERGLYPHMETRICS_IID_STR;
  static const nsIID IID = NS_ISVGRENDERERGLYPHMETRICS_IID;

  /**
   * Untransformed width of the composite glyph in pixels.
   */
  /* readonly attribute float advance; */
  nsresult GetAdvance(float *aAdvance);

  /**
   * Get the untransformed bounding box of an individual glyph.
   *
   * @param charnum The index of the character in
   * nsISVGGlyphMetricsSource::characterData whose glyph bounding box
   * is to be determined
   * @return The untransformed bounding box in pixel coordinates
   */
  /* nsIDOMSVGRect getExtentOfChar (in unsigned long charnum); */
  nsresult GetExtentOfChar(PRUint32 charnum, nsIDOMSVGRect *_retval);

  /**
   * Get the advance of an individual glyph.
   */
  /* float getAdvanceOfChar (in unsigned long charnum); */
  nsresult GetAdvanceOfChar(PRUint32 charnum, float *_retval);

  /**
   * @name Baseline offset constants for getBaselineOffset()
   * @{
   */
  enum { BASELINE_ALPHABETIC = 0U };

  enum { BASELINE_HANGING = 1U };

  enum { BASELINE_IDEOGRAPHC = 2U };

  enum { BASELINE_MATHEMATICAL = 3U };

  enum { BASELINE_CENTRAL = 4U };

  enum { BASELINE_MIDDLE = 5U };

  enum { BASELINE_TEXT_BEFORE_EDGE = 6U };

  enum { BASELINE_TEXT_AFTER_EDGE = 7U };

  /** @} */
/**
   * Retrieve the (y-axis) offset of the given baseline.
   * 
   * @param baselineIdentifier One of the BASELINE_* constants defined
   * in this interface.
   * @return Y-axis offset in pixels relative to top of bounding box.
   */
  /* float getBaselineOffset (in unsigned short baselineIdentifier); */
  nsresult GetBaselineOffset(PRUint16 baselineIdentifier, float *_retval);

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
  nsresult Update(PRUint32 updatemask, PRBool *_retval);

}

