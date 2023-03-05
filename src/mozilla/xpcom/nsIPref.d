/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPref.idl
 */

module mozilla.xpcom.nsIPref;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIPrefService;
public import mozilla.xpcom.nsIPrefBranch;

public import mozilla.xpcom.nsILocalFile; /* forward declaration */

public import mozilla.xpcom.nsIObserver; /* forward declaration */

public import mozilla.xpcom.nsIFileSpec; /* forward declaration */

typedef int function(char *, void *) PrefChangedFunc;
typedef void function(char *, void *) PrefEnumerationFunc;
const nsIID NS_PREF_CID =
  { /* {dc26e0e0-ca94-11d1-a9a4-00805f8a7ac4} */       
    0xdc26e0e0,                                        
    0xca94,                                            
    0x11d1,                                            
    [ 0xa9, 0xa4, 0x00, 0x80, 0x5f, 0x8a, 0x7a, 0xc4 ]
  };
const char[] NS_PREF_CONTRACTID = "@mozilla.org/preferences;1";
const char[] NS_PREF_CLASSNAME = "Preferences Service";
 
const uint NS_PREF_VALUE_CHANGED = 1;

/* starting interface:    nsIPref */
const char[] NS_IPREF_IID_STR = "a22ad7b0-ca86-11d1-a9a4-00805f8a7ac4";

const nsIID NS_IPREF_IID= 
  {0xa22ad7b0, 0xca86, 0x11d1, 
    [ 0xa9, 0xa4, 0x00, 0x80, 0x5f, 0x8a, 0x7a, 0xc4 ]};

extern(Windows)
interface nsIPref : nsISupports {
  static const char[] IID_STR = NS_IPREF_IID_STR;
  static const nsIID IID = NS_IPREF_IID;

  /* void readUserPrefs (in nsIFile aFile); */
  nsresult ReadUserPrefs(nsIFile aFile);

  /* void ResetPrefs (); */
  nsresult ResetPrefs();

  /* void ResetUserPrefs (); */
  nsresult ResetUserPrefs();

  /* void savePrefFile (in nsIFile aFile); */
  nsresult SavePrefFile(nsIFile aFile);

  /* nsIPrefBranch getBranch (in string aPrefRoot); */
  nsresult GetBranch(char *aPrefRoot, nsIPrefBranch *_retval);

  /* nsIPrefBranch getDefaultBranch (in string aPrefRoot); */
  nsresult GetDefaultBranch(char *aPrefRoot, nsIPrefBranch *_retval);

  enum { ePrefInvalid = 0 };

  enum { ePrefLocked = 1 };

  enum { ePrefUserset = 2 };

  enum { ePrefConfig = 4 };

  enum { ePrefRemote = 8 };

  enum { ePrefLilocal = 16 };

  enum { ePrefString = 32 };

  enum { ePrefInt = 64 };

  enum { ePrefBool = 128 };

  enum { ePrefValuetypeMask = 224 };

  /* readonly attribute string root; */
  nsresult GetRoot(char * *aRoot);

  /* long GetPrefType (in string aPrefName); */
  nsresult GetPrefType(char *aPrefName, PRInt32 *_retval);

  /* boolean GetBoolPref (in string aPrefName); */
  nsresult GetBoolPref(char *aPrefName, PRBool *_retval);

  /* void SetBoolPref (in string aPrefName, in long aValue); */
  nsresult SetBoolPref(char *aPrefName, PRInt32 aValue);

  /* string GetCharPref (in string aPrefName); */
  nsresult GetCharPref(char *aPrefName, char **_retval);

  /* void SetCharPref (in string aPrefName, in string aValue); */
  nsresult SetCharPref(char *aPrefName, char *aValue);

  /* long GetIntPref (in string aPrefName); */
  nsresult GetIntPref(char *aPrefName, PRInt32 *_retval);

  /* void SetIntPref (in string aPrefName, in long aValue); */
  nsresult SetIntPref(char *aPrefName, PRInt32 aValue);

  /* void getComplexValue (in string aPrefName, in nsIIDRef aType, [iid_is (aType), retval] out nsQIResult aValue); */
  nsresult GetComplexValue(char *aPrefName, nsIID * aType, void * *aValue);

  /* void setComplexValue (in string aPrefName, in nsIIDRef aType, in nsISupports aValue); */
  nsresult SetComplexValue(char *aPrefName, nsIID * aType, nsISupports aValue);

  /* void ClearUserPref (in string aPrefName); */
  nsresult ClearUserPref(char *aPrefName);

  /* boolean PrefIsLocked (in string aPrefName); */
  nsresult PrefIsLocked(char *aPrefName, PRBool *_retval);

  /* void lockPref (in string aPrefName); */
  nsresult LockPref(char *aPrefName);

  /* void unlockPref (in string aPrefName); */
  nsresult UnlockPref(char *aPrefName);

  /* void resetBranch (in string aStartingAt); */
  nsresult ResetBranch(char *aStartingAt);

  /* void DeleteBranch (in string aStartingAt); */
  nsresult DeleteBranch(char *aStartingAt);

  /* void getChildList (in string aStartingAt, out unsigned long aCount, [array, size_is (aCount), retval] out string aChildArray); */
  nsresult GetChildList(char *aStartingAt, PRUint32 *aCount, char ***aChildArray);

  /* void addObserver (in string aDomain, in nsIObserver aObserver, in boolean aHoldWeak); */
  nsresult AddObserver(char *aDomain, nsIObserver aObserver, PRBool aHoldWeak);

  /* void removeObserver (in string aDomain, in nsIObserver aObserver); */
  nsresult RemoveObserver(char *aDomain, nsIObserver aObserver);

  /* string CopyCharPref (in string pref); */
  nsresult CopyCharPref(char *pref, char **_retval);

  /* string CopyDefaultCharPref (in string pref); */
  nsresult CopyDefaultCharPref(char *pref, char **_retval);

  /* boolean GetDefaultBoolPref (in string pref); */
  nsresult GetDefaultBoolPref(char *pref, PRBool *_retval);

  /* long GetDefaultIntPref (in string pref); */
  nsresult GetDefaultIntPref(char *pref, PRInt32 *_retval);

  /* void SetDefaultBoolPref (in string pref, in boolean value); */
  nsresult SetDefaultBoolPref(char *pref, PRBool value);

  /* void SetDefaultCharPref (in string pref, in string value); */
  nsresult SetDefaultCharPref(char *pref, char *value);

  /* void SetDefaultIntPref (in string pref, in long value); */
  nsresult SetDefaultIntPref(char *pref, PRInt32 value);

  /* wstring CopyUnicharPref (in string pref); */
  nsresult CopyUnicharPref(char *pref, PRUnichar **_retval);

  /* wstring CopyDefaultUnicharPref (in string pref); */
  nsresult CopyDefaultUnicharPref(char *pref, PRUnichar **_retval);

  /* void SetUnicharPref (in string pref, in wstring value); */
  nsresult SetUnicharPref(char *pref, PRUnichar *value);

  /* void SetDefaultUnicharPref (in string pref, in wstring value); */
  nsresult SetDefaultUnicharPref(char *pref, PRUnichar *value);

  /* wstring getLocalizedUnicharPref (in string pref); */
  nsresult GetLocalizedUnicharPref(char *pref, PRUnichar **_retval);

  /* wstring getDefaultLocalizedUnicharPref (in string pref); */
  nsresult GetDefaultLocalizedUnicharPref(char *pref, PRUnichar **_retval);

  /* nsIFileSpec GetFilePref (in string pref); */
  nsresult GetFilePref(char *pref, nsIFileSpec *_retval);

  /* void SetFilePref (in string pref, in nsIFileSpec value, in boolean setDefault); */
  nsresult SetFilePref(char *pref, nsIFileSpec value, PRBool setDefault);

  /* nsILocalFile getFileXPref (in string pref); */
  nsresult GetFileXPref(char *pref, nsILocalFile *_retval);

  /* void setFileXPref (in string pref, in nsILocalFile value); */
  nsresult SetFileXPref(char *pref, nsILocalFile value);

  /* [noscript] void RegisterCallback (in string domain, in PrefChangedFunc callback, in voidPtr closure); */
  nsresult RegisterCallback(char *domain, PrefChangedFunc callback, void * closure);

  /* [noscript] void UnregisterCallback (in string domain, in PrefChangedFunc callback, in voidPtr closure); */
  nsresult UnregisterCallback(char *domain, PrefChangedFunc callback, void * closure);

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
  nsresult EnumerateChildren(char *parent, PrefEnumerationFunc callback, void * data);

}

