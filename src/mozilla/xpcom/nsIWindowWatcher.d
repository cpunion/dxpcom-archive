/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWindowWatcher.idl
 */

module mozilla.xpcom.nsIWindowWatcher;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMWindow; /* forward declaration */

public import mozilla.xpcom.nsIObserver; /* forward declaration */

public import mozilla.xpcom.nsIPrompt; /* forward declaration */

public import mozilla.xpcom.nsIAuthPrompt; /* forward declaration */

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */

public import mozilla.xpcom.nsIWebBrowserChrome; /* forward declaration */

public import mozilla.xpcom.nsIWindowCreator; /* forward declaration */


/* starting interface:    nsIWindowWatcher */
const char[] NS_IWINDOWWATCHER_IID_STR = "002286a8-494b-43b3-8ddd-49e3fc50622b";

const nsIID NS_IWINDOWWATCHER_IID= 
  {0x002286a8, 0x494b, 0x43b3, 
    [ 0x8d, 0xdd, 0x49, 0xe3, 0xfc, 0x50, 0x62, 0x2b ]};

extern(Windows)
interface nsIWindowWatcher : nsISupports {
  static const char[] IID_STR = NS_IWINDOWWATCHER_IID_STR;
  static const nsIID IID = NS_IWINDOWWATCHER_IID;

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
  nsresult OpenWindow(nsIDOMWindow aParent, char *aUrl, char *aName, char *aFeatures, nsISupports aArguments, nsIDOMWindow *_retval);

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
  nsresult RegisterNotification(nsIObserver aObserver);

  /** Clients of this service can register themselves to be notified
      when a window is opened or closed (added to or removed from this
      service). This method removes an aObserver from the list of objects
      to be notified.
      @param aObserver the observer to be removed.
  */
  /* void unregisterNotification (in nsIObserver aObserver); */
  nsresult UnregisterNotification(nsIObserver aObserver);

  /** Get an iterator for currently open windows in the order they were opened,
      guaranteeing that each will be visited exactly once.
      @return an enumerator which will itself return nsISupports objects which
              can be QIed to an nsIDOMWindow
  */
  /* nsISimpleEnumerator getWindowEnumerator (); */
  nsresult GetWindowEnumerator(nsISimpleEnumerator *_retval);

  /** Return a newly created nsIPrompt implementation.
      @param aParent the parent window used for posing alerts. can be null.
      @return a new nsIPrompt object
  */
  /* nsIPrompt getNewPrompter (in nsIDOMWindow aParent); */
  nsresult GetNewPrompter(nsIDOMWindow aParent, nsIPrompt *_retval);

  /** Return a newly created nsIAuthPrompt implementation.
      @param aParent the parent window used for posing alerts. can be null.
      @return a new nsIAuthPrompt object
  */
  /* nsIAuthPrompt getNewAuthPrompter (in nsIDOMWindow aParent); */
  nsresult GetNewAuthPrompter(nsIDOMWindow aParent, nsIAuthPrompt *_retval);

  /** Set the window creator callback. It must be filled in by the app.
      openWindow will use it to create new windows.
      @param creator the callback. if null, the callback will be cleared
                     and window creation capabilities lost.
  */
  /* void setWindowCreator (in nsIWindowCreator creator); */
  nsresult SetWindowCreator(nsIWindowCreator creator);

  /** Retrieve the chrome window mapped to the given DOM window. Window
      Watcher keeps a list of all top-level DOM windows currently open,
      along with their corresponding chrome interfaces. Since DOM Windows
      lack a (public) means of retrieving their corresponding chrome,
      this method will do that.
      @param aWindow the DOM window whose chrome window the caller needs
      @return the corresponding chrome window
  */
  /* nsIWebBrowserChrome getChromeForWindow (in nsIDOMWindow aWindow); */
  nsresult GetChromeForWindow(nsIDOMWindow aWindow, nsIWebBrowserChrome *_retval);

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
  nsresult GetWindowByName(PRUnichar *aTargetName, nsIDOMWindow aCurrentWindow, nsIDOMWindow *_retval);

  /** The Watcher serves as a global storage facility for the current active
      (frontmost non-floating-palette-type) window, storing and returning
      it on demand. Users must keep this attribute current, including after
      the topmost window is closed. This attribute obviously can return null
      if no windows are open, but should otherwise always return a valid
      window.
  */
  /* attribute nsIDOMWindow activeWindow; */
  nsresult GetActiveWindow(nsIDOMWindow  *aActiveWindow);
  nsresult SetActiveWindow(nsIDOMWindow  aActiveWindow);

}

