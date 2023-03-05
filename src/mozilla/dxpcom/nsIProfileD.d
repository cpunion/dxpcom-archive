/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProfile.idl
 */

module mozilla.dxpcom.nsIProfileD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIProfile;


public import mozilla.dxpcom.nsIProfileD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIFile;
public import mozilla.dxpcom.nsIFileD;


/* starting wrapper class:    nsIProfile */
/**
 * nsIProfile
 * 
 * @status FROZEN
 * @version 1.0
 */
class nsIProfileD : public nsISupportsD {

  static const nsIID IID = NS_IPROFILE_IID;


  alias nsIProfile InnerType;

  this(nsIProfile intr){
    super(intr);
    this.inner = intr;
  }

  nsIProfile opCast() {
    return inner;
  }

  void opAssign(nsIProfile value) {
    inner = value;
  }

  /* readonly attribute long profileCount; */
  PRInt32 ProfileCount(){
    PRInt32 value;
    nsresult __result = inner.GetProfileCount(&value);
    CheckException(__result);
    return value;
  }

  /* void getProfileList (out unsigned long length, [array, size_is (length), retval] out wstring profileNames); */
  void GetProfileList(out PRUint32 length, out PRUnichar**profileNames){
    nsresult __result = inner.GetProfileList(&length, &profileNames);
    CheckException(__result);
  }

  /* boolean profileExists (in wstring profileName); */
  PRBool ProfileExists(PRUnichar*profileName){
    PRBool _retval;
    nsresult __result = inner.ProfileExists(profileName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* attribute wstring currentProfile; */
  PRUnichar* CurrentProfile(){
    PRUnichar* value;
    nsresult __result = inner.GetCurrentProfile(&value);
    CheckException(__result);
    return value;
  }
  void CurrentProfile(PRUnichar* aCurrentProfile){
    nsresult __result = inner.SetCurrentProfile(aCurrentProfile);
    CheckException(__result);
  }

  enum { SHUTDOWN_PERSIST = 1U }

  enum { SHUTDOWN_CLEANSE = 2U }

  /* void shutDownCurrentProfile (in unsigned long shutDownType); */
  void ShutDownCurrentProfile(PRUint32 shutDownType){
    nsresult __result = inner.ShutDownCurrentProfile(shutDownType);
    CheckException(__result);
  }

  /* void createNewProfile (in wstring profileName, in wstring nativeProfileDir, in wstring langcode, in boolean useExistingDir); */
  void CreateNewProfile(PRUnichar*profileName, PRUnichar*nativeProfileDir, PRUnichar*langcode, PRBool useExistingDir){
    nsresult __result = inner.CreateNewProfile(profileName, nativeProfileDir, langcode, useExistingDir);
    CheckException(__result);
  }

  /* void renameProfile (in wstring oldName, in wstring newName); */
  void RenameProfile(PRUnichar*oldName, PRUnichar*newName){
    nsresult __result = inner.RenameProfile(oldName, newName);
    CheckException(__result);
  }

  /* void deleteProfile (in wstring name, in boolean canDeleteFiles); */
  void DeleteProfile(PRUnichar*name, PRBool canDeleteFiles){
    nsresult __result = inner.DeleteProfile(name, canDeleteFiles);
    CheckException(__result);
  }

  /* void cloneProfile (in wstring profileName); */
  void CloneProfile(PRUnichar*profileName){
    nsresult __result = inner.CloneProfile(profileName);
    CheckException(__result);
  }

private:
  nsIProfile inner;

}

