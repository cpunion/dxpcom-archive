/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM imgIDecoderObserver.idl
 */

module mozilla.dxpcom.imgIDecoderObserverD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.imgIDecoderObserver;


public import mozilla.dxpcom.imgIDecoderObserverD;

public import mozilla.xpcom.imgIContainerObserver;
public import mozilla.dxpcom.imgIContainerObserverD;

public import mozilla.xpcom.imgIRequest;

public import mozilla.dxpcom.imgIRequestD;

public import mozilla.xpcom.imgIContainer;

public import mozilla.dxpcom.imgIContainerD;

public import mozilla.xpcom.gfxIImageFrame;

public import mozilla.dxpcom.gfxIImageFrameD;


/* starting wrapper class:    imgIDecoderObserver */
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
class imgIDecoderObserverD : public imgIContainerObserverD {

  static const nsIID IID = IMGIDECODEROBSERVER_IID;


  alias imgIDecoderObserver InnerType;

  this(imgIDecoderObserver intr){
    super(intr);
    this.inner = intr;
  }

  imgIDecoderObserver opCast() {
    return inner;
  }

  void opAssign(imgIDecoderObserver value) {
    inner = value;
  }

  /**
   * called as soon as the image begins getting decoded
   */
  /* void onStartDecode (in imgIRequest aRequest); */
  void OnStartDecode(imgIRequestD aRequest){
    nsresult __result = inner.OnStartDecode(aRequest ? cast(imgIRequest)aRequest : null);
    CheckException(__result);
  }

  /**
   * called once the image has been inited and therefore has a width and height
   */
  /* void onStartContainer (in imgIRequest aRequest, in imgIContainer aContainer); */
  void OnStartContainer(imgIRequestD aRequest, imgIContainerD aContainer){
    nsresult __result = inner.OnStartContainer(aRequest ? cast(imgIRequest)aRequest : null, aContainer ? cast(imgIContainer)aContainer : null);
    CheckException(__result);
  }

  /**
   * called when each frame is created
   */
  /* void onStartFrame (in imgIRequest aRequest, in gfxIImageFrame aFrame); */
  void OnStartFrame(imgIRequestD aRequest, gfxIImageFrameD aFrame){
    nsresult __result = inner.OnStartFrame(aRequest ? cast(imgIRequest)aRequest : null, aFrame ? cast(gfxIImageFrame)aFrame : null);
    CheckException(__result);
  }

  /**
   * called when some part of the frame has new data in it
   */
  /* [noscript] void onDataAvailable (in imgIRequest aRequest, in gfxIImageFrame aFrame, [const] in nsIntRect aRect); */
  void OnDataAvailable(imgIRequestD aRequest, gfxIImageFrameD aFrame, nsIntRect * aRect){
    nsresult __result = inner.OnDataAvailable(aRequest ? cast(imgIRequest)aRequest : null, aFrame ? cast(gfxIImageFrame)aFrame : null, aRect);
    CheckException(__result);
  }

  /**
   * called when a frame is finished decoding
   */
  /* void onStopFrame (in imgIRequest aRequest, in gfxIImageFrame aFrame); */
  void OnStopFrame(imgIRequestD aRequest, gfxIImageFrameD aFrame){
    nsresult __result = inner.OnStopFrame(aRequest ? cast(imgIRequest)aRequest : null, aFrame ? cast(gfxIImageFrame)aFrame : null);
    CheckException(__result);
  }

  /**
   * probably not needed.  called right before onStopDecode
   */
  /* void onStopContainer (in imgIRequest aRequest, in imgIContainer aContainer); */
  void OnStopContainer(imgIRequestD aRequest, imgIContainerD aContainer){
    nsresult __result = inner.OnStopContainer(aRequest ? cast(imgIRequest)aRequest : null, aContainer ? cast(imgIContainer)aContainer : null);
    CheckException(__result);
  }

  /**
   * called when the decoder is dying off
   */
  /* void onStopDecode (in imgIRequest aRequest, in nsresult status, in wstring statusArg); */
  void OnStopDecode(imgIRequestD aRequest, nsresult status, PRUnichar*statusArg){
    nsresult __result = inner.OnStopDecode(aRequest ? cast(imgIRequest)aRequest : null, status, statusArg);
    CheckException(__result);
  }

private:
  imgIDecoderObserver inner;

}


/* starting wrapper class:    imgIDecoderObserver_MOZILLA_1_8_BRANCH */
class imgIDecoderObserver_MOZILLA_1_8_BRANCHD : public nsISupportsD {

  static const nsIID IID = IMGIDECODEROBSERVER_MOZILLA_1_8_BRANCH_IID;


  alias imgIDecoderObserver_MOZILLA_1_8_BRANCH InnerType;

  this(imgIDecoderObserver_MOZILLA_1_8_BRANCH intr){
    super(intr);
    this.inner = intr;
  }

  imgIDecoderObserver_MOZILLA_1_8_BRANCH opCast() {
    return inner;
  }

  void opAssign(imgIDecoderObserver_MOZILLA_1_8_BRANCH value) {
    inner = value;
  }

  /**
   * called at the same time that nsIRequestObserver::onStartRequest would be
   * (used only for observers of imgIRequest objects, which are nsIRequests,
   * not imgIDecoder objects)
   *
   * Unlike nsIRequestObserver::onStartRequest, this can be called
   * synchronously.
   */
  /* void onStartRequest (in imgIRequest aRequest); */
  void OnStartRequest(imgIRequestD aRequest){
    nsresult __result = inner.OnStartRequest(aRequest ? cast(imgIRequest)aRequest : null);
    CheckException(__result);
  }

  /**
   * called at the same time that nsIRequestObserver::onStopRequest would be
   * (used only for observers of imgIRequest objects, which are nsIRequests,
   * not imgIDecoder objects)
   *
   * Unlike nsIRequestObserver::onStartRequest, this can be called
   * synchronously.
   */
  /* void onStopRequest (in imgIRequest aRequest, in boolean aIsLastPart); */
  void OnStopRequest(imgIRequestD aRequest, PRBool aIsLastPart){
    nsresult __result = inner.OnStopRequest(aRequest ? cast(imgIRequest)aRequest : null, aIsLastPart);
    CheckException(__result);
  }

private:
  imgIDecoderObserver_MOZILLA_1_8_BRANCH inner;

}

