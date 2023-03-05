/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIChromeRegistrySea.idl
 */

module mozilla.xpcom.nsIChromeRegistrySea;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIChromeRegistry;


/* starting interface:    nsIChromeRegistrySea */
const char[] NS_ICHROMEREGISTRYSEA_IID_STR = "382370d0-a7cd-47ae-aa4e-af74f5edf652";

const nsIID NS_ICHROMEREGISTRYSEA_IID= 
  {0x382370d0, 0xa7cd, 0x47ae, 
    [ 0xaa, 0x4e, 0xaf, 0x74, 0xf5, 0xed, 0xf6, 0x52 ]};

extern(Windows)
interface nsIChromeRegistrySea : nsIXULChromeRegistry {
  static const char[] IID_STR = NS_ICHROMEREGISTRYSEA_IID_STR;
  static const nsIID IID = NS_ICHROMEREGISTRYSEA_IID;

  /* void selectSkin (in ACString skinName, in boolean useProfile); */
  nsresult SelectSkin(nsACString * skinName, PRBool useProfile);

  /* void selectLocale (in ACString localeName, in boolean useProfile); */
  nsresult SelectLocale(nsACString * localeName, PRBool useProfile);

  /* void deselectSkin (in ACString skinName, in boolean useProfile); */
  nsresult DeselectSkin(nsACString * skinName, PRBool useProfile);

  /* void deselectLocale (in ACString localeName, in boolean useProfile); */
  nsresult DeselectLocale(nsACString * localeName, PRBool useProfile);

  /* PRInt32 isSkinSelected (in ACString skinName, in boolean useProfile); */
  nsresult IsSkinSelected(nsACString * skinName, PRBool useProfile, PRInt32 *_retval);

  /* PRInt32 isLocaleSelected (in ACString localeName, in boolean useProfile); */
  nsresult IsLocaleSelected(nsACString * localeName, PRBool useProfile, PRInt32 *_retval);

  /* void selectLocaleForProfile (in ACString localeName, in wstring profilePath); */
  nsresult SelectLocaleForProfile(nsACString * localeName, PRUnichar *profilePath);

  /* void selectSkinForProfile (in ACString skinName, in wstring profilePath); */
  nsresult SelectSkinForProfile(nsACString * skinName, PRUnichar *profilePath);

  /* void setRuntimeProvider (in boolean runtimeProvider); */
  nsresult SetRuntimeProvider(PRBool runtimeProvider);

  /* boolean checkThemeVersion (in ACString skinName); */
  nsresult CheckThemeVersion(nsACString * skinName, PRBool *_retval);

  /* boolean checkLocaleVersion (in ACString localeName); */
  nsresult CheckLocaleVersion(nsACString * localeName, PRBool *_retval);

  /* void selectSkinForPackage (in ACString skinName, in wstring packageName, in boolean useProfile); */
  nsresult SelectSkinForPackage(nsACString * skinName, PRUnichar *packageName, PRBool useProfile);

  /* void selectLocaleForPackage (in ACString localeName, in wstring packageName, in boolean useProfile); */
  nsresult SelectLocaleForPackage(nsACString * localeName, PRUnichar *packageName, PRBool useProfile);

  /* void deselectSkinForPackage (in ACString skinName, in wstring packageName, in boolean useProfile); */
  nsresult DeselectSkinForPackage(nsACString * skinName, PRUnichar *packageName, PRBool useProfile);

  /* void deselectLocaleForPackage (in ACString localeName, in wstring packageName, in boolean useProfile); */
  nsresult DeselectLocaleForPackage(nsACString * localeName, PRUnichar *packageName, PRBool useProfile);

  /* boolean isSkinSelectedForPackage (in ACString skinName, in wstring packageName, in boolean useProfile); */
  nsresult IsSkinSelectedForPackage(nsACString * skinName, PRUnichar *packageName, PRBool useProfile, PRBool *_retval);

  /* boolean isLocaleSelectedForPackage (in ACString localeName, in wstring packageName, in boolean useProfile); */
  nsresult IsLocaleSelectedForPackage(nsACString * localeName, PRUnichar *packageName, PRBool useProfile, PRBool *_retval);

  /* ACString getSelectedSkin (in ACString packageName); */
  nsresult GetSelectedSkin(nsACString * packageName, nsACString * _retval);

  /* void installSkin (in string baseURL, in boolean useProfile, in boolean allowScripts); */
  nsresult InstallSkin(char *baseURL, PRBool useProfile, PRBool allowScripts);

  /* void uninstallSkin (in ACString skinName, in boolean useProfile); */
  nsresult UninstallSkin(nsACString * skinName, PRBool useProfile);

  /* void installLocale (in string baseURL, in boolean useProfile); */
  nsresult InstallLocale(char *baseURL, PRBool useProfile);

  /* void uninstallLocale (in ACString localeName, in boolean useProfile); */
  nsresult UninstallLocale(nsACString * localeName, PRBool useProfile);

  /* void installPackage (in string baseURL, in boolean useProfile); */
  nsresult InstallPackage(char *baseURL, PRBool useProfile);

  /* void uninstallPackage (in ACString packageName, in boolean useProfile); */
  nsresult UninstallPackage(nsACString * packageName, PRBool useProfile);

  /* void setAllowOverlaysForPackage (in wstring packageName, in boolean allowOverlays); */
  nsresult SetAllowOverlaysForPackage(PRUnichar *packageName, PRBool allowOverlays);

}

