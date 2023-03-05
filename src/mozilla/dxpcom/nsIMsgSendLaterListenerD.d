/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgSendLaterListener.idl
 */

module mozilla.dxpcom.nsIMsgSendLaterListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgSendLaterListener;


public import mozilla.dxpcom.nsIMsgSendLaterListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsrootidl;
public import mozilla.dxpcom.nsrootidlD;


/* starting wrapper class:    nsIMsgSendLaterListener */
class nsIMsgSendLaterListenerD : public nsISupportsD {

  static const nsIID IID = NS_IMSGSENDLATERLISTENER_IID;


  alias nsIMsgSendLaterListener InnerType;

  this(nsIMsgSendLaterListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgSendLaterListener opCast() {
    return inner;
  }

  void opAssign(nsIMsgSendLaterListener value) {
    inner = value;
  }

  /**
     * Notify the observer that the operation of sending all unset messages has
     * started
     */
  /* void OnStartSending (in PRUint32 aTotalMessageCount); */
  void OnStartSending(PRUint32 aTotalMessageCount){
    nsresult __result = inner.OnStartSending(aTotalMessageCount);
    CheckException(__result);
  }

  /**
     * Notify the observer that progress as occurred for send operation
     */
  /* void OnProgress (in PRUint32 aCurrentMessage, in PRUint32 aTotalMessage); */
  void OnProgress(PRUint32 aCurrentMessage, PRUint32 aTotalMessage){
    nsresult __result = inner.OnProgress(aCurrentMessage, aTotalMessage);
    CheckException(__result);
  }

  /**
     * Notify the observer with a status message for the send later operation
     */
  /* void OnStatus (in wstring aMsg); */
  void OnStatus(PRUnichar*aMsg){
    nsresult __result = inner.OnStatus(aMsg);
    CheckException(__result);
  }

  /**
     * Notify the observer that the message has been sent.  This method is 
     * called once when the networking library has finished processing the 
     * message.
     * 
     * This method is called regardless of whether the the operation was successful.
     * aMsgID   The message id for the mail message
     * status   Status code for the message send.
     * msg      A text string describing the error.
     * returnFileSpec The returned file spec for save to file operations.
     */
  /* void OnStopSending (in nsresult aStatus, in wstring aMsg, in PRUint32 aTotalTried, in PRUint32 aSuccessful); */
  void OnStopSending(nsresult aStatus, PRUnichar*aMsg, PRUint32 aTotalTried, PRUint32 aSuccessful){
    nsresult __result = inner.OnStopSending(aStatus, aMsg, aTotalTried, aSuccessful);
    CheckException(__result);
  }

private:
  nsIMsgSendLaterListener inner;

}

