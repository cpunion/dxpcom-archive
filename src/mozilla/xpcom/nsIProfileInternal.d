/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProfileInternal.idl
 */

module mozilla.xpcom.nsIProfileInternal;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIProfile;

public import mozilla.xpcom.nsICmdLineService; /* forward declaration */

public import mozilla.xpcom.nsIFile; /* forward declaration */

public import mozilla.xpcom.nsILocalFile; /* forward declaration */

public import mozilla.xpcom.nsISupportsArray; /* forward declaration */


/* starting interface:    nsIProfileInternal */
const char[] NS_IPROFILEINTERNAL_IID_STR = "2f977d42-5485-11d4-87e2-0010a4e75ef2";

const nsIID NS_IPROFILEINTERNAL_IID= 
  {0x2f977d42, 0x5485, 0x11d4, 
    [ 0x87, 0xe2, 0x00, 0x10, 0xa4, 0xe7, 0x5e, 0xf2 ]};

extern(Windows)
interface nsIProfileInternal : nsIProfile {
  static const char[] IID_STR = NS_IPROFILEINTERNAL_IID_STR;
  static const nsIID IID = NS_IPROFILEINTERNAL_IID;

  /**
     * Starts up the profile manager
     *
     * @param cmdLine       Arguments passed from command line - can be null
     * @param canInteract   Whether dialogs can be shown during startup
     *                      If false and dialogs would need to be shown, returns NS_ERROR_PROFILE_REQUIRES_INTERRACTION
     */
  /* [noscript] void startupWithArgs (in nsICmdLineService cmdLine, in boolean canInteract); */
  nsresult StartupWithArgs(nsICmdLineService cmdLine, PRBool canInteract);

  /**
     * Returns TRUE if in the midst of startupWithArgs
     */
  /* [noscript] readonly attribute boolean isStartingUp; */
  nsresult GetIsStartingUp(PRBool *aIsStartingUp);

  /* long get4xProfileCount (); */
  nsresult Get4xProfileCount(PRInt32 *_retval);

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
  enum { LIST_ONLY_NEW = 1U };

  enum { LIST_ONLY_OLD = 2U };

  enum { LIST_ALL = 3U };

  enum { LIST_FOR_IMPORT = 4U };

  /* void getProfileListX (in unsigned long which, out unsigned long length, [array, size_is (length), retval] out wstring profileNames); */
  nsresult GetProfileListX(PRUint32 which, PRUint32 *length, PRUnichar ***profileNames);

  /* void migrateProfileInfo (); */
  nsresult MigrateProfileInfo();

  /* void migrateAllProfiles (); */
  nsresult MigrateAllProfiles();

  /* void migrateProfile (in wstring profileName); */
  nsresult MigrateProfile(PRUnichar *profileName);

  /* void remigrateProfile (in wstring profileName); */
  nsresult RemigrateProfile(PRUnichar *profileName);

  /* void forgetCurrentProfile (); */
  nsresult ForgetCurrentProfile();

  /* void createDefaultProfile (); */
  nsresult CreateDefaultProfile();

  /**
     * Returns the actual profile directory
     */
  /* nsIFile getProfileDir (in wstring profileName); */
  nsresult GetProfileDir(PRUnichar *profileName, nsIFile *_retval);

  /**
     * Returns the path to a profile which can be shown to the user.
     * If the actual profile directory is salted, returns the unsalted parent.
     * This is the directory which will be deleted by deleteProfile(name, true).
     */
  /* wstring getProfilePath (in wstring profileName); */
  nsresult GetProfilePath(PRUnichar *profileName, PRUnichar **_retval);

  /**
     * Returns a profile directory of the importType. The path will point to 
     * the 4.x profile directory. Should be used only from the import module.
     */
  /* nsILocalFile getOriginalProfileDir (in wstring profileName); */
  nsresult GetOriginalProfileDir(PRUnichar *profileName, nsILocalFile *_retval);

  /**
     * Returns the date on which a profile was last used.
     * value is in milliseconds since midnight Jan 1, 1970 GMT (same as nsIFile)
     */
  /* PRInt64 getProfileLastModTime (in wstring profileName); */
  nsresult GetProfileLastModTime(PRUnichar *profileName, PRInt64 *_retval);

  /* attribute boolean automigrate; */
  nsresult GetAutomigrate(PRBool *aAutomigrate);
  nsresult SetAutomigrate(PRBool aAutomigrate);

  /* readonly attribute nsIFile defaultProfileParentDir; */
  nsresult GetDefaultProfileParentDir(nsIFile  *aDefaultProfileParentDir);

  /* readonly attribute wstring firstProfile; */
  nsresult GetFirstProfile(PRUnichar * *aFirstProfile);

  /**
     * Affects startup behavior when there are multiple profiles.
     *  If FALSE, the profile selection dialog will be shown.
     *  If TRUE, the last used profile will be chosen automatically.
     */
  /* attribute boolean startWithLastUsedProfile; */
  nsresult GetStartWithLastUsedProfile(PRBool *aStartWithLastUsedProfile);
  nsresult SetStartWithLastUsedProfile(PRBool aStartWithLastUsedProfile);

  /* [noscript] void updateRegistry (in nsIFile regName); */
  nsresult UpdateRegistry(nsIFile regName);

  /* [noscript] void getRegStrings (in wstring profileName, out wstring regString, out wstring regName, out wstring regEmail, out wstring regOption); */
  nsresult GetRegStrings(PRUnichar *profileName, PRUnichar **regString, PRUnichar **regName, PRUnichar **regEmail, PRUnichar **regOption);

  /* [noscript] void setRegStrings (in wstring profileName, in wstring regString, in wstring regName, in wstring regEmail, in wstring regOption); */
  nsresult SetRegStrings(PRUnichar *profileName, PRUnichar *regString, PRUnichar *regName, PRUnichar *regEmail, PRUnichar *regOption);

  /* [noscript] string isRegStringSet (in wstring profileName); */
  nsresult IsRegStringSet(PRUnichar *profileName, char **_retval);

  /* void createNewProfileWithLocales (in wstring profileName, in wstring nativeProfileDir, in wstring UILocale, in wstring contentLocale, in boolean useExistingDir); */
  nsresult CreateNewProfileWithLocales(PRUnichar *profileName, PRUnichar *nativeProfileDir, PRUnichar *UILocale, PRUnichar *contentLocale, PRBool useExistingDir);

  /**
    * The remaining methods are deprecated. DO NOT USE THEM.
    */
  /* boolean isCurrentProfileAvailable (); */
  nsresult IsCurrentProfileAvailable(PRBool *_retval);

  /* [noscript] void getCurrentProfileDir (out nsIFile profileDir); */
  nsresult GetCurrentProfileDir(nsIFile *profileDir);

}

