/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProfileInternal.idl
 */

module mozilla.dxpcom.nsIProfileInternalD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIProfileInternal;


public import mozilla.dxpcom.nsIProfileInternalD;

public import mozilla.xpcom.nsIProfile;
public import mozilla.dxpcom.nsIProfileD;

public import mozilla.xpcom.nsICmdLineService;

public import mozilla.dxpcom.nsICmdLineServiceD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;

public import mozilla.xpcom.nsILocalFile;

public import mozilla.dxpcom.nsILocalFileD;

public import mozilla.xpcom.nsISupportsArray;

public import mozilla.dxpcom.nsISupportsArrayD;


/* starting wrapper class:    nsIProfileInternal */
class nsIProfileInternalD : public nsIProfileD {

  static const nsIID IID = NS_IPROFILEINTERNAL_IID;


  alias nsIProfileInternal InnerType;

  this(nsIProfileInternal intr){
    super(intr);
    this.inner = intr;
  }

  nsIProfileInternal opCast() {
    return inner;
  }

  void opAssign(nsIProfileInternal value) {
    inner = value;
  }

  /**
     * Starts up the profile manager
     *
     * @param cmdLine       Arguments passed from command line - can be null
     * @param canInteract   Whether dialogs can be shown during startup
     *                      If false and dialogs would need to be shown, returns NS_ERROR_PROFILE_REQUIRES_INTERRACTION
     */
  /* [noscript] void startupWithArgs (in nsICmdLineService cmdLine, in boolean canInteract); */
  void StartupWithArgs(nsICmdLineServiceD cmdLine, PRBool canInteract){
    nsresult __result = inner.StartupWithArgs(cmdLine ? cast(nsICmdLineService)cmdLine : null, canInteract);
    CheckException(__result);
  }

  /**
     * Returns TRUE if in the midst of startupWithArgs
     */
  /* [noscript] readonly attribute boolean isStartingUp; */
  PRBool IsStartingUp(){
    PRBool value;
    nsresult __result = inner.GetIsStartingUp(&value);
    CheckException(__result);
    return value;
  }

  /* long get4xProfileCount (); */
  PRInt32 Get4xProfileCount(){
    PRInt32 _retval;
    nsresult __result = inner.Get4xProfileCount(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
    * The following values are used with getProfileListX
    *
    * LIST_ONLY_NEW     - the list will contain only migrated profiles
    * LIST_ONLY_OLD     - the list will contain only un-migrated profiles
    * LIST_ALL          - the list will contain all profiles
    * LIST_FOR_IMPORT   - the list is generated from 4.x registry and contains
    *                     all the 4.x profiles
    *                     do not use this except from the import module
    * 
    */
  enum { LIST_ONLY_NEW = 1U }

  enum { LIST_ONLY_OLD = 2U }

  enum { LIST_ALL = 3U }

  enum { LIST_FOR_IMPORT = 4U }

  /* void getProfileListX (in unsigned long which, out unsigned long length, [array, size_is (length), retval] out wstring profileNames); */
  void GetProfileListX(PRUint32 which, out PRUint32 length, out PRUnichar**profileNames){
    nsresult __result = inner.GetProfileListX(which, &length, &profileNames);
    CheckException(__result);
  }

  /* void migrateProfileInfo (); */
  void MigrateProfileInfo(){
    nsresult __result = inner.MigrateProfileInfo();
    CheckException(__result);
  }

  /* void migrateAllProfiles (); */
  void MigrateAllProfiles(){
    nsresult __result = inner.MigrateAllProfiles();
    CheckException(__result);
  }

  /* void migrateProfile (in wstring profileName); */
  void MigrateProfile(PRUnichar*profileName){
    nsresult __result = inner.MigrateProfile(profileName);
    CheckException(__result);
  }

  /* void remigrateProfile (in wstring profileName); */
  void RemigrateProfile(PRUnichar*profileName){
    nsresult __result = inner.RemigrateProfile(profileName);
    CheckException(__result);
  }

  /* void forgetCurrentProfile (); */
  void ForgetCurrentProfile(){
    nsresult __result = inner.ForgetCurrentProfile();
    CheckException(__result);
  }

  /* void createDefaultProfile (); */
  void CreateDefaultProfile(){
    nsresult __result = inner.CreateDefaultProfile();
    CheckException(__result);
  }

  /**
     * Returns the actual profile directory
     */
  /* nsIFile getProfileDir (in wstring profileName); */
  nsIFileD  GetProfileDir(PRUnichar*profileName){
    nsIFile _retval;
    nsresult __result = inner.GetProfileDir(profileName, &_retval);
    CheckException(__result);
    return new nsIFileD(_retval);
  }

  /**
     * Returns the path to a profile which can be shown to the user.
     * If the actual profile directory is salted, returns the unsalted parent.
     * This is the directory which will be deleted by deleteProfile(name, true).
     */
  /* wstring getProfilePath (in wstring profileName); */
  PRUnichar* GetProfilePath(PRUnichar*profileName){
    PRUnichar* _retval;
    nsresult __result = inner.GetProfilePath(profileName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Returns a profile directory of the importType. The path will point to 
     * the 4.x profile directory. Should be used only from the import module.
     */
  /* nsILocalFile getOriginalProfileDir (in wstring profileName); */
  nsILocalFileD  GetOriginalProfileDir(PRUnichar*profileName){
    nsILocalFile _retval;
    nsresult __result = inner.GetOriginalProfileDir(profileName, &_retval);
    CheckException(__result);
    return new nsILocalFileD(_retval);
  }

  /**
     * Returns the date on which a profile was last used.
     * value is in milliseconds since midnight Jan 1, 1970 GMT (same as nsIFile)
     */
  /* PRInt64 getProfileLastModTime (in wstring profileName); */
  PRInt64 GetProfileLastModTime(PRUnichar*profileName){
    PRInt64 _retval;
    nsresult __result = inner.GetProfileLastModTime(profileName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* attribute boolean automigrate; */
  PRBool Automigrate(){
    PRBool value;
    nsresult __result = inner.GetAutomigrate(&value);
    CheckException(__result);
    return value;
  }
  void Automigrate(PRBool aAutomigrate){
    nsresult __result = inner.SetAutomigrate(aAutomigrate);
    CheckException(__result);
  }

  /* readonly attribute nsIFile defaultProfileParentDir; */
  nsIFileD  DefaultProfileParentDir(){
    nsIFile value;
    nsresult __result = inner.GetDefaultProfileParentDir(&value);
    CheckException(__result);
    return new nsIFileD(value);
  }

  /* readonly attribute wstring firstProfile; */
  PRUnichar* FirstProfile(){
    PRUnichar* value;
    nsresult __result = inner.GetFirstProfile(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Affects startup behavior when there are multiple profiles.
     *  If FALSE, the profile selection dialog will be shown.
     *  If TRUE, the last used profile will be chosen automatically.
     */
  /* attribute boolean startWithLastUsedProfile; */
  PRBool StartWithLastUsedProfile(){
    PRBool value;
    nsresult __result = inner.GetStartWithLastUsedProfile(&value);
    CheckException(__result);
    return value;
  }
  void StartWithLastUsedProfile(PRBool aStartWithLastUsedProfile){
    nsresult __result = inner.SetStartWithLastUsedProfile(aStartWithLastUsedProfile);
    CheckException(__result);
  }

  /* [noscript] void updateRegistry (in nsIFile regName); */
  void UpdateRegistry(nsIFileD regName){
    nsresult __result = inner.UpdateRegistry(regName ? cast(nsIFile)regName : null);
    CheckException(__result);
  }

  /* [noscript] void getRegStrings (in wstring profileName, out wstring regString, out wstring regName, out wstring regEmail, out wstring regOption); */
  void GetRegStrings(PRUnichar*profileName, out PRUnichar*regString, out PRUnichar*regName, out PRUnichar*regEmail, out PRUnichar*regOption){
    nsresult __result = inner.GetRegStrings(profileName, &regString, &regName, &regEmail, &regOption);
    CheckException(__result);
  }

  /* [noscript] void setRegStrings (in wstring profileName, in wstring regString, in wstring regName, in wstring regEmail, in wstring regOption); */
  void SetRegStrings(PRUnichar*profileName, PRUnichar*regString, PRUnichar*regName, PRUnichar*regEmail, PRUnichar*regOption){
    nsresult __result = inner.SetRegStrings(profileName, regString, regName, regEmail, regOption);
    CheckException(__result);
  }

  /* [noscript] string isRegStringSet (in wstring profileName); */
  char* IsRegStringSet(PRUnichar*profileName){
    char* _retval;
    nsresult __result = inner.IsRegStringSet(profileName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void createNewProfileWithLocales (in wstring profileName, in wstring nativeProfileDir, in wstring UILocale, in wstring contentLocale, in boolean useExistingDir); */
  void CreateNewProfileWithLocales(PRUnichar*profileName, PRUnichar*nativeProfileDir, PRUnichar*UILocale, PRUnichar*contentLocale, PRBool useExistingDir){
    nsresult __result = inner.CreateNewProfileWithLocales(profileName, nativeProfileDir, UILocale, contentLocale, useExistingDir);
    CheckException(__result);
  }

  /**
    * The remaining methods are deprecated. DO NOT USE THEM.
    */
  /* boolean isCurrentProfileAvailable (); */
  PRBool IsCurrentProfileAvailable(){
    PRBool _retval;
    nsresult __result = inner.IsCurrentProfileAvailable(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] void getCurrentProfileDir (out nsIFile profileDir); */
  void GetCurrentProfileDir(out nsIFileD profileDir){
    nsIFile _profileDir;
    nsresult __result = inner.GetCurrentProfileDir(&_profileDir);
    CheckException(__result);
    profileDir = _profileDir ? new nsIFileD(_profileDir) : null;
  }

private:
  nsIProfileInternal inner;

}

