/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPrefMigrationProgress.idl
 */

module mozilla.dxpcom.nsIPrefMigrationProgressD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPrefMigrationProgress;


public import mozilla.dxpcom.nsIPrefMigrationProgressD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIPrefMigrationProgress */
class nsIPrefMigrationProgressD : public nsISupportsD {

  static const nsIID IID = NS_IPREFMIGRATIONPROGRESS_IID;


  alias nsIPrefMigrationProgress InnerType;

  this(nsIPrefMigrationProgress intr){
    super(intr);
    this.inner = intr;
  }

  nsIPrefMigrationProgress opCast() {
    return inner;
  }

  void opAssign(nsIPrefMigrationProgress value) {
    inner = value;
  }

  /* void CreateProfileProgressDialog (); */
  void CreateProfileProgressDialog(){
    nsresult __result = inner.CreateProfileProgressDialog();
    CheckException(__result);
  }

  /* void MigrationStarted ([const] in string UIPackageName); */
  void MigrationStarted(char*UIPackageName){
    nsresult __result = inner.MigrationStarted(UIPackageName);
    CheckException(__result);
  }

  /* void IncrementProgressBar (); */
  void IncrementProgressBar(){
    nsresult __result = inner.IncrementProgressBar();
    CheckException(__result);
  }

private:
  nsIPrefMigrationProgress inner;

}

