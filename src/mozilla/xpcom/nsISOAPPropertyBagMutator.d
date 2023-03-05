/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPPropertyBagMutator.idl
 */

module mozilla.xpcom.nsISOAPPropertyBagMutator;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIPropertyBag; /* forward declaration */

public import mozilla.xpcom.nsIVariant; /* forward declaration */


/* starting interface:    nsISOAPPropertyBagMutator */
const char[] NS_ISOAPPROPERTYBAGMUTATOR_IID_STR = "f34cb3c8-1dd1-11b2-8a18-a93a99d92c08";

const nsIID NS_ISOAPPROPERTYBAGMUTATOR_IID= 
  {0xf34cb3c8, 0x1dd1, 0x11b2, 
    [ 0x8a, 0x18, 0xa9, 0x3a, 0x99, 0xd9, 0x2c, 0x08 ]};

/**
 * This permits construction by native or
 * script code a property bag that is also
 * usable by other xpconnect systems.
 */
extern(Windows)
interface nsISOAPPropertyBagMutator : nsISupports {
  static const char[] IID_STR = NS_ISOAPPROPERTYBAGMUTATOR_IID_STR;
  static const nsIID IID = NS_ISOAPPROPERTYBAGMUTATOR_IID;

  /**
   * The property bag that is being constructed.
   * After the mutator is destroyed, this is
   * read-only.  This will never be null.
   */
  /* readonly attribute nsIPropertyBag propertyBag; */
  nsresult GetPropertyBag(nsIPropertyBag  *aPropertyBag);

  /**
   * Add or replace a property to the 
   * newly-constructed property bag.
   *
   * @param aName The name of the property.
   *
   * @param aValue The value of the property.
   */
  /* void addProperty (in AString aName, in nsIVariant aValue); */
  nsresult AddProperty(nsAString * aName, nsIVariant aValue);

}

