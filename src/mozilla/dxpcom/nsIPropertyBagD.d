/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPropertyBag.idl
 */

module mozilla.dxpcom.nsIPropertyBagD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPropertyBag;


public import mozilla.dxpcom.nsIPropertyBagD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIVariant;

public import mozilla.dxpcom.nsIVariantD;

public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.dxpcom.nsISimpleEnumeratorD;


/* starting wrapper class:    nsIPropertyBag */
class nsIPropertyBagD : public nsISupportsD {

  static const nsIID IID = NS_IPROPERTYBAG_IID;


  alias nsIPropertyBag InnerType;

  this(nsIPropertyBag intr){
    super(intr);
    this.inner = intr;
  }

  nsIPropertyBag opCast() {
    return inner;
  }

  void opAssign(nsIPropertyBag value) {
    inner = value;
  }

  /**
     * Get a nsISimpleEnumerator whose elements are nsIProperty objects.
     */
  /* readonly attribute nsISimpleEnumerator enumerator; */
  nsISimpleEnumeratorD  Enumerator(){
    nsISimpleEnumerator value;
    nsresult __result = inner.GetEnumerator(&value);
    CheckException(__result);
    return new nsISimpleEnumeratorD(value);
  }

  /**
     * Get a property value for the given name.
     * @throws NS_ERROR_FAILURE if a property with that name doesn't
     * exist.
     */
  /* nsIVariant getProperty (in AString name); */
  nsIVariantD  GetProperty(wchar[] name){
    scope auto _name = new AString(name);
    nsIVariant _retval;
    nsresult __result = inner.GetProperty(cast(nsAString*)_name, &_retval);
    CheckException(__result);
    return new nsIVariantD(_retval);
  }

private:
  nsIPropertyBag inner;

}

