/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPResponseListener.idl
 */

module mozilla.xpcom.nsISOAPResponseListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsISOAPCall; /* forward declaration */

public import mozilla.xpcom.nsISOAPResponse; /* forward declaration */


/* starting interface:    nsISOAPResponseListener */
const char[] NS_ISOAPRESPONSELISTENER_IID_STR = "99ec6692-535f-11d4-9a58-000064657374";

const nsIID NS_ISOAPRESPONSELISTENER_IID= 
  {0x99ec6692, 0x535f, 0x11d4, 
    [ 0x9a, 0x58, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

/**
 * This interface represents a response handler to be invoked whenever
 * a response of a particular call is recieved and when no more
 * responses are expected.
 */
extern(Windows)
interface nsISOAPResponseListener : nsISupports {
  static const char[] IID_STR = NS_ISOAPRESPONSELISTENER_IID_STR;
  static const nsIID IID = NS_ISOAPRESPONSELISTENER_IID;

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
  nsresult HandleResponse(nsISOAPResponse aResponse, nsISOAPCall aCall, PRUint32 status, PRBool aLast, PRBool *_retval);

}

