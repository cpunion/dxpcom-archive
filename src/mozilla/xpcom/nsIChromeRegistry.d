/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIChromeRegistry.idl
 */

module mozilla.xpcom.nsIChromeRegistry;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    nsIChromeRegistry */
const char[] NS_ICHROMEREGISTRY_IID_STR = "68389281-f6d0-4533-841d-344a2018140c";

const nsIID NS_ICHROMEREGISTRY_IID= 
  {0x68389281, 0xf6d0, 0x4533, 
    [ 0x84, 0x1d, 0x34, 0x4a, 0x20, 0x18, 0x14, 0x0c ]};

extern(Windows)
interface nsIChromeRegistry : nsISupports {
  static const char[] IID_STR = NS_ICHROMEREGISTRY_IID_STR;
  static const nsIID IID = NS_ICHROMEREGISTRY_IID;

  enum { NONE = 0 };

  enum { PARTIAL = 1 };

  enum { FULL = 2 };

  /**
   * Resolve a chrome URL to an loadable URI using the information in the
   * registry. Does not modify aChromeURL.
   *
   * Chrome URLs are allowed to be specified in "shorthand", leaving the
   * "file" portion off. In that case, the URL is expanded to:
   *
   *   chrome://package/provider/package.ext
   *
   * where "ext" is:
   *
   *   "xul" for a "content" package,
   *   "css" for a "skin" package, and
   *   "dtd" for a "locale" package.
   *
   * @param aChromeURL the URL that is to be converted.
   */
  /* nsIURI convertChromeURL (in nsIURI aChromeURL); */
  nsresult ConvertChromeURL(nsIURI aChromeURL, nsIURI *_retval);

  /**
   * refresh the chrome list at runtime, looking for new packages/etc
   */
  /* void checkForNewChrome (); */
  nsresult CheckForNewChrome();

}


/* starting interface:    nsIXULChromeRegistry */
const char[] NS_IXULCHROMEREGISTRY_IID_STR = "3e51f40b-b4b0-4e60-ac45-6c63477ebe41";

const nsIID NS_IXULCHROMEREGISTRY_IID= 
  {0x3e51f40b, 0xb4b0, 0x4e60, 
    [ 0xac, 0x45, 0x6c, 0x63, 0x47, 0x7e, 0xbe, 0x41 ]};

extern(Windows)
interface nsIXULChromeRegistry : nsIChromeRegistry {
  static const char[] IID_STR = NS_IXULCHROMEREGISTRY_IID_STR;
  static const nsIID IID = NS_IXULCHROMEREGISTRY_IID;

  /* void reloadChrome (); */
  nsresult ReloadChrome();

  /* ACString getSelectedLocale (in ACString packageName); */
  nsresult GetSelectedLocale(nsACString * packageName, nsACString * _retval);

  /* void refreshSkins (); */
  nsresult RefreshSkins();

  /**
   * Installable skin XBL is not always granted the same privileges as other
   * chrome. This asks the chrome registry whether scripts are allowed to be
   * run for a particular chrome URI. Do not pass non-chrome URIs to this
   * method.
   */
  /* boolean allowScriptsForPackage (in nsIURI url); */
  nsresult AllowScriptsForPackage(nsIURI url, PRBool *_retval);

}

