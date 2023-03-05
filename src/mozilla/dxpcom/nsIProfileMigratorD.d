/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProfileMigrator.idl
 */

module mozilla.dxpcom.nsIProfileMigratorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIProfileMigrator;


public import mozilla.dxpcom.nsIProfileMigratorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;


/* starting wrapper class:    nsIProfileStartup */
/**
 * Helper interface for nsIProfileMigrator.
 *
 * @provider Toolkit (Startup code)
 * @client   Application (Profile-migration code)
 * @obtainable nsIProfileMigrator.migrate
 */
class nsIProfileStartupD : public nsISupportsD {

  static const nsIID IID = NS_IPROFILESTARTUP_IID;


  alias nsIProfileStartup InnerType;

  this(nsIProfileStartup intr){
    super(intr);
    this.inner = intr;
  }

  nsIProfileStartup opCast() {
    return inner;
  }

  void opAssign(nsIProfileStartup value) {
    inner = value;
  }

  /**
   * The root directory of the semi-current profile, during profile migration.
   * After nsIProfileMigrator.migrate has returned, this object will not be
   * useful.
   */
  /* readonly attribute nsIFile directory; */
  nsIFileD  Directory(){
    nsIFile value;
    nsresult __result = inner.GetDirectory(&value);
    CheckException(__result);
    return new nsIFileD(value);
  }

  /**
   * Do profile-startup by setting NS_APP_USER_PROFILE_50_DIR in the directory
   * service and notifying the profile-startup observer topics.
   */
  /* void doStartup (); */
  void DoStartup(){
    nsresult __result = inner.DoStartup();
    CheckException(__result);
  }

private:
  nsIProfileStartup inner;

}


/* starting wrapper class:    nsIProfileMigrator */
/**
 * Migrate application settings from an outside source.
 *
 * @provider Application (Profile-migration code)
 * @client   Toolkit (Startup code)
 * @obtainable service, contractid("@mozilla.org/toolkit/profile-migrator;1")
 */
class nsIProfileMigratorD : public nsISupportsD {

  static const nsIID IID = NS_IPROFILEMIGRATOR_IID;


  alias nsIProfileMigrator InnerType;

  this(nsIProfileMigrator intr){
    super(intr);
    this.inner = intr;
  }

  nsIProfileMigrator opCast() {
    return inner;
  }

  void opAssign(nsIProfileMigrator value) {
    inner = value;
  }

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
  void Import(){
    nsresult __result = inner.Import();
    CheckException(__result);
  }

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
  void Migrate(nsIProfileStartupD aStartup){
    nsresult __result = inner.Migrate(aStartup ? cast(nsIProfileStartup)aStartup : null);
    CheckException(__result);
  }

private:
  nsIProfileMigrator inner;

}

