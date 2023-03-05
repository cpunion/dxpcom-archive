/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAsyncStreamCopier.idl
 */

module mozilla.dxpcom.nsIAsyncStreamCopierD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAsyncStreamCopier;


public import mozilla.dxpcom.nsIAsyncStreamCopierD;

public import mozilla.xpcom.nsIRequest;
public import mozilla.dxpcom.nsIRequestD;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;

public import mozilla.xpcom.nsIOutputStream;

public import mozilla.dxpcom.nsIOutputStreamD;

public import mozilla.xpcom.nsIRequestObserver;

public import mozilla.dxpcom.nsIRequestObserverD;

public import mozilla.xpcom.nsIEventTarget;

public import mozilla.dxpcom.nsIEventTargetD;


/* starting wrapper class:    nsIAsyncStreamCopier */
class nsIAsyncStreamCopierD : public nsIRequestD {

  static const nsIID IID = NS_IASYNCSTREAMCOPIER_IID;


  alias nsIAsyncStreamCopier InnerType;

  this(nsIAsyncStreamCopier intr){
    super(intr);
    this.inner = intr;
  }

  nsIAsyncStreamCopier opCast() {
    return inner;
  }

  void opAssign(nsIAsyncStreamCopier value) {
    inner = value;
  }

  /**
     * Initialize the stream copier.
     *
     * @param aSource
     *        contains the data to be copied.
     * @param aSink
     *        specifies the destination for the data.
     * @param aTarget
     *        specifies the thread on which the copy will occur.  a null value
     *        is permitted and will cause the copy to occur on an unspecified
     *        background thread.
     * @param aSourceBuffered
     *        true if aSource implements ReadSegments.
     * @param aSinkBuffered
     *        true if aSink implements WriteSegments.
     * @param aChunkSize
     *        specifies how many bytes to read/write at a time.  this controls
     *        the granularity of the copying.  it should match the segment size
     *        of the "buffered" streams involved.
     *
     * NOTE: at least one of the streams must be buffered.
     */
  /* void init (in nsIInputStream aSource, in nsIOutputStream aSink, in nsIEventTarget aTarget, in boolean aSourceBuffered, in boolean aSinkBuffered, in unsigned long aChunkSize); */
  void Init(nsIInputStreamD aSource, nsIOutputStreamD aSink, nsIEventTargetD aTarget, PRBool aSourceBuffered, PRBool aSinkBuffered, PRUint32 aChunkSize){
    nsresult __result = inner.Init(aSource ? cast(nsIInputStream)aSource : null, aSink ? cast(nsIOutputStream)aSink : null, aTarget ? cast(nsIEventTarget)aTarget : null, aSourceBuffered, aSinkBuffered, aChunkSize);
    CheckException(__result);
  }

  /**
     * asyncCopy triggers the start of the copy.  The observer will be notified
     * when the copy completes.
     *
     * @param aObserver
     *        receives notifications.
     * @param aObserverContext
     *        passed to observer methods.
     */
  /* void asyncCopy (in nsIRequestObserver aObserver, in nsISupports aObserverContext); */
  void AsyncCopy(nsIRequestObserverD aObserver, nsISupportsD aObserverContext){
    nsresult __result = inner.AsyncCopy(aObserver ? cast(nsIRequestObserver)aObserver : null, aObserverContext ? cast(nsISupports)aObserverContext : null);
    CheckException(__result);
  }

private:
  nsIAsyncStreamCopier inner;

}

