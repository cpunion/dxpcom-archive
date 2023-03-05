/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIOutputStream.idl
 */

module mozilla.dxpcom.nsIOutputStreamD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIOutputStream;


public import mozilla.dxpcom.nsIOutputStreamD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIOutputStream;

public import mozilla.dxpcom.nsIOutputStreamD;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;


/* starting wrapper class:    nsIOutputStream */
class nsIOutputStreamD : public nsISupportsD {

  static const nsIID IID = NS_IOUTPUTSTREAM_IID;


  alias nsIOutputStream InnerType;

  this(nsIOutputStream intr){
    super(intr);
    this.inner = intr;
  }

  nsIOutputStream opCast() {
    return inner;
  }

  void opAssign(nsIOutputStream value) {
    inner = value;
  }

  /**
 * nsIOutputStream
 *
 * @status FROZEN
 */
/** 
     * Close the stream. Forces the output stream to flush any buffered data.
     *
     * @throws NS_BASE_STREAM_WOULD_BLOCK if unable to flush without blocking 
     *   the calling thread (non-blocking mode only)
     */
  /* void close (); */
  void Close(){
    nsresult __result = inner.Close();
    CheckException(__result);
  }

  /**
     * Flush the stream.
     *
     * @throws NS_BASE_STREAM_WOULD_BLOCK if unable to flush without blocking 
     *   the calling thread (non-blocking mode only)
     */
  /* void flush (); */
  void Flush(){
    nsresult __result = inner.Flush();
    CheckException(__result);
  }

  /**
     * Write data into the stream.
     *
     * @param aBuf the buffer containing the data to be written
     * @param aCount the maximum number of bytes to be written
     *
     * @return number of bytes written (may be less than aCount)
     *
     * @throws NS_BASE_STREAM_WOULD_BLOCK if writing to the output stream would
     *   block the calling thread (non-blocking mode only)
     * @throws <other-error> on failure
     */
  /* unsigned long write (in string aBuf, in unsigned long aCount); */
  PRUint32 Write(char*aBuf, PRUint32 aCount){
    PRUint32 _retval;
    nsresult __result = inner.Write(aBuf, aCount, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Writes data into the stream from an input stream.
     *
     * @param aFromStream the stream containing the data to be written
     * @param aCount the maximum number of bytes to be written
     *
     * @return number of bytes written (may be less than aCount)
     *
     * @throws NS_BASE_STREAM_WOULD_BLOCK if writing to the output stream would
     *    block the calling thread (non-blocking mode only)
     * @throws <other-error> on failure
     *
     * NOTE: This method is defined by this interface in order to allow the
     * output stream to efficiently copy the data from the input stream into
     * its internal buffer (if any). If this method was provided as an external
     * facility, a separate char* buffer would need to be used in order to call
     * the output stream's other Write method.
     */
  /* unsigned long writeFrom (in nsIInputStream aFromStream, in unsigned long aCount); */
  PRUint32 WriteFrom(nsIInputStreamD aFromStream, PRUint32 aCount){
    PRUint32 _retval;
    nsresult __result = inner.WriteFrom(aFromStream ? cast(nsIInputStream)aFromStream : null, aCount, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Low-level write method that has access to the stream's underlying buffer.
     * The reader function may be called multiple times for segmented buffers.
     * WriteSegments is expected to keep calling the reader until either there
     * is nothing left to write or the reader returns an error.  WriteSegments
     * should not call the reader with zero bytes to provide.
     *
     * @param aReader the "provider" of the data to be written
     * @param aClosure opaque parameter passed to reader
     * @param aCount the maximum number of bytes to be written
     *
     * @return number of bytes written (may be less than aCount)
     *
     * @throws NS_BASE_STREAM_WOULD_BLOCK if writing to the output stream would
     *    block the calling thread (non-blocking mode only)
     * @throws <other-error> on failure
     *
     * NOTE: this function may be unimplemented if a stream has no underlying
     * buffer (e.g., socket output stream).
     */
  /* [noscript] unsigned long writeSegments (in nsReadSegmentFun aReader, in voidPtr aClosure, in unsigned long aCount); */
  PRUint32 WriteSegments(nsReadSegmentFun aReader, void * aClosure, PRUint32 aCount){
    PRUint32 _retval;
    nsresult __result = inner.WriteSegments(aReader, aClosure, aCount, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * @return true if stream is non-blocking
     *
     * NOTE: writing to a blocking output stream will block the calling thread
     * until all given data can be consumed by the stream.
     */
  /* boolean isNonBlocking (); */
  PRBool IsNonBlocking(){
    PRBool _retval;
    nsresult __result = inner.IsNonBlocking(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIOutputStream inner;

}

