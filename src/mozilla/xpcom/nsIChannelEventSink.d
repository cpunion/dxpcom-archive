/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIChannelEventSink.idl
 */

module mozilla.xpcom.nsIChannelEventSink;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIChannel; /* forward declaration */


/* starting interface:    nsIChannelEventSink */
const char[] NS_ICHANNELEVENTSINK_IID_STR = "6757d790-2916-498e-aaca-6b668a956875";

const nsIID NS_ICHANNELEVENTSINK_IID= 
  {0x6757d790, 0x2916, 0x498e, 
    [ 0xaa, 0xca, 0x6b, 0x66, 0x8a, 0x95, 0x68, 0x75 ]};

/**
 * Implement this interface to receive control over various channel events.
 * Channels will try to get this interface from a channel's
 * notificationCallbacks or, if not available there, from the loadGroup's
 * notificationCallbacks.
 *
 * These methods are called before onStartRequest, and should be handled
 * SYNCHRONOUSLY.
 */
extern(Windows)
interface nsIChannelEventSink : nsISupports {
  static const char[] IID_STR = NS_ICHANNELEVENTSINK_IID_STR;
  static const nsIID IID = NS_ICHANNELEVENTSINK_IID;

  /**
     * This is a temporary redirect. New requests for this resource should
     * continue to use the URI of the old channel.
     *
     * The new URI may be identical to the old one.
     */
  enum { REDIRECT_TEMPORARY = 1U };

  /**
     * This is a permanent redirect. New requests for this resource should use
     * the URI of the new channel (This might be an HTTP 301 reponse).
     * If this flag is not set, this is a temporary redirect.
     *
     * The new URI may be identical to the old one.
     */
  enum { REDIRECT_PERMANENT = 2U };

  /**
     * This is an internal redirect, i.e. it was not initiated by the remote
     * server, but is specific to the channel implementation.
     *
     * The new URI may be identical to the old one.
     */
  enum { REDIRECT_INTERNAL = 4U };

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
  nsresult OnChannelRedirect(nsIChannel oldChannel, nsIChannel newChannel, PRUint32 flags);

}

