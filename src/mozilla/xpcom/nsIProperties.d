/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProperties.idl
 */

module mozilla.xpcom.nsIProperties;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIProperties */
const char[] NS_IPROPERTIES_IID_STR = "78650582-4e93-4b60-8e85-26ebd3eb14ca";

const nsIID NS_IPROPERTIES_IID= 
  {0x78650582, 0x4e93, 0x4b60, 
    [ 0x8e, 0x85, 0x26, 0xeb, 0xd3, 0xeb, 0x14, 0xca ]};

extern(Windows)
interface nsIProperties : nsISupports {
  static const char[] IID_STR = NS_IPROPERTIES_IID_STR;
  static const nsIID IID = NS_IPROPERTIES_IID;

  /**
     * Gets a property with a given name. 
     *
     * @return NS_ERROR_FAILURE if a property with that name doesn't exist.
     * @return NS_ERROR_NO_INTERFACE if the found property fails to QI to the 
     * given iid.
     */
  /* void get (in string prop, in nsIIDRef iid, [iid_is (iid), retval] out nsQIResult result); */
  nsresult Get(char *prop, nsIID * iid, void * *result);

  /**
     * Sets a property with a given name to a given value. 
     */
  /* void set (in string prop, in nsISupports value); */
  nsresult Set(char *prop, nsISupports value);

  /**
     * Returns true if the property with the given name exists.
     */
  /* boolean has (in string prop); */
  nsresult Has(char *prop, PRBool *_retval);

  /**
     * Undefines a property.
     * @return NS_ERROR_FAILURE if a property with that name doesn't
     * already exist.
     */
  /* void undefine (in string prop); */
  nsresult Undefine(char *prop);

  /**
     *  Returns an array of the keys.
     */
  /* void getKeys (out PRUint32 count, [array, size_is (count), retval] out string keys); */
  nsresult GetKeys(PRUint32 *count, char ***keys);

}

