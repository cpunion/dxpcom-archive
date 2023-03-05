/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProfileMigrator.idl
 */

module mozilla.xpcom.nsIProfileMigrator;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIFile; /* forward declaration */


/* starting interface:    nsIProfileStartup */
const char[] NS_IPROFILESTARTUP_IID_STR = "048e5ca1-0eb7-4bb1-a9a2-a36f7d4e0e3c";

const nsIID NS_IPROFILESTARTUP_IID= 
  {0x048e5ca1, 0x0eb7, 0x4bb1, 
    [ 0xa9, 0xa2, 0xa3, 0x6f, 0x7d, 0x4e, 0x0e, 0x3c ]};

/**
 * Helper interface for nsIProfileMigrator.
 *
 * @provider Toolkit (Startup code)
 * @client   Application (Profile-migration code)
 * @obtainable nsIProfileMigrator.migrate
 */
extern(Windows)
interface nsIProfileStartup : nsISupports {
  static const char[] IID_STR = NS_IPROFILESTARTUP_IID_STR;
  static const nsIID IID = NS_IPROFILESTARTUP_IID;

  /**
   * The root directory of the semi-current profile, during profile migration.
   * After nsIProfileMigrator.migrate has returned, this object will not be
   * useful.
   */
  /* readonly attribute nsIFile directory; */
  nsresult GetDirectory(nsIFile  *aDirectory);

  /**
   * Do profile-startup by setting NS_APP_USER_PROFILE_50_DIR in the directory
   * service and notifying the profile-startup observer topics.
   */
  /* void doStartup (); */
  nsresult DoStartup();

}


/* starting interface:    nsIProfileMigrator */
const char[] NS_IPROFILEMIGRATOR_IID_STR = "24ce8b9d-b7ff-4279-aef4-26e158f03e34";

const nsIID NS_IPROFILEMIGRATOR_IID= 
  {0x24ce8b9d, 0xb7ff, 0x4279, 
    [ 0xae, 0xf4, 0x26, 0xe1, 0x58, 0xf0, 0x3e, 0x34 ]};

/**
 * Migrate application settings from an outside source.
 *
 * @provider Application (Profile-migration code)
 * @client   Toolkit (Startup code)
 * @obtainable service, contractid("@mozilla.org/toolkit/profile-migrator;1")
 */
extern(Windows)
interface nsIProfileMigrator : nsISupports {
  static const char[] IID_STR = NS_IPROFILEMIGRATOR_IID_STR;
  static const nsIID IID = NS_IPROFILEMIGRATOR_IID;

  /**
   * Import existing profile paths.  When the app is started the first
   * time, if there are no INI-style profiles, appstartup will call
   * this method to import any registry- style profiles that may
   * exist. When this method is called, there is no event queue
   * service and this method should not attempt to use the network or
   * show any GUI.
   *
   * @note You don't actually have to move the profile data. Just call
   *       nsIToolkitProfileService.create on the existing profile path(s).
   */
  /* void import (); */
  nsresult Import();

  /**
   * Do profile migration.
   *
   * When this method is called, a default profile has been created;
   * XPCOM has been initialized such that compreg.dat is in the
   * profile; the directory service does *not* return a key for
   * NS_APP_USER_PROFILE_50_DIR or any of the keys depending on an active
   * profile. To figure out the directory of the "current" profile, use
   * aStartup.directory.
   *
   * If your migrator needs to access services that use the profile (to
   * set profile prefs or bookmarks, for example), use aStartup.doStartup.
   *
   * The startup code ignores COM exceptions thrown from this method.
   */
  /* void migrate (in nsIProfileStartup aStartup); */
  nsresult Migrate(nsIProfileStartup aStartup);

}

