/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIChromeRegistrySea.idl
 */

module mozilla.dxpcom.nsIChromeRegistrySeaD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIChromeRegistrySea;


public import mozilla.dxpcom.nsIChromeRegistrySeaD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIChromeRegistry;
public import mozilla.dxpcom.nsIChromeRegistryD;


/* starting wrapper class:    nsIChromeRegistrySea */
class nsIChromeRegistrySeaD : public nsIXULChromeRegistryD {

  static const nsIID IID = NS_ICHROMEREGISTRYSEA_IID;


  alias nsIChromeRegistrySea InnerType;

  this(nsIChromeRegistrySea intr){
    super(intr);
    this.inner = intr;
  }

  nsIChromeRegistrySea opCast() {
    return inner;
  }

  void opAssign(nsIChromeRegistrySea value) {
    inner = value;
  }

  /* void selectSkin (in ACString skinName, in boolean useProfile); */
  void SelectSkin(char[] skinName, PRBool useProfile){
    scope auto _skinName = new ACString(skinName);
    nsresult __result = inner.SelectSkin(cast(nsACString*)_skinName, useProfile);
    CheckException(__result);
  }

  /* void selectLocale (in ACString localeName, in boolean useProfile); */
  void SelectLocale(char[] localeName, PRBool useProfile){
    scope auto _localeName = new ACString(localeName);
    nsresult __result = inner.SelectLocale(cast(nsACString*)_localeName, useProfile);
    CheckException(__result);
  }

  /* void deselectSkin (in ACString skinName, in boolean useProfile); */
  void DeselectSkin(char[] skinName, PRBool useProfile){
    scope auto _skinName = new ACString(skinName);
    nsresult __result = inner.DeselectSkin(cast(nsACString*)_skinName, useProfile);
    CheckException(__result);
  }

  /* void deselectLocale (in ACString localeName, in boolean useProfile); */
  void DeselectLocale(char[] localeName, PRBool useProfile){
    scope auto _localeName = new ACString(localeName);
    nsresult __result = inner.DeselectLocale(cast(nsACString*)_localeName, useProfile);
    CheckException(__result);
  }

  /* PRInt32 isSkinSelected (in ACString skinName, in boolean useProfile); */
  PRInt32 IsSkinSelected(char[] skinName, PRBool useProfile){
    scope auto _skinName = new ACString(skinName);
    PRInt32 _retval;
    nsresult __result = inner.IsSkinSelected(cast(nsACString*)_skinName, useProfile, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRInt32 isLocaleSelected (in ACString localeName, in boolean useProfile); */
  PRInt32 IsLocaleSelected(char[] localeName, PRBool useProfile){
    scope auto _localeName = new ACString(localeName);
    PRInt32 _retval;
    nsresult __result = inner.IsLocaleSelected(cast(nsACString*)_localeName, useProfile, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void selectLocaleForProfile (in ACString localeName, in wstring profilePath); */
  void SelectLocaleForProfile(char[] localeName, PRUnichar*profilePath){
    scope auto _localeName = new ACString(localeName);
    nsresult __result = inner.SelectLocaleForProfile(cast(nsACString*)_localeName, profilePath);
    CheckException(__result);
  }

  /* void selectSkinForProfile (in ACString skinName, in wstring profilePath); */
  void SelectSkinForProfile(char[] skinName, PRUnichar*profilePath){
    scope auto _skinName = new ACString(skinName);
    nsresult __result = inner.SelectSkinForProfile(cast(nsACString*)_skinName, profilePath);
    CheckException(__result);
  }

  /* void setRuntimeProvider (in boolean runtimeProvider); */
  void SetRuntimeProvider(PRBool runtimeProvider){
    nsresult __result = inner.SetRuntimeProvider(runtimeProvider);
    CheckException(__result);
  }

  /* boolean checkThemeVersion (in ACString skinName); */
  PRBool CheckThemeVersion(char[] skinName){
    scope auto _skinName = new ACString(skinName);
    PRBool _retval;
    nsresult __result = inner.CheckThemeVersion(cast(nsACString*)_skinName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean checkLocaleVersion (in ACString localeName); */
  PRBool CheckLocaleVersion(char[] localeName){
    scope auto _localeName = new ACString(localeName);
    PRBool _retval;
    nsresult __result = inner.CheckLocaleVersion(cast(nsACString*)_localeName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void selectSkinForPackage (in ACString skinName, in wstring packageName, in boolean useProfile); */
  void SelectSkinForPackage(char[] skinName, PRUnichar*packageName, PRBool useProfile){
    scope auto _skinName = new ACString(skinName);
    nsresult __result = inner.SelectSkinForPackage(cast(nsACString*)_skinName, packageName, useProfile);
    CheckException(__result);
  }

  /* void selectLocaleForPackage (in ACString localeName, in wstring packageName, in boolean useProfile); */
  void SelectLocaleForPackage(char[] localeName, PRUnichar*packageName, PRBool useProfile){
    scope auto _localeName = new ACString(localeName);
    nsresult __result = inner.SelectLocaleForPackage(cast(nsACString*)_localeName, packageName, useProfile);
    CheckException(__result);
  }

  /* void deselectSkinForPackage (in ACString skinName, in wstring packageName, in boolean useProfile); */
  void DeselectSkinForPackage(char[] skinName, PRUnichar*packageName, PRBool useProfile){
    scope auto _skinName = new ACString(skinName);
    nsresult __result = inner.DeselectSkinForPackage(cast(nsACString*)_skinName, packageName, useProfile);
    CheckException(__result);
  }

  /* void deselectLocaleForPackage (in ACString localeName, in wstring packageName, in boolean useProfile); */
  void DeselectLocaleForPackage(char[] localeName, PRUnichar*packageName, PRBool useProfile){
    scope auto _localeName = new ACString(localeName);
    nsresult __result = inner.DeselectLocaleForPackage(cast(nsACString*)_localeName, packageName, useProfile);
    CheckException(__result);
  }

  /* boolean isSkinSelectedForPackage (in ACString skinName, in wstring packageName, in boolean useProfile); */
  PRBool IsSkinSelectedForPackage(char[] skinName, PRUnichar*packageName, PRBool useProfile){
    scope auto _skinName = new ACString(skinName);
    PRBool _retval;
    nsresult __result = inner.IsSkinSelectedForPackage(cast(nsACString*)_skinName, packageName, useProfile, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean isLocaleSelectedForPackage (in ACString localeName, in wstring packageName, in boolean useProfile); */
  PRBool IsLocaleSelectedForPackage(char[] localeName, PRUnichar*packageName, PRBool useProfile){
    scope auto _localeName = new ACString(localeName);
    PRBool _retval;
    nsresult __result = inner.IsLocaleSelectedForPackage(cast(nsACString*)_localeName, packageName, useProfile, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* ACString getSelectedSkin (in ACString packageName); */
  char[] GetSelectedSkin(char[] packageName){
    scope auto _packageName = new ACString(packageName);
    scope auto _retval = new ACString;
    nsresult __result = inner.GetSelectedSkin(cast(nsACString*)_packageName, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* void installSkin (in string baseURL, in boolean useProfile, in boolean allowScripts); */
  void InstallSkin(char*baseURL, PRBool useProfile, PRBool allowScripts){
    nsresult __result = inner.InstallSkin(baseURL, useProfile, allowScripts);
    CheckException(__result);
  }

  /* void uninstallSkin (in ACString skinName, in boolean useProfile); */
  void UninstallSkin(char[] skinName, PRBool useProfile){
    scope auto _skinName = new ACString(skinName);
    nsresult __result = inner.UninstallSkin(cast(nsACString*)_skinName, useProfile);
    CheckException(__result);
  }

  /* void installLocale (in string baseURL, in boolean useProfile); */
  void InstallLocale(char*baseURL, PRBool useProfile){
    nsresult __result = inner.InstallLocale(baseURL, useProfile);
    CheckException(__result);
  }

  /* void uninstallLocale (in ACString localeName, in boolean useProfile); */
  void UninstallLocale(char[] localeName, PRBool useProfile){
    scope auto _localeName = new ACString(localeName);
    nsresult __result = inner.UninstallLocale(cast(nsACString*)_localeName, useProfile);
    CheckException(__result);
  }

  /* void installPackage (in string baseURL, in boolean useProfile); */
  void InstallPackage(char*baseURL, PRBool useProfile){
    nsresult __result = inner.InstallPackage(baseURL, useProfile);
    CheckException(__result);
  }

  /* void uninstallPackage (in ACString packageName, in boolean useProfile); */
  void UninstallPackage(char[] packageName, PRBool useProfile){
    scope auto _packageName = new ACString(packageName);
    nsresult __result = inner.UninstallPackage(cast(nsACString*)_packageName, useProfile);
    CheckException(__result);
  }

  /* void setAllowOverlaysForPackage (in wstring packageName, in boolean allowOverlays); */
  void SetAllowOverlaysForPackage(PRUnichar*packageName, PRBool allowOverlays){
    nsresult __result = inner.SetAllowOverlaysForPackage(packageName, allowOverlays);
    CheckException(__result);
  }

private:
  nsIChromeRegistrySea inner;

}

