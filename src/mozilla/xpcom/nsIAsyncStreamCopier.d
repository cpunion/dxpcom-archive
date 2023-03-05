/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAsyncStreamCopier.idl
 */

module mozilla.xpcom.nsIAsyncStreamCopier;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIRequest;

public import mozilla.xpcom.nsIInputStream; /* forward declaration */

public import mozilla.xpcom.nsIOutputStream; /* forward declaration */

public import mozilla.xpcom.nsIRequestObserver; /* forward declaration */

public import mozilla.xpcom.nsIEventTarget; /* forward declaration */


/* starting interface:    nsIAsyncStreamCopier */
const char[] NS_IASYNCSTREAMCOPIER_IID_STR = "eaa49141-c21c-4fe8-a79b-77860a3910aa";

const nsIID NS_IASYNCSTREAMCOPIER_IID= 
  {0xeaa49141, 0xc21c, 0x4fe8, 
    [ 0xa7, 0x9b, 0x77, 0x86, 0x0a, 0x39, 0x10, 0xaa ]};

extern(Windows)
interface nsIAsyncStreamCopier : nsIRequest {
  static const char[] IID_STR = NS_IASYNCSTREAMCOPIER_IID_STR;
  static const nsIID IID = NS_IASYNCSTREAMCOPIER_IID;

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
  nsresult Init(nsIInputStream aSource, nsIOutputStream aSink, nsIEventTarget aTarget, PRBool aSourceBuffered, PRBool aSinkBuffered, PRUint32 aChunkSize);

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
  nsresult AsyncCopy(nsIRequestObserver aObserver, nsISupports aObserverContext);

}

