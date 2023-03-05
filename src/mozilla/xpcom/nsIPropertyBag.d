/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPropertyBag.idl
 */

module mozilla.xpcom.nsIPropertyBag;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIVariant; /* forward declaration */

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */


/* starting interface:    nsIPropertyBag */
const char[] NS_IPROPERTYBAG_IID_STR = "bfcd37b0-a49f-11d5-910d-0010a4e73d9a";

const nsIID NS_IPROPERTYBAG_IID= 
  {0xbfcd37b0, 0xa49f, 0x11d5, 
    [ 0x91, 0x0d, 0x00, 0x10, 0xa4, 0xe7, 0x3d, 0x9a ]};

extern(Windows)
interface nsIPropertyBag : nsISupports {
  static const char[] IID_STR = NS_IPROPERTYBAG_IID_STR;
  static const nsIID IID = NS_IPROPERTYBAG_IID;

  /**
     * Get a nsISimpleEnumerator whose elements are nsIProperty objects.
     */
  /* readonly attribute nsISimpleEnumerator enumerator; */
  nsresult GetEnumerator(nsISimpleEnumerator  *aEnumerator);

  /**
     * Get a property value for the given name.
     * @throws NS_ERROR_FAILURE if a property with that name doesn't
     * exist.
     */
  /* nsIVariant getProperty (in AString name); */
  nsresult GetProperty(nsAString * name, nsIVariant *_retval);

}

