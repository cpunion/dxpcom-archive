/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPCallCompletion.idl
 */

module mozilla.xpcom.nsISOAPCallCompletion;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsISOAPCall; /* forward declaration */

public import mozilla.xpcom.nsISOAPResponse; /* forward declaration */

public import mozilla.xpcom.nsISOAPResponseListener; /* forward declaration */


/* starting interface:    nsISOAPCallCompletion */
const char[] NS_ISOAPCALLCOMPLETION_IID_STR = "86114dd8-1dd2-11b2-ab2b-91d0c995e03a";

const nsIID NS_ISOAPCALLCOMPLETION_IID= 
  {0x86114dd8, 0x1dd2, 0x11b2, 
    [ 0xab, 0x2b, 0x91, 0xd0, 0xc9, 0x95, 0xe0, 0x3a ]};

/**
 * This permits the invoker of an asynchronous call to
 *   abort the call before it completes or to test to
 *   see whether it is complete.
 */
extern(Windows)
interface nsISOAPCallCompletion : nsISupports {
  static const char[] IID_STR = NS_ISOAPCALLCOMPLETION_IID_STR;
  static const nsIID IID = NS_ISOAPCALLCOMPLETION_IID;

  /**
   * The call which was invoked (may have changed since
   *   the call was made).
   */
  /* readonly attribute nsISOAPCall call; */
  nsresult GetCall(nsISOAPCall  *aCall);

  /**
   * The response, if any, to the call.
   */
  /* readonly attribute nsISOAPResponse response; */
  nsresult GetResponse(nsISOAPResponse  *aResponse);

  /**
   * The listener to the call.
   */
  /* readonly attribute nsISOAPResponseListener listener; */
  nsresult GetListener(nsISOAPResponseListener  *aListener);

  /**
   * Whether the call is complete.
   */
  /* readonly attribute boolean isComplete; */
  nsresult GetIsComplete(PRBool *aIsComplete);

  /**
   * Cause the invoked method to abort, if it is not
   * already complete.
   * @return true if the state of isComplete became
   *   true as a result.  False if it was already
   *   true or reamined false.
   */
  /* boolean abort (); */
  nsresult Abort(PRBool *_retval);

}

