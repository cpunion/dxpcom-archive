/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImageLoadingContent.idl
 */

module mozilla.dxpcom.nsIImageLoadingContentD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIImageLoadingContent;


public import mozilla.dxpcom.nsIImageLoadingContentD;

public import mozilla.xpcom.imgIDecoderObserver;
public import mozilla.dxpcom.imgIDecoderObserverD;

public import mozilla.xpcom.imgIRequest;

public import mozilla.dxpcom.imgIRequestD;

public import mozilla.xpcom.nsIChannel;

public import mozilla.dxpcom.nsIChannelD;

public import mozilla.xpcom.nsIStreamListener;

public import mozilla.dxpcom.nsIStreamListenerD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIImageLoadingContent */
/**
 * This interface represents a content node that loads images.  The interface
 * exists to allow getting information on the images that the content node
 * loads and to allow registration of observers for the image loads.
 *
 * Implementors of this interface should handle all the mechanics of actually
 * loading an image -- getting the URI, checking with content policies and
 * the security manager to see whether loading the URI is allowed, performing
 * the load, firing any DOM events as needed.
 *
 * An implementation of this interface may support the concepts of a
 * "current" image and a "pending" image.  If it does, a request to change
 * the currently loaded image will start a "pending" request which will
 * become current only when the image is loaded.  It is the responsibility of
 * observers to check which request they are getting notifications for.
 *
 * Observers added in mid-load will not get any notifications they
 * missed.  We should NOT freeze this interface without considering
 * this issue.  (It could be that the image status on imgIRequest is
 * sufficient, when combined with the imageBlockingStatus information.)
 *
 * XXXbz Do not freeze without removing imageURIChanged!
 */
class nsIImageLoadingContentD : public imgIDecoderObserverD {

  static const nsIID IID = NS_IIMAGELOADINGCONTENT_IID;


  alias nsIImageLoadingContent InnerType;

  this(nsIImageLoadingContent intr){
    super(intr);
    this.inner = intr;
  }

  nsIImageLoadingContent opCast() {
    return inner;
  }

  void opAssign(nsIImageLoadingContent value) {
    inner = value;
  }

  /**
   * Request types.  Image loading content nodes attempt to do atomic
   * image changes when the image url is changed.  This means that
   * when the url changes the new image load will start, but the old
   * image will remain the "current" request until the new image is
   * fully loaded.  At that point, the old "current" request will be
   * discarded and the "pending" request will become "current".
   */
  enum { UNKNOWN_REQUEST = -1 }

  enum { CURRENT_REQUEST = 0 }

  enum { PENDING_REQUEST = 1 }

  /**
   * loadingEnabled is used to enable and disable loading in
   * situations where loading images is unwanted.  Note that enabling
   * loading will *not* automatically trigger an image load.
   */
  /* attribute boolean loadingEnabled; */
  PRBool LoadingEnabled(){
    PRBool value;
    nsresult __result = inner.GetLoadingEnabled(&value);
    CheckException(__result);
    return value;
  }
  void LoadingEnabled(PRBool aLoadingEnabled){
    nsresult __result = inner.SetLoadingEnabled(aLoadingEnabled);
    CheckException(__result);
  }

  /**
   * Returns the image blocking status (@see nsIContentPolicy).  This
   * will always be an nsIContentPolicy REJECT_* status for cases when
   * the image was blocked.  This status always refers to the
   * CURRENT_REQUEST load.
   */
  /* readonly attribute short imageBlockingStatus; */
  PRInt16 ImageBlockingStatus(){
    PRInt16 value;
    nsresult __result = inner.GetImageBlockingStatus(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Used to register an image decoder observer.  Typically, this will
   * be a proxy for a frame that wants to paint the image.
   * Notifications from ongoing image loads will be passed to all
   * registered observers.  Notifications for all request types,
   * current and pending, will be passed through.
   *
   * @param aObserver the observer to register
   *
   * @throws NS_ERROR_OUT_OF_MEMORY
   */
  /* void addObserver (in imgIDecoderObserver aObserver); */
  void AddObserver(imgIDecoderObserverD aObserver){
    nsresult __result = inner.AddObserver(aObserver ? cast(imgIDecoderObserver)aObserver : null);
    CheckException(__result);
  }

  /**
   * Used to unregister an image decoder observer.
   *
   * @param aObserver the observer to unregister
   */
  /* void removeObserver (in imgIDecoderObserver aObserver); */
  void RemoveObserver(imgIDecoderObserverD aObserver){
    nsresult __result = inner.RemoveObserver(aObserver ? cast(imgIDecoderObserver)aObserver : null);
    CheckException(__result);
  }

  /**
   * Accessor to get the image requests
   *
   * @param aRequestType a value saying which request is wanted
   *
   * @return the imgIRequest object (may be null, even when no error
   * is thrown)
   *
   * @throws NS_ERROR_UNEXPECTED if the request type requested is not
   * known
   */
  /* imgIRequest getRequest (in long aRequestType); */
  imgIRequestD  GetRequest(PRInt32 aRequestType){
    imgIRequest _retval;
    nsresult __result = inner.GetRequest(aRequestType, &_retval);
    CheckException(__result);
    return new imgIRequestD(_retval);
  }

  /**
   * Used to find out what type of request one is dealing with (eg
   * which request got passed through to the imgIDecoderObserver
   * interface of an observer)
   *
   * @param aRequest the request whose type we want to know
   *
   * @return an enum value saying what type this request is
   *
   * @throws NS_ERROR_UNEXPECTED if aRequest is not known
   */
  /* long getRequestType (in imgIRequest aRequest); */
  PRInt32 GetRequestType(imgIRequestD aRequest){
    PRInt32 _retval;
    nsresult __result = inner.GetRequestType(aRequest ? cast(imgIRequest)aRequest : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Gets the URI of the current request, if available.
   * Otherwise, returns the last URI that this content tried to load, or
   * null if there haven't been any such attempts.
   */
  /* readonly attribute nsIURI currentURI; */
  nsIURID  CurrentURI(){
    nsIURI value;
    nsresult __result = inner.GetCurrentURI(&value);
    CheckException(__result);
    return new nsIURID(value);
  }

  /**
   * loadImageWithChannel allows data from an existing channel to be
   * used as the image data for this content node.
   *
   * @param aChannel the channel that will deliver the data
   *
   * @return a stream listener to pump the image data into
   *
   * @see imgILoader::loadImageWithChannel
   *
   * @throws NS_ERROR_NULL_POINTER if aChannel is null
   */
  /* nsIStreamListener loadImageWithChannel (in nsIChannel aChannel); */
  nsIStreamListenerD  LoadImageWithChannel(nsIChannelD aChannel){
    nsIStreamListener _retval;
    nsresult __result = inner.LoadImageWithChannel(aChannel ? cast(nsIChannel)aChannel : null, &_retval);
    CheckException(__result);
    return new nsIStreamListenerD(_retval);
  }

  /**
   * ImageURIChanged is called when the appropriate attributes (eg
   * 'src' for <img> tags) change.  The string passed in is the new
   * uri string.
   */
  /* [noscript] void imageURIChanged (in AString aNewURI); */
  void ImageURIChanged(wchar[] aNewURI){
    scope auto _aNewURI = new AString(aNewURI);
    nsresult __result = inner.ImageURIChanged(cast(nsAString*)_aNewURI);
    CheckException(__result);
  }

private:
  nsIImageLoadingContent inner;

}

