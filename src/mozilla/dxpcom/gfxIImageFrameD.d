/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM gfxIImageFrame.idl
 */

module mozilla.dxpcom.gfxIImageFrameD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.gfxIImageFrame;


public import mozilla.dxpcom.gfxIImageFrameD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.gfxtypes;
public import mozilla.dxpcom.gfxtypesD;
public import mozilla.xpcom.gfxIFormats;
public import mozilla.dxpcom.gfxIFormatsD;


/* starting wrapper class:    gfxIImageFrame */
/**
 * gfxIImageFrame interface
 *
 * All x, y, width, height values are in pixels.
 *
 * @author Tim Rowley <tor@cs.brown.edu>
 * @author Stuart Parmenter <pavlov@netscape.com>
 * @version 0.1
 */
class gfxIImageFrameD : public nsISupportsD {

  static const nsIID IID = GFXIIMAGEFRAME_IID;


  alias gfxIImageFrame InnerType;

  this(gfxIImageFrame intr){
    super(intr);
    this.inner = intr;
  }

  gfxIImageFrame opCast() {
    return inner;
  }

  void opAssign(gfxIImageFrame value) {
    inner = value;
  }

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
  void Init(PRInt32 aX, PRInt32 aY, PRInt32 aWidth, PRInt32 aHeight, gfx_format aFormat, gfx_depth aDepth){
    nsresult __result = inner.Init(aX, aY, aWidth, aHeight, aFormat, aDepth);
    CheckException(__result);
  }

  /**
   * TRUE by default.  When set to FALSE, you will no longer be able to make any modifications
   * to the data of the image.  Any attempts will fail.
   */
  /* attribute boolean mutable; */
  PRBool Mutable(){
    PRBool value;
    nsresult __result = inner.GetMutable(&value);
    CheckException(__result);
    return value;
  }
  void Mutable(PRBool aMutable){
    nsresult __result = inner.SetMutable(aMutable);
    CheckException(__result);
  }

  /**
   * The x-offset of the image.
   */
  /* readonly attribute PRInt32 x; */
  PRInt32 X(){
    PRInt32 value;
    nsresult __result = inner.GetX(&value);
    CheckException(__result);
    return value;
  }

  /**
   * The y-offset of the image.
   */
  /* readonly attribute PRInt32 y; */
  PRInt32 Y(){
    PRInt32 value;
    nsresult __result = inner.GetY(&value);
    CheckException(__result);
    return value;
  }

  /**
   * The width of the image.
   */
  /* readonly attribute PRInt32 width; */
  PRInt32 Width(){
    PRInt32 value;
    nsresult __result = inner.GetWidth(&value);
    CheckException(__result);
    return value;
  }

  /**
   * The height of the image.
   */
  /* readonly attribute PRInt32 height; */
  PRInt32 Height(){
    PRInt32 value;
    nsresult __result = inner.GetHeight(&value);
    CheckException(__result);
    return value;
  }

  /**
   * The rectangle this frame ocupies.
   * @param rect this is really an out parameter.
   */
  /* [noscript] void getRect (in nsRectRef rect); */
  void GetRect(nsIntRect * rect){
    nsresult __result = inner.GetRect(rect);
    CheckException(__result);
  }

  /**
   * The image data format the image was created with.
   * @see gfxIFormats
   */
  /* readonly attribute gfx_format format; */
  gfx_format Format(){
    gfx_format value;
    nsresult __result = inner.GetFormat(&value);
    CheckException(__result);
    return value;
  }

  /**
   * returns whether the image requires the background to be painted
   */
  /* readonly attribute boolean needsBackground; */
  PRBool NeedsBackground(){
    PRBool value;
    nsresult __result = inner.GetNeedsBackground(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute unsigned long imageBytesPerRow; */
  PRUint32 ImageBytesPerRow(){
    PRUint32 value;
    nsresult __result = inner.GetImageBytesPerRow(&value);
    CheckException(__result);
    return value;
  }

  /**
   * returns the number of bytes allocated for the image
   */
  /* readonly attribute unsigned long imageDataLength; */
  PRUint32 ImageDataLength(){
    PRUint32 value;
    nsresult __result = inner.GetImageDataLength(&value);
    CheckException(__result);
    return value;
  }

  /* void getImageData ([array, size_is (length)] out PRUint8 bits, out unsigned long length); */
  void GetImageData(out PRUint8 *bits, out PRUint32 length){
    nsresult __result = inner.GetImageData(&bits, &length);
    CheckException(__result);
  }

  /**
   * Sets \a length bytes of \a data in this object.
   * @param offset The offset from the first pixel in bytes.  To set
   *   data beginning with the first (top left) pixel in the image, \a offset
   *   should be 0; to set data beginning with, for example, the sixth pixel in
   *   the first row of a RGBA32 image, the offset should be 20.
   * @attension should we use PRUint32 instead?
   */
  /* void setImageData ([array, size_is (length), const] in PRUint8 data, in unsigned long length, in long offset); */
  void SetImageData(PRUint8 *data, PRUint32 length, PRInt32 offset){
    nsresult __result = inner.SetImageData(data, length, offset);
    CheckException(__result);
  }

  /**
   * Lock image pixels before addressing the data directly
   */
  /* void lockImageData (); */
  void LockImageData(){
    nsresult __result = inner.LockImageData();
    CheckException(__result);
  }

  /**
   * Unlock image pixels
   */
  /* void unlockImageData (); */
  void UnlockImageData(){
    nsresult __result = inner.UnlockImageData();
    CheckException(__result);
  }

  /* readonly attribute unsigned long alphaBytesPerRow; */
  PRUint32 AlphaBytesPerRow(){
    PRUint32 value;
    nsresult __result = inner.GetAlphaBytesPerRow(&value);
    CheckException(__result);
    return value;
  }

  /**
   * returns the number of bytes allocated for the alpha mask
   */
  /* readonly attribute unsigned long alphaDataLength; */
  PRUint32 AlphaDataLength(){
    PRUint32 value;
    nsresult __result = inner.GetAlphaDataLength(&value);
    CheckException(__result);
    return value;
  }

  /* void getAlphaData ([array, size_is (length)] out PRUint8 bits, out unsigned long length); */
  void GetAlphaData(out PRUint8 *bits, out PRUint32 length){
    nsresult __result = inner.GetAlphaData(&bits, &length);
    CheckException(__result);
  }

  /**
   * Sets \a length bytes of \a data in this object.
   */
  /* void setAlphaData ([array, size_is (length), const] in PRUint8 data, in unsigned long length, in long offset); */
  void SetAlphaData(PRUint8 *data, PRUint32 length, PRInt32 offset){
    nsresult __result = inner.SetAlphaData(data, length, offset);
    CheckException(__result);
  }

  /**
   * Lock alpha pixels before addressing the data directly
   */
  /* void lockAlphaData (); */
  void LockAlphaData(){
    nsresult __result = inner.LockAlphaData();
    CheckException(__result);
  }

  /**
   * Unlock alpha pixels
   */
  /* void unlockAlphaData (); */
  void UnlockAlphaData(){
    nsresult __result = inner.UnlockAlphaData();
    CheckException(__result);
  }

  /**
   * Blit this frame into another frame. Used for GIF animation compositing
   */
  /* void drawTo (in gfxIImageFrame aDst, in PRInt32 aDX, in PRInt32 aDY, in PRInt32 aDWidth, in PRInt32 aDHeight); */
  void DrawTo(gfxIImageFrameD aDst, PRInt32 aDX, PRInt32 aDY, PRInt32 aDWidth, PRInt32 aDHeight){
    nsresult __result = inner.DrawTo(aDst ? cast(gfxIImageFrame)aDst : null, aDX, aDY, aDWidth, aDHeight);
    CheckException(__result);
  }

  /**
   * Represents the number of milliseconds until the next frame should be displayed.
   * @note -1 means that this frame should be displayed forever.
   */
  /* attribute long timeout; */
  PRInt32 Timeout(){
    PRInt32 value;
    nsresult __result = inner.GetTimeout(&value);
    CheckException(__result);
    return value;
  }
  void Timeout(PRInt32 aTimeout){
    nsresult __result = inner.SetTimeout(aTimeout);
    CheckException(__result);
  }

  /* attribute long frameDisposalMethod; */
  PRInt32 FrameDisposalMethod(){
    PRInt32 value;
    nsresult __result = inner.GetFrameDisposalMethod(&value);
    CheckException(__result);
    return value;
  }
  void FrameDisposalMethod(PRInt32 aFrameDisposalMethod){
    nsresult __result = inner.SetFrameDisposalMethod(aFrameDisposalMethod);
    CheckException(__result);
  }

  /* attribute gfx_color backgroundColor; */
  gfx_color BackgroundColor(){
    gfx_color value;
    nsresult __result = inner.GetBackgroundColor(&value);
    CheckException(__result);
    return value;
  }
  void BackgroundColor(gfx_color aBackgroundColor){
    gfx_color value;
    nsresult __result = inner.SetBackgroundColor(value);
    CheckException(__result);
  }

private:
  gfxIImageFrame inner;

}

