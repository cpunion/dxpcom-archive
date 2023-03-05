/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWindowCreator2.idl
 */

module mozilla.dxpcom.nsIWindowCreator2D;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWindowCreator2;


public import mozilla.dxpcom.nsIWindowCreator2D;

public import mozilla.xpcom.nsIWindowCreator;
public import mozilla.dxpcom.nsIWindowCreatorD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIWebBrowserChrome;

public import mozilla.dxpcom.nsIWebBrowserChromeD;


/* starting wrapper class:    nsIWindowCreator2 */
class nsIWindowCreator2D : public nsIWindowCreatorD {

  static const nsIID IID = NS_IWINDOWCREATOR2_IID;


  alias nsIWindowCreator2 InnerType;

  this(nsIWindowCreator2 intr){
    super(intr);
    this.inner = intr;
  }

  nsIWindowCreator2 opCast() {
    return inner;
  }

  void opAssign(nsIWindowCreator2 value) {
    inner = value;
  }

  /**
   * Definitions for contextFlags
   */
  enum { PARENT_IS_LOADING_OR_RUNNING_TIMEOUT = 1U }

  /** Create a new window. Gecko will/may call this method, if made
      available to it, to create new windows.
      @param parent Parent window, if any. Null if not. The newly created
                    window should be made a child/dependent window of
                    the parent, if any (and if the concept applies
                    to the underlying OS).
      @param chromeFlags Chrome features from nsIWebBrowserChrome
      @param contextFlags Flags about the context of the window being created.
      @param uri The URL for which this window is intended. It can be null
                 or zero-length. The implementation of this interface
                 may use the URL to help determine what sort of window
                 to open or whether to cancel window creation. It will not
                 load the URL.
      @param cancel Return |true| to reject window creation. If true the
                    implementation has determined the window should not
                    be created at all. The caller should not default
                    to any possible backup scheme for creating the window.
      @return the new window. Will be null if canceled or an error occurred.
  */
  /* nsIWebBrowserChrome createChromeWindow2 (in nsIWebBrowserChrome parent, in PRUint32 chromeFlags, in PRUint32 contextFlags, in nsIURI uri, out boolean cancel); */
  nsIWebBrowserChromeD  CreateChromeWindow2(nsIWebBrowserChromeD parent, PRUint32 chromeFlags, PRUint32 contextFlags, nsIURID uri, out PRBool cancel){
    nsIWebBrowserChrome _retval;
    nsresult __result = inner.CreateChromeWindow2(parent ? cast(nsIWebBrowserChrome)parent : null, chromeFlags, contextFlags, uri ? cast(nsIURI)uri : null, &cancel, &_retval);
    CheckException(__result);
    return new nsIWebBrowserChromeD(_retval);
  }

private:
  nsIWindowCreator2 inner;

}

