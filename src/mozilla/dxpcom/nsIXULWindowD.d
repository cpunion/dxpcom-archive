/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXULWindow.idl
 */

module mozilla.dxpcom.nsIXULWindowD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXULWindow;


public import mozilla.dxpcom.nsIXULWindowD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDocShell;

public import mozilla.dxpcom.nsIDocShellD;

public import mozilla.xpcom.nsIDocShellTreeItem;

public import mozilla.dxpcom.nsIDocShellTreeItemD;

public import mozilla.xpcom.nsIAppShell;

public import mozilla.dxpcom.nsIAppShellD;

public import mozilla.xpcom.nsIXULBrowserWindow;

public import mozilla.dxpcom.nsIXULBrowserWindowD;


/* starting wrapper class:    nsIXULWindow */
class nsIXULWindowD : public nsISupportsD {

  static const nsIID IID = NS_IXULWINDOW_IID;


  alias nsIXULWindow InnerType;

  this(nsIXULWindow intr){
    super(intr);
    this.inner = intr;
  }

  nsIXULWindow opCast() {
    return inner;
  }

  void opAssign(nsIXULWindow value) {
    inner = value;
  }

  /**
   * The docshell owning the XUL for this window.
   */
  /* readonly attribute nsIDocShell docShell; */
  nsIDocShellD  DocShell(){
    nsIDocShell value;
    nsresult __result = inner.GetDocShell(&value);
    CheckException(__result);
    return new nsIDocShellD(value);
  }

  /**
   * Indicates if this window is instrinsically sized.	
   */
  /* attribute boolean intrinsicallySized; */
  PRBool IntrinsicallySized(){
    PRBool value;
    nsresult __result = inner.GetIntrinsicallySized(&value);
    CheckException(__result);
    return value;
  }
  void IntrinsicallySized(PRBool aIntrinsicallySized){
    nsresult __result = inner.SetIntrinsicallySized(aIntrinsicallySized);
    CheckException(__result);
  }

  /**
   * The primary content shell.  
   *
   * Note that this is a docshell tree item and therefore can not be assured of
   * what object it is. It could be an editor, a docshell, or a browser object.
   * Or down the road any other object that supports being a DocShellTreeItem
   * Query accordingly to determine the capabilities.
   */
  /* readonly attribute nsIDocShellTreeItem primaryContentShell; */
  nsIDocShellTreeItemD  PrimaryContentShell(){
    nsIDocShellTreeItem value;
    nsresult __result = inner.GetPrimaryContentShell(&value);
    CheckException(__result);
    return new nsIDocShellTreeItemD(value);
  }

  /**
   * The content shell specified by the supplied id.
   *
   * Note that this is a docshell tree item and therefore can not be assured of
   * what object it is.  It could be an editor, a docshell, or a browser object.
   * Or down the road any other object that supports being a DocShellTreeItem
   * Query accordingly to determine the capabilities.
   */
  /* nsIDocShellTreeItem getContentShellById (in wstring ID); */
  nsIDocShellTreeItemD  GetContentShellById(PRUnichar*ID){
    nsIDocShellTreeItem _retval;
    nsresult __result = inner.GetContentShellById(ID, &_retval);
    CheckException(__result);
    return new nsIDocShellTreeItemD(_retval);
  }

  /**
   * Tell this window that it has picked up a child XUL window
   * @param aChild the child window being added
   */
  /* void addChildWindow (in nsIXULWindow aChild); */
  void AddChildWindow(nsIXULWindowD aChild){
    nsresult __result = inner.AddChildWindow(aChild ? cast(nsIXULWindow)aChild : null);
    CheckException(__result);
  }

  /**
   * Tell this window that it has lost a child XUL window
   * @param aChild the child window being removed
   */
  /* void removeChildWindow (in nsIXULWindow aChild); */
  void RemoveChildWindow(nsIXULWindowD aChild){
    nsresult __result = inner.RemoveChildWindow(aChild ? cast(nsIXULWindow)aChild : null);
    CheckException(__result);
  }

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
  void Center(nsIXULWindowD aRelative, PRBool aScreen, PRBool aAlert){
    nsresult __result = inner.Center(aRelative ? cast(nsIXULWindow)aRelative : null, aScreen, aAlert);
    CheckException(__result);
  }

  /**
   * Shows the window as a modal window. That is, ensures that it is visible
   * and runs a local event loop, exiting only once the window has been closed.
   */
  /* void showModal (); */
  void ShowModal(){
    nsresult __result = inner.ShowModal();
    CheckException(__result);
  }

  enum { lowestZ = 0U }

  enum { loweredZ = 4U }

  enum { normalZ = 5U }

  enum { raisedZ = 6U }

  enum { highestZ = 9U }

  /* attribute unsigned long zLevel; */
  PRUint32 ZLevel(){
    PRUint32 value;
    nsresult __result = inner.GetZLevel(&value);
    CheckException(__result);
    return value;
  }
  void ZLevel(PRUint32 aZLevel){
    nsresult __result = inner.SetZLevel(aZLevel);
    CheckException(__result);
  }

  /**
   * contextFlags are from nsIWindowCreator2
   */
  /* attribute PRUint32 contextFlags; */
  PRUint32 ContextFlags(){
    PRUint32 value;
    nsresult __result = inner.GetContextFlags(&value);
    CheckException(__result);
    return value;
  }
  void ContextFlags(PRUint32 aContextFlags){
    PRUint32 value;
    nsresult __result = inner.SetContextFlags(value);
    CheckException(__result);
  }

  /* attribute PRUint32 chromeFlags; */
  PRUint32 ChromeFlags(){
    PRUint32 value;
    nsresult __result = inner.GetChromeFlags(&value);
    CheckException(__result);
    return value;
  }
  void ChromeFlags(PRUint32 aChromeFlags){
    PRUint32 value;
    nsresult __result = inner.SetChromeFlags(value);
    CheckException(__result);
  }

  /**
   * Create a new window.
   * @param aChromeFlags see nsIWebBrowserChrome
   * @return the newly minted window
   */
  /* nsIXULWindow createNewWindow (in PRInt32 aChromeFlags, in nsIAppShell aAppShell); */
  nsIXULWindowD  CreateNewWindow(PRInt32 aChromeFlags, nsIAppShellD aAppShell){
    nsIXULWindow _retval;
    nsresult __result = inner.CreateNewWindow(aChromeFlags, aAppShell ? cast(nsIAppShell)aAppShell : null, &_retval);
    CheckException(__result);
    return new nsIXULWindowD(_retval);
  }

  /* attribute nsIXULBrowserWindow XULBrowserWindow; */
  nsIXULBrowserWindowD  XULBrowserWindow(){
    nsIXULBrowserWindow value;
    nsresult __result = inner.GetXULBrowserWindow(&value);
    CheckException(__result);
    return new nsIXULBrowserWindowD(value);
  }
  void XULBrowserWindow(nsIXULBrowserWindowD  aXULBrowserWindow){
    nsIXULBrowserWindow value;
    nsresult __result = inner.SetXULBrowserWindow(value);
    CheckException(__result);
  }

private:
  nsIXULWindow inner;

}

