/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM imgIRequest.idl
 */

module mozilla.xpcom.imgIRequest;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIRequest;

public import mozilla.xpcom.imgIContainer; /* forward declaration */

public import mozilla.xpcom.imgIDecoderObserver; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    imgIRequest */
const char[] IMGIREQUEST_IID_STR = "ccf705f6-1dd1-11b2-82ef-e18eccf7f7ec";

const nsIID IMGIREQUEST_IID= 
  {0xccf705f6, 0x1dd1, 0x11b2, 
    [ 0x82, 0xef, 0xe1, 0x8e, 0xcc, 0xf7, 0xf7, 0xec ]};

/**
 * imgIRequest interface
 *
 * @author Stuart Parmenter <pavlov@netscape.com>
 * @version 0.1
 * @see imagelib2
 */
extern(Windows)
interface imgIRequest : nsIRequest {
  static const char[] IID_STR = IMGIREQUEST_IID_STR;
  static const nsIID IID = IMGIREQUEST_IID;

  /**
   * the image container...
   * @return the image object associated with the request.
   * @attention NEED DOCS
   */
  /* readonly attribute imgIContainer image; */
  nsresult GetImage(imgIContainer  *aImage);

  /**
   * Bits set in the return value from imageStatus
   * @name statusflags
   */
  enum { STATUS_NONE = 0 };

  enum { STATUS_SIZE_AVAILABLE = 1 };

  enum { STATUS_LOAD_PARTIAL = 2 };

  enum { STATUS_LOAD_COMPLETE = 4 };

  enum { STATUS_ERROR = 8 };

  enum { STATUS_FRAME_COMPLETE = 16 };

  /**
   * something
   * @attention NEED DOCS
   */
  /* readonly attribute unsigned long imageStatus; */
  nsresult GetImageStatus(PRUint32 *aImageStatus);

  /* readonly attribute nsIURI URI; */
  nsresult GetURI(nsIURI  *aURI);

  /* readonly attribute imgIDecoderObserver decoderObserver; */
  nsresult GetDecoderObserver(imgIDecoderObserver  *aDecoderObserver);

  /* readonly attribute string mimeType; */
  nsresult GetMimeType(char * *aMimeType);

  /**
   * Clone this request; the returned request will have aObserver as the
   * observer.  aObserver will be notified synchronously (before the clone()
   * call returns) with all the notifications that have already been dispatched
   * for this image load.
   */
  /* imgIRequest clone (in imgIDecoderObserver aObserver); */
  nsresult Clone(imgIDecoderObserver aObserver, imgIRequest *_retval);

}

