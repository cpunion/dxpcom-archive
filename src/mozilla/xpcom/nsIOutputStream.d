/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIOutputStream.idl
 */

module mozilla.xpcom.nsIOutputStream;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIOutputStream; /* forward declaration */

public import mozilla.xpcom.nsIInputStream; /* forward declaration */

typedef nsresult function(nsIOutputStream aOutStream,
	void *aClosure,
	char *aToSegment,
	PRUint32 aFromOffset,
	PRUint32 aCount,
	PRUint32 *aReadCount) nsReadSegmentFun;

/* starting interface:    nsIOutputStream */
const char[] NS_IOUTPUTSTREAM_IID_STR = "0d0acd2a-61b4-11d4-9877-00c04fa0cf4a";

const nsIID NS_IOUTPUTSTREAM_IID= 
  {0x0d0acd2a, 0x61b4, 0x11d4, 
    [ 0x98, 0x77, 0x00, 0xc0, 0x4f, 0xa0, 0xcf, 0x4a ]};

extern(Windows)
interface nsIOutputStream : nsISupports {
  static const char[] IID_STR = NS_IOUTPUTSTREAM_IID_STR;
  static const nsIID IID = NS_IOUTPUTSTREAM_IID;

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
  nsresult Close();

  /**
     * Flush the stream.
     *
     * @throws NS_BASE_STREAM_WOULD_BLOCK if unable to flush without blocking 
     *   the calling thread (non-blocking mode only)
     */
  /* void flush (); */
  nsresult Flush();

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
  nsresult Write(char *aBuf, PRUint32 aCount, PRUint32 *_retval);

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
  nsresult WriteFrom(nsIInputStream aFromStream, PRUint32 aCount, PRUint32 *_retval);

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
  nsresult WriteSegments(nsReadSegmentFun aReader, void * aClosure, PRUint32 aCount, PRUint32 *_retval);

  /**
     * @return true if stream is non-blocking
     *
     * NOTE: writing to a blocking output stream will block the calling thread
     * until all given data can be consumed by the stream.
     */
  /* boolean isNonBlocking (); */
  nsresult IsNonBlocking(PRBool *_retval);

}

