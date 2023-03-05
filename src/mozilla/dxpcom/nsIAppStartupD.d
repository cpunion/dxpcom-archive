/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAppStartup.idl
 */

module mozilla.dxpcom.nsIAppStartupD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAppStartup;


public import mozilla.dxpcom.nsIAppStartupD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsICmdLineService;

public import mozilla.dxpcom.nsICmdLineServiceD;

public import mozilla.xpcom.nsINativeAppSupport;

public import mozilla.dxpcom.nsINativeAppSupportD;


/* starting wrapper class:    nsIAppStartup */
class nsIAppStartupD : public nsISupportsD {

  static const nsIID IID = NS_IAPPSTARTUP_IID;


  alias nsIAppStartup InnerType;

  this(nsIAppStartup intr){
    super(intr);
    this.inner = intr;
  }

  nsIAppStartup opCast() {
    return inner;
  }

  void opAssign(nsIAppStartup value) {
    inner = value;
  }

  /**
     * Required initialization routine.
     * @param aNativeAppSupportOrSplashScreen
     *        This is an object that can be QI'd to either an
     *        nsINativeAppSupport or nsISplashScreen; this object will be
     *        used to implement HideSplashScreen.
     */
  /* void initialize (in nsISupports nativeAppSupportOrSplashScreen); */
  void Initialize(nsISupportsD nativeAppSupportOrSplashScreen){
    nsresult __result = inner.Initialize(nativeAppSupportOrSplashScreen ? cast(nsISupports)nativeAppSupportOrSplashScreen : null);
    CheckException(__result);
  }

  /**
     * Create the hidden window. Only bootstrap code (nsAppRunner.cpp) should call
     * this method.
     */
  /* void createHiddenWindow (); */
  void CreateHiddenWindow(){
    nsresult __result = inner.CreateHiddenWindow();
    CheckException(__result);
  }

  /**
     * Starts up the profile manager with the given arguments
     * @param aCmdLineService the arguments given to the program
     * @param canInteract If FALSE and UI is needed, will fail
     */
  /* void doProfileStartup (in nsICmdLineService aCmdLineService, in boolean canInteract); */
  void DoProfileStartup(nsICmdLineServiceD aCmdLineService, PRBool canInteract){
    nsresult __result = inner.DoProfileStartup(aCmdLineService ? cast(nsICmdLineService)aCmdLineService : null, canInteract);
    CheckException(__result);
  }

  /**
     * Getter for "native app support."
     */
  /* readonly attribute nsINativeAppSupport nativeAppSupport; */
  nsINativeAppSupportD  NativeAppSupport(){
    nsINativeAppSupport value;
    nsresult __result = inner.GetNativeAppSupport(&value);
    CheckException(__result);
    return new nsINativeAppSupportD(value);
  }

  /**
     * Runs an application event loop: normally the main event pump which
     * defines the lifetime of the application.
     */
  /* void run (); */
  void Run(){
    nsresult __result = inner.Run();
    CheckException(__result);
  }

  /**
     * During application startup (and at other times!) we may temporarily
     * encounter a situation where all application windows will be closed
     * but we don't want to take this as a signal to quit the app. Bracket
     * the code where the last window could close with these.
     * (And at application startup, on platforms that don't normally quit
     * when the last window has closed, call Enter once, but not Exit)
     */
  /* void enterLastWindowClosingSurvivalArea (); */
  void EnterLastWindowClosingSurvivalArea(){
    nsresult __result = inner.EnterLastWindowClosingSurvivalArea();
    CheckException(__result);
  }

  /* void exitLastWindowClosingSurvivalArea (); */
  void ExitLastWindowClosingSurvivalArea(){
    nsresult __result = inner.ExitLastWindowClosingSurvivalArea();
    CheckException(__result);
  }

  enum { eConsiderQuit = 1U }

  enum { eAttemptQuit = 2U }

  enum { eForceQuit = 3U }

  /**
     * Exit the event loop, shut down the app
     */
  /* void quit (in PRUint32 aFerocity); */
  void Quit(PRUint32 aFerocity){
    nsresult __result = inner.Quit(aFerocity);
    CheckException(__result);
  }

  /**
     * Remove the splash screen (if visible).  This need be called
     * only once per application session.
     */
  /* void hideSplashScreen (); */
  void HideSplashScreen(){
    nsresult __result = inner.HideSplashScreen();
    CheckException(__result);
  }

  /**
     * Creates the initial state of the application by launching tasks
     * specfied by "general.startup.*" prefs.
     * @param aWindowWidth	the width to make the initial window(s) opened
     * @param aWindowHeight	the height to make the initial window(s) opened
     * @note SIZE_TO_CONTENT may be used for width or height.
     * @return TRUE if a window was opened
     */
  /* boolean createStartupState (in long aWindowWidth, in long aWindowHeight); */
  PRBool CreateStartupState(PRInt32 aWindowWidth, PRInt32 aWindowHeight){
    PRBool _retval;
    nsresult __result = inner.CreateStartupState(aWindowWidth, aWindowHeight, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Ensures that at least one window exists after creating the startup state.
     * If one has not been made, this will create a browser window.
     * @param aCmdLineService  the command line from which startup args can be read.
     */
  /* void ensure1Window (in nsICmdLineService aCmdLineService); */
  void Ensure1Window(nsICmdLineServiceD aCmdLineService){
    nsresult __result = inner.Ensure1Window(aCmdLineService ? cast(nsICmdLineService)aCmdLineService : null);
    CheckException(__result);
  }

private:
  nsIAppStartup inner;

}

