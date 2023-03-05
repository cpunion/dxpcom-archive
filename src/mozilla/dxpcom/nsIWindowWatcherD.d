/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWindowWatcher.idl
 */

module mozilla.dxpcom.nsIWindowWatcherD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWindowWatcher;


public import mozilla.dxpcom.nsIWindowWatcherD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.dxpcom.nsIDOMWindowD;

public import mozilla.xpcom.nsIObserver;

public import mozilla.dxpcom.nsIObserverD;

public import mozilla.xpcom.nsIPrompt;

public import mozilla.dxpcom.nsIPromptD;

public import mozilla.xpcom.nsIAuthPrompt;

public import mozilla.dxpcom.nsIAuthPromptD;

public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.dxpcom.nsISimpleEnumeratorD;

public import mozilla.xpcom.nsIWebBrowserChrome;

public import mozilla.dxpcom.nsIWebBrowserChromeD;

public import mozilla.xpcom.nsIWindowCreator;

public import mozilla.dxpcom.nsIWindowCreatorD;


/* starting wrapper class:    nsIWindowWatcher */
class nsIWindowWatcherD : public nsISupportsD {

  static const nsIID IID = NS_IWINDOWWATCHER_IID;


  alias nsIWindowWatcher InnerType;

  this(nsIWindowWatcher intr){
    super(intr);
    this.inner = intr;
  }

  nsIWindowWatcher opCast() {
    return inner;
  }

  void opAssign(nsIWindowWatcher value) {
    inner = value;
  }

  /** Create a new window. It will automatically be added to our list
      (via addWindow()).
      @param aParent parent window, if any. Null if no parent.  If it is
             impossible to get to an nsIWebBrowserChrome from aParent, this
             method will effectively act as if aParent were null.
      @param aURL url to which to open the new window. Must already be
             escaped, if applicable. can be null.
      @param aName window name from JS window.open. can be null.  If a window
             with this name already exists, the openWindow call may just load
             aUrl in it (if aUrl is not null) and return it.
      @param aFeatures window features from JS window.open. can be null.
      @param aArguments extra argument(s) to the new window, to be attached
             as the |arguments| property. An nsISupportsArray will be
             unwound into multiple arguments (but not recursively!).
             can be null.
      @return the new window

      @note This method may examine the JS context stack for purposes of
            determining the security context to use for the search for a given
            window named aName.
      @note This method should try to set the default charset for the new
            window to the default charset of aParent.  This is not guaranteed,
            however.
      @note This method may dispatch a "toplevel-window-ready" notification
            via nsIObserverService if the window did not already exist.
  */
  /* nsIDOMWindow openWindow (in nsIDOMWindow aParent, in string aUrl, in string aName, in string aFeatures, in nsISupports aArguments); */
  nsIDOMWindowD  OpenWindow(nsIDOMWindowD aParent, char*aUrl, char*aName, char*aFeatures, nsISupportsD aArguments){
    nsIDOMWindow _retval;
    nsresult __result = inner.OpenWindow(aParent ? cast(nsIDOMWindow)aParent : null, aUrl, aName, aFeatures, aArguments ? cast(nsISupports)aArguments : null, &_retval);
    CheckException(__result);
    return new nsIDOMWindowD(_retval);
  }

  /** Clients of this service can register themselves to be notified
      when a window is opened or closed (added to or removed from this
      service). This method adds an aObserver to the list of objects
      to be notified.
      @param aObserver the object to be notified when windows are
                       opened or closed. Its Observe method will be
                       called with the following parameters:

      aObserver::Observe interprets its parameters so:
      aSubject the window being opened or closed, sent as an nsISupports
               which can be QIed to an nsIDOMWindow.
      aTopic   a wstring, either "domwindowopened" or "domwindowclosed".
      someData not used.
  */
  /* void registerNotification (in nsIObserver aObserver); */
  void RegisterNotification(nsIObserverD aObserver){
    nsresult __result = inner.RegisterNotification(aObserver ? cast(nsIObserver)aObserver : null);
    CheckException(__result);
  }

  /** Clients of this service can register themselves to be notified
      when a window is opened or closed (added to or removed from this
      service). This method removes an aObserver from the list of objects
      to be notified.
      @param aObserver the observer to be removed.
  */
  /* void unregisterNotification (in nsIObserver aObserver); */
  void UnregisterNotification(nsIObserverD aObserver){
    nsresult __result = inner.UnregisterNotification(aObserver ? cast(nsIObserver)aObserver : null);
    CheckException(__result);
  }

  /** Get an iterator for currently open windows in the order they were opened,
      guaranteeing that each will be visited exactly once.
      @return an enumerator which will itself return nsISupports objects which
              can be QIed to an nsIDOMWindow
  */
  /* nsISimpleEnumerator getWindowEnumerator (); */
  nsISimpleEnumeratorD  GetWindowEnumerator(){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.GetWindowEnumerator(&_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

  /** Return a newly created nsIPrompt implementation.
      @param aParent the parent window used for posing alerts. can be null.
      @return a new nsIPrompt object
  */
  /* nsIPrompt getNewPrompter (in nsIDOMWindow aParent); */
  nsIPromptD  GetNewPrompter(nsIDOMWindowD aParent){
    nsIPrompt _retval;
    nsresult __result = inner.GetNewPrompter(aParent ? cast(nsIDOMWindow)aParent : null, &_retval);
    CheckException(__result);
    return new nsIPromptD(_retval);
  }

  /** Return a newly created nsIAuthPrompt implementation.
      @param aParent the parent window used for posing alerts. can be null.
      @return a new nsIAuthPrompt object
  */
  /* nsIAuthPrompt getNewAuthPrompter (in nsIDOMWindow aParent); */
  nsIAuthPromptD  GetNewAuthPrompter(nsIDOMWindowD aParent){
    nsIAuthPrompt _retval;
    nsresult __result = inner.GetNewAuthPrompter(aParent ? cast(nsIDOMWindow)aParent : null, &_retval);
    CheckException(__result);
    return new nsIAuthPromptD(_retval);
  }

  /** Set the window creator callback. It must be filled in by the app.
      openWindow will use it to create new windows.
      @param creator the callback. if null, the callback will be cleared
                     and window creation capabilities lost.
  */
  /* void setWindowCreator (in nsIWindowCreator creator); */
  void SetWindowCreator(nsIWindowCreatorD creator){
    nsresult __result = inner.SetWindowCreator(creator ? cast(nsIWindowCreator)creator : null);
    CheckException(__result);
  }

  /** Retrieve the chrome window mapped to the given DOM window. Window
      Watcher keeps a list of all top-level DOM windows currently open,
      along with their corresponding chrome interfaces. Since DOM Windows
      lack a (public) means of retrieving their corresponding chrome,
      this method will do that.
      @param aWindow the DOM window whose chrome window the caller needs
      @return the corresponding chrome window
  */
  /* nsIWebBrowserChrome getChromeForWindow (in nsIDOMWindow aWindow); */
  nsIWebBrowserChromeD  GetChromeForWindow(nsIDOMWindowD aWindow){
    nsIWebBrowserChrome _retval;
    nsresult __result = inner.GetChromeForWindow(aWindow ? cast(nsIDOMWindow)aWindow : null, &_retval);
    CheckException(__result);
    return new nsIWebBrowserChromeD(_retval);
  }

  /**
      Retrieve an existing window (or frame).
      @param aTargetName the window name
      @param aCurrentWindow a starting point in the window hierarchy to
                            begin the search.  If null, each toplevel window
                            will be searched.

      Note: This method will search all open windows for any window or
      frame with the given window name. Make sure you understand the
      security implications of this before using this method!
  */
  /* nsIDOMWindow getWindowByName (in wstring aTargetName, in nsIDOMWindow aCurrentWindow); */
  nsIDOMWindowD  GetWindowByName(PRUnichar*aTargetName, nsIDOMWindowD aCurrentWindow){
    nsIDOMWindow _retval;
    nsresult __result = inner.GetWindowByName(aTargetName, aCurrentWindow ? cast(nsIDOMWindow)aCurrentWindow : null, &_retval);
    CheckException(__result);
    return new nsIDOMWindowD(_retval);
  }

  /** The Watcher serves as a global storage facility for the current active
      (frontmost non-floating-palette-type) window, storing and returning
      it on demand. Users must keep this attribute current, including after
      the topmost window is closed. This attribute obviously can return null
      if no windows are open, but should otherwise always return a valid
      window.
  */
  /* attribute nsIDOMWindow activeWindow; */
  nsIDOMWindowD  ActiveWindow(){
    nsIDOMWindow value;
    nsresult __result = inner.GetActiveWindow(&value);
    CheckException(__result);
    return new nsIDOMWindowD(value);
  }
  void ActiveWindow(nsIDOMWindowD  aActiveWindow){
    nsIDOMWindow value;
    nsresult __result = inner.SetActiveWindow(value);
    CheckException(__result);
  }

private:
  nsIWindowWatcher inner;

}

