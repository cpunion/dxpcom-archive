/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM imgIRequest.idl
 */

module mozilla.dxpcom.imgIRequestD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.imgIRequest;


public import mozilla.dxpcom.imgIRequestD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIRequest;
public import mozilla.dxpcom.nsIRequestD;

public import mozilla.xpcom.imgIContainer;

public import mozilla.dxpcom.imgIContainerD;

public import mozilla.xpcom.imgIDecoderObserver;

public import mozilla.dxpcom.imgIDecoderObserverD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    imgIRequest */
/**
 * imgIRequest interface
 *
 * @author Stuart Parmenter <pavlov@netscape.com>
 * @version 0.1
 * @see imagelib2
 */
class imgIRequestD : public nsIRequestD {

  static const nsIID IID = IMGIREQUEST_IID;


  alias imgIRequest InnerType;

  this(imgIRequest intr){
    super(intr);
    this.inner = intr;
  }

  imgIRequest opCast() {
    return inner;
  }

  void opAssign(imgIRequest value) {
    inner = value;
  }

  /**
   * the image container...
   * @return the image object associated with the request.
   * @attention NEED DOCS
   */
  /* readonly attribute imgIContainer image; */
  imgIContainerD  Image(){
    imgIContainer value;
    nsresult __result = inner.GetImage(&value);
    CheckException(__result);
    return new imgIContainerD(value);
  }

  /**
   * Bits set in the return value from imageStatus
   * @name statusflags
   */
  enum { STATUS_NONE = 0 }

  enum { STATUS_SIZE_AVAILABLE = 1 }

  enum { STATUS_LOAD_PARTIAL = 2 }

  enum { STATUS_LOAD_COMPLETE = 4 }

  enum { STATUS_ERROR = 8 }

  enum { STATUS_FRAME_COMPLETE = 16 }

  /**
   * something
   * @attention NEED DOCS
   */
  /* readonly attribute unsigned long imageStatus; */
  PRUint32 ImageStatus(){
    PRUint32 value;
    nsresult __result = inner.GetImageStatus(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsIURI URI; */
  nsIURID  URI(){
    nsIURI value;
    nsresult __result = inner.GetURI(&value);
    CheckException(__result);
    return new nsIURID(value);
  }

  /* readonly attribute imgIDecoderObserver decoderObserver; */
  imgIDecoderObserverD  DecoderObserver(){
    imgIDecoderObserver value;
    nsresult __result = inner.GetDecoderObserver(&value);
    CheckException(__result);
    return new imgIDecoderObserverD(value);
  }

  /* readonly attribute string mimeType; */
  char* MimeType(){
    char* value;
    nsresult __result = inner.GetMimeType(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Clone this request; the returned request will have aObserver as the
   * observer.  aObserver will be notified synchronously (before the clone()
   * call returns) with all the notifications that have already been dispatched
   * for this image load.
   */
  /* imgIRequest clone (in imgIDecoderObserver aObserver); */
  imgIRequestD  Clone(imgIDecoderObserverD aObserver){
    imgIRequest _retval;
    nsresult __result = inner.Clone(aObserver ? cast(imgIDecoderObserver)aObserver : null, &_retval);
    CheckException(__result);
    return new imgIRequestD(_retval);
  }

private:
  imgIRequest inner;

}

