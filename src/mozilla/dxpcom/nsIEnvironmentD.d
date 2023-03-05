/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEnvironment.idl
 */

module mozilla.dxpcom.nsIEnvironmentD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIEnvironment;


public import mozilla.dxpcom.nsIEnvironmentD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIEnvironment */
/**
 * Scriptable access to the current process environment.
 *
 */
class nsIEnvironmentD : public nsISupportsD {

  static const nsIID IID = NS_IENVIRONMENT_IID;


  alias nsIEnvironment InnerType;

  this(nsIEnvironment intr){
    super(intr);
    this.inner = intr;
  }

  nsIEnvironment opCast() {
    return inner;
  }

  void opAssign(nsIEnvironment value) {
    inner = value;
  }

  /**
     * Set the value of an environment variable.
     *
     * @param aName   the variable name to set.
     * @param aValue  the value to set.
     */
  /* void set (in AString aName, in AString aValue); */
  void Set(wchar[] aName, wchar[] aValue){
    scope auto _aName = new AString(aName);
    scope auto _aValue = new AString(aValue);
    nsresult __result = inner.Set(cast(nsAString*)_aName, cast(nsAString*)_aValue);
    CheckException(__result);
  }

  /**
     * Get the value of an environment variable.
     *
     * @param aName   the variable name to retrieve.
     * @return        returns the value of the env variable. An empty string
     *                will be returned when the env variable does not exist or
     *                when the value itself is an empty string - please use
     *                |exists()| to probe whether the env variable exists
     *                or not.
     */
  /* AString get (in AString aName); */
  wchar[] Get(wchar[] aName){
    scope auto _aName = new AString(aName);
    scope auto _retval = new AString;
    nsresult __result = inner.Get(cast(nsAString*)_aName, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
     * Check the existence of an environment variable.
     * This method checks whether an environment variable is present in
     * the environment or not.
     *
     * - For Unix/Linux platforms we follow the Unix definition:
     * An environment variable exists when |getenv()| returns a non-NULL value.
     * An environment variable does not exist when |getenv()| returns NULL.
     * - For non-Unix/Linux platforms we have to fall back to a 
     * "portable" definition (which is incorrect for Unix/Linux!!!!)
     * which simply checks whether the string returned by |Get()| is empty
     * or not.
     *
     * @param aName   the variable name to probe.
     * @return        if the variable has been set, the value returned is
     *                PR_TRUE. If the variable was not defined in the
     *                environment PR_FALSE will be returned.
     */
  /* boolean exists (in AString aName); */
  PRBool Exists(wchar[] aName){
    scope auto _aName = new AString(aName);
    PRBool _retval;
    nsresult __result = inner.Exists(cast(nsAString*)_aName, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIEnvironment inner;

}

