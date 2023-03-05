/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebBrowserChrome.idl
 */

module mozilla.dxpcom.nsIWebBrowserChromeD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWebBrowserChrome;


public import mozilla.dxpcom.nsIWebBrowserChromeD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIWebBrowser;

public import mozilla.dxpcom.nsIWebBrowserD;

public import mozilla.xpcom.nsIDocShellTreeItem;

public import mozilla.dxpcom.nsIDocShellTreeItemD;


/* starting wrapper class:    nsIWebBrowserChrome */
/**
 * nsIWebBrowserChrome corresponds to the top-level, outermost window
 * containing an embedded Gecko web browser.
 *
 * @status FROZEN
 */
class nsIWebBrowserChromeD : public nsISupportsD {

  static const nsIID IID = NS_IWEBBROWSERCHROME_IID;


  alias nsIWebBrowserChrome InnerType;

  this(nsIWebBrowserChrome intr){
    super(intr);
    this.inner = intr;
  }

  nsIWebBrowserChrome opCast() {
    return inner;
  }

  void opAssign(nsIWebBrowserChrome value) {
    inner = value;
  }

  enum { STATUS_SCRIPT = 1U }

  enum { STATUS_SCRIPT_DEFAULT = 2U }

  enum { STATUS_LINK = 3U }

  /**
     * Called when the status text in the chrome needs to be updated.
     * @param statusType indicates what is setting the text
     * @param status status string. null is an acceptable value meaning
     *               no status.
     */
  /* void setStatus (in unsigned long statusType, in wstring status); */
  void SetStatus(PRUint32 statusType, PRUnichar*status){
    nsresult __result = inner.SetStatus(statusType, status);
    CheckException(__result);
  }

  /**
     * The currently loaded WebBrowser.  The browser chrome may be
     * told to set the WebBrowser object to a new object by setting this
     * attribute.  In this case the implementer is responsible for taking the 
     * new WebBrowser object and doing any necessary initialization or setup 
     * as if it had created the WebBrowser itself.  This includes positioning
     * setting up listeners etc.
     */
  /* attribute nsIWebBrowser webBrowser; */
  nsIWebBrowserD  WebBrowser(){
    nsIWebBrowser value;
    nsresult __result = inner.GetWebBrowser(&value);
    CheckException(__result);
    return new nsIWebBrowserD(value);
  }
  void WebBrowser(nsIWebBrowserD  aWebBrowser){
    nsIWebBrowser value;
    nsresult __result = inner.SetWebBrowser(value);
    CheckException(__result);
  }

  /**
     * Definitions for the chrome flags
     */
  enum { CHROME_DEFAULT = 1U }

  enum { CHROME_WINDOW_BORDERS = 2U }

  enum { CHROME_WINDOW_CLOSE = 4U }

  enum { CHROME_WINDOW_RESIZE = 8U }

  enum { CHROME_MENUBAR = 16U }

  enum { CHROME_TOOLBAR = 32U }

  enum { CHROME_LOCATIONBAR = 64U }

  enum { CHROME_STATUSBAR = 128U }

  enum { CHROME_PERSONAL_TOOLBAR = 256U }

  enum { CHROME_SCROLLBARS = 512U }

  enum { CHROME_TITLEBAR = 1024U }

  enum { CHROME_EXTRA = 2048U }

  enum { CHROME_WITH_SIZE = 4096U }

  enum { CHROME_WITH_POSITION = 8192U }

  enum { CHROME_WINDOW_MIN = 16384U }

  enum { CHROME_WINDOW_POPUP = 32768U }

  enum { CHROME_WINDOW_RAISED = 33554432U }

  enum { CHROME_WINDOW_LOWERED = 67108864U }

  enum { CHROME_CENTER_SCREEN = 134217728U }

  enum { CHROME_DEPENDENT = 268435456U }

  enum { CHROME_MODAL = 536870912U }

  enum { CHROME_OPENAS_DIALOG = 1073741824U }

  enum { CHROME_OPENAS_CHROME = 2147483648U }

  enum { CHROME_ALL = 4094U }

  /**
     * The chrome flags for this browser chrome. The implementation should
     * reflect the value of this attribute by hiding or showing its chrome
     * appropriately.
     */
  /* attribute unsigned long chromeFlags; */
  PRUint32 ChromeFlags(){
    PRUint32 value;
    nsresult __result = inner.GetChromeFlags(&value);
    CheckException(__result);
    return value;
  }
  void ChromeFlags(PRUint32 aChromeFlags){
    nsresult __result = inner.SetChromeFlags(aChromeFlags);
    CheckException(__result);
  }

  /**
     * Asks the implementer to destroy the window associated with this
     * WebBrowser object.
     */
  /* void destroyBrowserWindow (); */
  void DestroyBrowserWindow(){
    nsresult __result = inner.DestroyBrowserWindow();
    CheckException(__result);
  }

  /**
     * Tells the chrome to size itself such that the browser will be the 
     * specified size.
     * @param aCX new width of the browser
     * @param aCY new height of the browser
     */
  /* void sizeBrowserTo (in long aCX, in long aCY); */
  void SizeBrowserTo(PRInt32 aCX, PRInt32 aCY){
    nsresult __result = inner.SizeBrowserTo(aCX, aCY);
    CheckException(__result);
  }

  /**
     * Shows the window as a modal window.
     * @return (the function error code) the status value specified by
     *         in exitModalEventLoop.
     */
  /* void showAsModal (); */
  void ShowAsModal(){
    nsresult __result = inner.ShowAsModal();
    CheckException(__result);
  }

  /**
     * Is the window modal (that is, currently executing a modal loop)?
     * @return true if it's a modal window
     */
  /* boolean isWindowModal (); */
  PRBool IsWindowModal(){
    PRBool _retval;
    nsresult __result = inner.IsWindowModal(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Exit a modal event loop if we're in one. The implementation
     * should also exit out of the loop if the window is destroyed.
     * @param aStatus - the result code to return from showAsModal
     */
  /* void exitModalEventLoop (in nsresult aStatus); */
  void ExitModalEventLoop(nsresult aStatus){
    nsresult __result = inner.ExitModalEventLoop(aStatus);
    CheckException(__result);
  }

private:
  nsIWebBrowserChrome inner;

}

