/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProgressEventSink.idl
 */

module mozilla.dxpcom.nsIProgressEventSinkD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIProgressEventSink;


public import mozilla.dxpcom.nsIProgressEventSinkD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIRequest;

public import mozilla.dxpcom.nsIRequestD;


/* starting wrapper class:    nsIProgressEventSink */
/**
 * nsIProgressEventSink
 *
 * This interface is used to asynchronously convey channel status and progress
 * information that is generally not critical to the processing of the channel.
 * The information is intended to be displayed to the user in some meaningful
 * way.
 *
 * An implementation of this interface can be passed to a channel via the
 * channel's notificationCallbacks attribute.  See nsIChannel for more info.
 *
 * The channel will begin passing notifications to the progress event sink
 * after its asyncOpen method has been called.  Notifications will cease once
 * the channel calls its listener's onStopRequest method or once the channel
 * is canceled (via nsIRequest::cancel).
 *
 * NOTE: This interface is actually not specific to channels and may be used
 * with other implementations of nsIRequest.
 *
 * @status UNDER_REVIEW
 */
class nsIProgressEventSinkD : public nsISupportsD {

  static const nsIID IID = NS_IPROGRESSEVENTSINK_IID;


  alias nsIProgressEventSink InnerType;

  this(nsIProgressEventSink intr){
    super(intr);
    this.inner = intr;
  }

  nsIProgressEventSink opCast() {
    return inner;
  }

  void opAssign(nsIProgressEventSink value) {
    inner = value;
  }

  /**
     * Called to notify the event sink that progress has occurred for the
     * given request.
     *
     * @param aRequest
     *        the request being observed (may QI to nsIChannel).
     * @param aContext
     *        if aRequest is a channel, then this parameter is the listener
     *        context passed to nsIChannel::asyncOpen.
     * @param aProgress
     *        numeric value in the range 0 to aProgressMax indicating the
     *        number of bytes transfered thus far.
     * @param aProgressMax
     *        numeric value indicating maximum number of bytes that will be
     *        transfered (or 0xFFFFFFFFFFFFFFFF if total is unknown).
     */
  /* void onProgress (in nsIRequest aRequest, in nsISupports aContext, in unsigned long long aProgress, in unsigned long long aProgressMax); */
  void OnProgress(nsIRequestD aRequest, nsISupportsD aContext, PRUint64 aProgress, PRUint64 aProgressMax){
    nsresult __result = inner.OnProgress(aRequest ? cast(nsIRequest)aRequest : null, aContext ? cast(nsISupports)aContext : null, aProgress, aProgressMax);
    CheckException(__result);
  }

  /**
     * Called to notify the event sink with a status message for the given
     * request.
     *
     * @param aRequest
     *        the request being observed (may QI to nsIChannel).
     * @param aContext
     *        if aRequest is a channel, then this parameter is the listener
     *        context passed to nsIChannel::asyncOpen.
     * @param aStatus
     *        status code (not necessarily an error code) indicating the
     *        state of the channel (usually the state of the underlying
     *        transport).  see nsISocketTransport for socket specific status
     *        codes.
     * @param aStatusArg
     *        status code argument to be used with the string bundle service
     *        to convert the status message into localized, human readable
     *        text.  the meaning of this parameter is specific to the value
     *        of the status code.  for socket status codes, this parameter
     *        indicates the host:port associated with the status code.
     */
  /* void onStatus (in nsIRequest aRequest, in nsISupports aContext, in nsresult aStatus, in wstring aStatusArg); */
  void OnStatus(nsIRequestD aRequest, nsISupportsD aContext, nsresult aStatus, PRUnichar*aStatusArg){
    nsresult __result = inner.OnStatus(aRequest ? cast(nsIRequest)aRequest : null, aContext ? cast(nsISupports)aContext : null, aStatus, aStatusArg);
    CheckException(__result);
  }

private:
  nsIProgressEventSink inner;

}

