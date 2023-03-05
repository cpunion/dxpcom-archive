/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISVGGlyphGeometrySource.idl
 */

module mozilla.xpcom.nsISVGGlyphGeometrySource;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISVGGlyphMetricsSource;

public import mozilla.xpcom.nsISVGRendererCanvas;
public import mozilla.xpcom.nsISVGRendererGlyphMetrics; /* forward declaration */


/* starting interface:    nsISVGGlyphGeometrySource */
const char[] NS_ISVGGLYPHGEOMETRYSOURCE_IID_STR = "b36065f1-c52b-4eda-b9ad-e483cf1a63bf";

const nsIID NS_ISVGGLYPHGEOMETRYSOURCE_IID= 
  {0xb36065f1, 0xc52b, 0x4eda, 
    [ 0xb9, 0xad, 0xe4, 0x83, 0xcf, 0x1a, 0x63, 0xbf ]};

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
extern(Windows)
interface nsISVGGlyphGeometrySource : nsISVGGlyphMetricsSource {
  static const char[] IID_STR = NS_ISVGGLYPHGEOMETRYSOURCE_IID_STR;
  static const nsIID IID = NS_ISVGGLYPHGEOMETRYSOURCE_IID;

  /**
   * @name Glyph metrics
   * @{
   */
  /* readonly attribute nsISVGRendererGlyphMetrics metrics; */
  nsresult GetMetrics(nsISVGRendererGlyphMetrics  *aMetrics);

  enum { UPDATEMASK_METRICS = 262144U };

  /** @} */
/**
   * @name Glyph start position
   * @{
   */
  /* readonly attribute float x; */
  nsresult GetX(float *aX);

  enum { UPDATEMASK_X = 524288U };

  /* readonly attribute float y; */
  nsresult GetY(float *aY);

  enum { UPDATEMASK_Y = 1048576U };

  /** @} */
/**
   * @name Partial highlighting for selection feedback
   * @{
   */
  /* readonly attribute boolean hasHighlight; */
  nsresult GetHasHighlight(PRBool *aHasHighlight);

  enum { UPDATEMASK_HAS_HIGHLIGHT = 2097152U };

  /* [noscript] void getHighlight (out unsigned long charnum, out unsigned long nchars, out nscolor foreground, out nscolor background); */
  nsresult GetHighlight(PRUint32 *charnum, PRUint32 *nchars, nscolor *foreground, nscolor *background);

  enum { UPDATEMASK_HIGHLIGHT = 4194304U };

}

