/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM imgIDecoderObserver.idl
 */

module mozilla.xpcom.imgIDecoderObserver;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.imgIContainerObserver;

public import mozilla.xpcom.imgIRequest; /* forward declaration */

public import mozilla.xpcom.imgIContainer; /* forward declaration */

public import mozilla.xpcom.gfxIImageFrame; /* forward declaration */


/* starting interface:    imgIDecoderObserver */
const char[] IMGIDECODEROBSERVER_IID_STR = "cce7152e-4395-4231-a781-c347c5446cc2";

const nsIID IMGIDECODEROBSERVER_IID= 
  {0xcce7152e, 0x4395, 0x4231, 
    [ 0xa7, 0x81, 0xc3, 0x47, 0xc5, 0x44, 0x6c, 0xc2 ]};

/**
 * imgIDecoderObserver interface
 *
 * This interface is used both for observing imgIDecoder objects and for
 * observing imgIRequest objects.  In the former case, aRequest is
 * always null.
 * XXXldb The two functions should probably be split.
 *
 * @author Stuart Parmenter <pavlov@netscape.com>
 * @version 0.1
 * @see imagelib2
 */
extern(Windows)
interface imgIDecoderObserver : imgIContainerObserver {
  static const char[] IID_STR = IMGIDECODEROBSERVER_IID_STR;
  static const nsIID IID = IMGIDECODEROBSERVER_IID;

  /**
   * called as soon as the image begins getting decoded
   */
  /* void onStartDecode (in imgIRequest aRequest); */
  nsresult OnStartDecode(imgIRequest aRequest);

  /**
   * called once the image has been inited and therefore has a width and height
   */
  /* void onStartContainer (in imgIRequest aRequest, in imgIContainer aContainer); */
  nsresult OnStartContainer(imgIRequest aRequest, imgIContainer aContainer);

  /**
   * called when each frame is created
   */
  /* void onStartFrame (in imgIRequest aRequest, in gfxIImageFrame aFrame); */
  nsresult OnStartFrame(imgIRequest aRequest, gfxIImageFrame aFrame);

  /**
   * called when some part of the frame has new data in it
   */
  /* [noscript] void onDataAvailable (in imgIRequest aRequest, in gfxIImageFrame aFrame, [const] in nsIntRect aRect); */
  nsresult OnDataAvailable(imgIRequest aRequest, gfxIImageFrame aFrame, nsIntRect * aRect);

  /**
   * called when a frame is finished decoding
   */
  /* void onStopFrame (in imgIRequest aRequest, in gfxIImageFrame aFrame); */
  nsresult OnStopFrame(imgIRequest aRequest, gfxIImageFrame aFrame);

  /**
   * probably not needed.  called right before onStopDecode
   */
  /* void onStopContainer (in imgIRequest aRequest, in imgIContainer aContainer); */
  nsresult OnStopContainer(imgIRequest aRequest, imgIContainer aContainer);

  /**
   * called when the decoder is dying off
   */
  /* void onStopDecode (in imgIRequest aRequest, in nsresult status, in wstring statusArg); */
  nsresult OnStopDecode(imgIRequest aRequest, nsresult status, PRUnichar *statusArg);

}


/* starting interface:    imgIDecoderObserver_MOZILLA_1_8_BRANCH */
const char[] IMGIDECODEROBSERVER_MOZILLA_1_8_BRANCH_IID_STR = "d3ab9070-b5d2-410f-977d-36b1788de1e5";

const nsIID IMGIDECODEROBSERVER_MOZILLA_1_8_BRANCH_IID= 
  {0xd3ab9070, 0xb5d2, 0x410f, 
    [ 0x97, 0x7d, 0x36, 0xb1, 0x78, 0x8d, 0xe1, 0xe5 ]};

extern(Windows)
interface imgIDecoderObserver_MOZILLA_1_8_BRANCH : nsISupports {
  static const char[] IID_STR = IMGIDECODEROBSERVER_MOZILLA_1_8_BRANCH_IID_STR;
  static const nsIID IID = IMGIDECODEROBSERVER_MOZILLA_1_8_BRANCH_IID;

  /**
   * called at the same time that nsIRequestObserver::onStartRequest would be
   * (used only for observers of imgIRequest objects, which are nsIRequests,
   * not imgIDecoder objects)
   *
   * Unlike nsIRequestObserver::onStartRequest, this can be called
   * synchronously.
   */
  /* void onStartRequest (in imgIRequest aRequest); */
  nsresult OnStartRequest(imgIRequest aRequest);

  /**
   * called at the same time that nsIRequestObserver::onStopRequest would be
   * (used only for observers of imgIRequest objects, which are nsIRequests,
   * not imgIDecoder objects)
   *
   * Unlike nsIRequestObserver::onStartRequest, this can be called
   * synchronously.
   */
  /* void onStopRequest (in imgIRequest aRequest, in boolean aIsLastPart); */
  nsresult OnStopRequest(imgIRequest aRequest, PRBool aIsLastPart);

}

