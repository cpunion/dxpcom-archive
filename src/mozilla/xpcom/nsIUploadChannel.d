/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUploadChannel.idl
 */

module mozilla.xpcom.nsIUploadChannel;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIInputStream; /* forward declaration */


/* starting interface:    nsIUploadChannel */
const char[] NS_IUPLOADCHANNEL_IID_STR = "ddf633d8-e9a4-439d-ad88-de636fd9bb75";

const nsIID NS_IUPLOADCHANNEL_IID= 
  {0xddf633d8, 0xe9a4, 0x439d, 
    [ 0xad, 0x88, 0xde, 0x63, 0x6f, 0xd9, 0xbb, 0x75 ]};

/**
 * nsIUploadChannel
 *
 * A channel may optionally implement this interface if it supports the
 * notion of uploading a data stream.  The upload stream may only be set
 * prior to the invocation of asyncOpen on the channel.
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIUploadChannel : nsISupports {
  static const char[] IID_STR = NS_IUPLOADCHANNEL_IID_STR;
  static const nsIID IID = NS_IUPLOADCHANNEL_IID;

  /**
     * Sets a stream to be uploaded by this channel.
     *
     * Most implementations of this interface require that the stream:
     *   (1) implement threadsafe addRef and release
     *   (2) implement nsIInputStream::readSegments
     *   (3) implement nsISeekableStream::seek
     *
     * History here is that we need to support both streams that already have
     * headers (e.g., Content-Type and Content-Length) information prepended to
     * the stream (by plugins) as well as clients (composer, uploading
     * application) that want to upload data streams without any knowledge of
     * protocol specifications.  For this reason, we have a special meaning
     * for the aContentType parameter (see below).
     * 
     * @param aStream
     *        The stream to be uploaded by this channel.
     * @param aContentType
     *        If aContentType is empty, the protocol will assume that no
     *        content headers are to be added to the uploaded stream and that
     *        any required headers are already encoded in the stream.  In the
     *        case of HTTP, if this parameter is non-empty, then its value will
     *        replace any existing Content-Type header on the HTTP request.
     *        In the case of FTP and FILE, this parameter is ignored.
     * @param aContentLength
     *        A value of -1 indicates that the length of the stream should be
     *        determined by calling the stream's |available| method.
     */
  /* void setUploadStream (in nsIInputStream aStream, in ACString aContentType, in long aContentLength); */
  nsresult SetUploadStream(nsIInputStream aStream, nsACString * aContentType, PRInt32 aContentLength);

  /**
     * Get the stream (to be) uploaded by this channel.
     */
  /* readonly attribute nsIInputStream uploadStream; */
  nsresult GetUploadStream(nsIInputStream  *aUploadStream);

}

