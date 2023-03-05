/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUploadChannel.idl
 */

module mozilla.dxpcom.nsIUploadChannelD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIUploadChannel;


public import mozilla.dxpcom.nsIUploadChannelD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;


/* starting wrapper class:    nsIUploadChannel */
/**
 * nsIUploadChannel
 *
 * A channel may optionally implement this interface if it supports the
 * notion of uploading a data stream.  The upload stream may only be set
 * prior to the invocation of asyncOpen on the channel.
 *
 * @status FROZEN
 */
class nsIUploadChannelD : public nsISupportsD {

  static const nsIID IID = NS_IUPLOADCHANNEL_IID;


  alias nsIUploadChannel InnerType;

  this(nsIUploadChannel intr){
    super(intr);
    this.inner = intr;
  }

  nsIUploadChannel opCast() {
    return inner;
  }

  void opAssign(nsIUploadChannel value) {
    inner = value;
  }

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
  void SetUploadStream(nsIInputStreamD aStream, char[] aContentType, PRInt32 aContentLength){
    scope auto _aContentType = new ACString(aContentType);
    nsresult __result = inner.SetUploadStream(aStream ? cast(nsIInputStream)aStream : null, cast(nsACString*)_aContentType, aContentLength);
    CheckException(__result);
  }

  /**
     * Get the stream (to be) uploaded by this channel.
     */
  /* readonly attribute nsIInputStream uploadStream; */
  nsIInputStreamD  UploadStream(){
    nsIInputStream value;
    nsresult __result = inner.GetUploadStream(&value);
    CheckException(__result);
    return new nsIInputStreamD(value);
  }

private:
  nsIUploadChannel inner;

}

