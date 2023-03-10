/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgCopyServiceListener.idl
 */

module mozilla.dxpcom.nsIMsgCopyServiceListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgCopyServiceListener;


public import mozilla.dxpcom.nsIMsgCopyServiceListenerD;

public import mozilla.xpcom.nsrootidl;
public import mozilla.dxpcom.nsrootidlD;
public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIMsgCopyServiceListener */
class nsIMsgCopyServiceListenerD : public nsISupportsD {

  static const nsIID IID = NS_IMSGCOPYSERVICELISTENER_IID;


  alias nsIMsgCopyServiceListener InnerType;

  this(nsIMsgCopyServiceListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgCopyServiceListener opCast() {
    return inner;
  }

  void opAssign(nsIMsgCopyServiceListener value) {
    inner = value;
  }

  /**
     * Notify the observer that the message has started to be copied. This
     * method is called only once, at the beginning of a message
     * copyoperation. 
     */
  /* void OnStartCopy (); */
  void OnStartCopy(){
    nsresult __result = inner.OnStartCopy();
    CheckException(__result);
  }

  /**
     * Notify the observer that progress as occurred for the message copy
     * aProgress -
     * aProgressMax -
     */
  /* void OnProgress (in PRUint32 aProgress, in PRUint32 aProgressMax); */
  void OnProgress(PRUint32 aProgress, PRUint32 aProgressMax){
    nsresult __result = inner.OnProgress(aProgress, aProgressMax);
    CheckException(__result);
  }

  /**
     * Setting newly created message key. This method is taylored specifically
     * for nsIMsgCopyService::CopyFileMessage() when saveing Drafts/Templates.
     * We need to have a way to inform the client what's the key of the newly
     * created message.
     * aKey -
     */
  /* void SetMessageKey (in PRUint32 aKey); */
  void SetMessageKey(PRUint32 aKey){
    nsresult __result = inner.SetMessageKey(aKey);
    CheckException(__result);
  }

  /**
     * Getting the file message message ID. This method is taylored
     * specifically for nsIMsgCopyService::CopyFileMessage() when saving
     * Drafts/Templates. In order to work with imap server which doesn't
     * support uidplus we have to use search comman to retrieve the key of
     * newly created message. Message ID generated by the compose gurantee its
     * uniqueness.
     * aMessageId -
     */
  /* [noscript] void GetMessageId (in nsCString aMessageId); */
  void GetMessageId(nsCString * aMessageId){
    nsresult __result = inner.GetMessageId(aMessageId);
    CheckException(__result);
  }

  /**
     * Notify the observer that the message copied operation has completed.  
     * This method is called regardless of whether the the operation was
     * successful.
     * aStatus - indicate whether the operation was succeeded
     */
  /* void OnStopCopy (in nsresult aStatus); */
  void OnStopCopy(nsresult aStatus){
    nsresult __result = inner.OnStopCopy(aStatus);
    CheckException(__result);
  }

private:
  nsIMsgCopyServiceListener inner;

}

