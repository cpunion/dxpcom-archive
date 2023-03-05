/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM ipcIService.idl
 */

module mozilla.dxpcom.ipcIServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.ipcIService;


public import mozilla.dxpcom.ipcIServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.ipcIMessageObserver;

public import mozilla.dxpcom.ipcIMessageObserverD;

public import mozilla.xpcom.ipcIClientObserver;

public import mozilla.dxpcom.ipcIClientObserverD;


/* starting wrapper class:    ipcIService */
/**
 * ipcIService
 *
 * the IPC service provides the means to communicate with an external IPC
 * daemon and/or other mozilla-based applications on the same physical system.
 * the IPC daemon hosts modules (some builtin and others dynamically loaded)
 * with which applications may interact.
 *
 * at application startup, the IPC service will attempt to establish a
 * connection with the IPC daemon.  the IPC daemon will be automatically
 * started if necessary.  when a connection has been established, the IPC
 * service will enumerate the "ipc-startup-category" and broadcast an
 * "ipc-startup" notification using the observer service.
 *
 * when the connection to the IPC daemon is closed, an "ipc-shutdown"
 * notification will be broadcast.
 *
 * each client has a name.  the client name need not be unique across all
 * clients, but it is usually good if it is.  the IPC service does not require
 * unique names.  instead, the IPC daemon assigns each client a unique ID that
 * is good for the current "session."  clients can query other clients by name
 * or by ID.  the IPC service supports forwarding messages from one client to
 * another via the IPC daemon.
 *
 * for performance reasons, this system should not be used to transfer large
 * amounts of data.  instead, applications may choose to utilize shared memory,
 * and rely on the IPC service for synchronization and small message transfer
 * only.
 */
class ipcIServiceD : public nsISupportsD {

  static const nsIID IID = IPCISERVICE_IID;


  alias ipcIService InnerType;

  this(ipcIService intr){
    super(intr);
    this.inner = intr;
  }

  ipcIService opCast() {
    return inner;
  }

  void opAssign(ipcIService value) {
    inner = value;
  }

  /**************************************************************************
     * properties of this process
     */
/**
     * returns the "client ID" assigned to this process by the IPC daemon.
     *
     * @throws NS_ERROR_NOT_AVAILABLE if no connection to the IPC daemon.
     */
  /* readonly attribute unsigned long ID; */
  PRUint32 ID(){
    PRUint32 value;
    nsresult __result = inner.GetID(&value);
    CheckException(__result);
    return value;
  }

  /**
     * this process can appear under several client names.  use the following
     * methods to add or remove names for this process.
     *
     * for example, the mozilla browser might have the primary name "mozilla",
     * but it could also register itself under the names "browser", "mail",
     * "news", "addrbook", etc.  other IPC clients can then query the IPC
     * daemon for the client named "mail" in order to talk with a mail program.
     *
     * XXX An IPC client name resembles a XPCOM contract ID.
     */
  /* void addName (in string aName); */
  void AddName(char*aName){
    nsresult __result = inner.AddName(aName);
    CheckException(__result);
  }

  /* void removeName (in string aName); */
  void RemoveName(char*aName){
    nsresult __result = inner.RemoveName(aName);
    CheckException(__result);
  }

  /**
     * add a new observer of client status change notifications.
     */
  /* void addClientObserver (in ipcIClientObserver aObserver); */
  void AddClientObserver(ipcIClientObserverD aObserver){
    nsresult __result = inner.AddClientObserver(aObserver ? cast(ipcIClientObserver)aObserver : null);
    CheckException(__result);
  }

  /**
     * remove an observer of client status change notifications.
     */
  /* void removeClientObserver (in ipcIClientObserver aObserver); */
  void RemoveClientObserver(ipcIClientObserverD aObserver){
    nsresult __result = inner.RemoveClientObserver(aObserver ? cast(ipcIClientObserver)aObserver : null);
    CheckException(__result);
  }

  /**************************************************************************
     * client query methods
     */
/**
     * resolve the given client name to the id of a connected client.  this
     * involves a round trip to the daemon, and as a result the calling thread
     * may block on this function call while waiting for the daemon to respond.
     */
  /* unsigned long resolveClientName (in string aName); */
  PRUint32 ResolveClientName(char*aName){
    PRUint32 _retval;
    nsresult __result = inner.ResolveClientName(aName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * tests whether a particular client is connected to the IPC daemon.
     */
  /* boolean clientExists (in unsigned long aClientID); */
  PRBool ClientExists(PRUint32 aClientID){
    PRBool _retval;
    nsresult __result = inner.ClientExists(aClientID, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**************************************************************************
     * message methods
     */
/**
     * set a message observer for a particular message target.
     *
     * @param aTarget
     *        the message target being observed.  any existing observer will
     *        be replaced.
     * @param aObserver
     *        the message observer to receive incoming messages for the
     *        specified target.  pass null to remove the existing observer.
     * @param aOnCurrentThread
     *        if true, then the message observer will be called on the same
     *        thread that calls defineTarget.  otherwise, aObserver will be
     *        called on a background thread.
     */
  /* void defineTarget (in nsIDRef aTarget, in ipcIMessageObserver aObserver, in boolean aOnCurrentThread); */
  void DefineTarget(nsID * aTarget, ipcIMessageObserverD aObserver, PRBool aOnCurrentThread){
    nsresult __result = inner.DefineTarget(aTarget, aObserver ? cast(ipcIMessageObserver)aObserver : null, aOnCurrentThread);
    CheckException(__result);
  }

  /**
     * send message asynchronously to a client or a module in the IPC daemon.
     * there is no guarantee that the message will be delivered.
     *
     * @param aClientID
     *        the client ID of the foreign application that should receive this
     *        message.  pass 0 to send a message to a module in the IPC daemon.
     * @param aTarget
     *        the target of the message.  if aClientID is 0, then this is the
     *        ID of the daemon module that should receive this message.
     * @param aData
     *        the message data.
     * @param aDataLen
     *        the message length.
     */
  /* void sendMessage (in unsigned long aReceiverID, in nsIDRef aTarget, [array, size_is (aDataLen), const] in octet aData, in unsigned long aDataLen); */
  void SendMessage(PRUint32 aReceiverID, nsID * aTarget, PRUint8 *aData, PRUint32 aDataLen){
    nsresult __result = inner.SendMessage(aReceiverID, aTarget, aData, aDataLen);
    CheckException(__result);
  }

  /**
     * block the calling thread until a matching message is received.
     *
     * @param aSenderID
     *        pass 0 to wait for a message from the daemon.  pass PR_UINT32_MAX
     *        to wait for a message from any source.  otherwise, pass a client
     *        id to wait for a message from that particular client.
     * @param aTarget
     *        wait for a message to be delivered to this target.
     * @param aObserver
     *        this observer's OnMessageAvailable method is called when a
     *        matching message is available.  pass null to use the default
     *        observer associated with aTarget.
     * @param aTimeout
     *        indicates maximum length of time in milliseconds that this
     *        function may block the calling thread.
     *
     * @throws IPC_ERROR_WOULD_BLOCK if the timeout expires.
     *
     * the observer's OnMessageAvailable method may throw IPC_WAIT_NEXT_MESSAGE
     * to indicate that it does not wish to handle the message that it was
     * given, and that it will wait to be called with the next message.  this
     * enables the observer to keep messages in the queue that do not match the
     * desired message.  messages that remain in the queue will be dispatched
     * asynchronously to the default message handler after waitMessage finishes.
     *
     * NOTE: this function may hang the calling thread until a matching message
     * is received, so use it with caution.
     */
  /* void waitMessage (in unsigned long aSenderID, in nsIDRef aTarget, in ipcIMessageObserver aObserver, in unsigned long aTimeout); */
  void WaitMessage(PRUint32 aSenderID, nsID * aTarget, ipcIMessageObserverD aObserver, PRUint32 aTimeout){
    nsresult __result = inner.WaitMessage(aSenderID, aTarget, aObserver ? cast(ipcIMessageObserver)aObserver : null, aTimeout);
    CheckException(__result);
  }

  /**
     * Call this method to disable the default message observer for a target.
     */
  /* void disableMessageObserver (in nsIDRef aTarget); */
  void DisableMessageObserver(nsID * aTarget){
    nsresult __result = inner.DisableMessageObserver(aTarget);
    CheckException(__result);
  }

  /**
     * Call this method to re-enable the default message observer for a target.
     */
  /* void enableMessageObserver (in nsIDRef aTarget); */
  void EnableMessageObserver(nsID * aTarget){
    nsresult __result = inner.EnableMessageObserver(aTarget);
    CheckException(__result);
  }

private:
  ipcIService inner;

}

