/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIShellService.idl
 */

module mozilla.xpcom.nsIShellService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */

public import mozilla.xpcom.nsILocalFile; /* forward declaration */


/* starting interface:    nsIShellService */
const char[] NS_ISHELLSERVICE_IID_STR = "a4c253ab-09b9-4fb0-a61d-600621e690e4";

const nsIID NS_ISHELLSERVICE_IID= 
  {0xa4c253ab, 0x09b9, 0x4fb0, 
    [ 0xa6, 0x1d, 0x60, 0x06, 0x21, 0xe6, 0x90, 0xe4 ]};

extern(Windows)
interface nsIShellService : nsISupports {
  static const char[] IID_STR = NS_ISHELLSERVICE_IID_STR;
  static const nsIID IID = NS_ISHELLSERVICE_IID;

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
  nsresult IsDefaultBrowser(PRBool aStartupCheck, PRBool *_retval);

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
  nsresult SetDefaultBrowser(PRBool aClaimAllTypes, PRBool aForAllUsers);

  /** 
   * Used to determine whether or not to show a "Set Default Browser"
   * query dialog. This attribute is true if the application is starting
   * up and "browser.shell.checkDefaultBrowser" is true, otherwise it
   * is false.
   */
  /* attribute boolean shouldCheckDefaultBrowser; */
  nsresult GetShouldCheckDefaultBrowser(PRBool *aShouldCheckDefaultBrowser);
  nsresult SetShouldCheckDefaultBrowser(PRBool aShouldCheckDefaultBrowser);

  /** 
   * Flags for positioning/sizing of the Desktop Background image.
   */
  enum { BACKGROUND_TILE = 1 };

  enum { BACKGROUND_STRETCH = 2 };

  enum { BACKGROUND_CENTER = 3 };

  enum { BACKGROUND_FILL = 4 };

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
  nsresult SetDesktopBackground(nsIDOMElement aElement, PRInt32 aPosition);

  /**
   * Constants identifying applications that can be opened with
   * openApplication.
   */
  enum { APPLICATION_MAIL = 0 };

  enum { APPLICATION_NEWS = 1 };

  /**
   * Opens the application specified. If more than one application of the
   * given type is available on the system, the default or "preferred"
   * application is used. 
   */
  /* void openApplication (in long aApplication); */
  nsresult OpenApplication(PRInt32 aApplication);

  /** 
   * The desktop background color, visible when no background image is 
   * used, or if the background image is centered and does not fill the 
   * entire screen. A rgb value, where (r << 16 | g << 8 | b)
   */
  /* attribute unsigned long desktopBackgroundColor; */
  nsresult GetDesktopBackgroundColor(PRUint32 *aDesktopBackgroundColor);
  nsresult SetDesktopBackgroundColor(PRUint32 aDesktopBackgroundColor);

}


/* starting interface:    nsIShellService_MOZILLA_1_8_BRANCH */
const char[] NS_ISHELLSERVICE_MOZILLA_1_8_BRANCH_IID_STR = "d48f8ea2-c912-48fa-9714-10d8098f05ea";

const nsIID NS_ISHELLSERVICE_MOZILLA_1_8_BRANCH_IID= 
  {0xd48f8ea2, 0xc912, 0x48fa, 
    [ 0x97, 0x14, 0x10, 0xd8, 0x09, 0x8f, 0x05, 0xea ]};

extern(Windows)
interface nsIShellService_MOZILLA_1_8_BRANCH : nsISupports {
  static const char[] IID_STR = NS_ISHELLSERVICE_MOZILLA_1_8_BRANCH_IID_STR;
  static const nsIID IID = NS_ISHELLSERVICE_MOZILLA_1_8_BRANCH_IID;

  /**
   * Opens an application with a specific URI to load.
   * @param   application
   *          The application file (or bundle directory, on OS X)
   * @param   uri
   *          The uri to be loaded by the application
   */
  /* void openApplicationWithURI (in nsILocalFile aApplication, in ACString aURI); */
  nsresult OpenApplicationWithURI(nsILocalFile aApplication, nsACString * aURI);

}

