/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgStatusFeedback.idl
 */

module mozilla.dxpcom.nsIMsgStatusFeedbackD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgStatusFeedback;


public import mozilla.dxpcom.nsIMsgStatusFeedbackD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDocShell;

public import mozilla.dxpcom.nsIDocShellD;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.dxpcom.nsIDOMWindowD;


/* starting wrapper class:    nsIMsgStatusFeedback */
class nsIMsgStatusFeedbackD : public nsISupportsD {

  static const nsIID IID = NS_IMSGSTATUSFEEDBACK_IID;


  alias nsIMsgStatusFeedback InnerType;

  this(nsIMsgStatusFeedback intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgStatusFeedback opCast() {
    return inner;
  }

  void opAssign(nsIMsgStatusFeedback value) {
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

  /* void setStatusString (in wstring status); */
  void SetStatusString(PRUnichar*status){
    nsresult __result = inner.SetStatusString(status);
    CheckException(__result);
  }

  /* [noscript] void setDocShell (in nsIDocShell shell, in nsIDOMWindow window); */
  void SetDocShell(nsIDocShellD shell, nsIDOMWindowD window){
    nsresult __result = inner.SetDocShell(shell ? cast(nsIDocShell)shell : null, window ? cast(nsIDOMWindow)window : null);
    CheckException(__result);
  }

  /* void closeWindow (); */
  void CloseWindow(){
    nsresult __result = inner.CloseWindow();
    CheckException(__result);
  }

private:
  nsIMsgStatusFeedback inner;

}

