/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPTransport.idl
 */

module mozilla.dxpcom.nsISOAPTransportD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISOAPTransport;


public import mozilla.dxpcom.nsISOAPTransportD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsISOAPTransportListener;

public import mozilla.dxpcom.nsISOAPTransportListenerD;

public import mozilla.xpcom.nsISOAPCall;

public import mozilla.dxpcom.nsISOAPCallD;

public import mozilla.xpcom.nsISOAPResponse;

public import mozilla.dxpcom.nsISOAPResponseD;

public import mozilla.xpcom.nsISOAPResponseListener;

public import mozilla.dxpcom.nsISOAPResponseListenerD;

public import mozilla.xpcom.nsISOAPCallCompletion;

public import mozilla.dxpcom.nsISOAPCallCompletionD;


/* starting wrapper class:    nsISOAPTransport */
class nsISOAPTransportD : public nsISupportsD {

  static const nsIID IID = NS_ISOAPTRANSPORT_IID;


  alias nsISOAPTransport InnerType;

  this(nsISOAPTransport intr){
    super(intr);
    this.inner = intr;
  }

  nsISOAPTransport opCast() {
    return inner;
  }

  void opAssign(nsISOAPTransport value) {
    inner = value;
  }

  /**
   * Send the specified message to the specified destination.
   * This will fail if synchronous calls are not supported or if there is any
   * failure in the actual message exchange.  Failure of the call itself will be
   * contained in the response.
   *
   * @param aCall Actual message to be sent.
   *
   * @param aResponse Message to be recieved.  Calling synchronously assumes that 
   *   exactly one response is expected.
   */
  /* void syncCall (in nsISOAPCall aCall, in nsISOAPResponse aResponse); */
  void SyncCall(nsISOAPCallD aCall, nsISOAPResponseD aResponse){
    nsresult __result = inner.SyncCall(aCall ? cast(nsISOAPCall)aCall : null, aResponse ? cast(nsISOAPResponse)aResponse : null);
    CheckException(__result);
  }

  /**
   * Send the specified message to the specified destination synchronously waiting 
   * for completion and any response.
   * This will fail if there is any failure in the setup of the message exchange.
   * Later errors will only be known through the response listener.  Failures of the
   * call itself will be contained in the response passed to the response listener.
   *
   * @param aCall Actual message to be sent.
   *
   * @param aListener Handler to be invoked (single threaded) as each response is 
   *  received and finally with null.  If specified as null, no responses are returned.
   *
   * @param response Message to recieve response and be handled by listener.  May be 
   *   null if listener is null.
   */
  /* nsISOAPCallCompletion asyncCall (in nsISOAPCall aCall, in nsISOAPResponseListener aListener, in nsISOAPResponse aResponse); */
  nsISOAPCallCompletionD  AsyncCall(nsISOAPCallD aCall, nsISOAPResponseListenerD aListener, nsISOAPResponseD aResponse){
    nsISOAPCallCompletion _retval;
    nsresult __result = inner.AsyncCall(aCall ? cast(nsISOAPCall)aCall : null, aListener ? cast(nsISOAPResponseListener)aListener : null, aResponse ? cast(nsISOAPResponse)aResponse : null, &_retval);
    CheckException(__result);
    return new nsISOAPCallCompletionD(_retval);
  }

  /**
   * Add listener for unsolicited messages arriving on the transport.  Listeners
   *  are provided with the opportunity to accept and process messages.  Typically
   *  a listener will be a service dispatcher.  Listeners will be invoked in the
   *  reverse order of declaration, allowing more local service dispatchers to
   *  temporarily override permanent service dispatchers.  This will fail if the
   *  desired listener was already added to the transport with the specified
   *  capture flag or if the transport does not support incoming messages.
   *
   * @param aListener The listener to recieve unsolicited messages from the
   *   transport.
   *
   * @param aCapture True if the listener should capture the message before
   *   later-declared services.
   */
  /* void addListener (in nsISOAPTransportListener aListener, in boolean aCapture); */
  void AddListener(nsISOAPTransportListenerD aListener, PRBool aCapture){
    nsresult __result = inner.AddListener(aListener ? cast(nsISOAPTransportListener)aListener : null, aCapture);
    CheckException(__result);
  }

  /**
   * Remove listener for unsolicited messages arriving on the transport.  This
   *  will fail if the specified listener was not added with the specified
   *  capture setting.
   *
   * @param aListener The listener to stop from recieving unsolicited messages 
   *  from the transport.
   *
   * @param aCapture True if the listener was added to capture the message before
   *   later-declared services (must be specified to remove, since a listener
   *   may be registered as both).
   */
  /* void removeListener (in nsISOAPTransportListener aListener, in boolean aCapture); */
  void RemoveListener(nsISOAPTransportListenerD aListener, PRBool aCapture){
    nsresult __result = inner.RemoveListener(aListener ? cast(nsISOAPTransportListener)aListener : null, aCapture);
    CheckException(__result);
  }

private:
  nsISOAPTransport inner;

}

