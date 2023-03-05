/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIStringBundle.idl
 */

module mozilla.dxpcom.nsIStringBundleD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIStringBundle;


public import mozilla.dxpcom.nsIStringBundleD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISimpleEnumerator;
public import mozilla.dxpcom.nsISimpleEnumeratorD;


/* starting wrapper class:    nsIStringBundle */
class nsIStringBundleD : public nsISupportsD {

  static const nsIID IID = NS_ISTRINGBUNDLE_IID;


  alias nsIStringBundle InnerType;

  this(nsIStringBundle intr){
    super(intr);
    this.inner = intr;
  }

  nsIStringBundle opCast() {
    return inner;
  }

  void opAssign(nsIStringBundle value) {
    inner = value;
  }

  /* wstring GetStringFromID (in long aID); */
  PRUnichar* GetStringFromID(PRInt32 aID){
    PRUnichar* _retval;
    nsresult __result = inner.GetStringFromID(aID, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* wstring GetStringFromName (in wstring aName); */
  PRUnichar* GetStringFromName(PRUnichar*aName){
    PRUnichar* _retval;
    nsresult __result = inner.GetStringFromName(aName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* wstring formatStringFromID (in long aID, [array, size_is (length)] in wstring params, in unsigned long length); */
  PRUnichar* FormatStringFromID(PRInt32 aID, PRUnichar**params, PRUint32 length){
    PRUnichar* _retval;
    nsresult __result = inner.FormatStringFromID(aID, params, length, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* wstring formatStringFromName (in wstring aName, [array, size_is (length)] in wstring params, in unsigned long length); */
  PRUnichar* FormatStringFromName(PRUnichar*aName, PRUnichar**params, PRUint32 length){
    PRUnichar* _retval;
    nsresult __result = inner.FormatStringFromName(aName, params, length, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsISimpleEnumerator getSimpleEnumeration (); */
  nsISimpleEnumeratorD  GetSimpleEnumeration(){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.GetSimpleEnumeration(&_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

private:
  nsIStringBundle inner;

}


/* starting wrapper class:    nsIStringBundleService */
class nsIStringBundleServiceD : public nsISupportsD {

  static const nsIID IID = NS_ISTRINGBUNDLESERVICE_IID;


  alias nsIStringBundleService InnerType;

  this(nsIStringBundleService intr){
    super(intr);
    this.inner = intr;
  }

  nsIStringBundleService opCast() {
    return inner;
  }

  void opAssign(nsIStringBundleService value) {
    inner = value;
  }

  /* nsIStringBundle createBundle (in string aURLSpec); */
  nsIStringBundleD  CreateBundle(char*aURLSpec){
    nsIStringBundle _retval;
    nsresult __result = inner.CreateBundle(aURLSpec, &_retval);
    CheckException(__result);
    return new nsIStringBundleD(_retval);
  }

  /* nsIStringBundle createExtensibleBundle (in string aRegistryKey); */
  nsIStringBundleD  CreateExtensibleBundle(char*aRegistryKey){
    nsIStringBundle _retval;
    nsresult __result = inner.CreateExtensibleBundle(aRegistryKey, &_retval);
    CheckException(__result);
    return new nsIStringBundleD(_retval);
  }

  /**
   * Formats a message string from a status code and status arguments.
   * @param aStatus - The status code. This is mapped into a string ID and
   *            and used in the string lookup process (see nsIErrorService).
   * @param aStatusArg - The status message argument(s). Multiple arguments
   *            can be separated by newline ('\n') characters.
   * @return the formatted message
   */
  /* wstring formatStatusMessage (in nsresult aStatus, in wstring aStatusArg); */
  PRUnichar* FormatStatusMessage(nsresult aStatus, PRUnichar*aStatusArg){
    PRUnichar* _retval;
    nsresult __result = inner.FormatStatusMessage(aStatus, aStatusArg, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * flushes the string bundle cache - useful when the locale changes or
   * when we need to get some extra memory back
   * 
   * at some point, we might want to make this flush all the bundles,
   * because any bundles that are floating around when the locale changes
   * will suddenly contain bad data
   *
   */
  /* void flushBundles (); */
  void FlushBundles(){
    nsresult __result = inner.FlushBundles();
    CheckException(__result);
  }

private:
  nsIStringBundleService inner;

}

