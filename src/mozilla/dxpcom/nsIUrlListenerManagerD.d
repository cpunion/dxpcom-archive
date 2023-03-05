/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUrlListenerManager.idl
 */

module mozilla.dxpcom.nsIUrlListenerManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIUrlListenerManager;


public import mozilla.dxpcom.nsIUrlListenerManagerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIUrlListener;
public import mozilla.dxpcom.nsIUrlListenerD;

public import mozilla.xpcom.nsIMsgMailNewsUrl;

public import mozilla.dxpcom.nsIMsgMailNewsUrlD;


/* starting wrapper class:    nsIUrlListenerManager */
class nsIUrlListenerManagerD : public nsISupportsD {

  static const nsIID IID = NS_IURLLISTENERMANAGER_IID;


  alias nsIUrlListenerManager InnerType;

  this(nsIUrlListenerManager intr){
    super(intr);
    this.inner = intr;
  }

  nsIUrlListenerManager opCast() {
    return inner;
  }

  void opAssign(nsIUrlListenerManager value) {
    inner = value;
  }

  /* void RegisterListener (in nsIUrlListener aUrlListener); */
  void RegisterListener(nsIUrlListenerD aUrlListener){
    nsresult __result = inner.RegisterListener(aUrlListener ? cast(nsIUrlListener)aUrlListener : null);
    CheckException(__result);
  }

  /* void UnRegisterListener (in nsIUrlListener aUrlListener); */
  void UnRegisterListener(nsIUrlListenerD aUrlListener){
    nsresult __result = inner.UnRegisterListener(aUrlListener ? cast(nsIUrlListener)aUrlListener : null);
    CheckException(__result);
  }

  /* void OnStartRunningUrl (in nsIMsgMailNewsUrl aUrl); */
  void OnStartRunningUrl(nsIMsgMailNewsUrlD aUrl){
    nsresult __result = inner.OnStartRunningUrl(aUrl ? cast(nsIMsgMailNewsUrl)aUrl : null);
    CheckException(__result);
  }

  /* void OnStopRunningUrl (in nsIMsgMailNewsUrl aUrl, in nsresult aExitCode); */
  void OnStopRunningUrl(nsIMsgMailNewsUrlD aUrl, nsresult aExitCode){
    nsresult __result = inner.OnStopRunningUrl(aUrl ? cast(nsIMsgMailNewsUrl)aUrl : null, aExitCode);
    CheckException(__result);
  }

private:
  nsIUrlListenerManager inner;

}

