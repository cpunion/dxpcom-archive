/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM imgIContainerObserver.idl
 */

module mozilla.dxpcom.imgIContainerObserverD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.imgIContainerObserver;


public import mozilla.dxpcom.imgIContainerObserverD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.gfxtypes;
public import mozilla.dxpcom.gfxtypesD;

public import mozilla.xpcom.imgIContainer;

public import mozilla.dxpcom.imgIContainerD;

public import mozilla.xpcom.gfxIImageFrame;

public import mozilla.dxpcom.gfxIImageFrameD;


/* starting wrapper class:    imgIContainerObserver */
/**
 * imgIContainerObserver interface
 *
 * @author Stuart Parmenter <pavlov@netscape.com>
 * @version 0.1
 */
class imgIContainerObserverD : public nsISupportsD {

  static const nsIID IID = IMGICONTAINEROBSERVER_IID;


  alias imgIContainerObserver InnerType;

  this(imgIContainerObserver intr){
    super(intr);
    this.inner = intr;
  }

  imgIContainerObserver opCast() {
    return inner;
  }

  void opAssign(imgIContainerObserver value) {
    inner = value;
  }

  /* [noscript] void frameChanged (in imgIContainer aContainer, in gfxIImageFrame aFrame, in nsIntRect aDirtyRect); */
  void FrameChanged(imgIContainerD aContainer, gfxIImageFrameD aFrame, nsIntRect * aDirtyRect){
    nsresult __result = inner.FrameChanged(aContainer ? cast(imgIContainer)aContainer : null, aFrame ? cast(gfxIImageFrame)aFrame : null, aDirtyRect);
    CheckException(__result);
  }

private:
  imgIContainerObserver inner;

}

