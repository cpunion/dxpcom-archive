/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISVGGlyphMetricsSource.idl
 */

module mozilla.dxpcom.nsISVGGlyphMetricsSourceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISVGGlyphMetricsSource;


public import mozilla.dxpcom.nsISVGGlyphMetricsSourceD;

public import mozilla.xpcom.nsISVGGeometrySource;
public import mozilla.dxpcom.nsISVGGeometrySourceD;


/* starting wrapper class:    nsISVGGlyphMetricsSource */
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
class nsISVGGlyphMetricsSourceD : public nsISVGGeometrySourceD {

  static const nsIID IID = NS_ISVGGLYPHMETRICSSOURCE_IID;


  alias nsISVGGlyphMetricsSource InnerType;

  this(nsISVGGlyphMetricsSource intr){
    super(intr);
    this.inner = intr;
  }

  nsISVGGlyphMetricsSource opCast() {
    return inner;
  }

  void opAssign(nsISVGGlyphMetricsSource value) {
    inner = value;
  }

  /**
   * @name Font
   * @{
   */
  /* readonly attribute nsFont font; */
  nsFont Font(){
    nsFont value;
    nsresult __result = inner.GetFont(&value);
    CheckException(__result);
    return value;
  }

  enum { UPDATEMASK_FONT = 32768U }

  /** @} */
/**
   * @name Character data
   * @{
   */
  /* readonly attribute DOMString characterData; */
  wchar[] CharacterData(){
    scope auto value = new AString();
    nsresult __result = inner.GetCharacterData(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  enum { UPDATEMASK_CHARACTER_DATA = 65536U }

  /** @} */
/**
   * @name Character positioning information
   * @{
   */
  /* void GetCharacterPosition (out nsSVGCharacterPosition aCP); */
  void GetCharacterPosition(out nsSVGCharacterPosition * aCP){
    nsresult __result = inner.GetCharacterPosition(&aCP);
    CheckException(__result);
  }

  enum { UPDATEMASK_CHARACTER_POSITION = 131072U }

  /** @} */
/**
   * @name Text rendering mode
   * @{
   */
  enum { TEXT_RENDERING_AUTO = 0U }

  enum { TEXT_RENDERING_OPTIMIZESPEED = 1U }

  enum { TEXT_RENDERING_OPTIMIZELEGIBILITY = 2U }

  enum { TEXT_RENDERING_GEOMETRICPRECISION = 3U }

  /* readonly attribute unsigned short textRendering; */
  PRUint16 TextRendering(){
    PRUint16 value;
    nsresult __result = inner.GetTextRendering(&value);
    CheckException(__result);
    return value;
  }

  enum { UPDATEMASK_TEXT_RENDERING = 262144U }

private:
  nsISVGGlyphMetricsSource inner;

}

