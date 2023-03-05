/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISecurityPref.idl
 */

module mozilla.dxpcom.nsISecurityPrefD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISecurityPref;


public import mozilla.dxpcom.nsISecurityPrefD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsISecurityPref */
/**
 * Interface for accessing preferences, bypassing the usual security check on
 * preferences starting with "capability". This interface is used by
 * nsScriptSecurityManager which needs unchecked access to security prefs. 
 * *PLEASE* do not call this interface from any other file, as this 
 * would be insecure.
 *
 * THIS INTERFACE SHOULD NEVER BE MADE SCRIPTABLE 
 *
 * @see nsIPrefBranch
 */
class nsISecurityPrefD : public nsISupportsD {

  static const nsIID IID = NS_ISECURITYPREF_IID;


  alias nsISecurityPref InnerType;

  this(nsISecurityPref intr){
    super(intr);
    this.inner = intr;
  }

  nsISecurityPref opCast() {
    return inner;
  }

  void opAssign(nsISecurityPref value) {
    inner = value;
  }

  /**
   * Called to get the state of a "capability" boolean preference.
   *
   * @param pref     The boolean preference to get the state of.
   *
   * @return boolean The value of the requested boolean preference.
   *
   * @see securitySetBoolPref
   */
  /* boolean securityGetBoolPref (in string pref); */
  PRBool SecurityGetBoolPref(char*pref){
    PRBool _retval;
    nsresult __result = inner.SecurityGetBoolPref(pref, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Called to set the state of a "capability" boolean preference.
   *
   * @param pref   The boolean preference to set the state of.
   * @param value  The boolean value to set the preference to.
   *
   * @return NS_OK The value was successfully set.
   * @return Other The value was not set or is the wrong type.
   *
   * @see securityGetBoolPref
   */
  /* void securitySetBoolPref (in string pref, in boolean value); */
  void SecuritySetBoolPref(char*pref, PRBool value){
    nsresult __result = inner.SecuritySetBoolPref(pref, value);
    CheckException(__result);
  }

  /**
   * Called to get the state of a "capability" string preference.
   *
   * @param pref    The string preference to retrieve.
   *
   * @return string The value of the requested string preference.
   *
   * @see securitySetCharPref
   */
  /* string securityGetCharPref (in string pref); */
  char* SecurityGetCharPref(char*pref){
    char* _retval;
    nsresult __result = inner.SecurityGetCharPref(pref, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Called to set the state of a "capability" string preference.
   *
   * @param pref   The string preference to set.
   * @param value  The string value to set the preference to.
   *
   * @return NS_OK The value was successfully set.
   * @return Other The value was not set or is the wrong type.
   *
   * @see securityGetCharPref
   */
  /* void securitySetCharPref (in string pref, in string value); */
  void SecuritySetCharPref(char*pref, char*value){
    nsresult __result = inner.SecuritySetCharPref(pref, value);
    CheckException(__result);
  }

  /**
   * Called to get the state of a "capability" integer preference.
   *
   * @param pref  The integer preference to get the value of.
   *
   * @return long The value of the requested integer preference.
   *
   * @see securitySetIntPref
   */
  /* long securityGetIntPref (in string pref); */
  PRInt32 SecurityGetIntPref(char*pref){
    PRInt32 _retval;
    nsresult __result = inner.SecurityGetIntPref(pref, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Called to set the state of a "capability" integer preference.
   *
   * @param pref   The integer preference to set the value of.
   * @param value  The integer value to set the preference to.
   *
   * @return NS_OK The value was successfully set.
   * @return Other The value was not set or is the wrong type.
   *
   * @see securityGetIntPref
   */
  /* void securitySetIntPref (in string pref, in long value); */
  void SecuritySetIntPref(char*pref, PRInt32 value){
    nsresult __result = inner.SecuritySetIntPref(pref, value);
    CheckException(__result);
  }

  /**
   * Called to clear a user set value from a "capability" preference. This
   * will, in effect, reset the value to the default value. If no default value
   * exists the preference will cease to exist.
   *
   * @param pref_name The preference to be cleared.
   *
   * @note
   * This method does nothing if this object is a default branch.
   *
   * @return NS_OK The user preference was successfully cleared.
   * @return Other The preference does not exist or have a user set value.
   */
  /* void securityClearUserPref (in string pref_name); */
  void SecurityClearUserPref(char*pref_name){
    nsresult __result = inner.SecurityClearUserPref(pref_name);
    CheckException(__result);
  }

private:
  nsISecurityPref inner;

}


/* starting wrapper class:    nsIPrefSecurityCheck */
/**
 * This interface allows checking whether getting capability prefs is allowed.
 */
class nsIPrefSecurityCheckD : public nsISupportsD {

  static const nsIID IID = NS_IPREFSECURITYCHECK_IID;


  alias nsIPrefSecurityCheck InnerType;

  this(nsIPrefSecurityCheck intr){
    super(intr);
    this.inner = intr;
  }

  nsIPrefSecurityCheck opCast() {
    return inner;
  }

  void opAssign(nsIPrefSecurityCheck value) {
    inner = value;
  }

  /**
   * Checks whether the currently executing script (if any) can access security
   * preferences. Corresponds to CapabilityPreferencesAccess.
   *
   * Exceptions from this method should be treated like a return value of false.
   */
  /* boolean canAccessSecurityPreferences (); */
  PRBool CanAccessSecurityPreferences(){
    PRBool _retval;
    nsresult __result = inner.CanAccessSecurityPreferences(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIPrefSecurityCheck inner;

}

