/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIChromeRegistry.idl
 */

module mozilla.dxpcom.nsIChromeRegistryD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIChromeRegistry;


public import mozilla.dxpcom.nsIChromeRegistryD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIChromeRegistry */
class nsIChromeRegistryD : public nsISupportsD {

  static const nsIID IID = NS_ICHROMEREGISTRY_IID;


  alias nsIChromeRegistry InnerType;

  this(nsIChromeRegistry intr){
    super(intr);
    this.inner = intr;
  }

  nsIChromeRegistry opCast() {
    return inner;
  }

  void opAssign(nsIChromeRegistry value) {
    inner = value;
  }

  enum { NONE = 0 }

  enum { PARTIAL = 1 }

  enum { FULL = 2 }

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
  nsIURID  ConvertChromeURL(nsIURID aChromeURL){
    nsIURI _retval;
    nsresult __result = inner.ConvertChromeURL(aChromeURL ? cast(nsIURI)aChromeURL : null, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /**
   * refresh the chrome list at runtime, looking for new packages/etc
   */
  /* void checkForNewChrome (); */
  void CheckForNewChrome(){
    nsresult __result = inner.CheckForNewChrome();
    CheckException(__result);
  }

private:
  nsIChromeRegistry inner;

}


/* starting wrapper class:    nsIXULChromeRegistry */
class nsIXULChromeRegistryD : public nsIChromeRegistryD {

  static const nsIID IID = NS_IXULCHROMEREGISTRY_IID;


  alias nsIXULChromeRegistry InnerType;

  this(nsIXULChromeRegistry intr){
    super(intr);
    this.inner = intr;
  }

  nsIXULChromeRegistry opCast() {
    return inner;
  }

  void opAssign(nsIXULChromeRegistry value) {
    inner = value;
  }

  /* void reloadChrome (); */
  void ReloadChrome(){
    nsresult __result = inner.ReloadChrome();
    CheckException(__result);
  }

  /* ACString getSelectedLocale (in ACString packageName); */
  char[] GetSelectedLocale(char[] packageName){
    scope auto _packageName = new ACString(packageName);
    scope auto _retval = new ACString;
    nsresult __result = inner.GetSelectedLocale(cast(nsACString*)_packageName, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* void refreshSkins (); */
  void RefreshSkins(){
    nsresult __result = inner.RefreshSkins();
    CheckException(__result);
  }

  /**
   * Installable skin XBL is not always granted the same privileges as other
   * chrome. This asks the chrome registry whether scripts are allowed to be
   * run for a particular chrome URI. Do not pass non-chrome URIs to this
   * method.
   */
  /* boolean allowScriptsForPackage (in nsIURI url); */
  PRBool AllowScriptsForPackage(nsIURID url){
    PRBool _retval;
    nsresult __result = inner.AllowScriptsForPackage(url ? cast(nsIURI)url : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIXULChromeRegistry inner;

}

