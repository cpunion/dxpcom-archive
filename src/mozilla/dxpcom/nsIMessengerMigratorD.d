/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMessengerMigrator.idl
 */

module mozilla.dxpcom.nsIMessengerMigratorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMessengerMigrator;


public import mozilla.dxpcom.nsIMessengerMigratorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIMsgIdentity;
public import mozilla.dxpcom.nsIMsgIdentityD;


/* starting wrapper class:    nsIMessengerMigrator */
class nsIMessengerMigratorD : public nsISupportsD {

  static const nsIID IID = NS_IMESSENGERMIGRATOR_IID;


  alias nsIMessengerMigrator InnerType;

  this(nsIMessengerMigrator intr){
    super(intr);
    this.inner = intr;
  }

  nsIMessengerMigrator opCast() {
    return inner;
  }

  void opAssign(nsIMessengerMigrator value) {
    inner = value;
  }

  /* void UpgradePrefs (); */
  void UpgradePrefs(){
    nsresult __result = inner.UpgradePrefs();
    CheckException(__result);
  }

  /* void createLocalMailAccount (in boolean migrating); */
  void CreateLocalMailAccount(PRBool migrating){
    nsresult __result = inner.CreateLocalMailAccount(migrating);
    CheckException(__result);
  }

private:
  nsIMessengerMigrator inner;

}

