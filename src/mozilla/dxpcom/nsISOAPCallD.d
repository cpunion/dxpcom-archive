/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPCall.idl
 */

module mozilla.dxpcom.nsISOAPCallD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISOAPCall;


public import mozilla.dxpcom.nsISOAPCallD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISOAPMessage;
public import mozilla.dxpcom.nsISOAPMessageD;

public import mozilla.xpcom.nsISOAPResponse;

public import mozilla.dxpcom.nsISOAPResponseD;

public import mozilla.xpcom.nsISOAPResponseListener;

public import mozilla.dxpcom.nsISOAPResponseListenerD;

public import mozilla.xpcom.nsISOAPCallCompletion;

public import mozilla.dxpcom.nsISOAPCallCompletionD;


/* starting wrapper class:    nsISOAPCall */
/**
 * This interface is a convenience extension of the basic SOAP message,
 * which handles common patterns of calling, such as providing an
 * action URI in the HTTP header, locating and invoking the appropriate
 * transport based upon the protocol of the transportURI, and
 * automatically recieving the result in a new nsISOAPResponse object
 * which recieves an XML message.
 */
class nsISOAPCallD : public nsISOAPMessageD {

  static const nsIID IID = NS_ISOAPCALL_IID;


  alias nsISOAPCall InnerType;

  this(nsISOAPCall intr){
    super(intr);
    this.inner = intr;
  }

  nsISOAPCall opCast() {
    return inner;
  }

  void opAssign(nsISOAPCall value) {
    inner = value;
  }

  /**
   * The URI to which the message will be sent, identifying the
   *   transport and transport-specific information about the
   *   destination.
   * This does not have to match the <code>targetObjectURI</code>.
   */
  /* attribute AString transportURI; */
  wchar[] TransportURI(){
    scope auto value = new AString();
    nsresult __result = inner.GetTransportURI(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void TransportURI(wchar[] aTransportURI){
    scope auto value = new AString(aTransportURI);
    nsresult __result = inner.SetTransportURI(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
   * Enables alternative security model which may be available
   *   from participating services.  Securely adds a 
   *   "verifySource" header to the outgoing message with 
   *   "mustUnderstand" enabled, which permits the server to 
   *   decide whether the call should be honored from that 
   *   particular source.  i
   * <p>When this verification header is enabled, the 
   *   calling script is released from the draconion 
   *   security checks of unverified SOAP calls.  But
   *   the service being invoked must not reject the
   *   message, which is the prescribed action if a SOAP
   *   server receives a header of type "mustUnderstand" that
   *   it does not understand.
   * <p>Servers which accept "verified" messages
   *   containing this header relieve the user of having to
   *   configure and trust the domain of the web page never 
   *   to exploit behind his firewall, because the
   *   responsibility is assumed by the service.  If the
   *   service is not behind a firewall, then merely
   *   ignoring the packet is enough to free all
   *   users of this facility to call the server whatever
   *   their security configurations for unverified calls
   *   may be.  But it only works with services that 
   *   accept these verifySource headers.
   * <p>It is possible for a user to disable even verified
   *   SOAP calls, but this is not the default setting.
   */
  /* attribute boolean verifySourceHeader; */
  PRBool VerifySourceHeader(){
    PRBool value;
    nsresult __result = inner.GetVerifySourceHeader(&value);
    CheckException(__result);
    return value;
  }
  void VerifySourceHeader(PRBool aVerifySourceHeader){
    nsresult __result = inner.SetVerifySourceHeader(aVerifySourceHeader);
    CheckException(__result);
  }

  /**
   * Synchronously invoke the call. The method returns only when 
   * we receive a response (or an error occurs).  The
   * <code>transportURI</code> must have been set, the 
   * parameter list (even if empty) must have been encoded,
   * and the transportURI must use some known protocol.  A
   * synchronous call assumes that there will be exactly one
   * response per call.
   *
   * If not, an error is returned in the status of the response.
   *
   * @returns The SOAP response
   */
  /* nsISOAPResponse invoke (); */
  nsISOAPResponseD  Invoke(){
    nsISOAPResponse _retval;
    nsresult __result = inner.Invoke(&_retval);
    CheckException(__result);
    return new nsISOAPResponseD(_retval);
  }

  /**
   * Asynchronously invoke the call. At this point, the document
   * rooted by the Envelope element is encoded to form the body
   * of the SOAP message. The method returns immediately, and the
   * listener is invoked when we eventually receive a response
   * (or error or successful completion). The
   * <code>transportURI</code> must have been set, the 
   * parameter list (even if empty) must have been encoded,
   * and the transportURI must use some known protocol.
   *
   * If not, an error is returned in the status of the response.
   *
   * @param aListener Handler to be invoked asynchronously after the
   *  response is recieved.  Should be null if no response is
   *  expected.
   */
  /* nsISOAPCallCompletion asyncInvoke (in nsISOAPResponseListener aListener); */
  nsISOAPCallCompletionD  AsyncInvoke(nsISOAPResponseListenerD aListener){
    nsISOAPCallCompletion _retval;
    nsresult __result = inner.AsyncInvoke(aListener ? cast(nsISOAPResponseListener)aListener : null, &_retval);
    CheckException(__result);
    return new nsISOAPCallCompletionD(_retval);
  }

private:
  nsISOAPCall inner;

}

