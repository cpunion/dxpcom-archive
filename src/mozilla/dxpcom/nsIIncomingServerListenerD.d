/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIIncomingServerListener.idl
 */

module mozilla.dxpcom.nsIIncomingServerListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIIncomingServerListener;


public import mozilla.dxpcom.nsIIncomingServerListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIMsgIncomingServer;
public import mozilla.dxpcom.nsIMsgIncomingServerD;


/* starting wrapper class:    nsIIncomingServerListener */
class nsIIncomingServerListenerD : public nsISupportsD {

  static const nsIID IID = NS_IINCOMINGSERVERLISTENER_IID;


  alias nsIIncomingServerListener InnerType;

  this(nsIIncomingServerListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIIncomingServerListener opCast() {
    return inner;
  }

  void opAssign(nsIIncomingServerListener value) {
    inner = value;
  }

  /* void onServerLoaded (in nsIMsgIncomingServer server); */
  void OnServerLoaded(nsIMsgIncomingServerD server){
    nsresult __result = inner.OnServerLoaded(server ? cast(nsIMsgIncomingServer)server : null);
    CheckException(__result);
  }

  /* void onServerUnloaded (in nsIMsgIncomingServer server); */
  void OnServerUnloaded(nsIMsgIncomingServerD server){
    nsresult __result = inner.OnServerUnloaded(server ? cast(nsIMsgIncomingServer)server : null);
    CheckException(__result);
  }

  /* void onServerChanged (in nsIMsgIncomingServer server); */
  void OnServerChanged(nsIMsgIncomingServerD server){
    nsresult __result = inner.OnServerChanged(server ? cast(nsIMsgIncomingServer)server : null);
    CheckException(__result);
  }

private:
  nsIIncomingServerListener inner;

}

