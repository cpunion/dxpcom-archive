/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM ipcITransactionObserver.idl
 */

module mozilla.dxpcom.ipcITransactionObserverD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.ipcITransactionObserver;


public import mozilla.dxpcom.ipcITransactionObserverD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    ipcITransactionObserver */
class ipcITransactionObserverD : public nsISupportsD {

  static const nsIID IID = IPCITRANSACTIONOBSERVER_IID;


  alias ipcITransactionObserver InnerType;

  this(ipcITransactionObserver intr){
    super(intr);
    this.inner = intr;
  }

  ipcITransactionObserver opCast() {
    return inner;
  }

  void opAssign(ipcITransactionObserver value) {
    inner = value;
  }

  /**
    * This gets called when a Transaction has been sent from the 
    *   TransactionManager. If the data passed in needs to be stored
    *   for longer than the life of the method the observer needs
    *   to make a copy.
    *
    * @param aQueueID
    *        The queue from which the transaction originated
    *
    * @param aData
    *        The data to be sent.
    *
    * @param aDataLen
    *        The length of the data argument
    */
  /* void onTransactionAvailable (in unsigned long aQueueID, [array, size_is (aDataLen), const] in octet aData, in unsigned long aDataLen); */
  void OnTransactionAvailable(PRUint32 aQueueID, PRUint8 *aData, PRUint32 aDataLen){
    nsresult __result = inner.OnTransactionAvailable(aQueueID, aData, aDataLen);
    CheckException(__result);
  }

  /**
    * Called after an application sends an Attach message to the
    *   Transaction Manager.
    *
    * @param aQueueID
    *        The client has been attached to the queue with this ID
    *
    * @param aStatus
    *        The status of the operation, as defined in tmUtils.h
    */
  /* void onAttachReply (in unsigned long aQueueID, in unsigned long aStatus); */
  void OnAttachReply(PRUint32 aQueueID, PRUint32 aStatus){
    nsresult __result = inner.OnAttachReply(aQueueID, aStatus);
    CheckException(__result);
  }

  /**
    * Called after an application sends a Detach message. Indicates 
    *   to the client that no more messages will be coming from the
    *   the TM to this client. Also, no messages posted from this
    *   client to the indicated queue will be accepted.
    *
    * @param aQueueID
    *        The client has been detached from the queue with this ID
    *
    * @param aStatus
    *        The status of the operation, as defined in tmUtils.h
    */
  /* void onDetachReply (in unsigned long aQueueID, in unsigned long aStatus); */
  void OnDetachReply(PRUint32 aQueueID, PRUint32 aStatus){
    nsresult __result = inner.OnDetachReply(aQueueID, aStatus);
    CheckException(__result);
  }

  /**
    * The reply from the TM indicating all messages have been removed
    *   from the queue indicated.
    *
    * @param aQueueID
    *        The queue that has been flushed.
    *
    * @param aStatus
    *        The status of the operation, as defined in tmUtils.h
    */
  /* void onFlushReply (in unsigned long aQueueID, in unsigned long aStatus); */
  void OnFlushReply(PRUint32 aQueueID, PRUint32 aStatus){
    nsresult __result = inner.OnFlushReply(aQueueID, aStatus);
    CheckException(__result);
  }

private:
  ipcITransactionObserver inner;

}

