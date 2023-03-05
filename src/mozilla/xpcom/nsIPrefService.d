/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPrefService.idl
 */

module mozilla.xpcom.nsIPrefService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIPrefBranch;

public import mozilla.xpcom.nsIFile; /* forward declaration */


/* starting interface:    nsIPrefService */
const char[] NS_IPREFSERVICE_IID_STR = "decb9cc7-c08f-4ea5-be91-a8fc637ce2d2";

const nsIID NS_IPREFSERVICE_IID= 
  {0xdecb9cc7, 0xc08f, 0x4ea5, 
    [ 0xbe, 0x91, 0xa8, 0xfc, 0x63, 0x7c, 0xe2, 0xd2 ]};

/**
 * The nsIPrefService interface is the main entry point into the back end
 * preferences management library. The preference service is directly
 * responsible for the management of the preferences files and also facilitates
 * access to the preference branch object which allows the direct manipulation
 * of the preferences themselves.
 *
 * @see nsIPrefBranch
 * 
 * @status FROZEN
 */
extern(Windows)
interface nsIPrefService : nsISupports {
  static const char[] IID_STR = NS_IPREFSERVICE_IID_STR;
  static const nsIID IID = NS_IPREFSERVICE_IID;

  /**
   * Called to read in the preferences specified in a user preference file.
   *
   * @param aFile The file to be read.
   *
   * @note
   * If nsnull is passed in for the aFile parameter the default preferences
   * file(s) [prefs.js, user.js] will be read and processed.
   *
   * @return NS_OK File was read and processed.
   * @return Other File failed to read or contained invalid data.
   *
   * @see savePrefFile
   * @see nsIFile
   */
  /* void readUserPrefs (in nsIFile aFile); */
  nsresult ReadUserPrefs(nsIFile aFile);

  /**
   * Called to completely flush and re-initialize the preferences system.
   *
   * @return NS_OK The preference service was re-initialized correctly.
   * @return Other The preference service failed to restart correctly.
   */
  /* void resetPrefs (); */
  nsresult ResetPrefs();

  /**
   * Called to reset all preferences with user set values back to the
   * application default values.
   *
   * @return NS_OK Always.
   */
  /* void resetUserPrefs (); */
  nsresult ResetUserPrefs();

  /**
   * Called to write current preferences state to a file.
   *
   * @param aFile The file to be written.
   *
   * @note
   * If nsnull is passed in for the aFile parameter the preference data is
   * written out to the current preferences file (usually prefs.js.)
   *
   * @return NS_OK File was written.
   * @return Other File failed to write.
   *
   * @see readUserPrefs
   * @see nsIFile
   */
  /* void savePrefFile (in nsIFile aFile); */
  nsresult SavePrefFile(nsIFile aFile);

  /**
   * Call to get a Preferences "Branch" which accesses user preference data.
   * Using a Set method on this object will always create or set a user
   * preference value. When using a Get method a user set value will be
   * returned if one exists, otherwise a default value will be returned.
   *
   * @param aPrefRoot The preference "root" on which to base this "branch".
   *                  For example, if the root "browser.startup." is used, the
   *                  branch will be able to easily access the preferences
   *                  "browser.startup.page", "browser.startup.homepage", or
   *                  "browser.startup.homepage_override" by simply requesting
   *                  "page", "homepage", or "homepage_override". nsnull or "" 
   *                  may be used to access to the entire preference "tree".
   *
   * @return nsIPrefBranch The object representing the requested branch.
   *
   * @see getDefaultBranch
   */
  /* nsIPrefBranch getBranch (in string aPrefRoot); */
  nsresult GetBranch(char *aPrefRoot, nsIPrefBranch *_retval);

  /**
   * Call to get a Preferences "Branch" which accesses only the default 
   * preference data. Using a Set method on this object will always create or
   * set a default preference value. When using a Get method a default value
   * will always be returned.
   *
   * @param aPrefRoot The preference "root" on which to base this "branch".
   *                  For example, if the root "browser.startup." is used, the
   *                  branch will be able to easily access the preferences
   *                  "browser.startup.page", "browser.startup.homepage", or
   *                  "browser.startup.homepage_override" by simply requesting
   *                  "page", "homepage", or "homepage_override". nsnull or "" 
   *                  may be used to access to the entire preference "tree".
   *
   * @note
   * Few consumers will want to create default branch objects. Many of the
   * branch methods do nothing on a default branch because the operations only
   * make sense when applied to user set preferences.
   *
   * @return nsIPrefBranch The object representing the requested default branch.
   *
   * @see getBranch
   */
  /* nsIPrefBranch getDefaultBranch (in string aPrefRoot); */
  nsresult GetDefaultBranch(char *aPrefRoot, nsIPrefBranch *_retval);

}

