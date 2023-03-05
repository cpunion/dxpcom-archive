/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsPIWindowWatcher.idl
 */

module mozilla.xpcom.nsPIWindowWatcher;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMWindow; /* forward declaration */

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */

public import mozilla.xpcom.nsIWebBrowserChrome; /* forward declaration */

public import mozilla.xpcom.nsIDocShellTreeItem; /* forward declaration */


/* starting interface:    nsPIWindowWatcher */
const char[] NS_PIWINDOWWATCHER_IID_STR = "3aaad312-e09d-4010-a013-78ef653dac99";

const nsIID NS_PIWINDOWWATCHER_IID= 
  {0x3aaad312, 0xe09d, 0x4010, 
    [ 0xa0, 0x13, 0x78, 0xef, 0x65, 0x3d, 0xac, 0x99 ]};

extern(Windows)
interface nsPIWindowWatcher : nsISupports {
  static const char[] IID_STR = NS_PIWINDOWWATCHER_IID_STR;
  static const nsIID IID = NS_PIWINDOWWATCHER_IID;

  /** A window has been created. Add it to our list.
      @param aWindow the window to add
      @param aChrome the corresponding chrome window. The DOM window
                     and chrome will be mapped together, and the corresponding
                     chrome can be retrieved using the (not private)
                     method getChromeForWindow. If null, any extant mapping
                     will be cleared.
  */
  /* void addWindow (in nsIDOMWindow aWindow, in nsIWebBrowserChrome aChrome); */
  nsresult AddWindow(nsIDOMWindow aWindow, nsIWebBrowserChrome aChrome);

  /** A window has been closed. Remove it from our list.
      @param aWindow the window to remove
  */
  /* void removeWindow (in nsIDOMWindow aWindow); */
  nsresult RemoveWindow(nsIDOMWindow aWindow);

  /** Like the public interface's open(), but can deal with openDialog
      style arguments.
      @param aParent parent window, if any. Null if no parent.  If it is
             impossible to get to an nsIWebBrowserChrome from aParent, this
             method will effectively act as if aParent were null.
      @param aURL url to which to open the new window. Must already be
             escaped, if applicable. can be null.
      @param aName window name from JS window.open. can be null.  If a window
             with this name already exists, the openWindow call may just load
             aUrl in it (if aUrl is not null) and return it.
      @param aFeatures window features from JS window.open. can be null.
      @param aDialog use dialog defaults (see nsIDOMWindowInternal::openDialog)
      @param argc count of argv arguments
      @param argv extra JS arguments, if any
                  (see nsIDOMWindowInternal::openDialog)
      @return the new window

      @note This method may examine the JS context stack for purposes of
            determining the security context to use for the search for a given
            window named aName.
      @note This method should try to set the default charset for the new
            window to the default charset of the document in the calling window
            (which is determined based on the JS stack and the value of
            aParent).  This is not guaranteed, however.
  */
  /* nsIDOMWindow openWindowJS (in nsIDOMWindow aParent, in string aUrl, in string aName, in string aFeatures, in boolean aDialog, in PRUint32 argc, in jsvalptr argv); */
  nsresult OpenWindowJS(nsIDOMWindow aParent, char *aUrl, char *aName, char *aFeatures, PRBool aDialog, PRUint32 argc, jsval * argv, nsIDOMWindow *_retval);

  /**
   * Find a named docshell tree item amongst all windows registered
   * with the window watcher.  This may be a subframe in some window,
   * for example.
   *
   * @param aName the name of the window.  Must not be null.
   * @param aRequestor the tree item immediately making the request.
   *        We should make sure to not recurse down into its findItemWithName
   *        method.
   * @param aOriginalRequestor the original treeitem that made the request.
   *        Used for security checks.
   * @return the tree item with aName as the name, or null if there
   *         isn't one.  "Special" names, like _self, _top, etc, will be
   *         treated specially only if aRequestor is null; in that case they
   *         will be resolved relative to the first window the windowwatcher
   *         knows about.
   * @see findItemWithName methods on nsIDocShellTreeItem and
   *      nsIDocShellTreeOwner
   */
  /* nsIDocShellTreeItem findItemWithName (in wstring aName, in nsIDocShellTreeItem aRequestor, in nsIDocShellTreeItem aOriginalRequestor); */
  nsresult FindItemWithName(PRUnichar *aName, nsIDocShellTreeItem aRequestor, nsIDocShellTreeItem aOriginalRequestor, nsIDocShellTreeItem *_retval);

}

