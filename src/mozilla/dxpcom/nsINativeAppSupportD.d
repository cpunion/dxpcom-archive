/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINativeAppSupport.idl
 */

module mozilla.dxpcom.nsINativeAppSupportD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsINativeAppSupport;


public import mozilla.dxpcom.nsINativeAppSupportD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIXULWindow;

public import mozilla.dxpcom.nsIXULWindowD;

public import mozilla.xpcom.nsICmdLineService;

public import mozilla.dxpcom.nsICmdLineServiceD;


/* starting wrapper class:    nsINativeAppSupport */
class nsINativeAppSupportD : public nsISupportsD {

  static const nsIID IID = NS_INATIVEAPPSUPPORT_IID;


  alias nsINativeAppSupport InnerType;

  this(nsINativeAppSupport intr){
    super(intr);
    this.inner = intr;
  }

  nsINativeAppSupport opCast() {
    return inner;
  }

  void opAssign(nsINativeAppSupport value) {
    inner = value;
  }

  /* boolean start (); */
  PRBool Start(){
    PRBool _retval;
    nsresult __result = inner.Start(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean stop (); */
  PRBool Stop(){
    PRBool _retval;
    nsresult __result = inner.Stop(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void quit (); */
  void Quit(){
    nsresult __result = inner.Quit();
    CheckException(__result);
  }

  /* [noscript] void ensureProfile (in nsICmdLineService aCmdService); */
  void EnsureProfile(nsICmdLineServiceD aCmdService){
    nsresult __result = inner.EnsureProfile(aCmdService ? cast(nsICmdLineService)aCmdService : null);
    CheckException(__result);
  }

  /* void showSplashScreen (); */
  void ShowSplashScreen(){
    nsresult __result = inner.ShowSplashScreen();
    CheckException(__result);
  }

  /* void hideSplashScreen (); */
  void HideSplashScreen(){
    nsresult __result = inner.HideSplashScreen();
    CheckException(__result);
  }

  /* attribute boolean isServerMode; */
  PRBool IsServerMode(){
    PRBool value;
    nsresult __result = inner.GetIsServerMode(&value);
    CheckException(__result);
    return value;
  }
  void IsServerMode(PRBool aIsServerMode){
    nsresult __result = inner.SetIsServerMode(aIsServerMode);
    CheckException(__result);
  }

  /* attribute boolean shouldShowUI; */
  PRBool ShouldShowUI(){
    PRBool value;
    nsresult __result = inner.GetShouldShowUI(&value);
    CheckException(__result);
    return value;
  }
  void ShouldShowUI(PRBool aShouldShowUI){
    nsresult __result = inner.SetShouldShowUI(aShouldShowUI);
    CheckException(__result);
  }

  /* void startServerMode (); */
  void StartServerMode(){
    nsresult __result = inner.StartServerMode();
    CheckException(__result);
  }

  /* void onLastWindowClosing (); */
  void OnLastWindowClosing(){
    nsresult __result = inner.OnLastWindowClosing();
    CheckException(__result);
  }

  /* void ReOpen (); */
  void ReOpen(){
    nsresult __result = inner.ReOpen();
    CheckException(__result);
  }

private:
  nsINativeAppSupport inner;

}

