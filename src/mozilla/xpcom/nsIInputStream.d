/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIInputStream.idl
 */

module mozilla.xpcom.nsIInputStream;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIInputStream; /* forward declaration */

typedef nsresult function(nsIInputStream aInStream,
	void *aClosure,
	char *aFromSegment,
	PRUint32 aToOffset,
	PRUint32 aCount,
	PRUint32 *aWriteCount) nsWriteSegmentFun;

/* starting interface:    nsIInputStream */
const char[] NS_IINPUTSTREAM_IID_STR = "fa9c7f6c-61b3-11d4-9877-00c04fa0cf4a";

const nsIID NS_IINPUTSTREAM_IID= 
  {0xfa9c7f6c, 0x61b3, 0x11d4, 
    [ 0x98, 0x77, 0x00, 0xc0, 0x4f, 0xa0, 0xcf, 0x4a ]};

extern(Windows)
interface nsIInputStream : nsISupports {
  static const char[] IID_STR = NS_IINPUTSTREAM_IID_STR;
  static const nsIID IID = NS_IINPUTSTREAM_IID;

  /**
 * nsIInputStream
 *
 * @status FROZEN
 */
/** 
     * Close the stream.
     */
  /* void close (); */
  nsresult Close();

  /**
     * @return number of bytes currently available in the stream
     */
  /* unsigned long available (); */
  nsresult Available(PRUint32 *_retval);

  /** 
     * Read data from the stream.
     *
     * @param aBuf the buffer into which the data is to be read
     * @param aCount the maximum number of bytes to be read
     *
     * @return number of bytes read (may be less than aCount).
     * @return 0 if reached end of file
     *
     * @throws NS_BASE_STREAM_WOULD_BLOCK if reading from the input stream would
     *   block the calling thread (non-blocking mode only)
     * @throws <other-error> on failure
     */
  /* [noscript] unsigned long read (in charPtr aBuf, in unsigned long aCount); */
  nsresult Read(char * aBuf, PRUint32 aCount, PRUint32 *_retval);

  /**
     * Low-level read method that has access to the stream's underlying buffer.
     * The writer function may be called multiple times for segmented buffers.
     * ReadSegments is expected to keep calling the writer until either there is
     * nothing left to read or the writer returns an error.  ReadSegments should
     * not call the writer with zero bytes to consume.
     *
     * @param aWriter the "consumer" of the data to be read
     * @param aClosure opaque parameter passed to writer 
     * @param aCount the maximum number of bytes to be read
     *
     * @return number of bytes read (may be less than aCount)
     * @return 0 if reached end of file (or if aWriter refused to consume data)
     *
     * @throws NS_BASE_STREAM_WOULD_BLOCK if reading from the input stream would
     *   block the calling thread (non-blocking mode only)
     * @throws <other-error> on failure
     *
     * NOTE: this function may be unimplemented if a stream has no underlying
     * buffer (e.g., socket input stream).
     */
  /* [noscript] unsigned long readSegments (in nsWriteSegmentFun aWriter, in voidPtr aClosure, in unsigned long aCount); */
  nsresult ReadSegments(nsWriteSegmentFun aWriter, void * aClosure, PRUint32 aCount, PRUint32 *_retval);

  /**
     * @return true if stream is non-blocking
     */
  /* boolean isNonBlocking (); */
  nsresult IsNonBlocking(PRBool *_retval);

}

