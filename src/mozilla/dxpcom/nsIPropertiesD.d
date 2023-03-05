/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProperties.idl
 */

module mozilla.dxpcom.nsIPropertiesD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIProperties;


public import mozilla.dxpcom.nsIPropertiesD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIProperties */
class nsIPropertiesD : public nsISupportsD {

  static const nsIID IID = NS_IPROPERTIES_IID;


  alias nsIProperties InnerType;

  this(nsIProperties intr){
    super(intr);
    this.inner = intr;
  }

  nsIProperties opCast() {
    return inner;
  }

  void opAssign(nsIProperties value) {
    inner = value;
  }

  /**
     * Gets a property with a given name. 
     *
     * @return NS_ERROR_FAILURE if a property with that name doesn't exist.
     * @return NS_ERROR_NO_INTERFACE if the found property fails to QI to the 
     * given iid.
     */
  /* void get (in string prop, in nsIIDRef iid, [iid_is (iid), retval] out nsQIResult result); */
  void Get(char*prop, nsIID * iid, out void * result){
    nsresult __result = inner.Get(prop, iid, &result);
    CheckException(__result);
  }

  /**
     * Sets a property with a given name to a given value. 
     */
  /* void set (in string prop, in nsISupports value); */
  void Set(char*prop, nsISupportsD value){
    nsresult __result = inner.Set(prop, value ? cast(nsISupports)value : null);
    CheckException(__result);
  }

  /**
     * Returns true if the property with the given name exists.
     */
  /* boolean has (in string prop); */
  PRBool Has(char*prop){
    PRBool _retval;
    nsresult __result = inner.Has(prop, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Undefines a property.
     * @return NS_ERROR_FAILURE if a property with that name doesn't
     * already exist.
     */
  /* void undefine (in string prop); */
  void Undefine(char*prop){
    nsresult __result = inner.Undefine(prop);
    CheckException(__result);
  }

  /**
     *  Returns an array of the keys.
     */
  /* void getKeys (out PRUint32 count, [array, size_is (count), retval] out string keys); */
  void GetKeys(out PRUint32 count, out char**keys){
    nsresult __result = inner.GetKeys(&count, &keys);
    CheckException(__result);
  }

private:
  nsIProperties inner;

}

