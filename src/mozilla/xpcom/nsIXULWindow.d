/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXULWindow.idl
 */

module mozilla.xpcom.nsIXULWindow;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDocShell; /* forward declaration */

public import mozilla.xpcom.nsIDocShellTreeItem; /* forward declaration */

public import mozilla.xpcom.nsIAppShell; /* forward declaration */

public import mozilla.xpcom.nsIXULBrowserWindow; /* forward declaration */


/* starting interface:    nsIXULWindow */
const char[] NS_IXULWINDOW_IID_STR = "b6c2f9e1-53a0-45f2-a2b8-fe37861fe8a8";

const nsIID NS_IXULWINDOW_IID= 
  {0xb6c2f9e1, 0x53a0, 0x45f2, 
    [ 0xa2, 0xb8, 0xfe, 0x37, 0x86, 0x1f, 0xe8, 0xa8 ]};

extern(Windows)
interface nsIXULWindow : nsISupports {
  static const char[] IID_STR = NS_IXULWINDOW_IID_STR;
  static const nsIID IID = NS_IXULWINDOW_IID;

  /**
   * The docshell owning the XUL for this window.
   */
  /* readonly attribute nsIDocShell docShell; */
  nsresult GetDocShell(nsIDocShell  *aDocShell);

  /**
   * Indicates if this window is instrinsically sized.	
   */
  /* attribute boolean intrinsicallySized; */
  nsresult GetIntrinsicallySized(PRBool *aIntrinsicallySized);
  nsresult SetIntrinsicallySized(PRBool aIntrinsicallySized);

  /**
   * The primary content shell.  
   *
   * Note that this is a docshell tree item and therefore can not be assured of
   * what object it is. It could be an editor, a docshell, or a browser object.
   * Or down the road any other object that supports being a DocShellTreeItem
   * Query accordingly to determine the capabilities.
   */
  /* readonly attribute nsIDocShellTreeItem primaryContentShell; */
  nsresult GetPrimaryContentShell(nsIDocShellTreeItem  *aPrimaryContentShell);

  /**
   * The content shell specified by the supplied id.
   *
   * Note that this is a docshell tree item and therefore can not be assured of
   * what object it is.  It could be an editor, a docshell, or a browser object.
   * Or down the road any other object that supports being a DocShellTreeItem
   * Query accordingly to determine the capabilities.
   */
  /* nsIDocShellTreeItem getContentShellById (in wstring ID); */
  nsresult GetContentShellById(PRUnichar *ID, nsIDocShellTreeItem *_retval);

  /**
   * Tell this window that it has picked up a child XUL window
   * @param aChild the child window being added
   */
  /* void addChildWindow (in nsIXULWindow aChild); */
  nsresult AddChildWindow(nsIXULWindow aChild);

  /**
   * Tell this window that it has lost a child XUL window
   * @param aChild the child window being removed
   */
  /* void removeChildWindow (in nsIXULWindow aChild); */
  nsresult RemoveChildWindow(nsIXULWindow aChild);

  /**
   * Move the window to a centered position.
   * @param aRelative the window relative to which the window is moved.
   *                  See screen parameter for details. if null, the
   *                  window is centered relative to the main screen.
   * @param aScreen   PR_TRUE to center the window relative to the screen
   *                  containing aRelative. PR_FALSE to center it relative
   *                  to aRelative itself.
   * @param aAlert    PR_TRUE to move the window to an alert position,
   *                  generally centered horizontally and 1/3 down from the top.
   */
  /* void center (in nsIXULWindow aRelative, in boolean aScreen, in boolean aAlert); */
  nsresult Center(nsIXULWindow aRelative, PRBool aScreen, PRBool aAlert);

  /**
   * Shows the window as a modal window. That is, ensures that it is visible
   * and runs a local event loop, exiting only once the window has been closed.
   */
  /* void showModal (); */
  nsresult ShowModal();

  enum { lowestZ = 0U };

  enum { loweredZ = 4U };

  enum { normalZ = 5U };

  enum { raisedZ = 6U };

  enum { highestZ = 9U };

  /* attribute unsigned long zLevel; */
  nsresult GetZLevel(PRUint32 *aZLevel);
  nsresult SetZLevel(PRUint32 aZLevel);

  /**
   * contextFlags are from nsIWindowCreator2
   */
  /* attribute PRUint32 contextFlags; */
  nsresult GetContextFlags(PRUint32 *aContextFlags);
  nsresult SetContextFlags(PRUint32 aContextFlags);

  /* attribute PRUint32 chromeFlags; */
  nsresult GetChromeFlags(PRUint32 *aChromeFlags);
  nsresult SetChromeFlags(PRUint32 aChromeFlags);

  /**
   * Create a new window.
   * @param aChromeFlags see nsIWebBrowserChrome
   * @return the newly minted window
   */
  /* nsIXULWindow createNewWindow (in PRInt32 aChromeFlags, in nsIAppShell aAppShell); */
  nsresult CreateNewWindow(PRInt32 aChromeFlags, nsIAppShell aAppShell, nsIXULWindow *_retval);

  /* attribute nsIXULBrowserWindow XULBrowserWindow; */
  nsresult GetXULBrowserWindow(nsIXULBrowserWindow  *aXULBrowserWindow);
  nsresult SetXULBrowserWindow(nsIXULBrowserWindow  aXULBrowserWindow);

}

