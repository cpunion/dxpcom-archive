/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM imgILoader.idl
 */

module mozilla.dxpcom.imgILoaderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.imgILoader;


public import mozilla.dxpcom.imgILoaderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIRequest;
public import mozilla.dxpcom.nsIRequestD;

public import mozilla.xpcom.imgIDecoderObserver;

public import mozilla.dxpcom.imgIDecoderObserverD;

public import mozilla.xpcom.imgIRequest;

public import mozilla.dxpcom.imgIRequestD;

public import mozilla.xpcom.nsIChannel;

public import mozilla.dxpcom.nsIChannelD;

public import mozilla.xpcom.nsILoadGroup;

public import mozilla.dxpcom.nsILoadGroupD;

public import mozilla.xpcom.nsIStreamListener;

public import mozilla.dxpcom.nsIStreamListenerD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.dxpcom.nsISimpleEnumeratorD;


/* starting wrapper class:    imgILoader */
/**
 * imgILoader interface
 *
 * @author Stuart Parmenter <pavlov@netscape.com>
 * @version 0.3
 * @see imagelib2
 */
class imgILoaderD : public nsISupportsD {

  static const nsIID IID = IMGILOADER_IID;


  alias imgILoader InnerType;

  this(imgILoader intr){
    super(intr);
    this.inner = intr;
  }

  imgILoader opCast() {
    return inner;
  }

  void opAssign(imgILoader value) {
    inner = value;
  }

  /**
   * Start the load and decode of an image.
   * @param aURI the URI to load
   * @param aInitialDocumentURI the URI that 'initiated' the load -- used for 3rd party cookie blocking
   * @param aReferrerURI the 'referring' URI
   * @param aLoadGroup Loadgroup to put the image load into
   * @param aObserver the observer
   * @param aCX some random data
   * @param aLoadFlags Load flags for the request
   * @param aCacheKey cache key to use for a load if the original
   *                  image came from a request that had post data
   * @param aRequest A newly created, unused imgIRequest object or NULL for one to
                     be created for you.


   * libpr0n does NOT keep a strong ref to the observer; this prevents
   * reference cycles.  This means that callers of loadImage should
   * make sure to Cancel() the resulting request before the observer
   * goes away.
   */
  /* imgIRequest loadImage (in nsIURI aURI, in nsIURI aInitialDocumentURL, in nsIURI aReferrerURI, in nsILoadGroup aLoadGroup, in imgIDecoderObserver aObserver, in nsISupports aCX, in nsLoadFlags aLoadFlags, in nsISupports cacheKey, in imgIRequest aRequest); */
  imgIRequestD  LoadImage(nsIURID aURI, nsIURID aInitialDocumentURL, nsIURID aReferrerURI, nsILoadGroupD aLoadGroup, imgIDecoderObserverD aObserver, nsISupportsD aCX, nsLoadFlags aLoadFlags, nsISupportsD cacheKey, imgIRequestD aRequest){
    imgIRequest _retval;
    nsresult __result = inner.LoadImage(aURI ? cast(nsIURI)aURI : null, aInitialDocumentURL ? cast(nsIURI)aInitialDocumentURL : null, aReferrerURI ? cast(nsIURI)aReferrerURI : null, aLoadGroup ? cast(nsILoadGroup)aLoadGroup : null, aObserver ? cast(imgIDecoderObserver)aObserver : null, aCX ? cast(nsISupports)aCX : null, aLoadFlags, cacheKey ? cast(nsISupports)cacheKey : null, aRequest ? cast(imgIRequest)aRequest : null, &_retval);
    CheckException(__result);
    return new imgIRequestD(_retval);
  }

  /**
   * Start the load and decode of an image.
   * @param uri the URI to load
   * @param aObserver the observer
   * @param cx some random data
   *
   * libpr0n does NOT keep a strong ref to the observer; this prevents
   * reference cycles.  This means that callers of loadImageWithChannel should
   * make sure to Cancel() the resulting request before the observer goes away.
   */
  /* imgIRequest loadImageWithChannel (in nsIChannel aChannel, in imgIDecoderObserver aObserver, in nsISupports cx, out nsIStreamListener aListener); */
  imgIRequestD  LoadImageWithChannel(nsIChannelD aChannel, imgIDecoderObserverD aObserver, nsISupportsD cx, out nsIStreamListenerD aListener){
    nsIStreamListener _aListener;
    imgIRequest _retval;
    nsresult __result = inner.LoadImageWithChannel(aChannel ? cast(nsIChannel)aChannel : null, aObserver ? cast(imgIDecoderObserver)aObserver : null, cx ? cast(nsISupports)cx : null, &_aListener, &_retval);
    CheckException(__result);
    aListener = _aListener ? new nsIStreamListenerD(_aListener) : null;
    return new imgIRequestD(_retval);
  }

  /**
   * Checks if a decoder for the an image with the given mime type is available
   * @param mimeType The type to find a decoder for
   * @return true if a decoder is available, false otherwise
   */
  /* boolean supportImageWithMimeType (in string mimeType); */
  PRBool SupportImageWithMimeType(char*mimeType){
    PRBool _retval;
    nsresult __result = inner.SupportImageWithMimeType(mimeType, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  imgILoader inner;

}

