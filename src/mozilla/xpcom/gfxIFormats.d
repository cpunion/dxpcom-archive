/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM gfxIFormats.idl
 */

module mozilla.xpcom.gfxIFormats;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.gfxtypes;


/* starting interface:    gfxIFormats */
const char[] GFXIFORMATS_IID_STR = "96d086e6-1dd1-11b2-b6b2-b77b59390247";

const nsIID GFXIFORMATS_IID= 
  {0x96d086e6, 0x1dd1, 0x11b2, 
    [ 0xb6, 0xb2, 0xb7, 0x7b, 0x59, 0x39, 0x02, 0x47 ]};

/**
 * gfxIFormats interface
 *
 * @author Tim Rowley <tor@cs.brown.edu>
 * @author Stuart Parmenter <pavlov@netscape.com>
 * @version 0.0
 * @see gfx_format
 */
extern(Windows)
interface gfxIFormats {
  static const char[] IID_STR = GFXIFORMATS_IID_STR;
  static const nsIID IID = GFXIFORMATS_IID;

  /**
   * RGB    - duh...
   */
  enum { RGB = 0 };

  /**
   * BGR    - same as RGB except byteswaped
   */
  enum { BGR = 1 };

  /**
   * RGB_A1 - RGB image and 1-bit alpha mask
   */
  enum { RGB_A1 = 2 };

  /**
   * BGR_A1 - same as RGB_A1 except byteswaped
   */
  enum { BGR_A1 = 3 };

  /**
   * RGB_A8 - RGB image and 8-bit alpha image
   */
  enum { RGB_A8 = 4 };

  /**
   * BGR_A8 - same as RGB_A8 except byteswaped
   */
  enum { BGR_A8 = 5 };

  /**
   * RGBA   - packed RGBA image
   */
  enum { RGBA = 6 };

  /**
   * BGRA   - packed RGBA image
   */
  enum { BGRA = 7 };

}

