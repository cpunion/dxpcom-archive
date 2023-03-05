/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProfileStartupListener.idl
 */

module mozilla.dxpcom.nsIProfileStartupListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIProfileStartupListener;


public import mozilla.dxpcom.nsIProfileStartupListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIProfileStartupListener */
class nsIProfileStartupListenerD : public nsISupportsD {

  static const nsIID IID = NS_IPROFILESTARTUPLISTENER_IID;


  alias nsIProfileStartupListener InnerType;

  this(nsIProfileStartupListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIProfileStartupListener opCast() {
    return inner;
  }

  void opAssign(nsIProfileStartupListener value) {
    inner = value;
  }

  /* void onProfileStartup (in wstring profileName); */
  void OnProfileStartup(PRUnichar*profileName){
    nsresult __result = inner.OnProfileStartup(profileName);
    CheckException(__result);
  }

private:
  nsIProfileStartupListener inner;

}

