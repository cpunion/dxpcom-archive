/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUnicharInputStream.idl
 */

module mozilla.xpcom.nsIUnicharInputStream;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIUnicharInputStream; /* forward declaration */

typedef nsresult function(nsIUnicharInputStream aInStream,
	  void *aClosure,
	  PRUnichar *aFromSegment,
	  PRUint32 aToOffset,
	  PRUint32 aCount,
	  PRUint32 *aWriteCount) nsWriteUnicharSegmentFun;

/* starting interface:    nsIUnicharInputStream */
const char[] NS_IUNICHARINPUTSTREAM_IID_STR = "d5e3bd80-6723-4b92-b0c9-22f6162fd94f";

const nsIID NS_IUNICHARINPUTSTREAM_IID= 
  {0xd5e3bd80, 0x6723, 0x4b92, 
    [ 0xb0, 0xc9, 0x22, 0xf6, 0x16, 0x2f, 0xd9, 0x4f ]};

extern(Windows)
interface nsIUnicharInputStream : nsISupports {
  static const char[] IID_STR = NS_IUNICHARINPUTSTREAM_IID_STR;
  static const nsIID IID = NS_IUNICHARINPUTSTREAM_IID;

  /**
 * Abstract unicode character input stream
 * @see nsIInputStream
 */
/**
   * Reads into a caller-provided character array.
   *
   * @return The number of characters that were successfully read. May be less
   *         than aCount, even if there is more data in the input stream.
   *         A return value of 0 means EOF.
   *
   * @note To read more than 2^32 characters, call this method multiple times.
   */
  /* [noscript] unsigned long read ([array, size_is (aCount)] in PRUnichar aBuf, in unsigned long aCount); */
  nsresult Read(PRUnichar *aBuf, PRUint32 aCount, PRUint32 *_retval);

  /**
   * Low-level read method that has access to the stream's underlying buffer.
   * The writer function may be called multiple times for segmented buffers.
   * ReadSegments is expected to keep calling the writer until either there is
   * nothing left to read or the writer returns an error.  ReadSegments should
   * not call the writer with zero characters to consume.
   *
   * @param aWriter the "consumer" of the data to be read
   * @param aClosure opaque parameter passed to writer 
   * @param aCount the maximum number of characters to be read
   *
   * @return number of characters read (may be less than aCount)
   * @return 0 if reached end of file (or if aWriter refused to consume data)
   *
   * @throws NS_BASE_STREAM_WOULD_BLOCK if reading from the input stream would
   *   block the calling thread (non-blocking mode only)
   * @throws <other-error> on failure
   *
   * NOTE: this function may be unimplemented if a stream has no underlying
   * buffer
   */
  /* [noscript] unsigned long readSegments (in nsWriteUnicharSegmentFun aWriter, in voidPtr aClosure, in unsigned long aCount); */
  nsresult ReadSegments(nsWriteUnicharSegmentFun aWriter, void * aClosure, PRUint32 aCount, PRUint32 *_retval);

  /**
   * Read into a string object.
   * @param aCount The number of characters that should be read
   * @return The number of characters that were read.
   */
  /* unsigned long readString (in unsigned long aCount, out AString aString); */
  nsresult ReadString(PRUint32 aCount, nsAString * aString, PRUint32 *_retval);

  /**
  * Close the stream and free associated resources. This also closes the
  * underlying stream, if any.
  */
  /* void close (); */
  nsresult Close();

}

