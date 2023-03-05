/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImportSettings.idl
 */

module mozilla.dxpcom.nsIImportSettingsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIImportSettings;


public import mozilla.dxpcom.nsIImportSettingsD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIMsgAccount;

public import mozilla.dxpcom.nsIMsgAccountD;

public import mozilla.xpcom.nsIFileSpec;

public import mozilla.dxpcom.nsIFileSpecD;


/* starting wrapper class:    nsIImportSettings */
class nsIImportSettingsD : public nsISupportsD {

  static const nsIID IID = NS_IIMPORTSETTINGS_IID;


  alias nsIImportSettings InnerType;

  this(nsIImportSettings intr){
    super(intr);
    this.inner = intr;
  }

  nsIImportSettings opCast() {
    return inner;
  }

  void opAssign(nsIImportSettings value) {
    inner = value;
  }

  /* boolean AutoLocate (out wstring description, out nsIFileSpec location); */
  PRBool AutoLocate(out PRUnichar*description, out nsIFileSpecD location){
    nsIFileSpec _location;
    PRBool _retval;
    nsresult __result = inner.AutoLocate(&description, &_location, &_retval);
    CheckException(__result);
    location = _location ? new nsIFileSpecD(_location) : null;
    return _retval;
  }

  /* void SetLocation (in nsIFileSpec location); */
  void SetLocation(nsIFileSpecD location){
    nsresult __result = inner.SetLocation(location ? cast(nsIFileSpec)location : null);
    CheckException(__result);
  }

  /* boolean Import (out nsIMsgAccount localMailAccount); */
  PRBool Import(out nsIMsgAccountD localMailAccount){
    nsIMsgAccount _localMailAccount;
    PRBool _retval;
    nsresult __result = inner.Import(&_localMailAccount, &_retval);
    CheckException(__result);
    localMailAccount = _localMailAccount ? new nsIMsgAccountD(_localMailAccount) : null;
    return _retval;
  }

private:
  nsIImportSettings inner;

}

