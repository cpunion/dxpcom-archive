/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPResponseListener.idl
 */

module mozilla.dxpcom.nsISOAPResponseListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISOAPResponseListener;


public import mozilla.dxpcom.nsISOAPResponseListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsISOAPCall;

public import mozilla.dxpcom.nsISOAPCallD;

public import mozilla.xpcom.nsISOAPResponse;

public import mozilla.dxpcom.nsISOAPResponseD;


/* starting wrapper class:    nsISOAPResponseListener */
/**
 * This interface represents a response handler to be invoked whenever
 * a response of a particular call is recieved and when no more
 * responses are expected.
 */
class nsISOAPResponseListenerD : public nsISupportsD {

  static const nsIID IID = NS_ISOAPRESPONSELISTENER_IID;


  alias nsISOAPResponseListener InnerType;

  this(nsISOAPResponseListener intr){
    super(intr);
    this.inner = intr;
  }

  nsISOAPResponseListener opCast() {
    return inner;
  }

  void opAssign(nsISOAPResponseListener value) {
    inner = value;
  }

  /**
   * This method is invoked when we receive an asynchronous response to 
   * a SOAP message. The listener is registered as part of the original
   * asynchronous call invocation. 
   *
   * @param aResponse The decoded version of the response.  If an
   *   error occurred transmitting the response, the status field
   *   of the response will contain an error code.  The last call
   *   to the listener may contain a null response, which should
   *   only be interpreted as an error if your call expected more 
   *   results than it got.  If the service or the transport
   *   do not know whether to expect more results, then setting
   *   the last parameter true may only be possible after the
   *   last response has already been delivered.
   *
   * @param aLast True if this is the last call to the listener.
   *
   * @return True to make this the last call to the listener, even
   *   if last was not true.  Calls which expect a single response
   *   should return true upon receiving that response to avoid
   *   possibly recieving another callback with a null response
   *   indicating that the last response was already sent.
   */
  /* boolean handleResponse (in nsISOAPResponse aResponse, in nsISOAPCall aCall, in unsigned long status, in boolean aLast); */
  PRBool HandleResponse(nsISOAPResponseD aResponse, nsISOAPCallD aCall, PRUint32 status, PRBool aLast){
    PRBool _retval;
    nsresult __result = inner.HandleResponse(aResponse ? cast(nsISOAPResponse)aResponse : null, aCall ? cast(nsISOAPCall)aCall : null, status, aLast, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISOAPResponseListener inner;

}

