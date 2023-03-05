/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPrintProgress.idl
 */

module mozilla.dxpcom.nsIPrintProgressD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPrintProgress;


public import mozilla.dxpcom.nsIPrintProgressD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIWebProgressListener;
public import mozilla.dxpcom.nsIWebProgressListenerD;

public import mozilla.xpcom.nsIDOMWindowInternal;

public import mozilla.dxpcom.nsIDOMWindowInternalD;

public import mozilla.xpcom.nsIObserver;

public import mozilla.dxpcom.nsIObserverD;

public import mozilla.xpcom.nsIPrompt;

public import mozilla.dxpcom.nsIPromptD;


/* starting wrapper class:    nsIPrintProgress */
class nsIPrintProgressD : public nsIWebProgressListenerD {

  static const nsIID IID = NS_IPRINTPROGRESS_IID;


  alias nsIPrintProgress InnerType;

  this(nsIPrintProgress intr){
    super(intr);
    this.inner = intr;
  }

  nsIPrintProgress opCast() {
    return inner;
  }

  void opAssign(nsIPrintProgress value) {
    inner = value;
  }

  /* void openProgressDialog (in nsIDOMWindowInternal parent, in string dialogURL, in nsISupports parameters, in nsIObserver openDialogObserver, out boolean notifyOnOpen); */
  void OpenProgressDialog(nsIDOMWindowInternalD parent, char*dialogURL, nsISupportsD parameters, nsIObserverD openDialogObserver, out PRBool notifyOnOpen){
    nsresult __result = inner.OpenProgressDialog(parent ? cast(nsIDOMWindowInternal)parent : null, dialogURL, parameters ? cast(nsISupports)parameters : null, openDialogObserver ? cast(nsIObserver)openDialogObserver : null, &notifyOnOpen);
    CheckException(__result);
  }

  /* void closeProgressDialog (in boolean forceClose); */
  void CloseProgressDialog(PRBool forceClose){
    nsresult __result = inner.CloseProgressDialog(forceClose);
    CheckException(__result);
  }

  /* void registerListener (in nsIWebProgressListener listener); */
  void RegisterListener(nsIWebProgressListenerD listener){
    nsresult __result = inner.RegisterListener(listener ? cast(nsIWebProgressListener)listener : null);
    CheckException(__result);
  }

  /* void unregisterListener (in nsIWebProgressListener listener); */
  void UnregisterListener(nsIWebProgressListenerD listener){
    nsresult __result = inner.UnregisterListener(listener ? cast(nsIWebProgressListener)listener : null);
    CheckException(__result);
  }

  /* void doneIniting (); */
  void DoneIniting(){
    nsresult __result = inner.DoneIniting();
    CheckException(__result);
  }

  /* nsIPrompt getPrompter (); */
  nsIPromptD  GetPrompter(){
    nsIPrompt _retval;
    nsresult __result = inner.GetPrompter(&_retval);
    CheckException(__result);
    return new nsIPromptD(_retval);
  }

  /* attribute boolean processCanceledByUser; */
  PRBool ProcessCanceledByUser(){
    PRBool value;
    nsresult __result = inner.GetProcessCanceledByUser(&value);
    CheckException(__result);
    return value;
  }
  void ProcessCanceledByUser(PRBool aProcessCanceledByUser){
    nsresult __result = inner.SetProcessCanceledByUser(aProcessCanceledByUser);
    CheckException(__result);
  }

private:
  nsIPrintProgress inner;

}

