/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIInputStream.idl
 */

module mozilla.dxpcom.nsIInputStreamD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIInputStream;


public import mozilla.dxpcom.nsIInputStreamD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;


/* starting wrapper class:    nsIInputStream */
class nsIInputStreamD : public nsISupportsD {

  static const nsIID IID = NS_IINPUTSTREAM_IID;


  alias nsIInputStream InnerType;

  this(nsIInputStream intr){
    super(intr);
    this.inner = intr;
  }

  nsIInputStream opCast() {
    return inner;
  }

  void opAssign(nsIInputStream value) {
    inner = value;
  }

  /**
 * nsIInputStream
 *
 * @status FROZEN
 */
/** 
     * Close the stream.
     */
  /* void close (); */
  void Close(){
    nsresult __result = inner.Close();
    CheckException(__result);
  }

  /**
     * @return number of bytes currently available in the stream
     */
  /* unsigned long available (); */
  PRUint32 Available(){
    PRUint32 _retval;
    nsresult __result = inner.Available(&_retval);
    CheckException(__result);
    return _retval;
  }

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
  PRUint32 Read(char * aBuf, PRUint32 aCount){
    PRUint32 _retval;
    nsresult __result = inner.Read(aBuf, aCount, &_retval);
    CheckException(__result);
    return _retval;
  }

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
  PRUint32 ReadSegments(nsWriteSegmentFun aWriter, void * aClosure, PRUint32 aCount){
    PRUint32 _retval;
    nsresult __result = inner.ReadSegments(aWriter, aClosure, aCount, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * @return true if stream is non-blocking
     */
  /* boolean isNonBlocking (); */
  PRBool IsNonBlocking(){
    PRBool _retval;
    nsresult __result = inner.IsNonBlocking(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIInputStream inner;

}

