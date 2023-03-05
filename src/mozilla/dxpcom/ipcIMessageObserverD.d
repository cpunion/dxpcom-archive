/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM ipcIMessageObserver.idl
 */

module mozilla.dxpcom.ipcIMessageObserverD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.ipcIMessageObserver;


public import mozilla.dxpcom.ipcIMessageObserverD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    ipcIMessageObserver */
/**
 * ipcIMessageObserver
 */
class ipcIMessageObserverD : public nsISupportsD {

  static const nsIID IID = IPCIMESSAGEOBSERVER_IID;


  alias ipcIMessageObserver InnerType;

  this(ipcIMessageObserver intr){
    super(intr);
    this.inner = intr;
  }

  ipcIMessageObserver opCast() {
    return inner;
  }

  void opAssign(ipcIMessageObserver value) {
    inner = value;
  }

  /**
     * @param aSenderID
     *        the client id of the sender of this message.  if sent by the
     *        daemon (or a deamon module), then this will have a value of 0.
     * @param aTarget
     *        the target of the message, corresponding to the target this
     *        observer was registered under.  this parameter is passed to allow
     *        an observer instance to receive messages for more than one target.
     * @param aData
     *        the data of the message.
     * @param aDataLen
     *        the data length of the message.
     */
  /* void onMessageAvailable (in unsigned long aSenderID, in nsIDRef aTarget, [array, size_is (aDataLen), const] in octet aData, in unsigned long aDataLen); */
  void OnMessageAvailable(PRUint32 aSenderID, nsID * aTarget, PRUint8 *aData, PRUint32 aDataLen){
    nsresult __result = inner.OnMessageAvailable(aSenderID, aTarget, aData, aDataLen);
    CheckException(__result);
  }

private:
  ipcIMessageObserver inner;

}

