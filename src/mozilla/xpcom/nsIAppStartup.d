/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAppStartup.idl
 */

module mozilla.xpcom.nsIAppStartup;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsICmdLineService; /* forward declaration */

public import mozilla.xpcom.nsINativeAppSupport; /* forward declaration */


/* starting interface:    nsIAppStartup */
const char[] NS_IAPPSTARTUP_IID_STR = "0f4ae035-4643-44c5-a596-ff81b8c29f08";

const nsIID NS_IAPPSTARTUP_IID= 
  {0x0f4ae035, 0x4643, 0x44c5, 
    [ 0xa5, 0x96, 0xff, 0x81, 0xb8, 0xc2, 0x9f, 0x08 ]};

extern(Windows)
interface nsIAppStartup : nsISupports {
  static const char[] IID_STR = NS_IAPPSTARTUP_IID_STR;
  static const nsIID IID = NS_IAPPSTARTUP_IID;

  /**
     * Required initialization routine.
     * @param aNativeAppSupportOrSplashScreen
     *        This is an object that can be QI'd to either an
     *        nsINativeAppSupport or nsISplashScreen; this object will be
     *        used to implement HideSplashScreen.
     */
  /* void initialize (in nsISupports nativeAppSupportOrSplashScreen); */
  nsresult Initialize(nsISupports nativeAppSupportOrSplashScreen);

  /**
     * Create the hidden window. Only bootstrap code (nsAppRunner.cpp) should call
     * this method.
     */
  /* void createHiddenWindow (); */
  nsresult CreateHiddenWindow();

  /**
     * Starts up the profile manager with the given arguments
     * @param aCmdLineService the arguments given to the program
     * @param canInteract If FALSE and UI is needed, will fail
     */
  /* void doProfileStartup (in nsICmdLineService aCmdLineService, in boolean canInteract); */
  nsresult DoProfileStartup(nsICmdLineService aCmdLineService, PRBool canInteract);

  /**
     * Getter for "native app support."
     */
  /* readonly attribute nsINativeAppSupport nativeAppSupport; */
  nsresult GetNativeAppSupport(nsINativeAppSupport  *aNativeAppSupport);

  /**
     * Runs an application event loop: normally the main event pump which
     * defines the lifetime of the application.
     */
  /* void run (); */
  nsresult Run();

  /**
     * During application startup (and at other times!) we may temporarily
     * encounter a situation where all application windows will be closed
     * but we don't want to take this as a signal to quit the app. Bracket
     * the code where the last window could close with these.
     * (And at application startup, on platforms that don't normally quit
     * when the last window has closed, call Enter once, but not Exit)
     */
  /* void enterLastWindowClosingSurvivalArea (); */
  nsresult EnterLastWindowClosingSurvivalArea();

  /* void exitLastWindowClosingSurvivalArea (); */
  nsresult ExitLastWindowClosingSurvivalArea();

  enum { eConsiderQuit = 1U };

  enum { eAttemptQuit = 2U };

  enum { eForceQuit = 3U };

  /**
     * Exit the event loop, shut down the app
     */
  /* void quit (in PRUint32 aFerocity); */
  nsresult Quit(PRUint32 aFerocity);

  /**
     * Remove the splash screen (if visible).  This need be called
     * only once per application session.
     */
  /* void hideSplashScreen (); */
  nsresult HideSplashScreen();

  /**
     * Creates the initial state of the application by launching tasks
     * specfied by "general.startup.*" prefs.
     * @param aWindowWidth	the width to make the initial window(s) opened
     * @param aWindowHeight	the height to make the initial window(s) opened
     * @note SIZE_TO_CONTENT may be used for width or height.
     * @return TRUE if a window was opened
     */
  /* boolean createStartupState (in long aWindowWidth, in long aWindowHeight); */
  nsresult CreateStartupState(PRInt32 aWindowWidth, PRInt32 aWindowHeight, PRBool *_retval);

  /**
     * Ensures that at least one window exists after creating the startup state.
     * If one has not been made, this will create a browser window.
     * @param aCmdLineService  the command line from which startup args can be read.
     */
  /* void ensure1Window (in nsICmdLineService aCmdLineService); */
  nsresult Ensure1Window(nsICmdLineService aCmdLineService);

}

