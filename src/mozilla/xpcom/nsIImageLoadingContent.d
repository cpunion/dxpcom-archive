/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImageLoadingContent.idl
 */

module mozilla.xpcom.nsIImageLoadingContent;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.imgIDecoderObserver;

public import mozilla.xpcom.imgIRequest; /* forward declaration */

public import mozilla.xpcom.nsIChannel; /* forward declaration */

public import mozilla.xpcom.nsIStreamListener; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    nsIImageLoadingContent */
const char[] NS_IIMAGELOADINGCONTENT_IID_STR = "da19c86d-08aa-421c-8c37-12ec2ba5a2c3";

const nsIID NS_IIMAGELOADINGCONTENT_IID= 
  {0xda19c86d, 0x08aa, 0x421c, 
    [ 0x8c, 0x37, 0x12, 0xec, 0x2b, 0xa5, 0xa2, 0xc3 ]};

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
extern(Windows)
interface nsIImageLoadingContent : imgIDecoderObserver {
  static const char[] IID_STR = NS_IIMAGELOADINGCONTENT_IID_STR;
  static const nsIID IID = NS_IIMAGELOADINGCONTENT_IID;

  /**
   * Request types.  Image loading content nodes attempt to do atomic
   * image changes when the image url is changed.  This means that
   * when the url changes the new image load will start, but the old
   * image will remain the "current" request until the new image is
   * fully loaded.  At that point, the old "current" request will be
   * discarded and the "pending" request will become "current".
   */
  enum { UNKNOWN_REQUEST = -1 };

  enum { CURRENT_REQUEST = 0 };

  enum { PENDING_REQUEST = 1 };

  /**
   * loadingEnabled is used to enable and disable loading in
   * situations where loading images is unwanted.  Note that enabling
   * loading will *not* automatically trigger an image load.
   */
  /* attribute boolean loadingEnabled; */
  nsresult GetLoadingEnabled(PRBool *aLoadingEnabled);
  nsresult SetLoadingEnabled(PRBool aLoadingEnabled);

  /**
   * Returns the image blocking status (@see nsIContentPolicy).  This
   * will always be an nsIContentPolicy REJECT_* status for cases when
   * the image was blocked.  This status always refers to the
   * CURRENT_REQUEST load.
   */
  /* readonly attribute short imageBlockingStatus; */
  nsresult GetImageBlockingStatus(PRInt16 *aImageBlockingStatus);

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
  nsresult AddObserver(imgIDecoderObserver aObserver);

  /**
   * Used to unregister an image decoder observer.
   *
   * @param aObserver the observer to unregister
   */
  /* void removeObserver (in imgIDecoderObserver aObserver); */
  nsresult RemoveObserver(imgIDecoderObserver aObserver);

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
  nsresult GetRequest(PRInt32 aRequestType, imgIRequest *_retval);

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
  nsresult GetRequestType(imgIRequest aRequest, PRInt32 *_retval);

  /**
   * Gets the URI of the current request, if available.
   * Otherwise, returns the last URI that this content tried to load, or
   * null if there haven't been any such attempts.
   */
  /* readonly attribute nsIURI currentURI; */
  nsresult GetCurrentURI(nsIURI  *aCurrentURI);

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
  nsresult LoadImageWithChannel(nsIChannel aChannel, nsIStreamListener *_retval);

  /**
   * ImageURIChanged is called when the appropriate attributes (eg
   * 'src' for <img> tags) change.  The string passed in is the new
   * uri string.
   */
  /* [noscript] void imageURIChanged (in AString aNewURI); */
  nsresult ImageURIChanged(nsAString * aNewURI);

}

