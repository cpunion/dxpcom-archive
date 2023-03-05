/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM ipcITransactionObserver.idl
 */

module mozilla.xpcom.ipcITransactionObserver;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    ipcITransactionObserver */
const char[] IPCITRANSACTIONOBSERVER_IID_STR = "656c0a6a-5cb3-45ec-8cb6-e7678897f937";

const nsIID IPCITRANSACTIONOBSERVER_IID= 
  {0x656c0a6a, 0x5cb3, 0x45ec, 
    [ 0x8c, 0xb6, 0xe7, 0x67, 0x88, 0x97, 0xf9, 0x37 ]};

extern(Windows)
interface ipcITransactionObserver : nsISupports {
  static const char[] IID_STR = IPCITRANSACTIONOBSERVER_IID_STR;
  static const nsIID IID = IPCITRANSACTIONOBSERVER_IID;

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
  nsresult OnTransactionAvailable(PRUint32 aQueueID, PRUint8 *aData, PRUint32 aDataLen);

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
  nsresult OnAttachReply(PRUint32 aQueueID, PRUint32 aStatus);

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
  nsresult OnDetachReply(PRUint32 aQueueID, PRUint32 aStatus);

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
  nsresult OnFlushReply(PRUint32 aQueueID, PRUint32 aStatus);

}

