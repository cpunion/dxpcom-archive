/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEnvironment.idl
 */

module mozilla.xpcom.nsIEnvironment;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIEnvironment */
const char[] NS_IENVIRONMENT_IID_STR = "101d5941-d820-4e85-a266-9a3469940807";

const nsIID NS_IENVIRONMENT_IID= 
  {0x101d5941, 0xd820, 0x4e85, 
    [ 0xa2, 0x66, 0x9a, 0x34, 0x69, 0x94, 0x08, 0x07 ]};

/**
 * Scriptable access to the current process environment.
 *
 */
extern(Windows)
interface nsIEnvironment : nsISupports {
  static const char[] IID_STR = NS_IENVIRONMENT_IID_STR;
  static const nsIID IID = NS_IENVIRONMENT_IID;

  /**
     * Set the value of an environment variable.
     *
     * @param aName   the variable name to set.
     * @param aValue  the value to set.
     */
  /* void set (in AString aName, in AString aValue); */
  nsresult Set(nsAString * aName, nsAString * aValue);

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
  nsresult Get(nsAString * aName, nsAString * _retval);

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
  nsresult Exists(nsAString * aName, PRBool *_retval);

}

