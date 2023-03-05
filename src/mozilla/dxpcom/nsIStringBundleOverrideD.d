/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIStringBundleOverride.idl
 */

module mozilla.dxpcom.nsIStringBundleOverrideD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIStringBundleOverride;


public import mozilla.dxpcom.nsIStringBundleOverrideD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.dxpcom.nsISimpleEnumeratorD;


/* starting wrapper class:    nsIStringBundleOverride */
class nsIStringBundleOverrideD : public nsISupportsD {

  static const nsIID IID = NS_ISTRINGBUNDLEOVERRIDE_IID;


  alias nsIStringBundleOverride InnerType;

  this(nsIStringBundleOverride intr){
    super(intr);
    this.inner = intr;
  }

  nsIStringBundleOverride opCast() {
    return inner;
  }

  void opAssign(nsIStringBundleOverride value) {
    inner = value;
  }

  /**
   * get the override value for a particular key in a particular
   * string bundle
   */
  /* AString getStringFromName (in AUTF8String url, in ACString key); */
  wchar[] GetStringFromName(char[] url, char[] key){
    scope auto _url = new ACString(url);
    scope auto _key = new ACString(key);
    scope auto _retval = new AString;
    nsresult __result = inner.GetStringFromName(cast(nsACString*)_url, cast(nsACString*)_key, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * get all override keys for a given string bundle
   */
  /* nsISimpleEnumerator enumerateKeysInBundle (in AUTF8String url); */
  nsISimpleEnumeratorD  EnumerateKeysInBundle(char[] url){
    scope auto _url = new ACString(url);
    nsISimpleEnumerator _retval;
    nsresult __result = inner.EnumerateKeysInBundle(cast(nsACString*)_url, &_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

private:
  nsIStringBundleOverride inner;

}

