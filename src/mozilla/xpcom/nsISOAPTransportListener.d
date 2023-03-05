/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPTransportListener.idl
 */

module mozilla.xpcom.nsISOAPTransportListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMDocument; /* forward declaration */

public import mozilla.xpcom.nsISOAPMessage; /* forward declaration */


/* starting interface:    nsISOAPTransportListener */
const char[] NS_ISOAPTRANSPORTLISTENER_IID_STR = "99ec6696-535f-11d4-9a58-000064657374";

const nsIID NS_ISOAPTRANSPORTLISTENER_IID= 
  {0x99ec6696, 0x535f, 0x11d4, 
    [ 0x9a, 0x58, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

/**
 * This interface recieves control when an unsolicited transport
 * is recieved on a transport.
 */
extern(Windows)
interface nsISOAPTransportListener : nsISupports {
  static const char[] IID_STR = NS_ISOAPTRANSPORTLISTENER_IID_STR;
  static const nsIID IID = NS_ISOAPTRANSPORTLISTENER_IID;

  /**
   * This method is invoked when an unsolicited message is
   *   recieved.  First all listeners are tried in the order declared
   *   with the capture flag set.  Then all listeners are tried in
   *   the reverse order declared with the capture flag clear.
   *
   * @param aMessage Actual message.
   *
   * @param aCapture True if the listener is being permitted to gain
   *   control before all later-added listeners.
   *
   * @return true if message is handled, false if it was not
   */
  /* boolean handleMessage (in nsISOAPMessage aMessage, in boolean aCapture); */
  nsresult HandleMessage(nsISOAPMessage aMessage, PRBool aCapture, PRBool *_retval);

}

