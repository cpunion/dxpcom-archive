/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPref.idl
 */

module mozilla.dxpcom.nsIPrefD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPref;


public import mozilla.dxpcom.nsIPrefD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIPrefService;
public import mozilla.dxpcom.nsIPrefServiceD;
public import mozilla.xpcom.nsIPrefBranch;
public import mozilla.dxpcom.nsIPrefBranchD;

public import mozilla.xpcom.nsILocalFile;

public import mozilla.dxpcom.nsILocalFileD;

public import mozilla.xpcom.nsIObserver;

public import mozilla.dxpcom.nsIObserverD;

public import mozilla.xpcom.nsIFileSpec;

public import mozilla.dxpcom.nsIFileSpecD;


/* starting wrapper class:    nsIPref */
class nsIPrefD : public nsISupportsD {

  static const nsIID IID = NS_IPREF_IID;


  alias nsIPref InnerType;

  this(nsIPref intr){
    super(intr);
    this.inner = intr;
  }

  nsIPref opCast() {
    return inner;
  }

  void opAssign(nsIPref value) {
    inner = value;
  }

  /* void readUserPrefs (in nsIFile aFile); */
  void ReadUserPrefs(nsIFileD aFile){
    nsresult __result = inner.ReadUserPrefs(aFile ? cast(nsIFile)aFile : null);
    CheckException(__result);
  }

  /* void ResetPrefs (); */
  void ResetPrefs(){
    nsresult __result = inner.ResetPrefs();
    CheckException(__result);
  }

  /* void ResetUserPrefs (); */
  void ResetUserPrefs(){
    nsresult __result = inner.ResetUserPrefs();
    CheckException(__result);
  }

  /* void savePrefFile (in nsIFile aFile); */
  void SavePrefFile(nsIFileD aFile){
    nsresult __result = inner.SavePrefFile(aFile ? cast(nsIFile)aFile : null);
    CheckException(__result);
  }

  /* nsIPrefBranch getBranch (in string aPrefRoot); */
  nsIPrefBranchD  GetBranch(char*aPrefRoot){
    nsIPrefBranch _retval;
    nsresult __result = inner.GetBranch(aPrefRoot, &_retval);
    CheckException(__result);
    return new nsIPrefBranchD(_retval);
  }

  /* nsIPrefBranch getDefaultBranch (in string aPrefRoot); */
  nsIPrefBranchD  GetDefaultBranch(char*aPrefRoot){
    nsIPrefBranch _retval;
    nsresult __result = inner.GetDefaultBranch(aPrefRoot, &_retval);
    CheckException(__result);
    return new nsIPrefBranchD(_retval);
  }

  enum { ePrefInvalid = 0 }

  enum { ePrefLocked = 1 }

  enum { ePrefUserset = 2 }

  enum { ePrefConfig = 4 }

  enum { ePrefRemote = 8 }

  enum { ePrefLilocal = 16 }

  enum { ePrefString = 32 }

  enum { ePrefInt = 64 }

  enum { ePrefBool = 128 }

  enum { ePrefValuetypeMask = 224 }

  /* readonly attribute string root; */
  char* Root(){
    char* value;
    nsresult __result = inner.GetRoot(&value);
    CheckException(__result);
    return value;
  }

  /* long GetPrefType (in string aPrefName); */
  PRInt32 GetPrefType(char*aPrefName){
    PRInt32 _retval;
    nsresult __result = inner.GetPrefType(aPrefName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean GetBoolPref (in string aPrefName); */
  PRBool GetBoolPref(char*aPrefName){
    PRBool _retval;
    nsresult __result = inner.GetBoolPref(aPrefName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void SetBoolPref (in string aPrefName, in long aValue); */
  void SetBoolPref(char*aPrefName, PRInt32 aValue){
    nsresult __result = inner.SetBoolPref(aPrefName, aValue);
    CheckException(__result);
  }

  /* string GetCharPref (in string aPrefName); */
  char* GetCharPref(char*aPrefName){
    char* _retval;
    nsresult __result = inner.GetCharPref(aPrefName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void SetCharPref (in string aPrefName, in string aValue); */
  void SetCharPref(char*aPrefName, char*aValue){
    nsresult __result = inner.SetCharPref(aPrefName, aValue);
    CheckException(__result);
  }

  /* long GetIntPref (in string aPrefName); */
  PRInt32 GetIntPref(char*aPrefName){
    PRInt32 _retval;
    nsresult __result = inner.GetIntPref(aPrefName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void SetIntPref (in string aPrefName, in long aValue); */
  void SetIntPref(char*aPrefName, PRInt32 aValue){
    nsresult __result = inner.SetIntPref(aPrefName, aValue);
    CheckException(__result);
  }

  /* void getComplexValue (in string aPrefName, in nsIIDRef aType, [iid_is (aType), retval] out nsQIResult aValue); */
  void GetComplexValue(char*aPrefName, nsIID * aType, out void * aValue){
    nsresult __result = inner.GetComplexValue(aPrefName, aType, &aValue);
    CheckException(__result);
  }

  /* void setComplexValue (in string aPrefName, in nsIIDRef aType, in nsISupports aValue); */
  void SetComplexValue(char*aPrefName, nsIID * aType, nsISupportsD aValue){
    nsresult __result = inner.SetComplexValue(aPrefName, aType, aValue ? cast(nsISupports)aValue : null);
    CheckException(__result);
  }

  /* void ClearUserPref (in string aPrefName); */
  void ClearUserPref(char*aPrefName){
    nsresult __result = inner.ClearUserPref(aPrefName);
    CheckException(__result);
  }

  /* boolean PrefIsLocked (in string aPrefName); */
  PRBool PrefIsLocked(char*aPrefName){
    PRBool _retval;
    nsresult __result = inner.PrefIsLocked(aPrefName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void lockPref (in string aPrefName); */
  void LockPref(char*aPrefName){
    nsresult __result = inner.LockPref(aPrefName);
    CheckException(__result);
  }

  /* void unlockPref (in string aPrefName); */
  void UnlockPref(char*aPrefName){
    nsresult __result = inner.UnlockPref(aPrefName);
    CheckException(__result);
  }

  /* void resetBranch (in string aStartingAt); */
  void ResetBranch(char*aStartingAt){
    nsresult __result = inner.ResetBranch(aStartingAt);
    CheckException(__result);
  }

  /* void DeleteBranch (in string aStartingAt); */
  void DeleteBranch(char*aStartingAt){
    nsresult __result = inner.DeleteBranch(aStartingAt);
    CheckException(__result);
  }

  /* void getChildList (in string aStartingAt, out unsigned long aCount, [array, size_is (aCount), retval] out string aChildArray); */
  void GetChildList(char*aStartingAt, out PRUint32 aCount, out char**aChildArray){
    nsresult __result = inner.GetChildList(aStartingAt, &aCount, &aChildArray);
    CheckException(__result);
  }

  /* void addObserver (in string aDomain, in nsIObserver aObserver, in boolean aHoldWeak); */
  void AddObserver(char*aDomain, nsIObserverD aObserver, PRBool aHoldWeak){
    nsresult __result = inner.AddObserver(aDomain, aObserver ? cast(nsIObserver)aObserver : null, aHoldWeak);
    CheckException(__result);
  }

  /* void removeObserver (in string aDomain, in nsIObserver aObserver); */
  void RemoveObserver(char*aDomain, nsIObserverD aObserver){
    nsresult __result = inner.RemoveObserver(aDomain, aObserver ? cast(nsIObserver)aObserver : null);
    CheckException(__result);
  }

  /* string CopyCharPref (in string pref); */
  char* CopyCharPref(char*pref){
    char* _retval;
    nsresult __result = inner.CopyCharPref(pref, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* string CopyDefaultCharPref (in string pref); */
  char* CopyDefaultCharPref(char*pref){
    char* _retval;
    nsresult __result = inner.CopyDefaultCharPref(pref, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean GetDefaultBoolPref (in string pref); */
  PRBool GetDefaultBoolPref(char*pref){
    PRBool _retval;
    nsresult __result = inner.GetDefaultBoolPref(pref, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* long GetDefaultIntPref (in string pref); */
  PRInt32 GetDefaultIntPref(char*pref){
    PRInt32 _retval;
    nsresult __result = inner.GetDefaultIntPref(pref, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void SetDefaultBoolPref (in string pref, in boolean value); */
  void SetDefaultBoolPref(char*pref, PRBool value){
    nsresult __result = inner.SetDefaultBoolPref(pref, value);
    CheckException(__result);
  }

  /* void SetDefaultCharPref (in string pref, in string value); */
  void SetDefaultCharPref(char*pref, char*value){
    nsresult __result = inner.SetDefaultCharPref(pref, value);
    CheckException(__result);
  }

  /* void SetDefaultIntPref (in string pref, in long value); */
  void SetDefaultIntPref(char*pref, PRInt32 value){
    nsresult __result = inner.SetDefaultIntPref(pref, value);
    CheckException(__result);
  }

  /* wstring CopyUnicharPref (in string pref); */
  PRUnichar* CopyUnicharPref(char*pref){
    PRUnichar* _retval;
    nsresult __result = inner.CopyUnicharPref(pref, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* wstring CopyDefaultUnicharPref (in string pref); */
  PRUnichar* CopyDefaultUnicharPref(char*pref){
    PRUnichar* _retval;
    nsresult __result = inner.CopyDefaultUnicharPref(pref, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void SetUnicharPref (in string pref, in wstring value); */
  void SetUnicharPref(char*pref, PRUnichar*value){
    nsresult __result = inner.SetUnicharPref(pref, value);
    CheckException(__result);
  }

  /* void SetDefaultUnicharPref (in string pref, in wstring value); */
  void SetDefaultUnicharPref(char*pref, PRUnichar*value){
    nsresult __result = inner.SetDefaultUnicharPref(pref, value);
    CheckException(__result);
  }

  /* wstring getLocalizedUnicharPref (in string pref); */
  PRUnichar* GetLocalizedUnicharPref(char*pref){
    PRUnichar* _retval;
    nsresult __result = inner.GetLocalizedUnicharPref(pref, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* wstring getDefaultLocalizedUnicharPref (in string pref); */
  PRUnichar* GetDefaultLocalizedUnicharPref(char*pref){
    PRUnichar* _retval;
    nsresult __result = inner.GetDefaultLocalizedUnicharPref(pref, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsIFileSpec GetFilePref (in string pref); */
  nsIFileSpecD  GetFilePref(char*pref){
    nsIFileSpec _retval;
    nsresult __result = inner.GetFilePref(pref, &_retval);
    CheckException(__result);
    return new nsIFileSpecD(_retval);
  }

  /* void SetFilePref (in string pref, in nsIFileSpec value, in boolean setDefault); */
  void SetFilePref(char*pref, nsIFileSpecD value, PRBool setDefault){
    nsresult __result = inner.SetFilePref(pref, value ? cast(nsIFileSpec)value : null, setDefault);
    CheckException(__result);
  }

  /* nsILocalFile getFileXPref (in string pref); */
  nsILocalFileD  GetFileXPref(char*pref){
    nsILocalFile _retval;
    nsresult __result = inner.GetFileXPref(pref, &_retval);
    CheckException(__result);
    return new nsILocalFileD(_retval);
  }

  /* void setFileXPref (in string pref, in nsILocalFile value); */
  void SetFileXPref(char*pref, nsILocalFileD value){
    nsresult __result = inner.SetFileXPref(pref, value ? cast(nsILocalFile)value : null);
    CheckException(__result);
  }

  /* [noscript] void RegisterCallback (in string domain, in PrefChangedFunc callback, in voidPtr closure); */
  void RegisterCallback(char*domain, PrefChangedFunc callback, void * closure){
    nsresult __result = inner.RegisterCallback(domain, callback, closure);
    CheckException(__result);
  }

  /* [noscript] void UnregisterCallback (in string domain, in PrefChangedFunc callback, in voidPtr closure); */
  void UnregisterCallback(char*domain, PrefChangedFunc callback, void * closure){
    nsresult __result = inner.UnregisterCallback(domain, callback, closure);
    CheckException(__result);
  }

  /**
   * EnumerateChildren
   *
   * Call back function "callback" with every preference string
   * having prefix "parent". Pass "data" to "callback" when calling.
   * 
   * @param parent A string representation of a prefix of preferences
   * @param callback A function to call back for each matching preference
   * @param data A piece of data to pass on to the callback
   */
  /* [noscript] void EnumerateChildren (in string parent, in PrefEnumerationFunc callback, in voidPtr data); */
  void EnumerateChildren(char*parent, PrefEnumerationFunc callback, void * data){
    nsresult __result = inner.EnumerateChildren(parent, callback, data);
    CheckException(__result);
  }

private:
  nsIPref inner;

}

