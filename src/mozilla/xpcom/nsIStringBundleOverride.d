/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIStringBundleOverride.idl
 */

module mozilla.xpcom.nsIStringBundleOverride;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */


/* starting interface:    nsIStringBundleOverride */
const char[] NS_ISTRINGBUNDLEOVERRIDE_IID_STR = "965eb278-5678-456b-82a7-20a0c86a803c";

const nsIID NS_ISTRINGBUNDLEOVERRIDE_IID= 
  {0x965eb278, 0x5678, 0x456b, 
    [ 0x82, 0xa7, 0x20, 0xa0, 0xc8, 0x6a, 0x80, 0x3c ]};

extern(Windows)
interface nsIStringBundleOverride : nsISupports {
  static const char[] IID_STR = NS_ISTRINGBUNDLEOVERRIDE_IID_STR;
  static const nsIID IID = NS_ISTRINGBUNDLEOVERRIDE_IID;

  /**
   * get the override value for a particular key in a particular
   * string bundle
   */
  /* AString getStringFromName (in AUTF8String url, in ACString key); */
  nsresult GetStringFromName(nsACString * url, nsACString * key, nsAString * _retval);

  /**
   * get all override keys for a given string bundle
   */
  /* nsISimpleEnumerator enumerateKeysInBundle (in AUTF8String url); */
  nsresult EnumerateKeysInBundle(nsACString * url, nsISimpleEnumerator *_retval);

}

