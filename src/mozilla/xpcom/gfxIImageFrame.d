/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM gfxIImageFrame.idl
 */

module mozilla.xpcom.gfxIImageFrame;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.gfxtypes;
public import mozilla.xpcom.gfxIFormats;


/* starting interface:    gfxIImageFrame */
const char[] GFXIIMAGEFRAME_IID_STR = "f6d00ee7-defc-4101-b2dc-e72cf4c37c3c";

const nsIID GFXIIMAGEFRAME_IID= 
  {0xf6d00ee7, 0xdefc, 0x4101, 
    [ 0xb2, 0xdc, 0xe7, 0x2c, 0xf4, 0xc3, 0x7c, 0x3c ]};

/**
 * gfxIImageFrame interface
 *
 * All x, y, width, height values are in pixels.
 *
 * @author Tim Rowley <tor@cs.brown.edu>
 * @author Stuart Parmenter <pavlov@netscape.com>
 * @version 0.1
 */
extern(Windows)
interface gfxIImageFrame : nsISupports {
  static const char[] IID_STR = GFXIIMAGEFRAME_IID_STR;
  static const nsIID IID = GFXIIMAGEFRAME_IID;

  /**
   * Create a new \a aWidth x \a aHeight sized image.
   *
   * @param aX The x-offset from the origin of the gfxIImageContainer parent.
   * @param aY The y-offset from the origin of the gfxIImageContainer parent.
   * @param aWidth The width of the image to create.
   * @param aHeight The height of the image to create.
   * @param aFormat the width of the image to create.
   *
   * @note The data of a new image is unspecified (Whats the word i'm looking for here?).
   */
  /* void init (in PRInt32 aX, in PRInt32 aY, in PRInt32 aWidth, in PRInt32 aHeight, in gfx_format aFormat, in gfx_depth aDepth); */
  nsresult Init(PRInt32 aX, PRInt32 aY, PRInt32 aWidth, PRInt32 aHeight, gfx_format aFormat, gfx_depth aDepth);

  /**
   * TRUE by default.  When set to FALSE, you will no longer be able to make any modifications
   * to the data of the image.  Any attempts will fail.
   */
  /* attribute boolean mutable; */
  nsresult GetMutable(PRBool *aMutable);
  nsresult SetMutable(PRBool aMutable);

  /**
   * The x-offset of the image.
   */
  /* readonly attribute PRInt32 x; */
  nsresult GetX(PRInt32 *aX);

  /**
   * The y-offset of the image.
   */
  /* readonly attribute PRInt32 y; */
  nsresult GetY(PRInt32 *aY);

  /**
   * The width of the image.
   */
  /* readonly attribute PRInt32 width; */
  nsresult GetWidth(PRInt32 *aWidth);

  /**
   * The height of the image.
   */
  /* readonly attribute PRInt32 height; */
  nsresult GetHeight(PRInt32 *aHeight);

  /**
   * The rectangle this frame ocupies.
   * @param rect this is really an out parameter.
   */
  /* [noscript] void getRect (in nsRectRef rect); */
  nsresult GetRect(nsIntRect * rect);

  /**
   * The image data format the image was created with.
   * @see gfxIFormats
   */
  /* readonly attribute gfx_format format; */
  nsresult GetFormat(gfx_format *aFormat);

  /**
   * returns whether the image requires the background to be painted
   */
  /* readonly attribute boolean needsBackground; */
  nsresult GetNeedsBackground(PRBool *aNeedsBackground);

  /* readonly attribute unsigned long imageBytesPerRow; */
  nsresult GetImageBytesPerRow(PRUint32 *aImageBytesPerRow);

  /**
   * returns the number of bytes allocated for the image
   */
  /* readonly attribute unsigned long imageDataLength; */
  nsresult GetImageDataLength(PRUint32 *aImageDataLength);

  /* void getImageData ([array, size_is (length)] out PRUint8 bits, out unsigned long length); */
  nsresult GetImageData(PRUint8 **bits, PRUint32 *length);

  /**
   * Sets \a length bytes of \a data in this object.
   * @param offset The offset from the first pixel in bytes.  To set
   *   data beginning with the first (top left) pixel in the image, \a offset
   *   should be 0; to set data beginning with, for example, the sixth pixel in
   *   the first row of a RGBA32 image, the offset should be 20.
   * @attension should we use PRUint32 instead?
   */
  /* void setImageData ([array, size_is (length), const] in PRUint8 data, in unsigned long length, in long offset); */
  nsresult SetImageData(PRUint8 *data, PRUint32 length, PRInt32 offset);

  /**
   * Lock image pixels before addressing the data directly
   */
  /* void lockImageData (); */
  nsresult LockImageData();

  /**
   * Unlock image pixels
   */
  /* void unlockImageData (); */
  nsresult UnlockImageData();

  /* readonly attribute unsigned long alphaBytesPerRow; */
  nsresult GetAlphaBytesPerRow(PRUint32 *aAlphaBytesPerRow);

  /**
   * returns the number of bytes allocated for the alpha mask
   */
  /* readonly attribute unsigned long alphaDataLength; */
  nsresult GetAlphaDataLength(PRUint32 *aAlphaDataLength);

  /* void getAlphaData ([array, size_is (length)] out PRUint8 bits, out unsigned long length); */
  nsresult GetAlphaData(PRUint8 **bits, PRUint32 *length);

  /**
   * Sets \a length bytes of \a data in this object.
   */
  /* void setAlphaData ([array, size_is (length), const] in PRUint8 data, in unsigned long length, in long offset); */
  nsresult SetAlphaData(PRUint8 *data, PRUint32 length, PRInt32 offset);

  /**
   * Lock alpha pixels before addressing the data directly
   */
  /* void lockAlphaData (); */
  nsresult LockAlphaData();

  /**
   * Unlock alpha pixels
   */
  /* void unlockAlphaData (); */
  nsresult UnlockAlphaData();

  /**
   * Blit this frame into another frame. Used for GIF animation compositing
   */
  /* void drawTo (in gfxIImageFrame aDst, in PRInt32 aDX, in PRInt32 aDY, in PRInt32 aDWidth, in PRInt32 aDHeight); */
  nsresult DrawTo(gfxIImageFrame aDst, PRInt32 aDX, PRInt32 aDY, PRInt32 aDWidth, PRInt32 aDHeight);

  /**
   * Represents the number of milliseconds until the next frame should be displayed.
   * @note -1 means that this frame should be displayed forever.
   */
  /* attribute long timeout; */
  nsresult GetTimeout(PRInt32 *aTimeout);
  nsresult SetTimeout(PRInt32 aTimeout);

  /* attribute long frameDisposalMethod; */
  nsresult GetFrameDisposalMethod(PRInt32 *aFrameDisposalMethod);
  nsresult SetFrameDisposalMethod(PRInt32 aFrameDisposalMethod);

  /* attribute gfx_color backgroundColor; */
  nsresult GetBackgroundColor(gfx_color *aBackgroundColor);
  nsresult SetBackgroundColor(gfx_color aBackgroundColor);

}

