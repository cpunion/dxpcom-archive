/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXPINotifier.idl
 */

module mozilla.dxpcom.nsIXPINotifierD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXPINotifier;


public import mozilla.dxpcom.nsIXPINotifierD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIXPIListener */
class nsIXPIListenerD : public nsISupportsD {

  static const nsIID IID = NS_IXPILISTENER_IID;


  alias nsIXPIListener InnerType;

  this(nsIXPIListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPIListener opCast() {
    return inner;
  }

  void opAssign(nsIXPIListener value) {
    inner = value;
  }

  /* void onInstallStart (in wstring URL); */
  void OnInstallStart(PRUnichar*URL){
    nsresult __result = inner.OnInstallStart(URL);
    CheckException(__result);
  }

  /* void onInstallDone (in wstring URL, in long status); */
  void OnInstallDone(PRUnichar*URL, PRInt32 status){
    nsresult __result = inner.OnInstallDone(URL, status);
    CheckException(__result);
  }

  /* void onPackageNameSet (in wstring URL, in wstring UIPackageName, in wstring version); */
  void OnPackageNameSet(PRUnichar*URL, PRUnichar*UIPackageName, PRUnichar*version_){
    nsresult __result = inner.OnPackageNameSet(URL, UIPackageName, version_);
    CheckException(__result);
  }

  /* void onItemScheduled (in wstring message); */
  void OnItemScheduled(PRUnichar*message){
    nsresult __result = inner.OnItemScheduled(message);
    CheckException(__result);
  }

  /* void onFinalizeProgress (in wstring message, in long itemNum, in long totNum); */
  void OnFinalizeProgress(PRUnichar*message, PRInt32 itemNum, PRInt32 totNum){
    nsresult __result = inner.OnFinalizeProgress(message, itemNum, totNum);
    CheckException(__result);
  }

  /* void onLogComment (in wstring comment); */
  void OnLogComment(PRUnichar*comment){
    nsresult __result = inner.OnLogComment(comment);
    CheckException(__result);
  }

private:
  nsIXPIListener inner;

}

