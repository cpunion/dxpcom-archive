/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWritablePropertyBag.idl
 */

module mozilla.dxpcom.nsIWritablePropertyBagD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWritablePropertyBag;


public import mozilla.dxpcom.nsIWritablePropertyBagD;

public import mozilla.xpcom.nsIPropertyBag;
public import mozilla.dxpcom.nsIPropertyBagD;


/* starting wrapper class:    nsIWritablePropertyBag */
class nsIWritablePropertyBagD : public nsIPropertyBagD {

  static const nsIID IID = NS_IWRITABLEPROPERTYBAG_IID;


  alias nsIWritablePropertyBag InnerType;

  this(nsIWritablePropertyBag intr){
    super(intr);
    this.inner = intr;
  }

  nsIWritablePropertyBag opCast() {
    return inner;
  }

  void opAssign(nsIWritablePropertyBag value) {
    inner = value;
  }

  /**
     * Set a property with the given name to the given value.  If
     * a property already exists with the given name, it is
     * overwritten.
     */
  /* void setProperty (in AString name, in nsIVariant value); */
  void SetProperty(wchar[] name, nsIVariantD value){
    scope auto _name = new AString(name);
    nsresult __result = inner.SetProperty(cast(nsAString*)_name, value ? cast(nsIVariant)value : null);
    CheckException(__result);
  }

  /**
     * Delete a property with the given name.
     * @throws NS_ERROR_FAILURE if a property with that name doesn't
     * exist.
     */
  /* void deleteProperty (in AString name); */
  void DeleteProperty(wchar[] name){
    scope auto _name = new AString(name);
    nsresult __result = inner.DeleteProperty(cast(nsAString*)_name);
    CheckException(__result);
  }

private:
  nsIWritablePropertyBag inner;

}

