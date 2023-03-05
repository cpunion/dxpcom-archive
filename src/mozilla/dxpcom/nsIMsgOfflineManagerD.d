/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgOfflineManager.idl
 */

module mozilla.dxpcom.nsIMsgOfflineManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgOfflineManager;


public import mozilla.dxpcom.nsIMsgOfflineManagerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.dxpcom.nsIMsgWindowD;


/* starting wrapper class:    nsIMsgOfflineManager */
class nsIMsgOfflineManagerD : public nsISupportsD {

  static const nsIID IID = NS_IMSGOFFLINEMANAGER_IID;


  alias nsIMsgOfflineManager InnerType;

  this(nsIMsgOfflineManager intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgOfflineManager opCast() {
    return inner;
  }

  void opAssign(nsIMsgOfflineManager value) {
    inner = value;
  }

  /* attribute nsIMsgWindow window; */
  nsIMsgWindowD  Window(){
    nsIMsgWindow value;
    nsresult __result = inner.GetWindow(&value);
    CheckException(__result);
    return new nsIMsgWindowD(value);
  }
  void Window(nsIMsgWindowD  aWindow){
    nsIMsgWindow value;
    nsresult __result = inner.SetWindow(value);
    CheckException(__result);
  }

  /* attribute boolean inProgress; */
  PRBool InProgress(){
    PRBool value;
    nsresult __result = inner.GetInProgress(&value);
    CheckException(__result);
    return value;
  }
  void InProgress(PRBool aInProgress){
    nsresult __result = inner.SetInProgress(aInProgress);
    CheckException(__result);
  }

  /* void goOnline (in boolean sendUnsentMessages, in boolean playbackOfflineImapOperations, in nsIMsgWindow aMsgWindow); */
  void GoOnline(PRBool sendUnsentMessages, PRBool playbackOfflineImapOperations, nsIMsgWindowD aMsgWindow){
    nsresult __result = inner.GoOnline(sendUnsentMessages, playbackOfflineImapOperations, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null);
    CheckException(__result);
  }

  /* void synchronizeForOffline (in boolean downloadNews, in boolean downloadMail, in boolean sendUnsentMessages, in boolean goOfflineWhenDone, in nsIMsgWindow aMsgWindow); */
  void SynchronizeForOffline(PRBool downloadNews, PRBool downloadMail, PRBool sendUnsentMessages, PRBool goOfflineWhenDone, nsIMsgWindowD aMsgWindow){
    nsresult __result = inner.SynchronizeForOffline(downloadNews, downloadMail, sendUnsentMessages, goOfflineWhenDone, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null);
    CheckException(__result);
  }

private:
  nsIMsgOfflineManager inner;

}

