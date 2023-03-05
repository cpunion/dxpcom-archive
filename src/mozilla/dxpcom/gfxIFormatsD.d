/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM gfxIFormats.idl
 */

module mozilla.dxpcom.gfxIFormatsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.gfxIFormats;


public import mozilla.dxpcom.gfxIFormatsD;

public import mozilla.xpcom.gfxtypes;
public import mozilla.dxpcom.gfxtypesD;


/* starting wrapper class:    gfxIFormats */
/**
 * gfxIFormats interface
 *
 * @author Tim Rowley <tor@cs.brown.edu>
 * @author Stuart Parmenter <pavlov@netscape.com>
 * @version 0.0
 * @see gfx_format
 */
class gfxIFormatsD {

  static const nsIID IID = GFXIFORMATS_IID;


  alias gfxIFormats InnerType;

  this(gfxIFormats intr){
    this.inner = intr;
  }

  gfxIFormats opCast() {
    return inner;
  }

  void opAssign(gfxIFormats value) {
    inner = value;
  }

  /**
   * RGB    - duh...
   */
  enum { RGB = 0 }

  /**
   * BGR    - same as RGB except byteswaped
   */
  enum { BGR = 1 }

  /**
   * RGB_A1 - RGB image and 1-bit alpha mask
   */
  enum { RGB_A1 = 2 }

  /**
   * BGR_A1 - same as RGB_A1 except byteswaped
   */
  enum { BGR_A1 = 3 }

  /**
   * RGB_A8 - RGB image and 8-bit alpha image
   */
  enum { RGB_A8 = 4 }

  /**
   * BGR_A8 - same as RGB_A8 except byteswaped
   */
  enum { BGR_A8 = 5 }

  /**
   * RGBA   - packed RGBA image
   */
  enum { RGBA = 6 }

  /**
   * BGRA   - packed RGBA image
   */
  enum { BGRA = 7 }

private:
  gfxIFormats inner;

}

