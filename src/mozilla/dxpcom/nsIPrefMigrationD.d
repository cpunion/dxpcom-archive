/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPrefMigration.idl
 */

module mozilla.dxpcom.nsIPrefMigrationD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPrefMigration;


public import mozilla.dxpcom.nsIPrefMigrationD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIPrefMigration */
class nsIPrefMigrationD : public nsISupportsD {

  static const nsIID IID = NS_IPREFMIGRATION_IID;


  alias nsIPrefMigration InnerType;

  this(nsIPrefMigration intr){
    super(intr);
    this.inner = intr;
  }

  nsIPrefMigration opCast() {
    return inner;
  }

  void opAssign(nsIPrefMigration value) {
    inner = value;
  }

  /* void AddProfilePaths (in string oldProfilePathStr, in string newProfilePathStr); */
  void AddProfilePaths(char*oldProfilePathStr, char*newProfilePathStr){
    nsresult __result = inner.AddProfilePaths(oldProfilePathStr, newProfilePathStr);
    CheckException(__result);
  }

  /* void ProcessPrefs (in boolean showProgressAsModalWindow); */
  void ProcessPrefs(PRBool showProgressAsModalWindow){
    nsresult __result = inner.ProcessPrefs(showProgressAsModalWindow);
    CheckException(__result);
  }

  /* void ProcessPrefsFromJS (); */
  void ProcessPrefsFromJS(){
    nsresult __result = inner.ProcessPrefsFromJS();
    CheckException(__result);
  }

  /* void GetError (); */
  void GetError(){
    nsresult __result = inner.GetError();
    CheckException(__result);
  }

  /**
   * this should be in a separate interface
   **/
  /* void WindowCloseCallback (); */
  void WindowCloseCallback(){
    nsresult __result = inner.WindowCloseCallback();
    CheckException(__result);
  }

  /* void ShowSpaceDialog (out PRInt32 choice); */
  void ShowSpaceDialog(out PRInt32 choice){
    nsresult __result = inner.ShowSpaceDialog(&choice);
    CheckException(__result);
  }

private:
  nsIPrefMigration inner;

}


/* starting wrapper class:    nsIPrefConverter */
class nsIPrefConverterD : public nsISupportsD {

  static const nsIID IID = NS_IPREFCONVERTER_IID;


  alias nsIPrefConverter InnerType;

  this(nsIPrefConverter intr){
    super(intr);
    this.inner = intr;
  }

  nsIPrefConverter opCast() {
    return inner;
  }

  void opAssign(nsIPrefConverter value) {
    inner = value;
  }

  /* void ConvertPrefsToUTF8 (); */
  void ConvertPrefsToUTF8(){
    nsresult __result = inner.ConvertPrefsToUTF8();
    CheckException(__result);
  }

private:
  nsIPrefConverter inner;

}

