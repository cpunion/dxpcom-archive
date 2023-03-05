/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgBiffManager.idl
 */

module mozilla.dxpcom.nsIMsgBiffManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgBiffManager;


public import mozilla.dxpcom.nsIMsgBiffManagerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIMsgIncomingServer;
public import mozilla.dxpcom.nsIMsgIncomingServerD;


/* starting wrapper class:    nsIMsgBiffManager */
class nsIMsgBiffManagerD : public nsISupportsD {

  static const nsIID IID = NS_IMSGBIFFMANAGER_IID;


  alias nsIMsgBiffManager InnerType;

  this(nsIMsgBiffManager intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgBiffManager opCast() {
    return inner;
  }

  void opAssign(nsIMsgBiffManager value) {
    inner = value;
  }

  /* void init (); */
  void Init(){
    nsresult __result = inner.Init();
    CheckException(__result);
  }

  /* void addServerBiff (in nsIMsgIncomingServer server); */
  void AddServerBiff(nsIMsgIncomingServerD server){
    nsresult __result = inner.AddServerBiff(server ? cast(nsIMsgIncomingServer)server : null);
    CheckException(__result);
  }

  /* void removeServerBiff (in nsIMsgIncomingServer server); */
  void RemoveServerBiff(nsIMsgIncomingServerD server){
    nsresult __result = inner.RemoveServerBiff(server ? cast(nsIMsgIncomingServer)server : null);
    CheckException(__result);
  }

  /* void forceBiff (in nsIMsgIncomingServer server); */
  void ForceBiff(nsIMsgIncomingServerD server){
    nsresult __result = inner.ForceBiff(server ? cast(nsIMsgIncomingServer)server : null);
    CheckException(__result);
  }

  /* void forceBiffAll (); */
  void ForceBiffAll(){
    nsresult __result = inner.ForceBiffAll();
    CheckException(__result);
  }

  /* void shutdown (); */
  void Shutdown(){
    nsresult __result = inner.Shutdown();
    CheckException(__result);
  }

private:
  nsIMsgBiffManager inner;

}

