/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPTransport.idl
 */

module mozilla.xpcom.nsISOAPTransport;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsISOAPTransportListener; /* forward declaration */

public import mozilla.xpcom.nsISOAPCall; /* forward declaration */

public import mozilla.xpcom.nsISOAPResponse; /* forward declaration */

public import mozilla.xpcom.nsISOAPResponseListener; /* forward declaration */

public import mozilla.xpcom.nsISOAPCallCompletion; /* forward declaration */


/* starting interface:    nsISOAPTransport */
const char[] NS_ISOAPTRANSPORT_IID_STR = "99ec6695-535f-11d4-9a58-000064657374";

const nsIID NS_ISOAPTRANSPORT_IID= 
  {0x99ec6695, 0x535f, 0x11d4, 
    [ 0x9a, 0x58, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

extern(Windows)
interface nsISOAPTransport : nsISupports {
  static const char[] IID_STR = NS_ISOAPTRANSPORT_IID_STR;
  static const nsIID IID = NS_ISOAPTRANSPORT_IID;

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
  nsresult SyncCall(nsISOAPCall aCall, nsISOAPResponse aResponse);

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
  nsresult AsyncCall(nsISOAPCall aCall, nsISOAPResponseListener aListener, nsISOAPResponse aResponse, nsISOAPCallCompletion *_retval);

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
  nsresult AddListener(nsISOAPTransportListener aListener, PRBool aCapture);

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
  nsresult RemoveListener(nsISOAPTransportListener aListener, PRBool aCapture);

}

