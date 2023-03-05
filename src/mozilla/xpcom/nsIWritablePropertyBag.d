/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWritablePropertyBag.idl
 */

module mozilla.xpcom.nsIWritablePropertyBag;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIPropertyBag;


/* starting interface:    nsIWritablePropertyBag */
const char[] NS_IWRITABLEPROPERTYBAG_IID_STR = "96fc4671-eeb4-4823-9421-e50fb70ad353";

const nsIID NS_IWRITABLEPROPERTYBAG_IID= 
  {0x96fc4671, 0xeeb4, 0x4823, 
    [ 0x94, 0x21, 0xe5, 0x0f, 0xb7, 0x0a, 0xd3, 0x53 ]};

extern(Windows)
interface nsIWritablePropertyBag : nsIPropertyBag {
  static const char[] IID_STR = NS_IWRITABLEPROPERTYBAG_IID_STR;
  static const nsIID IID = NS_IWRITABLEPROPERTYBAG_IID;

  /**
     * Set a property with the given name to the given value.  If
     * a property already exists with the given name, it is
     * overwritten.
     */
  /* void setProperty (in AString name, in nsIVariant value); */
  nsresult SetProperty(nsAString * name, nsIVariant value);

  /**
     * Delete a property with the given name.
     * @throws NS_ERROR_FAILURE if a property with that name doesn't
     * exist.
     */
  /* void deleteProperty (in AString name); */
  nsresult DeleteProperty(nsAString * name);

}

