/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPrintStatusFeedback.idl
 */

module mozilla.dxpcom.nsIPrintStatusFeedbackD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPrintStatusFeedback;


public import mozilla.dxpcom.nsIPrintStatusFeedbackD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDocShell;

public import mozilla.dxpcom.nsIDocShellD;

public import mozilla.xpcom.nsIDOMWindowInternal;

public import mozilla.dxpcom.nsIDOMWindowInternalD;


/* starting wrapper class:    nsIPrintStatusFeedback */
class nsIPrintStatusFeedbackD : public nsISupportsD {

  static const nsIID IID = NS_IPRINTSTATUSFEEDBACK_IID;


  alias nsIPrintStatusFeedback InnerType;

  this(nsIPrintStatusFeedback intr){
    super(intr);
    this.inner = intr;
  }

  nsIPrintStatusFeedback opCast() {
    return inner;
  }

  void opAssign(nsIPrintStatusFeedback value) {
    inner = value;
  }

  /* void showStatusString (in wstring status); */
  void ShowStatusString(PRUnichar*status){
    nsresult __result = inner.ShowStatusString(status);
    CheckException(__result);
  }

  /* void startMeteors (); */
  void StartMeteors(){
    nsresult __result = inner.StartMeteors();
    CheckException(__result);
  }

  /* void stopMeteors (); */
  void StopMeteors(){
    nsresult __result = inner.StopMeteors();
    CheckException(__result);
  }

  /* void showProgress (in long percent); */
  void ShowProgress(PRInt32 percent){
    nsresult __result = inner.ShowProgress(percent);
    CheckException(__result);
  }

  /* [noscript] void setDocShell (in nsIDocShell shell, in nsIDOMWindowInternal window); */
  void SetDocShell(nsIDocShellD shell, nsIDOMWindowInternalD window){
    nsresult __result = inner.SetDocShell(shell ? cast(nsIDocShell)shell : null, window ? cast(nsIDOMWindowInternal)window : null);
    CheckException(__result);
  }

  /* void closeWindow (); */
  void CloseWindow(){
    nsresult __result = inner.CloseWindow();
    CheckException(__result);
  }

private:
  nsIPrintStatusFeedback inner;

}

