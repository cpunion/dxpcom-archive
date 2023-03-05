/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBrowserDOMWindow.idl
 */

module mozilla.dxpcom.nsIBrowserDOMWindowD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIBrowserDOMWindow;


public import mozilla.dxpcom.nsIBrowserDOMWindowD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.dxpcom.nsIDOMWindowD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIBrowserDOMWindow */
/**
 * The C++ source has access to the browser script source through
 * nsIBrowserDOMWindow. It is intended to be attached to the chrome DOMWindow
 * of a toplevel browser window (a XUL window). A DOMWindow that does not
 * happen to be a browser chrome window will simply have no access to any such
 * interface.
 */
class nsIBrowserDOMWindowD : public nsISupportsD {

  static const nsIID IID = NS_IBROWSERDOMWINDOW_IID;


  alias nsIBrowserDOMWindow InnerType;

  this(nsIBrowserDOMWindow intr){
    super(intr);
    this.inner = intr;
  }

  nsIBrowserDOMWindow opCast() {
    return inner;
  }

  void opAssign(nsIBrowserDOMWindow value) {
    inner = value;
  }

  /**
   * Values for openURI's aWhere parameter.
   */
/**
   * Do whatever the default is based on application state, user preferences,
   * and the value of the aContext parameter to openURI.
   */
  enum { OPEN_DEFAULTWINDOW = 0 }

  /**
   * Open in the "current window".  If aOpener is provided, this should be the
   * top window in aOpener's window hierarchy, but exact behavior is
   * application-dependent.  If aOpener is not provided, it's up to the
   * application to decide what constitutes a "current window".
   */
  enum { OPEN_CURRENTWINDOW = 1 }

  /**
   * Open in a new window.
   */
  enum { OPEN_NEWWINDOW = 2 }

  /**
   * Open in a new content tab in the toplevel browser window corresponding to
   * this nsIBrowserDOMWindow.
   */
  enum { OPEN_NEWTAB = 3 }

  /**
   * Values for openURI's aContext parameter.  These affect the behavior of
   * OPEN_DEFAULTWINDOW.
   */
/**
   * external link (load request from another application, xremote, etc).
   */
  enum { OPEN_EXTERNAL = 1 }

  /**
   * internal open new window
   */
  enum { OPEN_NEW = 2 }

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
  nsIDOMWindowD  OpenURI(nsIURID aURI, nsIDOMWindowD aOpener, PRInt16 aWhere, PRInt16 aContext){
    nsIDOMWindow _retval;
    nsresult __result = inner.OpenURI(aURI ? cast(nsIURI)aURI : null, aOpener ? cast(nsIDOMWindow)aOpener : null, aWhere, aContext, &_retval);
    CheckException(__result);
    return new nsIDOMWindowD(_retval);
  }

  /**
   * @param  aWindow the window to test.
   * @return whether the window is the main content window for any
   *         currently open tab in this toplevel browser window.
   */
  /* boolean isTabContentWindow (in nsIDOMWindow aWindow); */
  PRBool IsTabContentWindow(nsIDOMWindowD aWindow){
    PRBool _retval;
    nsresult __result = inner.IsTabContentWindow(aWindow ? cast(nsIDOMWindow)aWindow : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIBrowserDOMWindow inner;

}

