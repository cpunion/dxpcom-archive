/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM ipcIClientObserver.idl
 */

module mozilla.dxpcom.ipcIClientObserverD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.ipcIClientObserver;


public import mozilla.dxpcom.ipcIClientObserverD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    ipcIClientObserver */
/**
 * ipcIClientObserver
 */
class ipcIClientObserverD : public nsISupportsD {

  static const nsIID IID = IPCICLIENTOBSERVER_IID;


  alias ipcIClientObserver InnerType;

  this(ipcIClientObserver intr){
    super(intr);
    this.inner = intr;
  }

  ipcIClientObserver opCast() {
    return inner;
  }

  void opAssign(ipcIClientObserver value) {
    inner = value;
  }

  enum { CLIENT_UP = 1U }

  enum { CLIENT_DOWN = 2U }

  /* void onClientStateChange (in unsigned long aClientID, in unsigned long aClientState); */
  void OnClientStateChange(PRUint32 aClientID, PRUint32 aClientState){
    nsresult __result = inner.OnClientStateChange(aClientID, aClientState);
    CheckException(__result);
  }

private:
  ipcIClientObserver inner;

}

