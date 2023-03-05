/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM imgIContainer.idl
 */

module mozilla.dxpcom.imgIContainerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.imgIContainer;


public import mozilla.dxpcom.imgIContainerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.gfxtypes;
public import mozilla.dxpcom.gfxtypesD;
public import mozilla.xpcom.gfxIFormats;
public import mozilla.dxpcom.gfxIFormatsD;

public import mozilla.xpcom.gfxIImageFrame;

public import mozilla.dxpcom.gfxIImageFrameD;

public import mozilla.xpcom.imgIContainerObserver;

public import mozilla.dxpcom.imgIContainerObserverD;


/* starting wrapper class:    imgIContainer */
/**
 * gfxIImageContainer interface
 *
 * @author Stuart Parmenter <pavlov@netscape.com>
 * @version 0.1
 * @see "gfx2"
 */
class imgIContainerD : public nsISupportsD {

  static const nsIID IID = IMGICONTAINER_IID;


  alias imgIContainer InnerType;

  this(imgIContainer intr){
    super(intr);
    this.inner = intr;
  }

  imgIContainer opCast() {
    return inner;
  }

  void opAssign(imgIContainer value) {
    inner = value;
  }

  /**
   * Create a new \a aWidth x \a aHeight sized image container.
   *
   * @param aWidth The width of the container in which all the
   *               gfxIImageFrame children will fit.
   * @param aHeight The height of the container in which all the
   *                gfxIImageFrame children will fit.
   * @param aObserver Observer to send animation notifications to.
   */
  /* void init (in PRInt32 aWidth, in PRInt32 aHeight, in imgIContainerObserver aObserver); */
  void Init(PRInt32 aWidth, PRInt32 aHeight, imgIContainerObserverD aObserver){
    nsresult __result = inner.Init(aWidth, aHeight, aObserver ? cast(imgIContainerObserver)aObserver : null);
    CheckException(__result);
  }

  /* readonly attribute gfx_format preferredAlphaChannelFormat; */
  gfx_format PreferredAlphaChannelFormat(){
    gfx_format value;
    nsresult __result = inner.GetPreferredAlphaChannelFormat(&value);
    CheckException(__result);
    return value;
  }

  /**
   * The width of the container rectangle.
   */
  /* readonly attribute PRInt32 width; */
  PRInt32 Width(){
    PRInt32 value;
    nsresult __result = inner.GetWidth(&value);
    CheckException(__result);
    return value;
  }

  /**
   * The height of the container rectangle.
   */
  /* readonly attribute PRInt32 height; */
  PRInt32 Height(){
    PRInt32 value;
    nsresult __result = inner.GetHeight(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Get the current frame that would be drawn if the image was to be drawn now
   */
  /* readonly attribute gfxIImageFrame currentFrame; */
  gfxIImageFrameD  CurrentFrame(){
    gfxIImageFrame value;
    nsresult __result = inner.GetCurrentFrame(&value);
    CheckException(__result);
    return new gfxIImageFrameD(value);
  }

  /* readonly attribute unsigned long numFrames; */
  PRUint32 NumFrames(){
    PRUint32 value;
    nsresult __result = inner.GetNumFrames(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Animation mode Constants
   *   0 = normal
   *   1 = don't animate
   *   2 = loop once
   */
  enum { kNormalAnimMode = 0 }

  enum { kDontAnimMode = 1 }

  enum { kLoopOnceAnimMode = 2 }

  /* attribute unsigned short animationMode; */
  PRUint16 AnimationMode(){
    PRUint16 value;
    nsresult __result = inner.GetAnimationMode(&value);
    CheckException(__result);
    return value;
  }
  void AnimationMode(PRUint16 aAnimationMode){
    nsresult __result = inner.SetAnimationMode(aAnimationMode);
    CheckException(__result);
  }

  /* gfxIImageFrame getFrameAt (in unsigned long index); */
  gfxIImageFrameD  GetFrameAt(PRUint32 index){
    gfxIImageFrame _retval;
    nsresult __result = inner.GetFrameAt(index, &_retval);
    CheckException(__result);
    return new gfxIImageFrameD(_retval);
  }

  /**
   * Adds \a item to the end of the list of frames.
   * @param item frame to add.
   */
  /* void appendFrame (in gfxIImageFrame item); */
  void AppendFrame(gfxIImageFrameD item){
    nsresult __result = inner.AppendFrame(item ? cast(gfxIImageFrame)item : null);
    CheckException(__result);
  }

  /* void removeFrame (in gfxIImageFrame item); */
  void RemoveFrame(gfxIImageFrameD item){
    nsresult __result = inner.RemoveFrame(item ? cast(gfxIImageFrame)item : null);
    CheckException(__result);
  }

  /* void endFrameDecode (in unsigned long framenumber, in unsigned long timeout); */
  void EndFrameDecode(PRUint32 framenumber, PRUint32 timeout){
    nsresult __result = inner.EndFrameDecode(framenumber, timeout);
    CheckException(__result);
  }

  /* void decodingComplete (); */
  void DecodingComplete(){
    nsresult __result = inner.DecodingComplete();
    CheckException(__result);
  }

  /* void clear (); */
  void Clear(){
    nsresult __result = inner.Clear();
    CheckException(__result);
  }

  /* void startAnimation (); */
  void StartAnimation(){
    nsresult __result = inner.StartAnimation();
    CheckException(__result);
  }

  /* void stopAnimation (); */
  void StopAnimation(){
    nsresult __result = inner.StopAnimation();
    CheckException(__result);
  }

  /* void resetAnimation (); */
  void ResetAnimation(){
    nsresult __result = inner.ResetAnimation();
    CheckException(__result);
  }

  /**
   * number of times to loop the image.
   * @note -1 means forever.
   */
  /* attribute long loopCount; */
  PRInt32 LoopCount(){
    PRInt32 value;
    nsresult __result = inner.GetLoopCount(&value);
    CheckException(__result);
    return value;
  }
  void LoopCount(PRInt32 aLoopCount){
    nsresult __result = inner.SetLoopCount(aLoopCount);
    CheckException(__result);
  }

private:
  imgIContainer inner;

}

