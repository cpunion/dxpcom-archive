/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAsyncOutputStream.idl
 */

module mozilla.dxpcom.nsIAsyncOutputStreamD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAsyncOutputStream;


public import mozilla.dxpcom.nsIAsyncOutputStreamD;

public import mozilla.xpcom.nsIOutputStream;
public import mozilla.dxpcom.nsIOutputStreamD;

public import mozilla.xpcom.nsIAsyncOutputStream;

import mozilla.dxpcom.nsIAsyncOutputStreamD;

public import mozilla.xpcom.nsIEventTarget;

public import mozilla.dxpcom.nsIEventTargetD;


/* starting wrapper class:    nsIAsyncOutputStream */
/**
 * If an output stream is non-blocking, it may return NS_BASE_STREAM_WOULD_BLOCK
 * when written to.  The caller must then wait for the stream to become
 * writable.  If the stream implements nsIAsyncOutputStream, then the caller can
 * use this interface to request an asynchronous notification when the stream
 * becomes writable or closed (via the AsyncWait method).
 *
 * While this interface is almost exclusively used with non-blocking streams, it
 * is not necessary that nsIOutputStream::isNonBlocking return true.  Nor is it
 * necessary that a non-blocking nsIOutputStream implementation also implement
 * nsIAsyncOutputStream.
 */
class nsIAsyncOutputStreamD : public nsIOutputStreamD {

  static const nsIID IID = NS_IASYNCOUTPUTSTREAM_IID;


  alias nsIAsyncOutputStream InnerType;

  this(nsIAsyncOutputStream intr){
    super(intr);
    this.inner = intr;
  }

  nsIAsyncOutputStream opCast() {
    return inner;
  }

  void opAssign(nsIAsyncOutputStream value) {
    inner = value;
  }

  /**
     * This method closes the stream and sets its internal status.  If the 
     * stream is already closed, then this method is ignored.  Once the stream
     * is closed, the stream's status cannot be changed.  Any successful status
     * code passed to this method is treated as NS_BASE_STREAM_CLOSED, which
     * is equivalent to nsIInputStream::close. 
     *
     * NOTE: this method exists in part to support pipes, which have both an 
     * input end and an output end.  If the output end of a pipe is closed, then
     * reads from the input end of the pipe will fail.  The error code returned 
     * when an attempt is made to read from a "closed" pipe corresponds to the
     * status code passed in when the output end of the pipe is closed, which
     * greatly simplifies working with pipes in some cases.
     *
     * @param aStatus
     *        The error that will be reported if this stream is accessed after
     *        it has been closed.
     */
  /* void closeWithStatus (in nsresult reason); */
  void CloseWithStatus(nsresult reason){
    nsresult __result = inner.CloseWithStatus(reason);
    CheckException(__result);
  }

  /**
     * Asynchronously wait for the stream to be writable or closed.  The
     * notification is one-shot, meaning that each asyncWait call will result
     * in exactly one notification callback.  After the OnOutputStreamReady event
     * is dispatched, the stream releases its reference to the 
     * nsIOutputStreamCallback object.  It is safe to call asyncWait again from the
     * notification handler.
     *
     * This method may be called at any time (even if write has not been called).
     * In other words, this method may be called when the stream already has
     * room for more data.  It may also be called when the stream is closed.  If
     * the stream is already writable or closed when AsyncWait is called, then the
     * OnOutputStreamReady event will be dispatched immediately.  Otherwise, the
     * event will be dispatched when the stream becomes writable or closed.
     * 
     * @param aCallback
     *        This object is notified when the stream becomes ready.
     * @param aFlags
     *        This parameter specifies optional flags passed in to configure
     *        the behavior of this method.  Pass zero to specify no flags.
     * @param aRequestedCount
     *        Wait until at least this many bytes can be written.  This is only
     *        a suggestion to the underlying stream; it may be ignored.  The
     *        caller may pass zero to indicate no preference.
     * @param aEventTarget
     *        Specify NULL to receive notification on ANY thread (possibly even
     *        recursively on the calling thread -- i.e., synchronously), or
     *        specify that the notification be delivered to a specific event
     *        target.
     */
  /* void asyncWait (in nsIOutputStreamCallback aCallback, in unsigned long aFlags, in unsigned long aRequestedCount, in nsIEventTarget aEventTarget); */
  void AsyncWait(nsIOutputStreamCallbackD aCallback, PRUint32 aFlags, PRUint32 aRequestedCount, nsIEventTargetD aEventTarget){
    nsresult __result = inner.AsyncWait(aCallback ? cast(nsIOutputStreamCallback)aCallback : null, aFlags, aRequestedCount, aEventTarget ? cast(nsIEventTarget)aEventTarget : null);
    CheckException(__result);
  }

  /**
     * If passed to asyncWait, this flag overrides the default behavior,
     * causing the OnOutputStreamReady notification to be suppressed until the
     * stream becomes closed (either as a result of closeWithStatus/close being
     * called on the stream or possibly due to some error in the underlying
     * stream).
     */
  enum { WAIT_CLOSURE_ONLY = 1U }

private:
  nsIAsyncOutputStream inner;

}


/* starting wrapper class:    nsIOutputStreamCallback */
class nsIOutputStreamCallbackD : public nsISupportsD {

  static const nsIID IID = NS_IOUTPUTSTREAMCALLBACK_IID;


  alias nsIOutputStreamCallback InnerType;

  this(nsIOutputStreamCallback intr){
    super(intr);
    this.inner = intr;
  }

  nsIOutputStreamCallback opCast() {
    return inner;
  }

  void opAssign(nsIOutputStreamCallback value) {
    inner = value;
  }

  /**
 * This is a companion interface for nsIAsyncOutputStream::asyncWait.
 */
/**
     * Called to indicate that the stream is either writable or closed.
     *
     * @param aStream
     *        The stream whose asyncWait method was called.
     */
  /* void onOutputStreamReady (in nsIAsyncOutputStream aStream); */
  void OnOutputStreamReady(nsIAsyncOutputStreamD aStream){
    nsresult __result = inner.OnOutputStreamReady(aStream ? cast(nsIAsyncOutputStream)aStream : null);
    CheckException(__result);
  }

private:
  nsIOutputStreamCallback inner;

}

