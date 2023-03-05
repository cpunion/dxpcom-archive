/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBufferedStreams.idl
 */

module mozilla.dxpcom.nsIBufferedStreamsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIBufferedStreams;


public import mozilla.dxpcom.nsIBufferedStreamsD;

public import mozilla.xpcom.nsIInputStream;
public import mozilla.dxpcom.nsIInputStreamD;
public import mozilla.xpcom.nsIOutputStream;
public import mozilla.dxpcom.nsIOutputStreamD;


/* starting wrapper class:    nsIBufferedInputStream */
/**
 * An input stream that reads ahead and keeps a buffer coming from another input
 * stream so that fewer accesses to the underlying stream are necessary.
 */
class nsIBufferedInputStreamD : public nsIInputStreamD {

  static const nsIID IID = NS_IBUFFEREDINPUTSTREAM_IID;


  alias nsIBufferedInputStream InnerType;

  this(nsIBufferedInputStream intr){
    super(intr);
    this.inner = intr;
  }

  nsIBufferedInputStream opCast() {
    return inner;
  }

  void opAssign(nsIBufferedInputStream value) {
    inner = value;
  }

  /**
     * @param fillFromStream - add buffering to this stream
     * @param bufferSize     - specifies the maximum buffer size
     */
  /* void init (in nsIInputStream fillFromStream, in unsigned long bufferSize); */
  void Init(nsIInputStreamD fillFromStream, PRUint32 bufferSize){
    nsresult __result = inner.Init(fillFromStream ? cast(nsIInputStream)fillFromStream : null, bufferSize);
    CheckException(__result);
  }

private:
  nsIBufferedInputStream inner;

}


/* starting wrapper class:    nsIBufferedOutputStream */
/**
 * An output stream that stores up data to write out to another output stream
 * and does the entire write only when the buffer is full, so that fewer writes
 * to the underlying output stream are necessary.
 */
class nsIBufferedOutputStreamD : public nsIOutputStreamD {

  static const nsIID IID = NS_IBUFFEREDOUTPUTSTREAM_IID;


  alias nsIBufferedOutputStream InnerType;

  this(nsIBufferedOutputStream intr){
    super(intr);
    this.inner = intr;
  }

  nsIBufferedOutputStream opCast() {
    return inner;
  }

  void opAssign(nsIBufferedOutputStream value) {
    inner = value;
  }

  /**
     * @param sinkToStream - add buffering to this stream
     * @param bufferSize   - specifies the maximum buffer size
     */
  /* void init (in nsIOutputStream sinkToStream, in unsigned long bufferSize); */
  void Init(nsIOutputStreamD sinkToStream, PRUint32 bufferSize){
    nsresult __result = inner.Init(sinkToStream ? cast(nsIOutputStream)sinkToStream : null, bufferSize);
    CheckException(__result);
  }

private:
  nsIBufferedOutputStream inner;

}

