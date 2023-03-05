/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBrowserDOMWindow.idl
 */

module mozilla.xpcom.nsIBrowserDOMWindow;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMWindow; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    nsIBrowserDOMWindow */
const char[] NS_IBROWSERDOMWINDOW_IID_STR = "af25c296-aaec-4f7f-8885-dd37a1cc0a13";

const nsIID NS_IBROWSERDOMWINDOW_IID= 
  {0xaf25c296, 0xaaec, 0x4f7f, 
    [ 0x88, 0x85, 0xdd, 0x37, 0xa1, 0xcc, 0x0a, 0x13 ]};

/**
 * The C++ source has access to the browser script source through
 * nsIBrowserDOMWindow. It is intended to be attached to the chrome DOMWindow
 * of a toplevel browser window (a XUL window). A DOMWindow that does not
 * happen to be a browser chrome window will simply have no access to any such
 * interface.
 */
extern(Windows)
interface nsIBrowserDOMWindow : nsISupports {
  static const char[] IID_STR = NS_IBROWSERDOMWINDOW_IID_STR;
  static const nsIID IID = NS_IBROWSERDOMWINDOW_IID;

  /**
   * Values for openURI's aWhere parameter.
   */
/**
   * Do whatever the default is based on application state, user preferences,
   * and the value of the aContext parameter to openURI.
   */
  enum { OPEN_DEFAULTWINDOW = 0 };

  /**
   * Open in the "current window".  If aOpener is provided, this should be the
   * top window in aOpener's window hierarchy, but exact behavior is
   * application-dependent.  If aOpener is not provided, it's up to the
   * application to decide what constitutes a "current window".
   */
  enum { OPEN_CURRENTWINDOW = 1 };

  /**
   * Open in a new window.
   */
  enum { OPEN_NEWWINDOW = 2 };

  /**
   * Open in a new content tab in the toplevel browser window corresponding to
   * this nsIBrowserDOMWindow.
   */
  enum { OPEN_NEWTAB = 3 };

  /**
   * Values for openURI's aContext parameter.  These affect the behavior of
   * OPEN_DEFAULTWINDOW.
   */
/**
   * external link (load request from another application, xremote, etc).
   */
  enum { OPEN_EXTERNAL = 1 };

  /**
   * internal open new window
   */
  enum { OPEN_NEW = 2 };

  /**
   * Load a URI
   * @param aURI the URI to open. null is allowed; it means about:blank.
   * @param aWhere see possible values described above.
   * @param aOpener window requesting the open (can be null).
   * @param aContext the context in which the URI is being opened. This
   *                 is used only when aWhere == OPEN_DEFAULTWINDOW.
   * @return the window into which the URI was opened.
  */
  /* nsIDOMWindow openURI (in nsIURI aURI, in nsIDOMWindow aOpener, in short aWhere, in short aContext); */
  nsresult OpenURI(nsIURI aURI, nsIDOMWindow aOpener, PRInt16 aWhere, PRInt16 aContext, nsIDOMWindow *_retval);

  /**
   * @param  aWindow the window to test.
   * @return whether the window is the main content window for any
   *         currently open tab in this toplevel browser window.
   */
  /* boolean isTabContentWindow (in nsIDOMWindow aWindow); */
  nsresult IsTabContentWindow(nsIDOMWindow aWindow, PRBool *_retval);

}

