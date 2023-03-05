/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM imgILoader.idl
 */

module mozilla.xpcom.imgILoader;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIRequest;

public import mozilla.xpcom.imgIDecoderObserver; /* forward declaration */

public import mozilla.xpcom.imgIRequest; /* forward declaration */

public import mozilla.xpcom.nsIChannel; /* forward declaration */

public import mozilla.xpcom.nsILoadGroup; /* forward declaration */

public import mozilla.xpcom.nsIStreamListener; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */


/* starting interface:    imgILoader */
const char[] IMGILOADER_IID_STR = "a32826ff-9e56-4425-a811-97a8dba64ff5";

const nsIID IMGILOADER_IID= 
  {0xa32826ff, 0x9e56, 0x4425, 
    [ 0xa8, 0x11, 0x97, 0xa8, 0xdb, 0xa6, 0x4f, 0xf5 ]};

/**
 * imgILoader interface
 *
 * @author Stuart Parmenter <pavlov@netscape.com>
 * @version 0.3
 * @see imagelib2
 */
extern(Windows)
interface imgILoader : nsISupports {
  static const char[] IID_STR = IMGILOADER_IID_STR;
  static const nsIID IID = IMGILOADER_IID;

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
  nsresult LoadImage(nsIURI aURI, nsIURI aInitialDocumentURL, nsIURI aReferrerURI, nsILoadGroup aLoadGroup, imgIDecoderObserver aObserver, nsISupports aCX, nsLoadFlags aLoadFlags, nsISupports cacheKey, imgIRequest aRequest, imgIRequest *_retval);

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
  nsresult LoadImageWithChannel(nsIChannel aChannel, imgIDecoderObserver aObserver, nsISupports cx, nsIStreamListener *aListener, imgIRequest *_retval);

  /**
   * Checks if a decoder for the an image with the given mime type is available
   * @param mimeType The type to find a decoder for
   * @return true if a decoder is available, false otherwise
   */
  /* boolean supportImageWithMimeType (in string mimeType); */
  nsresult SupportImageWithMimeType(char *mimeType, PRBool *_retval);

}

