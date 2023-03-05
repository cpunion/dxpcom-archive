/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAppShellService.idl
 */

module mozilla.dxpcom.nsIAppShellServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAppShellService;


public import mozilla.dxpcom.nsIAppShellServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIXULWindow;

public import mozilla.dxpcom.nsIXULWindowD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIDOMWindowInternal;

public import mozilla.dxpcom.nsIDOMWindowInternalD;

public import mozilla.xpcom.nsIAppShell;

public import mozilla.dxpcom.nsIAppShellD;


/* starting wrapper class:    nsIAppShellService */
class nsIAppShellServiceD : public nsISupportsD {

  static const nsIID IID = NS_IAPPSHELLSERVICE_IID;


  alias nsIAppShellService InnerType;

  this(nsIAppShellService intr){
    super(intr);
    this.inner = intr;
  }

  nsIAppShellService opCast() {
    return inner;
  }

  void opAssign(nsIAppShellService value) {
    inner = value;
  }

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
  enum { SIZE_TO_CONTENT = -1 }

  /* nsIXULWindow createTopLevelWindow (in nsIXULWindow aParent, in nsIURI aUrl, in PRUint32 aChromeMask, in long aInitialWidth, in long aInitialHeight, in nsIAppShell aAppShell); */
  nsIXULWindowD  CreateTopLevelWindow(nsIXULWindowD aParent, nsIURID aUrl, PRUint32 aChromeMask, PRInt32 aInitialWidth, PRInt32 aInitialHeight, nsIAppShellD aAppShell){
    nsIXULWindow _retval;
    nsresult __result = inner.CreateTopLevelWindow(aParent ? cast(nsIXULWindow)aParent : null, aUrl ? cast(nsIURI)aUrl : null, aChromeMask, aInitialWidth, aInitialHeight, aAppShell ? cast(nsIAppShell)aAppShell : null, &_retval);
    CheckException(__result);
    return new nsIXULWindowD(_retval);
  }

  /* [noscript] void createHiddenWindow (in nsIAppShell aAppShell); */
  void CreateHiddenWindow(nsIAppShellD aAppShell){
    nsresult __result = inner.CreateHiddenWindow(aAppShell ? cast(nsIAppShell)aAppShell : null);
    CheckException(__result);
  }

  /* void destroyHiddenWindow (); */
  void DestroyHiddenWindow(){
    nsresult __result = inner.DestroyHiddenWindow();
    CheckException(__result);
  }

  /**
   * Return the (singleton) application hidden window, automatically created
   * and maintained by this AppShellService.
   * @param aResult the hidden window.  Do not unhide hidden window.
   *                Do not taunt hidden window.
   */
  /* readonly attribute nsIXULWindow hiddenWindow; */
  nsIXULWindowD  HiddenWindow(){
    nsIXULWindow value;
    nsresult __result = inner.GetHiddenWindow(&value);
    CheckException(__result);
    return new nsIXULWindowD(value);
  }

  /**
   * Return the (singleton) application hidden window, automatically created
   * and maintained by this AppShellService.
   * @param aResult the hidden window.  Do not unhide hidden window.
   *                Do not taunt hidden window.
   */
  /* readonly attribute nsIDOMWindowInternal hiddenDOMWindow; */
  nsIDOMWindowInternalD  HiddenDOMWindow(){
    nsIDOMWindowInternal value;
    nsresult __result = inner.GetHiddenDOMWindow(&value);
    CheckException(__result);
    return new nsIDOMWindowInternalD(value);
  }

  /**
   * Return the (singleton) application hidden window as an nsIDOMWindowInternal,
   * and, the corresponding JavaScript context pointer.  This is useful
   * if you'd like to subsequently call OpenDialog on the hidden window.
   * @aHiddenDOMWindow the hidden window QI'd to type nsIDOMWindowInternal
   * @aJSContext       the corresponding JavaScript context
   */
  /* [noscript] void getHiddenWindowAndJSContext (out nsIDOMWindowInternal aHiddenDOMWindow, out JSContext aJSContext); */
  void GetHiddenWindowAndJSContext(out nsIDOMWindowInternalD aHiddenDOMWindow, out JSContext * aJSContext){
    nsIDOMWindowInternal _aHiddenDOMWindow;
    nsresult __result = inner.GetHiddenWindowAndJSContext(&_aHiddenDOMWindow, &aJSContext);
    CheckException(__result);
    aHiddenDOMWindow = _aHiddenDOMWindow ? new nsIDOMWindowInternalD(_aHiddenDOMWindow) : null;
  }

  /**
   * Add a window to the application's registry of windows.  These windows
   * are generally shown in the Windows taskbar, and the application
   * knows it can't quit until it's out of registered windows.
   * @param aWindow the window to register
   * @note When this method is successful, it fires the global notification
   *       "xul-window-registered"
   */
  /* void registerTopLevelWindow (in nsIXULWindow aWindow); */
  void RegisterTopLevelWindow(nsIXULWindowD aWindow){
    nsresult __result = inner.RegisterTopLevelWindow(aWindow ? cast(nsIXULWindow)aWindow : null);
    CheckException(__result);
  }

  /**
   * Remove a window from the application's window registry. Note that
   * this method won't automatically attempt to quit the app when
   * the last window is unregistered. For that, see Quit().
   * @param aWindow you see the pattern
   */
  /* void unregisterTopLevelWindow (in nsIXULWindow aWindow); */
  void UnregisterTopLevelWindow(nsIXULWindowD aWindow){
    nsresult __result = inner.UnregisterTopLevelWindow(aWindow ? cast(nsIXULWindow)aWindow : null);
    CheckException(__result);
  }

  /**
   * The appshell service needs to be informed of modal XUL windows currently
   * open. Call this method as a window becomes modal or as it becomes
   * nonmodal.
   * @param aWindow no surprises here
   * @param aModal true if aWindow is becoming modal
   *               false if aWindow is becoming nonmodal (or being closed)
   */
  /* void topLevelWindowIsModal (in nsIXULWindow aWindow, in boolean aModal); */
  void TopLevelWindowIsModal(nsIXULWindowD aWindow, PRBool aModal){
    nsresult __result = inner.TopLevelWindowIsModal(aWindow ? cast(nsIXULWindow)aWindow : null, aModal);
    CheckException(__result);
  }

private:
  nsIAppShellService inner;

}

