/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICollation.idl
 */

module mozilla.dxpcom.nsICollationD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICollation;


public import mozilla.dxpcom.nsICollationD;

public import mozilla.xpcom.nsILocale;
public import mozilla.dxpcom.nsILocaleD;

public import mozilla.xpcom.nsICollation;

public import mozilla.dxpcom.nsICollationD;


/* starting wrapper class:    nsICollationFactory */
class nsICollationFactoryD : public nsISupportsD {

  static const nsIID IID = NS_ICOLLATIONFACTORY_IID;


  alias nsICollationFactory InnerType;

  this(nsICollationFactory intr){
    super(intr);
    this.inner = intr;
  }

  nsICollationFactory opCast() {
    return inner;
  }

  void opAssign(nsICollationFactory value) {
    inner = value;
  }

  /* nsICollation CreateCollation (in nsILocale locale); */
  nsICollationD  CreateCollation(nsILocaleD locale){
    nsICollation _retval;
    nsresult __result = inner.CreateCollation(locale ? cast(nsILocale)locale : null, &_retval);
    CheckException(__result);
    return new nsICollationD(_retval);
  }

private:
  nsICollationFactory inner;

}


/* starting wrapper class:    nsICollation */
class nsICollationD : public nsISupportsD {

  static const nsIID IID = NS_ICOLLATION_IID;


  alias nsICollation InnerType;

  this(nsICollation intr){
    super(intr);
    this.inner = intr;
  }

  nsICollation opCast() {
    return inner;
  }

  void opAssign(nsICollation value) {
    inner = value;
  }

  enum { kCollationStrengthDefault = 0 }

  enum { kCollationCaseInsensitiveAscii = 1 }

  enum { kCollationAccentInsenstive = 2 }

  enum { kCollationCaseSensitive = 0 }

  enum { kCollationCaseInSensitive = 3 }

  /* void initialize (in nsILocale locale); */
  void Initialize(nsILocaleD locale){
    nsresult __result = inner.Initialize(locale ? cast(nsILocale)locale : null);
    CheckException(__result);
  }

  /* long compareString (in long strength, in AString string1, in AString string2); */
  PRInt32 CompareString(PRInt32 strength, wchar[] string1, wchar[] string2){
    scope auto _string1 = new AString(string1);
    scope auto _string2 = new AString(string2);
    PRInt32 _retval;
    nsresult __result = inner.CompareString(strength, cast(nsAString*)_string1, cast(nsAString*)_string2, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] void allocateRawSortKey (in long strength, in AString stringIn, [array, size_is (outLen)] out octet key, out unsigned long outLen); */
  void AllocateRawSortKey(PRInt32 strength, wchar[] stringIn, out PRUint8 *key, out PRUint32 outLen){
    scope auto _stringIn = new AString(stringIn);
    nsresult __result = inner.AllocateRawSortKey(strength, cast(nsAString*)_stringIn, &key, &outLen);
    CheckException(__result);
  }

  /* [noscript] long compareRawSortKey ([array, size_is (len1), const] in octet key1, in unsigned long len1, [array, size_is (len2), const] in octet key2, in unsigned long len2); */
  PRInt32 CompareRawSortKey(PRUint8 *key1, PRUint32 len1, PRUint8 *key2, PRUint32 len2){
    PRInt32 _retval;
    nsresult __result = inner.CompareRawSortKey(key1, len1, key2, len2, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsICollation inner;

}

