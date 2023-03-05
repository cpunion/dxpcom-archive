/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIInputStreamPump.idl
 */

module mozilla.dxpcom.nsIInputStreamPumpD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIInputStreamPump;


public import mozilla.dxpcom.nsIInputStreamPumpD;

public import mozilla.xpcom.nsIRequest;
public import mozilla.dxpcom.nsIRequestD;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;

public import mozilla.xpcom.nsIStreamListener;

public import mozilla.dxpcom.nsIStreamListenerD;


/* starting wrapper class:    nsIInputStreamPump */
/**
 * nsIInputStreamPump
 *
 * This interface provides a means to configure and use a input stream pump
 * instance.  The input stream pump will asynchronously read from a input
 * stream, and push data to a nsIStreamListener instance.  It utilizes the 
 * current thread's nsIEventTarget in order to make reading from the stream
 * asynchronous.
 *
 * If the given stream supports nsIAsyncInputStream, then the stream pump will
 * call the stream's AsyncWait method to drive the stream listener.  Otherwise,
 * the stream will be read on a background thread utilizing the stream
 * transport service.  More details are provided below.
 */
class nsIInputStreamPumpD : public nsIRequestD {

  static const nsIID IID = NS_IINPUTSTREAMPUMP_IID;


  alias nsIInputStreamPump InnerType;

  this(nsIInputStreamPump intr){
    super(intr);
    this.inner = intr;
  }

  nsIInputStreamPump opCast() {
    return inner;
  }

  void opAssign(nsIInputStreamPump value) {
    inner = value;
  }

  /**
     * Initialize the input stream pump.
     *
     * @param aStream
     *        contains the data to be read.  if the input stream is non-blocking,
     *        then it will be QI'd to nsIAsyncInputStream.  if the QI succeeds
     *        then the stream will be read directly.  otherwise, it will be read
     *        on a background thread using the stream transport service.
     * @param aStreamPos
     *        specifies the stream offset from which to start reading.  the
     *        offset value is absolute.  pass -1 to specify the current offset.
     *        NOTE: this parameter is ignored if the underlying stream does not
     *        implement nsISeekableStream.
     * @param aStreamLen
     *        specifies how much data to read from the stream.  pass -1 to read
     *        all data available in the stream.
     * @param aSegmentSize
     *        if the stream transport service is used, then this parameter
     *        specifies the segment size for the stream transport's buffer.
     *        pass 0 to specify the default value.
     * @param aSegmentCount
     *        if the stream transport service is used, then this parameter
     *        specifies the segment count for the stream transport's buffer.
     *        pass 0 to specify the default value.
     * @param aCloseWhenDone
     *        if true, the input stream will be closed after it has been read.
     */
  /* void init (in nsIInputStream aStream, in long long aStreamPos, in long long aStreamLen, in unsigned long aSegmentSize, in unsigned long aSegmentCount, in boolean aCloseWhenDone); */
  void Init(nsIInputStreamD aStream, PRInt64 aStreamPos, PRInt64 aStreamLen, PRUint32 aSegmentSize, PRUint32 aSegmentCount, PRBool aCloseWhenDone){
    nsresult __result = inner.Init(aStream ? cast(nsIInputStream)aStream : null, aStreamPos, aStreamLen, aSegmentSize, aSegmentCount, aCloseWhenDone);
    CheckException(__result);
  }

  /**
     * asyncRead causes the input stream to be read in chunks and delivered
     * asynchronously to the listener via OnDataAvailable.
     *
     * @param aListener
     *        receives notifications.
     * @param aListenerContext
     *        passed to listener methods.
     */
  /* void asyncRead (in nsIStreamListener aListener, in nsISupports aListenerContext); */
  void AsyncRead(nsIStreamListenerD aListener, nsISupportsD aListenerContext){
    nsresult __result = inner.AsyncRead(aListener ? cast(nsIStreamListener)aListener : null, aListenerContext ? cast(nsISupports)aListenerContext : null);
    CheckException(__result);
  }

private:
  nsIInputStreamPump inner;

}

