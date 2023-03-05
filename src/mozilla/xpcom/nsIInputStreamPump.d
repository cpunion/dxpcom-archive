/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIInputStreamPump.idl
 */

module mozilla.xpcom.nsIInputStreamPump;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIRequest;

public import mozilla.xpcom.nsIInputStream; /* forward declaration */

public import mozilla.xpcom.nsIStreamListener; /* forward declaration */


/* starting interface:    nsIInputStreamPump */
const char[] NS_IINPUTSTREAMPUMP_IID_STR = "400f5468-97e7-4d2b-9c65-a82aecc7ae82";

const nsIID NS_IINPUTSTREAMPUMP_IID= 
  {0x400f5468, 0x97e7, 0x4d2b, 
    [ 0x9c, 0x65, 0xa8, 0x2a, 0xec, 0xc7, 0xae, 0x82 ]};

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
extern(Windows)
interface nsIInputStreamPump : nsIRequest {
  static const char[] IID_STR = NS_IINPUTSTREAMPUMP_IID_STR;
  static const nsIID IID = NS_IINPUTSTREAMPUMP_IID;

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
  nsresult Init(nsIInputStream aStream, PRInt64 aStreamPos, PRInt64 aStreamLen, PRUint32 aSegmentSize, PRUint32 aSegmentCount, PRBool aCloseWhenDone);

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
  nsresult AsyncRead(nsIStreamListener aListener, nsISupports aListenerContext);

}

