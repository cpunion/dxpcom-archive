/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWindowCreator2.idl
 */

module mozilla.xpcom.nsIWindowCreator2;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIWindowCreator;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIWebBrowserChrome; /* forward declaration */


/* starting interface:    nsIWindowCreator2 */
const char[] NS_IWINDOWCREATOR2_IID_STR = "f673ec81-a4b0-11d6-964b-eb5a2bf216fc";

const nsIID NS_IWINDOWCREATOR2_IID= 
  {0xf673ec81, 0xa4b0, 0x11d6, 
    [ 0x96, 0x4b, 0xeb, 0x5a, 0x2b, 0xf2, 0x16, 0xfc ]};

extern(Windows)
interface nsIWindowCreator2 : nsIWindowCreator {
  static const char[] IID_STR = NS_IWINDOWCREATOR2_IID_STR;
  static const nsIID IID = NS_IWINDOWCREATOR2_IID;

  /**
   * Definitions for contextFlags
   */
  enum { PARENT_IS_LOADING_OR_RUNNING_TIMEOUT = 1U };

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
  nsresult CreateChromeWindow2(nsIWebBrowserChrome parent, PRUint32 chromeFlags, PRUint32 contextFlags, nsIURI uri, PRBool *cancel, nsIWebBrowserChrome *_retval);

}

