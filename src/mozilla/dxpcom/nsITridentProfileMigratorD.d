/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITridentProfileMigrator.idl
 */

module mozilla.dxpcom.nsITridentProfileMigratorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsITridentProfileMigrator;


public import mozilla.dxpcom.nsITridentProfileMigratorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsITridentProfileMigrator */
class nsITridentProfileMigratorD : public nsISupportsD {

  static const nsIID IID = NS_ITRIDENTPROFILEMIGRATOR_IID;


  alias nsITridentProfileMigrator InnerType;

  this(nsITridentProfileMigrator intr){
    super(intr);
    this.inner = intr;
  }

  nsITridentProfileMigrator opCast() {
    return inner;
  }

  void opAssign(nsITridentProfileMigrator value) {
    inner = value;
  }

  /**
   * profile items to migrate. use with migrateTridentProfile().
   */
  enum { PREFERENCES = 1U }

  enum { COOKIES = 2U }

  /**
   * Copy Trident user profile information to the current active profile.
   * @param aItems list of data items to migrate. see above for values.
   */
  /* void migrateTridentProfile (in unsigned long aItems); */
  void MigrateTridentProfile(PRUint32 aItems){
    nsresult __result = inner.MigrateTridentProfile(aItems);
    CheckException(__result);
  }

private:
  nsITridentProfileMigrator inner;

}

