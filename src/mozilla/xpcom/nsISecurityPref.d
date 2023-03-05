/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISecurityPref.idl
 */

module mozilla.xpcom.nsISecurityPref;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsISecurityPref */
const char[] NS_ISECURITYPREF_IID_STR = "94afd973-8045-4c6c-89e6-75bdced4209e";

const nsIID NS_ISECURITYPREF_IID= 
  {0x94afd973, 0x8045, 0x4c6c, 
    [ 0x89, 0xe6, 0x75, 0xbd, 0xce, 0xd4, 0x20, 0x9e ]};

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
extern(Windows)
interface nsISecurityPref : nsISupports {
  static const char[] IID_STR = NS_ISECURITYPREF_IID_STR;
  static const nsIID IID = NS_ISECURITYPREF_IID;

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
  nsresult SecurityGetBoolPref(char *pref, PRBool *_retval);

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
  nsresult SecuritySetBoolPref(char *pref, PRBool value);

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
  nsresult SecurityGetCharPref(char *pref, char **_retval);

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
  nsresult SecuritySetCharPref(char *pref, char *value);

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
  nsresult SecurityGetIntPref(char *pref, PRInt32 *_retval);

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
  nsresult SecuritySetIntPref(char *pref, PRInt32 value);

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
  nsresult SecurityClearUserPref(char *pref_name);

}


/* starting interface:    nsIPrefSecurityCheck */
const char[] NS_IPREFSECURITYCHECK_IID_STR = "c73c9a05-92ce-46e1-8f69-90a2a3a36104";

const nsIID NS_IPREFSECURITYCHECK_IID= 
  {0xc73c9a05, 0x92ce, 0x46e1, 
    [ 0x8f, 0x69, 0x90, 0xa2, 0xa3, 0xa3, 0x61, 0x04 ]};

/**
 * This interface allows checking whether getting capability prefs is allowed.
 */
extern(Windows)
interface nsIPrefSecurityCheck : nsISupports {
  static const char[] IID_STR = NS_IPREFSECURITYCHECK_IID_STR;
  static const nsIID IID = NS_IPREFSECURITYCHECK_IID;

  /**
   * Checks whether the currently executing script (if any) can access security
   * preferences. Corresponds to CapabilityPreferencesAccess.
   *
   * Exceptions from this method should be treated like a return value of false.
   */
  /* boolean canAccessSecurityPreferences (); */
  nsresult CanAccessSecurityPreferences(PRBool *_retval);

}

