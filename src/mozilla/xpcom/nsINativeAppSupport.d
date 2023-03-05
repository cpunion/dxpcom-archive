/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINativeAppSupport.idl
 */

module mozilla.xpcom.nsINativeAppSupport;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIXULWindow; /* forward declaration */

public import mozilla.xpcom.nsICmdLineService; /* forward declaration */


/* starting interface:    nsINativeAppSupport */
const char[] NS_INATIVEAPPSUPPORT_IID_STR = "5fdf8480-1f98-11d4-8077-00600811a9c3";

const nsIID NS_INATIVEAPPSUPPORT_IID= 
  {0x5fdf8480, 0x1f98, 0x11d4, 
    [ 0x80, 0x77, 0x00, 0x60, 0x08, 0x11, 0xa9, 0xc3 ]};

extern(Windows)
interface nsINativeAppSupport : nsISupports {
  static const char[] IID_STR = NS_INATIVEAPPSUPPORT_IID_STR;
  static const nsIID IID = NS_INATIVEAPPSUPPORT_IID;

  /* boolean start (); */
  nsresult Start(PRBool *_retval);

  /* boolean stop (); */
  nsresult Stop(PRBool *_retval);

  /* void quit (); */
  nsresult Quit();

  /* [noscript] void ensureProfile (in nsICmdLineService aCmdService); */
  nsresult EnsureProfile(nsICmdLineService aCmdService);

  /* void showSplashScreen (); */
  nsresult ShowSplashScreen();

  /* void hideSplashScreen (); */
  nsresult HideSplashScreen();

  /* attribute boolean isServerMode; */
  nsresult GetIsServerMode(PRBool *aIsServerMode);
  nsresult SetIsServerMode(PRBool aIsServerMode);

  /* attribute boolean shouldShowUI; */
  nsresult GetShouldShowUI(PRBool *aShouldShowUI);
  nsresult SetShouldShowUI(PRBool aShouldShowUI);

  /* void startServerMode (); */
  nsresult StartServerMode();

  /* void onLastWindowClosing (); */
  nsresult OnLastWindowClosing();

  /* void ReOpen (); */
  nsresult ReOpen();

}

