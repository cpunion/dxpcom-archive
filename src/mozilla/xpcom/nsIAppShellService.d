/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAppShellService.idl
 */

module mozilla.xpcom.nsIAppShellService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIXULWindow; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIDOMWindowInternal; /* forward declaration */

public import mozilla.xpcom.nsIAppShell; /* forward declaration */


/* starting interface:    nsIAppShellService */
const char[] NS_IAPPSHELLSERVICE_IID_STR = "93a28ba2-7e22-11d9-9b6f-000a95d535fa";

const nsIID NS_IAPPSHELLSERVICE_IID= 
  {0x93a28ba2, 0x7e22, 0x11d9, 
    [ 0x9b, 0x6f, 0x00, 0x0a, 0x95, 0xd5, 0x35, 0xfa ]};

extern(Windows)
interface nsIAppShellService : nsISupports {
  static const char[] IID_STR = NS_IAPPSHELLSERVICE_IID_STR;
  static const nsIID IID = NS_IAPPSHELLSERVICE_IID;

  /**
   * Create a window, which will be initially invisible.
   * @param aParent the parent window.  Can be null.
   * @param aUrl the contents of the new window.
   * @param aChromeMask chrome flags affecting the kind of OS border
   *                    given to the window. see nsIBrowserWindow for
   *                    bit/flag definitions.
   * @param aCallbacks interface providing C++ hooks for window initialization
   *                   before the window is made visible.  Can be null.
   *                   Deprecated.
   * @param aInitialWidth width, in pixels, of the window.  Width of window
   *                      at creation.  Can be overridden by the "width"
   *                      tag in the XUL.  Set to NS_SIZETOCONTENT to force
   *                      the window to wrap to its contents.
   * @param aInitialHeight like aInitialWidth, but subtly different.
   * @param aAppShell a widget "appshell" (event processor) to associate
   *        with the new window
   * @param aResult the newly created window is returned here.
   */
  enum { SIZE_TO_CONTENT = -1 };

  /* nsIXULWindow createTopLevelWindow (in nsIXULWindow aParent, in nsIURI aUrl, in PRUint32 aChromeMask, in long aInitialWidth, in long aInitialHeight, in nsIAppShell aAppShell); */
  nsresult CreateTopLevelWindow(nsIXULWindow aParent, nsIURI aUrl, PRUint32 aChromeMask, PRInt32 aInitialWidth, PRInt32 aInitialHeight, nsIAppShell aAppShell, nsIXULWindow *_retval);

  /* [noscript] void createHiddenWindow (in nsIAppShell aAppShell); */
  nsresult CreateHiddenWindow(nsIAppShell aAppShell);

  /* void destroyHiddenWindow (); */
  nsresult DestroyHiddenWindow();

  /**
   * Return the (singleton) application hidden window, automatically created
   * and maintained by this AppShellService.
   * @param aResult the hidden window.  Do not unhide hidden window.
   *                Do not taunt hidden window.
   */
  /* readonly attribute nsIXULWindow hiddenWindow; */
  nsresult GetHiddenWindow(nsIXULWindow  *aHiddenWindow);

  /**
   * Return the (singleton) application hidden window, automatically created
   * and maintained by this AppShellService.
   * @param aResult the hidden window.  Do not unhide hidden window.
   *                Do not taunt hidden window.
   */
  /* readonly attribute nsIDOMWindowInternal hiddenDOMWindow; */
  nsresult GetHiddenDOMWindow(nsIDOMWindowInternal  *aHiddenDOMWindow);

  /**
   * Return the (singleton) application hidden window as an nsIDOMWindowInternal,
   * and, the corresponding JavaScript context pointer.  This is useful
   * if you'd like to subsequently call OpenDialog on the hidden window.
   * @aHiddenDOMWindow the hidden window QI'd to type nsIDOMWindowInternal
   * @aJSContext       the corresponding JavaScript context
   */
  /* [noscript] void getHiddenWindowAndJSContext (out nsIDOMWindowInternal aHiddenDOMWindow, out JSContext aJSContext); */
  nsresult GetHiddenWindowAndJSContext(nsIDOMWindowInternal *aHiddenDOMWindow, JSContext * *aJSContext);

  /**
   * Add a window to the application's registry of windows.  These windows
   * are generally shown in the Windows taskbar, and the application
   * knows it can't quit until it's out of registered windows.
   * @param aWindow the window to register
   * @note When this method is successful, it fires the global notification
   *       "xul-window-registered"
   */
  /* void registerTopLevelWindow (in nsIXULWindow aWindow); */
  nsresult RegisterTopLevelWindow(nsIXULWindow aWindow);

  /**
   * Remove a window from the application's window registry. Note that
   * this method won't automatically attempt to quit the app when
   * the last window is unregistered. For that, see Quit().
   * @param aWindow you see the pattern
   */
  /* void unregisterTopLevelWindow (in nsIXULWindow aWindow); */
  nsresult UnregisterTopLevelWindow(nsIXULWindow aWindow);

  /**
   * The appshell service needs to be informed of modal XUL windows currently
   * open. Call this method as a window becomes modal or as it becomes
   * nonmodal.
   * @param aWindow no surprises here
   * @param aModal true if aWindow is becoming modal
   *               false if aWindow is becoming nonmodal (or being closed)
   */
  /* void topLevelWindowIsModal (in nsIXULWindow aWindow, in boolean aModal); */
  nsresult TopLevelWindowIsModal(nsIXULWindow aWindow, PRBool aModal);

}

