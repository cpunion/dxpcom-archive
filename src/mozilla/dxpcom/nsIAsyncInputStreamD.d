/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAsyncInputStream.idl
 */

module mozilla.dxpcom.nsIAsyncInputStreamD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAsyncInputStream;


public import mozilla.dxpcom.nsIAsyncInputStreamD;

public import mozilla.xpcom.nsIInputStream;
public import mozilla.dxpcom.nsIInputStreamD;

public import mozilla.xpcom.nsIAsyncInputStream;

import mozilla.dxpcom.nsIAsyncInputStreamD;

public import mozilla.xpcom.nsIEventTarget;

public import mozilla.dxpcom.nsIEventTargetD;


/* starting wrapper class:    nsIAsyncInputStream */
/**
 * If an input stream is non-blocking, it may return NS_BASE_STREAM_WOULD_BLOCK
 * when read.  The caller must then wait for the stream to have some data to 
 * read.  If the stream implements nsIAsyncInputStream, then the caller can use 
 * this interface to request an asynchronous notification when the stream
 * becomes readable or closed (via the AsyncWait method).
 *
 * While this interface is almost exclusively used with non-blocking streams, it
 * is not necessary that nsIInputStream::isNonBlocking return true.  Nor is it
 * necessary that a non-blocking nsIInputStream implementation also implement
 * nsIAsyncInputStream.
 */
class nsIAsyncInputStreamD : public nsIInputStreamD {

  static const nsIID IID = NS_IASYNCINPUTSTREAM_IID;


  alias nsIAsyncInputStream InnerType;

  this(nsIAsyncInputStream intr){
    super(intr);
    this.inner = intr;
  }

  nsIAsyncInputStream opCast() {
    return inner;
  }

  void opAssign(nsIAsyncInputStream value) {
    inner = value;
  }

  /**
     * This method closes the stream and sets its internal status.  If the 
     * stream is already closed, then this method is ignored.  Once the stream
     * is closed, the stream's status cannot be changed.  Any successful status
     * code passed to this method is treated as NS_BASE_STREAM_CLOSED, which
     * has an effect equivalent to nsIInputStream::close. 
     *
     * NOTE: this method exists in part to support pipes, which have both an 
     * input end and an output end.  If the input end of a pipe is closed, then
     * writes to the output end of the pipe will fail.  The error code returned 
     * when an attempt is made to write to a "broken" pipe corresponds to the
     * status code passed in when the input end of the pipe was closed, which
     * greatly simplifies working with pipes in some cases.
     *
     * @param aStatus
     *        The error that will be reported if this stream is accessed after
     *        it has been closed.
     */
  /* void closeWithStatus (in nsresult aStatus); */
  void CloseWithStatus(nsresult aStatus){
    nsresult __result = inner.CloseWithStatus(aStatus);
    CheckException(__result);
  }

  /**
     * Asynchronously wait for the stream to be readable or closed.  The
     * notification is one-shot, meaning that each asyncWait call will result
     * in exactly one notification callback.  After the OnInputStreamReady event
     * is dispatched, the stream releases its reference to the 
     * nsIInputStreamCallback object.  It is safe to call asyncWait again from the
     * notification handler.
     *
     * This method may be called at any time (even if read has not been called).
     * In other words, this method may be called when the stream already has
     * data to read.  It may also be called when the stream is closed.  If the
     * stream is already readable or closed when AsyncWait is called, then the
     * OnInputStreamReady event will be dispatched immediately.  Otherwise, the
     * event will be dispatched when the stream becomes readable or closed.
     * 
     * @param aCallback
     *        This object is notified when the stream becomes ready.
     * @param aFlags
     *        This parameter specifies optional flags passed in to configure
     *        the behavior of this method.  Pass zero to specify no flags.
     * @param aRequestedCount
     *        Wait until at least this many bytes can be read.  This is only
     *        a suggestion to the underlying stream; it may be ignored.  The
     *        caller may pass zero to indicate no preference.
     * @param aEventTarget
     *        Specify NULL to receive notification on ANY thread (possibly even
     *        recursively on the calling thread -- i.e., synchronously), or
     *        specify that the notification be delivered to a specific event
     *        target.
     */
  /* void asyncWait (in nsIInputStreamCallback aCallback, in unsigned long aFlags, in unsigned long aRequestedCount, in nsIEventTarget aEventTarget); */
  void AsyncWait(nsIInputStreamCallbackD aCallback, PRUint32 aFlags, PRUint32 aRequestedCount, nsIEventTargetD aEventTarget){
    nsresult __result = inner.AsyncWait(aCallback ? cast(nsIInputStreamCallback)aCallback : null, aFlags, aRequestedCount, aEventTarget ? cast(nsIEventTarget)aEventTarget : null);
    CheckException(__result);
  }

  /**
     * If passed to asyncWait, this flag overrides the default behavior,
     * causing the OnInputStreamReady notification to be suppressed until the
     * stream becomes closed (either as a result of closeWithStatus/close being
     * called on the stream or possibly due to some error in the underlying
     * stream).
     */
  enum { WAIT_CLOSURE_ONLY = 1U }

private:
  nsIAsyncInputStream inner;

}


/* starting wrapper class:    nsIInputStreamCallback */
class nsIInputStreamCallbackD : public nsISupportsD {

  static const nsIID IID = NS_IINPUTSTREAMCALLBACK_IID;


  alias nsIInputStreamCallback InnerType;

  this(nsIInputStreamCallback intr){
    super(intr);
    this.inner = intr;
  }

  nsIInputStreamCallback opCast() {
    return inner;
  }

  void opAssign(nsIInputStreamCallback value) {
    inner = value;
  }

  /**
 * This is a companion interface for nsIAsyncInputStream::asyncWait.
 */
/**
     * Called to indicate that the stream is either readable or closed.
     *
     * @param aStream
     *        The stream whose asyncWait method was called.
     */
  /* void onInputStreamReady (in nsIAsyncInputStream aStream); */
  void OnInputStreamReady(nsIAsyncInputStreamD aStream){
    nsresult __result = inner.OnInputStreamReady(aStream ? cast(nsIAsyncInputStream)aStream : null);
    CheckException(__result);
  }

private:
  nsIInputStreamCallback inner;

}

