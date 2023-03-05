/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM ipcITransactionService.idl
 */

module mozilla.xpcom.ipcITransactionService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.ipcITransactionObserver; /* forward declaration */


/* starting interface:    ipcITransactionService */
const char[] IPCITRANSACTIONSERVICE_IID_STR = "15561efb-8c58-4a47-813a-fa91cf730895";

const nsIID IPCITRANSACTIONSERVICE_IID= 
  {0x15561efb, 0x8c58, 0x4a47, 
    [ 0x81, 0x3a, 0xfa, 0x91, 0xcf, 0x73, 0x08, 0x95 ]};

extern(Windows)
interface ipcITransactionService : nsISupports {
  static const char[] IID_STR = IPCITRANSACTIONSERVICE_IID_STR;
  static const nsIID IID = IPCITRANSACTIONSERVICE_IID;

  /** 
    * Connects the application to the transaction manager, defines the
    *   namespace and initializes internal storage
    *
    * @param aNamespace
    *        A string defining the scope of the transaction domains. It is
    *        used internally to seperate process listening to the same domain
    *        (ie. preferences) but for two different namespaces (ie. profile1 vs
    *        profile2).
    *
    * @returns NS_OK if all memory allocated properly and the IPC service was
    *          reached and attached to successfully.
    *
    * @returns an NS_ERROR_<foo> code specific to the failure otherwise
    */
  /* void init (in ACString aNamespace); */
  nsresult Init(nsACString * aNamespace);

  /** 
    * Links the observer passed in with the domain specified. This will allow
    *   the observer to post transactions dealing with this domain as well as
    *   receive transactions posted by other applications observing this
    *   domain.
    *
    * Return codes for this method confer information about the success of
    *   this call, not of the actual attaching of the observer to the domain.
    *   (except the TM_ERROR code - which means the observer can not attach)
    *   If the attach is successful the observer will have its OnAttachReply
    *   method called before this method returns.
    *
    * Note: This call is synchronous and will not return until the call to
    *       OnAttachReply is made.
    * 
    * @param aDomainName
    *        the name of the domain, in the current namespace, to listen for
    *        transactions from. i.e. cookies
    *
    * @param aObserver
    *        this will be used to notify the application when transactions
    *        and messages come in.
    *
    * @param aLockingCall
    *        Have the Transaction Sevice acquire a lock based on the domain
    *        before attaching. This should be used when persistant storage
    *        is being used to prevent data corruption.
    *
    * @returns NS_OK if the attach message was sent to the Transaction Manager.
    *
    * @returns an NS_ERROR_<foo> code specific to the failure otherwise
    *
    * @returns TM_ERROR_QUEUE_EXISTS if the queue already exists which means
    *          someone has already attached to it.
    */
  /* void attach (in ACString aDomainName, in ipcITransactionObserver aObserver, in PRBool aLockingCall); */
  nsresult Attach(nsACString * aDomainName, ipcITransactionObserver aObserver, PRBool aLockingCall);

  /**
    * Sends a detach message to the Transaction Manager to unlink the observer
    *   associated with the domain passed in. 
    *
    * As in attach, return codes do not indicate success of detachment. The
    *   observer will have it's OnDetach method called if it is successfully
    *   detached.
    *
    * Note: This call is an asynchronous call.
    *
    * @param aDomainName
    *        the domain, in the current namespace, from which the client
    *        should be removed.
    *
    * @returns NS_OK if the detach message is sent to the Transaction Manager
    *
    * @returns NS_ERROR_FAILURE is something goes wrong
    *
    * @returns NS_ERRROR_UNEXPECTD if the domain does not have an observer 
    *          attached
    */
  /* void detach (in ACString aDomainName); */
  nsresult Detach(nsACString * aDomainName);

  /**
    * Sends a flush message to the Transaction Manager to remove all
    *   transactions for the domain. After this call there will be no
    *   transactions in the Transaction Manager for the namespace/domain
    *   pairing. It is up to the application to coordinate the flushing
    *   of the Transaction Manager with the writing of data to files,
    *   if needed.
    *
    * Note: This call is synchronous and will not return until the call to
    *       OnFlushReply is made.
    *
    * @param aDomainName
    *        The domain, in the current namespace, to flush.
    *
    * @param aLockingCall
    *        Have the Transaction Sevice acquire a lock based on the domain
    *        before flushing. This should be used when persistant storage
    *        is being used to prevent data corruption.
    *
    * @returns NS_OK if the flush message is sent to the Transaction Manager
    *
    * @returns NS_ERROR_FAILURE is something goes wrong
    *
    * @returns NS_ERRROR_UNEXPECTD if the domain does not have an observer 
    *          attached
    */
  /* void flush (in ACString aDomainName, in PRBool aLockingCall); */
  nsresult Flush(nsACString * aDomainName, PRBool aLockingCall);

  /**
    * Send the data to the Transaction Manager to be broadcast to any
    *   applications that have registered as observers of this particular
    *   namespace/domain pairing.
    *
    * If this domain is not being observed (attach has not been called for
    *   this domain) the message is queued until the attach is made and then
    *   the message is sent to the Transaction Manager with the proper domain
    *   information. 
    *
    *   XXXjg - this may not be necessary with the synch attach call.
    *
    * Note: This call is an asynchronous call.
    *
    * @param aDomainName
    *        the domain, in the current namespace, to which the data will be
    *        sent.
    *
    * @param aData
    *        The actual data to be sent.
    *
    * @param aDataLen
    *        The length of the data argument
    */
  /* void postTransaction (in ACString aDomainName, [array, size_is (aDataLen), const] in octet aData, in unsigned long aDataLen); */
  nsresult PostTransaction(nsACString * aDomainName, PRUint8 *aData, PRUint32 aDataLen);

}

