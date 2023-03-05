/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPTransportListener.idl
 */

module mozilla.dxpcom.nsISOAPTransportListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISOAPTransportListener;


public import mozilla.dxpcom.nsISOAPTransportListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMDocument;

public import mozilla.dxpcom.nsIDOMDocumentD;

public import mozilla.xpcom.nsISOAPMessage;

public import mozilla.dxpcom.nsISOAPMessageD;


/* starting wrapper class:    nsISOAPTransportListener */
/**
 * This interface recieves control when an unsolicited transport
 * is recieved on a transport.
 */
class nsISOAPTransportListenerD : public nsISupportsD {

  static const nsIID IID = NS_ISOAPTRANSPORTLISTENER_IID;


  alias nsISOAPTransportListener InnerType;

  this(nsISOAPTransportListener intr){
    super(intr);
    this.inner = intr;
  }

  nsISOAPTransportListener opCast() {
    return inner;
  }

  void opAssign(nsISOAPTransportListener value) {
    inner = value;
  }

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
  PRBool HandleMessage(nsISOAPMessageD aMessage, PRBool aCapture){
    PRBool _retval;
    nsresult __result = inner.HandleMessage(aMessage ? cast(nsISOAPMessage)aMessage : null, aCapture, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISOAPTransportListener inner;

}

