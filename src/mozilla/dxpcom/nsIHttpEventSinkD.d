/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIHttpEventSink.idl
 */

module mozilla.dxpcom.nsIHttpEventSinkD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIHttpEventSink;


public import mozilla.dxpcom.nsIHttpEventSinkD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIChannel;

public import mozilla.dxpcom.nsIChannelD;

public import mozilla.xpcom.nsIHttpChannel;

public import mozilla.dxpcom.nsIHttpChannelD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIHttpEventSink */
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
class nsIHttpEventSinkD : public nsISupportsD {

  static const nsIID IID = NS_IHTTPEVENTSINK_IID;


  alias nsIHttpEventSink InnerType;

  this(nsIHttpEventSink intr){
    super(intr);
    this.inner = intr;
  }

  nsIHttpEventSink opCast() {
    return inner;
  }

  void opAssign(nsIHttpEventSink value) {
    inner = value;
  }

  /**
     * Called when a redirect occurs due to a HTTP response like 302.  The
     * redirection may be to a non-http channel.
     *
     * @return failure cancels redirect
     */
  /* void onRedirect (in nsIHttpChannel httpChannel, in nsIChannel newChannel); */
  void OnRedirect(nsIHttpChannelD httpChannel, nsIChannelD newChannel){
    nsresult __result = inner.OnRedirect(httpChannel ? cast(nsIHttpChannel)httpChannel : null, newChannel ? cast(nsIChannel)newChannel : null);
    CheckException(__result);
  }

private:
  nsIHttpEventSink inner;

}

