/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPCall.idl
 */

module mozilla.xpcom.nsISOAPCall;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISOAPMessage;

public import mozilla.xpcom.nsISOAPResponse; /* forward declaration */

public import mozilla.xpcom.nsISOAPResponseListener; /* forward declaration */

public import mozilla.xpcom.nsISOAPCallCompletion; /* forward declaration */


/* starting interface:    nsISOAPCall */
const char[] NS_ISOAPCALL_IID_STR = "a8fefe40-52bc-11d4-9a57-000064657374";

const nsIID NS_ISOAPCALL_IID= 
  {0xa8fefe40, 0x52bc, 0x11d4, 
    [ 0x9a, 0x57, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

/**
 * This interface is a convenience extension of the basic SOAP message,
 * which handles common patterns of calling, such as providing an
 * action URI in the HTTP header, locating and invoking the appropriate
 * transport based upon the protocol of the transportURI, and
 * automatically recieving the result in a new nsISOAPResponse object
 * which recieves an XML message.
 */
extern(Windows)
interface nsISOAPCall : nsISOAPMessage {
  static const char[] IID_STR = NS_ISOAPCALL_IID_STR;
  static const nsIID IID = NS_ISOAPCALL_IID;

  /**
   * The URI to which the message will be sent, identifying the
   *   transport and transport-specific information about the
   *   destination.
   * This does not have to match the <code>targetObjectURI</code>.
   */
  /* attribute AString transportURI; */
  nsresult GetTransportURI(nsAString * aTransportURI);
  nsresult SetTransportURI(nsAString * aTransportURI);

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
  nsresult GetVerifySourceHeader(PRBool *aVerifySourceHeader);
  nsresult SetVerifySourceHeader(PRBool aVerifySourceHeader);

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
  nsresult Invoke(nsISOAPResponse *_retval);

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
  nsresult AsyncInvoke(nsISOAPResponseListener aListener, nsISOAPCallCompletion *_retval);

}

