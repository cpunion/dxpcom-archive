/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPrefBranch.idl
 */

module mozilla.dxpcom.nsIPrefBranchD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPrefBranch;


public import mozilla.dxpcom.nsIPrefBranchD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIPrefBranch */
/**
 * The nsIPrefBranch interface is used to manipulate the preferences data. This
 * object may be obtained from the preferences service (nsIPrefService) and
 * used to get and set default and/or user preferences across the application.
 *
 * This object is created with a "root" value which describes the base point in
 * the preferences "tree" from which this "branch" stems. Preferences are
 * accessed off of this root by using just the final portion of the preference.
 * For example, if this object is created with the root "browser.startup.",
 * the preferences "browser.startup.page", "browser.startup.homepage",
 * and "browser.startup.homepage_override" can be accessed by simply passing
 * "page", "homepage", or "homepage_override" to the various Get/Set methods.
 *
 * @see nsIPrefService
 * 
 * @status FROZEN
 */
class nsIPrefBranchD : public nsISupportsD {

  static const nsIID IID = NS_IPREFBRANCH_IID;


  alias nsIPrefBranch InnerType;

  this(nsIPrefBranch intr){
    super(intr);
    this.inner = intr;
  }

  nsIPrefBranch opCast() {
    return inner;
  }

  void opAssign(nsIPrefBranch value) {
    inner = value;
  }

  /**
   * Values describing the basic preference types.
   *
   * @see getPrefType
   */
  enum { PREF_INVALID = 0 }

  enum { PREF_STRING = 32 }

  enum { PREF_INT = 64 }

  enum { PREF_BOOL = 128 }

  /**
   * Called to get the root on which this branch is based, such as
   * "browser.startup."
   */
  /* readonly attribute string root; */
  char* Root(){
    char* value;
    nsresult __result = inner.GetRoot(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Called to determine the type of a specific preference.
   *
   * @param aPrefName The preference to get the type of.
   *
   * @return long     A value representing the type of the preference. This
   *                  value will be PREF_STRING, PREF_INT, or PREF_BOOL.
   */
  /* long getPrefType (in string aPrefName); */
  PRInt32 GetPrefType(char*aPrefName){
    PRInt32 _retval;
    nsresult __result = inner.GetPrefType(aPrefName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Called to get the state of an individual boolean preference.
   *
   * @param aPrefName The boolean preference to get the state of.
   *
   * @return boolean  The value of the requested boolean preference.
   *
   * @see setBoolPref
   */
  /* boolean getBoolPref (in string aPrefName); */
  PRBool GetBoolPref(char*aPrefName){
    PRBool _retval;
    nsresult __result = inner.GetBoolPref(aPrefName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Called to set the state of an individual boolean preference.
   *
   * @param aPrefName The boolean preference to set the state of.
   * @param aValue    The boolean value to set the preference to.
   *
   * @return NS_OK The value was successfully set.
   * @return Other The value was not set or is the wrong type.
   *
   * @see getBoolPref
   */
  /* void setBoolPref (in string aPrefName, in long aValue); */
  void SetBoolPref(char*aPrefName, PRInt32 aValue){
    nsresult __result = inner.SetBoolPref(aPrefName, aValue);
    CheckException(__result);
  }

  /**
   * Called to get the state of an individual string preference.
   *
   * @param aPrefName The string preference to retrieve.
   *
   * @return string   The value of the requested string preference.
   *
   * @see setCharPref
   */
  /* string getCharPref (in string aPrefName); */
  char* GetCharPref(char*aPrefName){
    char* _retval;
    nsresult __result = inner.GetCharPref(aPrefName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Called to set the state of an individual string preference.
   *
   * @param aPrefName The string preference to set.
   * @param aValue    The string value to set the preference to.
   *
   * @return NS_OK The value was successfully set.
   * @return Other The value was not set or is the wrong type.
   *
   * @see getCharPref
   */
  /* void setCharPref (in string aPrefName, in string aValue); */
  void SetCharPref(char*aPrefName, char*aValue){
    nsresult __result = inner.SetCharPref(aPrefName, aValue);
    CheckException(__result);
  }

  /**
   * Called to get the state of an individual integer preference.
   *
   * @param aPrefName The integer preference to get the value of.
   *
   * @return long     The value of the requested integer preference.
   *
   * @see setIntPref
   */
  /* long getIntPref (in string aPrefName); */
  PRInt32 GetIntPref(char*aPrefName){
    PRInt32 _retval;
    nsresult __result = inner.GetIntPref(aPrefName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Called to set the state of an individual integer preference.
   *
   * @param aPrefName The integer preference to set the value of.
   * @param aValue    The integer value to set the preference to.
   *
   * @return NS_OK The value was successfully set.
   * @return Other The value was not set or is the wrong type.
   *
   * @see getIntPref
   */
  /* void setIntPref (in string aPrefName, in long aValue); */
  void SetIntPref(char*aPrefName, PRInt32 aValue){
    nsresult __result = inner.SetIntPref(aPrefName, aValue);
    CheckException(__result);
  }

  /**
   * Called to get the state of an individual complex preference. A complex
   * preference is a preference which represents an XPCOM object that can not
   * be easily represented using a standard boolean, integer or string value.
   *
   * @param aPrefName The complex preference to get the value of.
   * @param aType     The XPCOM interface that this complex preference
   *                  represents. Interfaces currently supported are:
   *                    - nsILocalFile
   *                    - nsISupportsString (UniChar)
   *                    - nsIPrefLocalizedString (Localized UniChar)
   *                    - nsIFileSpec (deprecated - to be removed eventually)
   * @param aValue    The XPCOM object into which to the complex preference 
   *                  value should be retrieved.
   *
   * @return NS_OK The value was successfully retrieved.
   * @return Other The value does not exist or is the wrong type.
   *
   * @see setComplexValue
   */
  /* void getComplexValue (in string aPrefName, in nsIIDRef aType, [iid_is (aType), retval] out nsQIResult aValue); */
  void GetComplexValue(char*aPrefName, nsIID * aType, out void * aValue){
    nsresult __result = inner.GetComplexValue(aPrefName, aType, &aValue);
    CheckException(__result);
  }

  /**
   * Called to set the state of an individual complex preference. A complex
   * preference is a preference which represents an XPCOM object that can not
   * be easily represented using a standard boolean, integer or string value.
   *
   * @param aPrefName The complex preference to set the value of.
   * @param aType     The XPCOM interface that this complex preference
   *                  represents. Interfaces currently supported are:
   *                    - nsILocalFile
   *                    - nsISupportsString (UniChar)
   *                    - nsIPrefLocalizedString (Localized UniChar)
   *                    - nsIFileSpec (deprecated - to be removed eventually)
   * @param aValue    The XPCOM object from which to set the complex preference 
   *                  value.
   *
   * @return NS_OK The value was successfully set.
   * @return Other The value was not set or is the wrong type.
   *
   * @see getComplexValue
   */
  /* void setComplexValue (in string aPrefName, in nsIIDRef aType, in nsISupports aValue); */
  void SetComplexValue(char*aPrefName, nsIID * aType, nsISupportsD aValue){
    nsresult __result = inner.SetComplexValue(aPrefName, aType, aValue ? cast(nsISupports)aValue : null);
    CheckException(__result);
  }

  /**
   * Called to clear a user set value from a specific preference. This will, in
   * effect, reset the value to the default value. If no default value exists
   * the preference will cease to exist.
   *
   * @param aPrefName The preference to be cleared.
   *
   * @note
   * This method does nothing if this object is a default branch.
   *
   * @return NS_OK The user preference was successfully cleared.
   * @return Other The preference does not exist or have a user set value.
   */
  /* void clearUserPref (in string aPrefName); */
  void ClearUserPref(char*aPrefName){
    nsresult __result = inner.ClearUserPref(aPrefName);
    CheckException(__result);
  }

  /**
   * Called to lock a specific preference. Locking a preference will cause the
   * preference service to always return the default value regardless of
   * whether there is a user set value or not.
   *
   * @param aPrefName The preference to be locked.
   *
   * @note
   * This method can be called on either a default or user branch but, in
   * effect, always operates on the default branch.
   *
   * @return NS_OK The preference was successfully locked.
   * @return Other The preference does not exist or an error occurred.
   *
   * @see unlockPref
   */
  /* void lockPref (in string aPrefName); */
  void LockPref(char*aPrefName){
    nsresult __result = inner.LockPref(aPrefName);
    CheckException(__result);
  }

  /**
   * Called to check if a specific preference has a user value associated to
   * it.
   *
   * @param aPrefName The preference to be tested.
   *
   * @note
   * This method can be called on either a default or user branch but, in
   * effect, always operates on the user branch.
   *
   * @return boolean  true  The preference has a user set value.
   *                  false The preference only has a default value.
   */
  /* boolean prefHasUserValue (in string aPrefName); */
  PRBool PrefHasUserValue(char*aPrefName){
    PRBool _retval;
    nsresult __result = inner.PrefHasUserValue(aPrefName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Called to check if a specific preference is locked. If a preference is
   * locked calling its Get method will always return the default value.
   *
   * @param aPrefName The preference to be tested.
   *
   * @note
   * This method can be called on either a default or user branch but, in
   * effect, always operates on the default branch.
   *
   * @return boolean  true  The preference is locked.
   *                  false The preference is not locked.
   *
   * @see lockPref
   * @see unlockPref
   */
  /* boolean prefIsLocked (in string aPrefName); */
  PRBool PrefIsLocked(char*aPrefName){
    PRBool _retval;
    nsresult __result = inner.PrefIsLocked(aPrefName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Called to unlock a specific preference. Unlocking a previously locked 
   * preference allows the preference service to once again return the user set
   * value of the preference.
   *
   * @param aPrefName The preference to be unlocked.
   *
   * @note
   * This method can be called on either a default or user branch but, in
   * effect, always operates on the default branch.
   *
   * @return NS_OK The preference was successfully unlocked.
   * @return Other The preference does not exist or an error occurred.
   *
   * @see lockPref
   */
  /* void unlockPref (in string aPrefName); */
  void UnlockPref(char*aPrefName){
    nsresult __result = inner.UnlockPref(aPrefName);
    CheckException(__result);
  }

  /**
   * Called to remove all of the preferences referenced by this branch.
   *
   * @param aStartingAt The point on the branch at which to start the deleting
   *                    preferences. Pass in "" to remove all preferences
   *                    referenced by this branch.
   *
   * @note
   * This method can be called on either a default or user branch but, in
   * effect, always operates on both.
   *
   * @return NS_OK The preference(s) were successfully removed.
   * @return Other The preference(s) do not exist or an error occurred.
   */
  /* void deleteBranch (in string aStartingAt); */
  void DeleteBranch(char*aStartingAt){
    nsresult __result = inner.DeleteBranch(aStartingAt);
    CheckException(__result);
  }

  /**
   * Returns an array of strings representing the child preferences of the
   * root of this branch.
   * 
   * @param aStartingAt The point on the branch at which to start enumerating
   *                    the child preferences. Pass in "" to enumerate all
   *                    preferences referenced by this branch.
   * @param aCount      Receives the number of elements in the array.
   * @param aChildArray Receives the array of child preferences.
   *
   * @note
   * This method can be called on either a default or user branch but, in
   * effect, always operates on both.
   *
   * @return NS_OK The preference list was successfully retrieved.
   * @return Other The preference(s) do not exist or an error occurred.
   */
  /* void getChildList (in string aStartingAt, out unsigned long aCount, [array, size_is (aCount), retval] out string aChildArray); */
  void GetChildList(char*aStartingAt, out PRUint32 aCount, out char**aChildArray){
    nsresult __result = inner.GetChildList(aStartingAt, &aCount, &aChildArray);
    CheckException(__result);
  }

  /**
   * Called to reset all of the preferences referenced by this branch to their
   * default values.
   *
   * @param aStartingAt The point on the branch at which to start the resetting
   *                    preferences to their default values. Pass in "" to
   *                    reset all preferences referenced by this branch.
   *
   * @note
   * This method can be called on either a default or user branch but, in
   * effect, always operates on the user branch.
   *
   * @return NS_OK The preference(s) were successfully reset.
   * @return Other The preference(s) do not exist or an error occurred.
   */
  /* void resetBranch (in string aStartingAt); */
  void ResetBranch(char*aStartingAt){
    nsresult __result = inner.ResetBranch(aStartingAt);
    CheckException(__result);
  }

private:
  nsIPrefBranch inner;

}

