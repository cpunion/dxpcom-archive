/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProperty.idl
 */

module mozilla.dxpcom.nsIPropertyD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIProperty;


public import mozilla.dxpcom.nsIPropertyD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIVariant;

public import mozilla.dxpcom.nsIVariantD;


/* starting wrapper class:    nsIProperty */
class nsIPropertyD : public nsISupportsD {

  static const nsIID IID = NS_IPROPERTY_IID;


  alias nsIProperty InnerType;

  this(nsIProperty intr){
    super(intr);
    this.inner = intr;
  }

  nsIProperty opCast() {
    return inner;
  }

  void opAssign(nsIProperty value) {
    inner = value;
  }

  /**
     * Get the name of the property.
     */
  /* readonly attribute AString name; */
  wchar[] Name(){
    scope auto value = new AString();
    nsresult __result = inner.GetName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
     * Get the value of the property.
     */
  /* readonly attribute nsIVariant value; */
  nsIVariantD  Value(){
    nsIVariant value;
    nsresult __result = inner.GetValue(&value);
    CheckException(__result);
    return new nsIVariantD(value);
  }

private:
  nsIProperty inner;

}

