/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBrowserProfileMigrator.idl
 */

module mozilla.xpcom.nsIBrowserProfileMigrator;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsISupportsArray; /* forward declaration */

public import mozilla.xpcom.nsIProfileMigrator;


/* starting interface:    nsIBrowserProfileMigrator */
const char[] NS_IBROWSERPROFILEMIGRATOR_IID_STR = "f8365b4a-da55-4e47-be7a-230142360f62";

const nsIID NS_IBROWSERPROFILEMIGRATOR_IID= 
  {0xf8365b4a, 0xda55, 0x4e47, 
    [ 0xbe, 0x7a, 0x23, 0x01, 0x42, 0x36, 0x0f, 0x62 ]};

extern(Windows)
interface nsIBrowserProfileMigrator : nsISupports {
  static const char[] IID_STR = NS_IBROWSERPROFILEMIGRATOR_IID_STR;
  static const nsIID IID = NS_IBROWSERPROFILEMIGRATOR_IID;

  /**
   * profile items to migrate. use with migrate().
   */
  enum { ALL = 0U };

  enum { SETTINGS = 1U };

  enum { COOKIES = 2U };

  enum { HISTORY = 4U };

  enum { FORMDATA = 8U };

  enum { PASSWORDS = 16U };

  enum { BOOKMARKS = 32U };

  enum { OTHERDATA = 64U };

  /**
   * Copy user profile information to the current active profile.
   * @param aItems   list of data items to migrate. see above for values.
   * @param aReplace replace or append current data where applicable. 
   * @param aProfile profile to migrate from, if there is more than one.
   */
  /* void migrate (in unsigned short aItems, in nsIProfileStartup aStartup, in wstring aProfile); */
  nsresult Migrate(PRUint16 aItems, nsIProfileStartup aStartup, PRUnichar *aProfile);

  /**
   * A bit field containing profile items that this migrator
   * offers for import. 
   * @param   aProfile the profile that we are looking for available data
   *          to import
   * @param   aStarting "true" if the profile is not currently being used.
   * @returns bit field containing profile items (see above)
   */
  /* unsigned short getMigrateData (in wstring aProfile, in boolean aDoingStartup); */
  nsresult GetMigrateData(PRUnichar *aProfile, PRBool aDoingStartup, PRUint16 *_retval);

  /** 
   * Whether or not there is any data that can be imported from this 
   * browser (i.e. whether or not it is installed, and there exists
   * a user profile)
   */
  /* readonly attribute boolean sourceExists; */
  nsresult GetSourceExists(PRBool *aSourceExists);

  /** 
   * Whether or not the import source implementing this interface
   * has multiple user profiles configured.
   */
  /* readonly attribute boolean sourceHasMultipleProfiles; */
  nsresult GetSourceHasMultipleProfiles(PRBool *aSourceHasMultipleProfiles);

  /** 
   * An enumeration of available profiles. If the import source does 
   * not support profiles, this attribute is null.
   */
  /* readonly attribute nsISupportsArray sourceProfiles; */
  nsresult GetSourceProfiles(nsISupportsArray  *aSourceProfiles);

  /**
   * The import source homepage.  Returns null if not present/available
   */
  /* readonly attribute AUTF8String sourceHomePageURL; */
  nsresult GetSourceHomePageURL(nsACString * aSourceHomePageURL);

}

