/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIShellService.idl
 */

module mozilla.dxpcom.nsIShellServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIShellService;


public import mozilla.dxpcom.nsIShellServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;

public import mozilla.xpcom.nsILocalFile;

public import mozilla.dxpcom.nsILocalFileD;


/* starting wrapper class:    nsIShellService */
class nsIShellServiceD : public nsISupportsD {

  static const nsIID IID = NS_ISHELLSERVICE_IID;


  alias nsIShellService InnerType;

  this(nsIShellService intr){
    super(intr);
    this.inner = intr;
  }

  nsIShellService opCast() {
    return inner;
  }

  void opAssign(nsIShellService value) {
    inner = value;
  }

  /**
   * Determines whether or not Firefox is the "Default Browser."
   * This is simply whether or not Firefox is registered to handle 
   * http links. 
   * 
   * @param aStartupCheck true if this is the check being performed
   *                      by the first browser window at startup, 
   *                      false otherwise. 
   */
  /* boolean isDefaultBrowser (in boolean aStartupCheck); */
  PRBool IsDefaultBrowser(PRBool aStartupCheck){
    PRBool _retval;
    nsresult __result = inner.IsDefaultBrowser(aStartupCheck, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Registers Firefox as the "Default Browser."
   *
   * @param aClaimAllTypes Register Firefox as the handler for 
   *                       additional protocols (ftp, chrome etc)
   *                       and web documents (.html, .xhtml etc).
   * @param aForAllUsers   Whether or not Firefox should attempt
   *                       to become the default browser for all
   *                       users on a multi-user system. 
   */
  /* void setDefaultBrowser (in boolean aClaimAllTypes, in boolean aForAllUsers); */
  void SetDefaultBrowser(PRBool aClaimAllTypes, PRBool aForAllUsers){
    nsresult __result = inner.SetDefaultBrowser(aClaimAllTypes, aForAllUsers);
    CheckException(__result);
  }

  /** 
   * Used to determine whether or not to show a "Set Default Browser"
   * query dialog. This attribute is true if the application is starting
   * up and "browser.shell.checkDefaultBrowser" is true, otherwise it
   * is false.
   */
  /* attribute boolean shouldCheckDefaultBrowser; */
  PRBool ShouldCheckDefaultBrowser(){
    PRBool value;
    nsresult __result = inner.GetShouldCheckDefaultBrowser(&value);
    CheckException(__result);
    return value;
  }
  void ShouldCheckDefaultBrowser(PRBool aShouldCheckDefaultBrowser){
    nsresult __result = inner.SetShouldCheckDefaultBrowser(aShouldCheckDefaultBrowser);
    CheckException(__result);
  }

  /** 
   * Flags for positioning/sizing of the Desktop Background image.
   */
  enum { BACKGROUND_TILE = 1 }

  enum { BACKGROUND_STRETCH = 2 }

  enum { BACKGROUND_CENTER = 3 }

  enum { BACKGROUND_FILL = 4 }

  /**
     * Sets the desktop background image using either the HTML <IMG> 
     * element supplied or the background image of the element supplied.
     *
     * @param aImageElement Either a HTML <IMG> element or an element with
     *                      a background image from which to source the
     *                      background image. 
     * @param aPosition     How to place the image on the desktop
     */
  /* void setDesktopBackground (in nsIDOMElement aElement, in long aPosition); */
  void SetDesktopBackground(nsIDOMElementD aElement, PRInt32 aPosition){
    nsresult __result = inner.SetDesktopBackground(aElement ? cast(nsIDOMElement)aElement : null, aPosition);
    CheckException(__result);
  }

  /**
   * Constants identifying applications that can be opened with
   * openApplication.
   */
  enum { APPLICATION_MAIL = 0 }

  enum { APPLICATION_NEWS = 1 }

  /**
   * Opens the application specified. If more than one application of the
   * given type is available on the system, the default or "preferred"
   * application is used. 
   */
  /* void openApplication (in long aApplication); */
  void OpenApplication(PRInt32 aApplication){
    nsresult __result = inner.OpenApplication(aApplication);
    CheckException(__result);
  }

  /** 
   * The desktop background color, visible when no background image is 
   * used, or if the background image is centered and does not fill the 
   * entire screen. A rgb value, where (r << 16 | g << 8 | b)
   */
  /* attribute unsigned long desktopBackgroundColor; */
  PRUint32 DesktopBackgroundColor(){
    PRUint32 value;
    nsresult __result = inner.GetDesktopBackgroundColor(&value);
    CheckException(__result);
    return value;
  }
  void DesktopBackgroundColor(PRUint32 aDesktopBackgroundColor){
    nsresult __result = inner.SetDesktopBackgroundColor(aDesktopBackgroundColor);
    CheckException(__result);
  }

private:
  nsIShellService inner;

}


/* starting wrapper class:    nsIShellService_MOZILLA_1_8_BRANCH */
class nsIShellService_MOZILLA_1_8_BRANCHD : public nsISupportsD {

  static const nsIID IID = NS_ISHELLSERVICE_MOZILLA_1_8_BRANCH_IID;


  alias nsIShellService_MOZILLA_1_8_BRANCH InnerType;

  this(nsIShellService_MOZILLA_1_8_BRANCH intr){
    super(intr);
    this.inner = intr;
  }

  nsIShellService_MOZILLA_1_8_BRANCH opCast() {
    return inner;
  }

  void opAssign(nsIShellService_MOZILLA_1_8_BRANCH value) {
    inner = value;
  }

  /**
   * Opens an application with a specific URI to load.
   * @param   application
   *          The application file (or bundle directory, on OS X)
   * @param   uri
   *          The uri to be loaded by the application
   */
  /* void openApplicationWithURI (in nsILocalFile aApplication, in ACString aURI); */
  void OpenApplicationWithURI(nsILocalFileD aApplication, char[] aURI){
    scope auto _aURI = new ACString(aURI);
    nsresult __result = inner.OpenApplicationWithURI(aApplication ? cast(nsILocalFile)aApplication : null, cast(nsACString*)_aURI);
    CheckException(__result);
  }

private:
  nsIShellService_MOZILLA_1_8_BRANCH inner;

}

