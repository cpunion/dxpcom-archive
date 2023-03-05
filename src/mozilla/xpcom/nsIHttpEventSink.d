/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIHttpEventSink.idl
 */

module mozilla.xpcom.nsIHttpEventSink;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIChannel; /* forward declaration */

public import mozilla.xpcom.nsIHttpChannel; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    nsIHttpEventSink */
const char[] NS_IHTTPEVENTSINK_IID_STR = "9475a6af-6352-4251-90f9-d65b1cd2ea15";

const nsIID NS_IHTTPEVENTSINK_IID= 
  {0x9475a6af, 0x6352, 0x4251, 
    [ 0x90, 0xf9, 0xd6, 0x5b, 0x1c, 0xd2, 0xea, 0x15 ]};

/**
 * nsIHttpEventSink
 *
 * Implement this interface to receive control over various HTTP events.  The
 * HTTP channel will try to get this interface from its notificationCallbacks
 * attribute, and if it doesn't find it there it will look for it from its
 * loadGroup's notificationCallbacks attribute.
 *
 * These methods are called before onStartRequest, and should be handled
 * SYNCHRONOUSLY.
 *
 * @deprecated Newly written code should use nsIChannelEventSink instead of this
 * interface.
 */
extern(Windows)
interface nsIHttpEventSink : nsISupports {
  static const char[] IID_STR = NS_IHTTPEVENTSINK_IID_STR;
  static const nsIID IID = NS_IHTTPEVENTSINK_IID;

  /**
     * Called when a redirect occurs due to a HTTP response like 302.  The
     * redirection may be to a non-http channel.
     *
     * @return failure cancels redirect
     */
  /* void onRedirect (in nsIHttpChannel httpChannel, in nsIChannel newChannel); */
  nsresult OnRedirect(nsIHttpChannel httpChannel, nsIChannel newChannel);

}

