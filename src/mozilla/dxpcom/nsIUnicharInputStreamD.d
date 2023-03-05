/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUnicharInputStream.idl
 */

module mozilla.dxpcom.nsIUnicharInputStreamD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIUnicharInputStream;


public import mozilla.dxpcom.nsIUnicharInputStreamD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIUnicharInputStream;

public import mozilla.dxpcom.nsIUnicharInputStreamD;


/* starting wrapper class:    nsIUnicharInputStream */
class nsIUnicharInputStreamD : public nsISupportsD {

  static const nsIID IID = NS_IUNICHARINPUTSTREAM_IID;


  alias nsIUnicharInputStream InnerType;

  this(nsIUnicharInputStream intr){
    super(intr);
    this.inner = intr;
  }

  nsIUnicharInputStream opCast() {
    return inner;
  }

  void opAssign(nsIUnicharInputStream value) {
    inner = value;
  }

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
  PRUint32 Read(PRUnichar *aBuf, PRUint32 aCount){
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
  PRUint32 ReadSegments(nsWriteUnicharSegmentFun aWriter, void * aClosure, PRUint32 aCount){
    PRUint32 _retval;
    nsresult __result = inner.ReadSegments(aWriter, aClosure, aCount, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Read into a string object.
   * @param aCount The number of characters that should be read
   * @return The number of characters that were read.
   */
  /* unsigned long readString (in unsigned long aCount, out AString aString); */
  PRUint32 ReadString(PRUint32 aCount, wchar[] aString){
    scope auto _aString = new AString;
    PRUint32 _retval;
    nsresult __result = inner.ReadString(aCount, cast(nsAString*)_aString, &_retval);
    CheckException(__result);
    aString = _aString.GetString();
    return _retval;
  }

  /**
  * Close the stream and free associated resources. This also closes the
  * underlying stream, if any.
  */
  /* void close (); */
  void Close(){
    nsresult __result = inner.Close();
    CheckException(__result);
  }

private:
  nsIUnicharInputStream inner;

}

