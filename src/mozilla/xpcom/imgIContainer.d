/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM imgIContainer.idl
 */

module mozilla.xpcom.imgIContainer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.gfxtypes;
public import mozilla.xpcom.gfxIFormats;

public import mozilla.xpcom.gfxIImageFrame; /* forward declaration */

public import mozilla.xpcom.imgIContainerObserver; /* forward declaration */


/* starting interface:    imgIContainer */
const char[] IMGICONTAINER_IID_STR = "1a6290e6-8285-4e10-963d-d001f8d327b8";

const nsIID IMGICONTAINER_IID= 
  {0x1a6290e6, 0x8285, 0x4e10, 
    [ 0x96, 0x3d, 0xd0, 0x01, 0xf8, 0xd3, 0x27, 0xb8 ]};

/**
 * gfxIImageContainer interface
 *
 * @author Stuart Parmenter <pavlov@netscape.com>
 * @version 0.1
 * @see "gfx2"
 */
extern(Windows)
interface imgIContainer : nsISupports {
  static const char[] IID_STR = IMGICONTAINER_IID_STR;
  static const nsIID IID = IMGICONTAINER_IID;

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
  nsresult Init(PRInt32 aWidth, PRInt32 aHeight, imgIContainerObserver aObserver);

  /* readonly attribute gfx_format preferredAlphaChannelFormat; */
  nsresult GetPreferredAlphaChannelFormat(gfx_format *aPreferredAlphaChannelFormat);

  /**
   * The width of the container rectangle.
   */
  /* readonly attribute PRInt32 width; */
  nsresult GetWidth(PRInt32 *aWidth);

  /**
   * The height of the container rectangle.
   */
  /* readonly attribute PRInt32 height; */
  nsresult GetHeight(PRInt32 *aHeight);

  /**
   * Get the current frame that would be drawn if the image was to be drawn now
   */
  /* readonly attribute gfxIImageFrame currentFrame; */
  nsresult GetCurrentFrame(gfxIImageFrame  *aCurrentFrame);

  /* readonly attribute unsigned long numFrames; */
  nsresult GetNumFrames(PRUint32 *aNumFrames);

  /**
   * Animation mode Constants
   *   0 = normal
   *   1 = don't animate
   *   2 = loop once
   */
  enum { kNormalAnimMode = 0 };

  enum { kDontAnimMode = 1 };

  enum { kLoopOnceAnimMode = 2 };

  /* attribute unsigned short animationMode; */
  nsresult GetAnimationMode(PRUint16 *aAnimationMode);
  nsresult SetAnimationMode(PRUint16 aAnimationMode);

  /* gfxIImageFrame getFrameAt (in unsigned long index); */
  nsresult GetFrameAt(PRUint32 index, gfxIImageFrame *_retval);

  /**
   * Adds \a item to the end of the list of frames.
   * @param item frame to add.
   */
  /* void appendFrame (in gfxIImageFrame item); */
  nsresult AppendFrame(gfxIImageFrame item);

  /* void removeFrame (in gfxIImageFrame item); */
  nsresult RemoveFrame(gfxIImageFrame item);

  /* void endFrameDecode (in unsigned long framenumber, in unsigned long timeout); */
  nsresult EndFrameDecode(PRUint32 framenumber, PRUint32 timeout);

  /* void decodingComplete (); */
  nsresult DecodingComplete();

  /* void clear (); */
  nsresult Clear();

  /* void startAnimation (); */
  nsresult StartAnimation();

  /* void stopAnimation (); */
  nsresult StopAnimation();

  /* void resetAnimation (); */
  nsresult ResetAnimation();

  /**
   * number of times to loop the image.
   * @note -1 means forever.
   */
  /* attribute long loopCount; */
  nsresult GetLoopCount(PRInt32 *aLoopCount);
  nsresult SetLoopCount(PRInt32 aLoopCount);

}

