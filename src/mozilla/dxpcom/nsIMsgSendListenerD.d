/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgSendListener.idl
 */

module mozilla.dxpcom.nsIMsgSendListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgSendListener;


public import mozilla.dxpcom.nsIMsgSendListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIFileSpec;

public import mozilla.dxpcom.nsIFileSpecD;


/* starting wrapper class:    nsIMsgSendListener */
class nsIMsgSendListenerD : public nsISupportsD {

  static const nsIID IID = NS_IMSGSENDLISTENER_IID;


  alias nsIMsgSendListener InnerType;

  this(nsIMsgSendListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgSendListener opCast() {
    return inner;
  }

  void opAssign(nsIMsgSendListener value) {
    inner = value;
  }

  /**
     * Notify the observer that the message has started to be delivered. This method is
     * called only once, at the beginning of a message send operation.
     *
     * @return The return value is currently ignored.  In the future it may be
     * used to cancel the URL load..
     */
  /* void onStartSending (in string aMsgID, in PRUint32 aMsgSize); */
  void OnStartSending(char*aMsgID, PRUint32 aMsgSize){
    nsresult __result = inner.OnStartSending(aMsgID, aMsgSize);
    CheckException(__result);
  }

  /**
     * Notify the observer that progress as occurred for the message send
     */
  /* void onProgress (in string aMsgID, in PRUint32 aProgress, in PRUint32 aProgressMax); */
  void OnProgress(char*aMsgID, PRUint32 aProgress, PRUint32 aProgressMax){
    nsresult __result = inner.OnProgress(aMsgID, aProgress, aProgressMax);
    CheckException(__result);
  }

  /**
     * Notify the observer with a status message for the message send
     */
  /* void onStatus (in string aMsgID, in wstring aMsg); */
  void OnStatus(char*aMsgID, PRUnichar*aMsg){
    nsresult __result = inner.OnStatus(aMsgID, aMsg);
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
  /* void onStopSending (in string aMsgID, in nsresult aStatus, in wstring aMsg, in nsIFileSpec returnFileSpec); */
  void OnStopSending(char*aMsgID, nsresult aStatus, PRUnichar*aMsg, nsIFileSpecD returnFileSpec){
    nsresult __result = inner.OnStopSending(aMsgID, aStatus, aMsg, returnFileSpec ? cast(nsIFileSpec)returnFileSpec : null);
    CheckException(__result);
  }

  /**
     * Notify the observer with the folder uri before the draft is copied.
     */
  /* void onGetDraftFolderURI (in string aFolderURI); */
  void OnGetDraftFolderURI(char*aFolderURI){
    nsresult __result = inner.OnGetDraftFolderURI(aFolderURI);
    CheckException(__result);
  }

  /**
     * Notify the observer when the user aborts the send without actually doing the send
     * eg : by closing the compose window without Send.
     */
  /* void onSendNotPerformed (in string aMsgID, in nsresult aStatus); */
  void OnSendNotPerformed(char*aMsgID, nsresult aStatus){
    nsresult __result = inner.OnSendNotPerformed(aMsgID, aStatus);
    CheckException(__result);
  }

private:
  nsIMsgSendListener inner;

}

