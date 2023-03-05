/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBrowserProfileMigrator.idl
 */

module mozilla.dxpcom.nsIBrowserProfileMigratorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIBrowserProfileMigrator;


public import mozilla.dxpcom.nsIBrowserProfileMigratorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsISupportsArray;

public import mozilla.dxpcom.nsISupportsArrayD;

public import mozilla.xpcom.nsIProfileMigrator;

import mozilla.dxpcom.nsIProfileMigratorD;


/* starting wrapper class:    nsIBrowserProfileMigrator */
class nsIBrowserProfileMigratorD : public nsISupportsD {

  static const nsIID IID = NS_IBROWSERPROFILEMIGRATOR_IID;


  alias nsIBrowserProfileMigrator InnerType;

  this(nsIBrowserProfileMigrator intr){
    super(intr);
    this.inner = intr;
  }

  nsIBrowserProfileMigrator opCast() {
    return inner;
  }

  void opAssign(nsIBrowserProfileMigrator value) {
    inner = value;
  }

  /**
   * profile items to migrate. use with migrate().
   */
  enum { ALL = 0U }

  enum { SETTINGS = 1U }

  enum { COOKIES = 2U }

  enum { HISTORY = 4U }

  enum { FORMDATA = 8U }

  enum { PASSWORDS = 16U }

  enum { BOOKMARKS = 32U }

  enum { OTHERDATA = 64U }

  /**
   * Copy user profile information to the current active profile.
   * @param aItems   list of data items to migrate. see above for values.
   * @param aReplace replace or append current data where applicable. 
   * @param aProfile profile to migrate from, if there is more than one.
   */
  /* void migrate (in unsigned short aItems, in nsIProfileStartup aStartup, in wstring aProfile); */
  void Migrate(PRUint16 aItems, nsIProfileStartupD aStartup, PRUnichar*aProfile){
    nsresult __result = inner.Migrate(aItems, aStartup ? cast(nsIProfileStartup)aStartup : null, aProfile);
    CheckException(__result);
  }

  /**
   * A bit field containing profile items that this migrator
   * offers for import. 
   * @param   aProfile the profile that we are looking for available data
   *          to import
   * @param   aStarting "true" if the profile is not currently being used.
   * @returns bit field containing profile items (see above)
   */
  /* unsigned short getMigrateData (in wstring aProfile, in boolean aDoingStartup); */
  PRUint16 GetMigrateData(PRUnichar*aProfile, PRBool aDoingStartup){
    PRUint16 _retval;
    nsresult __result = inner.GetMigrateData(aProfile, aDoingStartup, &_retval);
    CheckException(__result);
    return _retval;
  }

  /** 
   * Whether or not there is any data that can be imported from this 
   * browser (i.e. whether or not it is installed, and there exists
   * a user profile)
   */
  /* readonly attribute boolean sourceExists; */
  PRBool SourceExists(){
    PRBool value;
    nsresult __result = inner.GetSourceExists(&value);
    CheckException(__result);
    return value;
  }

  /** 
   * Whether or not the import source implementing this interface
   * has multiple user profiles configured.
   */
  /* readonly attribute boolean sourceHasMultipleProfiles; */
  PRBool SourceHasMultipleProfiles(){
    PRBool value;
    nsresult __result = inner.GetSourceHasMultipleProfiles(&value);
    CheckException(__result);
    return value;
  }

  /** 
   * An enumeration of available profiles. If the import source does 
   * not support profiles, this attribute is null.
   */
  /* readonly attribute nsISupportsArray sourceProfiles; */
  nsISupportsArrayD  SourceProfiles(){
    nsISupportsArray value;
    nsresult __result = inner.GetSourceProfiles(&value);
    CheckException(__result);
    return new nsISupportsArrayD(value);
  }

  /**
   * The import source homepage.  Returns null if not present/available
   */
  /* readonly attribute AUTF8String sourceHomePageURL; */
  char[] SourceHomePageURL(){
    scope auto value = new ACString();
    nsresult __result = inner.GetSourceHomePageURL(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

private:
  nsIBrowserProfileMigrator inner;

}

