/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProperty.idl
 */

module mozilla.xpcom.nsIProperty;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIVariant; /* forward declaration */


/* starting interface:    nsIProperty */
const char[] NS_IPROPERTY_IID_STR = "6dcf9030-a49f-11d5-910d-0010a4e73d9a";

const nsIID NS_IPROPERTY_IID= 
  {0x6dcf9030, 0xa49f, 0x11d5, 
    [ 0x91, 0x0d, 0x00, 0x10, 0xa4, 0xe7, 0x3d, 0x9a ]};

extern(Windows)
interface nsIProperty : nsISupports {
  static const char[] IID_STR = NS_IPROPERTY_IID_STR;
  static const nsIID IID = NS_IPROPERTY_IID;

  /**
     * Get the name of the property.
     */
  /* readonly attribute AString name; */
  nsresult GetName(nsAString * aName);

  /**
     * Get the value of the property.
     */
  /* readonly attribute nsIVariant value; */
  nsresult GetValue(nsIVariant  *aValue);

}

