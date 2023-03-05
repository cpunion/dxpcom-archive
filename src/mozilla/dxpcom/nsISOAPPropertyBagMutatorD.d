/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPPropertyBagMutator.idl
 */

module mozilla.dxpcom.nsISOAPPropertyBagMutatorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISOAPPropertyBagMutator;


public import mozilla.dxpcom.nsISOAPPropertyBagMutatorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIPropertyBag;

public import mozilla.dxpcom.nsIPropertyBagD;

public import mozilla.xpcom.nsIVariant;

public import mozilla.dxpcom.nsIVariantD;


/* starting wrapper class:    nsISOAPPropertyBagMutator */
/**
 * This permits construction by native or
 * script code a property bag that is also
 * usable by other xpconnect systems.
 */
class nsISOAPPropertyBagMutatorD : public nsISupportsD {

  static const nsIID IID = NS_ISOAPPROPERTYBAGMUTATOR_IID;


  alias nsISOAPPropertyBagMutator InnerType;

  this(nsISOAPPropertyBagMutator intr){
    super(intr);
    this.inner = intr;
  }

  nsISOAPPropertyBagMutator opCast() {
    return inner;
  }

  void opAssign(nsISOAPPropertyBagMutator value) {
    inner = value;
  }

  /**
   * The property bag that is being constructed.
   * After the mutator is destroyed, this is
   * read-only.  This will never be null.
   */
  /* readonly attribute nsIPropertyBag propertyBag; */
  nsIPropertyBagD  PropertyBag(){
    nsIPropertyBag value;
    nsresult __result = inner.GetPropertyBag(&value);
    CheckException(__result);
    return new nsIPropertyBagD(value);
  }

  /**
   * Add or replace a property to the 
   * newly-constructed property bag.
   *
   * @param aName The name of the property.
   *
   * @param aValue The value of the property.
   */
  /* void addProperty (in AString aName, in nsIVariant aValue); */
  void AddProperty(wchar[] aName, nsIVariantD aValue){
    scope auto _aName = new AString(aName);
    nsresult __result = inner.AddProperty(cast(nsAString*)_aName, aValue ? cast(nsIVariant)aValue : null);
    CheckException(__result);
  }

private:
  nsISOAPPropertyBagMutator inner;

}

