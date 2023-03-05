/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIChannelEventSink.idl
 */

module mozilla.dxpcom.nsIChannelEventSinkD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIChannelEventSink;


public import mozilla.dxpcom.nsIChannelEventSinkD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIChannel;

public import mozilla.dxpcom.nsIChannelD;


/* starting wrapper class:    nsIChannelEventSink */
/**
 * Implement this interface to receive control over various channel events.
 * Channels will try to get this interface from a channel's
 * notificationCallbacks or, if not available there, from the loadGroup's
 * notificationCallbacks.
 *
 * These methods are called before onStartRequest, and should be handled
 * SYNCHRONOUSLY.
 */
class nsIChannelEventSinkD : public nsISupportsD {

  static const nsIID IID = NS_ICHANNELEVENTSINK_IID;


  alias nsIChannelEventSink InnerType;

  this(nsIChannelEventSink intr){
    super(intr);
    this.inner = intr;
  }

  nsIChannelEventSink opCast() {
    return inner;
  }

  void opAssign(nsIChannelEventSink value) {
    inner = value;
  }

  /**
     * This is a temporary redirect. New requests for this resource should
     * continue to use the URI of the old channel.
     *
     * The new URI may be identical to the old one.
     */
  enum { REDIRECT_TEMPORARY = 1U }

  /**
     * This is a permanent redirect. New requests for this resource should use
     * the URI of the new channel (This might be an HTTP 301 reponse).
     * If this flag is not set, this is a temporary redirect.
     *
     * The new URI may be identical to the old one.
     */
  enum { REDIRECT_PERMANENT = 2U }

  /**
     * This is an internal redirect, i.e. it was not initiated by the remote
     * server, but is specific to the channel implementation.
     *
     * The new URI may be identical to the old one.
     */
  enum { REDIRECT_INTERNAL = 4U }

  /**
     * Called when a redirect occurs. This may happen due to an HTTP 3xx status
     * code.
     *
     * @param oldChannel
     *        The channel that's being redirected.
     * @param newChannel
     *        The new channel. This channel is not opened yet.
     * @param flags
     *        Flags indicating the type of redirect. A bitmask consisting
     *        of flags from above.
     *        One of REDIRECT_TEMPORARY and REDIRECT_PERMANENT will always be
     *        set.
     *
     * @throw <any> Throwing an exception will cancel the load. No network
     * request for the new channel will be made.
     */
  /* void onChannelRedirect (in nsIChannel oldChannel, in nsIChannel newChannel, in unsigned long flags); */
  void OnChannelRedirect(nsIChannelD oldChannel, nsIChannelD newChannel, PRUint32 flags){
    nsresult __result = inner.OnChannelRedirect(oldChannel ? cast(nsIChannel)oldChannel : null, newChannel ? cast(nsIChannel)newChannel : null, flags);
    CheckException(__result);
  }

private:
  nsIChannelEventSink inner;

}

