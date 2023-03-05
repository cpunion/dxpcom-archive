/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISVGGlyphMetricsSource.idl
 */

module mozilla.xpcom.nsISVGGlyphMetricsSource;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISVGGeometrySource;


/* starting interface:    nsISVGGlyphMetricsSource */
const char[] NS_ISVGGLYPHMETRICSSOURCE_IID_STR = "bcd7ce03-9f17-4af1-9763-f44a323695e3";

const nsIID NS_ISVGGLYPHMETRICSSOURCE_IID= 
  {0xbcd7ce03, 0x9f17, 0x4af1, 
    [ 0x97, 0x63, 0xf4, 0x4a, 0x32, 0x36, 0x95, 0xe3 ]};

/**
 * \addtogroup rendering_backend_interfaces Rendering Backend Interfaces
 * @{
 */
/**
 * Abstracts a description of a 'composite glyph' (character string
 * with associated font and styling information) in the SVG rendering
 * backend for use by a rendering engine's nsISVGRendererGlyphMetrics
 * objects.
 *
 * An engine-native glyph metrics object will be informed of changes
 * in its associated composite glyph with a call to its
 * nsISVGRendererGlyphMetrics::update() method with an OR-ed
 * combination of the UPDATEMASK_* constants defined in this interface
 * (and its base-interface).
 *
 * @nosubgrouping
 */
extern(Windows)
interface nsISVGGlyphMetricsSource : nsISVGGeometrySource {
  static const char[] IID_STR = NS_ISVGGLYPHMETRICSSOURCE_IID_STR;
  static const nsIID IID = NS_ISVGGLYPHMETRICSSOURCE_IID;

  /**
   * @name Font
   * @{
   */
  /* readonly attribute nsFont font; */
  nsresult GetFont(nsFont *aFont);

  enum { UPDATEMASK_FONT = 32768U };

  /** @} */
/**
   * @name Character data
   * @{
   */
  /* readonly attribute DOMString characterData; */
  nsresult GetCharacterData(nsAString * aCharacterData);

  enum { UPDATEMASK_CHARACTER_DATA = 65536U };

  /** @} */
/**
   * @name Character positioning information
   * @{
   */
  /* void GetCharacterPosition (out nsSVGCharacterPosition aCP); */
  nsresult GetCharacterPosition(nsSVGCharacterPosition * *aCP);

  enum { UPDATEMASK_CHARACTER_POSITION = 131072U };

  /** @} */
/**
   * @name Text rendering mode
   * @{
   */
  enum { TEXT_RENDERING_AUTO = 0U };

  enum { TEXT_RENDERING_OPTIMIZESPEED = 1U };

  enum { TEXT_RENDERING_OPTIMIZELEGIBILITY = 2U };

  enum { TEXT_RENDERING_GEOMETRICPRECISION = 3U };

  /* readonly attribute unsigned short textRendering; */
  nsresult GetTextRendering(PRUint16 *aTextRendering);

  enum { UPDATEMASK_TEXT_RENDERING = 262144U };

}

