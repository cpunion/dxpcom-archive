/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUrlListener.idl
 */

module mozilla.dxpcom.nsIUrlListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIUrlListener;


public import mozilla.dxpcom.nsIUrlListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIUrlListener */
class nsIUrlListenerD : public nsISupportsD {

  static const nsIID IID = NS_IURLLISTENER_IID;


  alias nsIUrlListener InnerType;

  this(nsIUrlListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIUrlListener opCast() {
    return inner;
  }

  void opAssign(nsIUrlListener value) {
    inner = value;
  }

  /* void OnStartRunningUrl (in nsIURI url); */
  void OnStartRunningUrl(nsIURID url){
    nsresult __result = inner.OnStartRunningUrl(url ? cast(nsIURI)url : null);
    CheckException(__result);
  }

  /* void OnStopRunningUrl (in nsIURI url, in nsresult aExitCode); */
  void OnStopRunningUrl(nsIURID url, nsresult aExitCode){
    nsresult __result = inner.OnStopRunningUrl(url ? cast(nsIURI)url : null, aExitCode);
    CheckException(__result);
  }

private:
  nsIUrlListener inner;

}

