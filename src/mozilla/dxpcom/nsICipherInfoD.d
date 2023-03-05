/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICipherInfo.idl
 */

module mozilla.dxpcom.nsICipherInfoD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICipherInfo;


public import mozilla.dxpcom.nsICipherInfoD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISimpleEnumerator;
public import mozilla.dxpcom.nsISimpleEnumeratorD;


/* starting wrapper class:    nsICipherInfo */
class nsICipherInfoD : public nsISupportsD {

  static const nsIID IID = NS_ICIPHERINFO_IID;


  alias nsICipherInfo InnerType;

  this(nsICipherInfo intr){
    super(intr);
    this.inner = intr;
  }

  nsICipherInfo opCast() {
    return inner;
  }

  void opAssign(nsICipherInfo value) {
    inner = value;
  }

  /* readonly attribute ACString longName; */
  char[] LongName(){
    scope auto value = new ACString();
    nsresult __result = inner.GetLongName(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute PRBool isSSL2; */
  PRBool IsSSL2(){
    PRBool value;
    nsresult __result = inner.GetIsSSL2(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRBool isFIPS; */
  PRBool IsFIPS(){
    PRBool value;
    nsresult __result = inner.GetIsFIPS(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRBool isExportable; */
  PRBool IsExportable(){
    PRBool value;
    nsresult __result = inner.GetIsExportable(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRBool nonStandard; */
  PRBool NonStandard(){
    PRBool value;
    nsresult __result = inner.GetNonStandard(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute ACString symCipherName; */
  char[] SymCipherName(){
    scope auto value = new ACString();
    nsresult __result = inner.GetSymCipherName(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute ACString authAlgorithmName; */
  char[] AuthAlgorithmName(){
    scope auto value = new ACString();
    nsresult __result = inner.GetAuthAlgorithmName(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute ACString keaTypeName; */
  char[] KeaTypeName(){
    scope auto value = new ACString();
    nsresult __result = inner.GetKeaTypeName(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute ACString macAlgorithmName; */
  char[] MacAlgorithmName(){
    scope auto value = new ACString();
    nsresult __result = inner.GetMacAlgorithmName(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute PRInt32 effectiveKeyBits; */
  PRInt32 EffectiveKeyBits(){
    PRInt32 value;
    nsresult __result = inner.GetEffectiveKeyBits(&value);
    CheckException(__result);
    return value;
  }

private:
  nsICipherInfo inner;

}


/* starting wrapper class:    nsICipherInfoService */
class nsICipherInfoServiceD : public nsISupportsD {

  static const nsIID IID = NS_ICIPHERINFOSERVICE_IID;


  alias nsICipherInfoService InnerType;

  this(nsICipherInfoService intr){
    super(intr);
    this.inner = intr;
  }

  nsICipherInfoService opCast() {
    return inner;
  }

  void opAssign(nsICipherInfoService value) {
    inner = value;
  }

  /* nsICipherInfo getCipherInfoByPrefString (in ACString aPrefString); */
  nsICipherInfoD  GetCipherInfoByPrefString(char[] aPrefString){
    scope auto _aPrefString = new ACString(aPrefString);
    nsICipherInfo _retval;
    nsresult __result = inner.GetCipherInfoByPrefString(cast(nsACString*)_aPrefString, &_retval);
    CheckException(__result);
    return new nsICipherInfoD(_retval);
  }

private:
  nsICipherInfoService inner;

}

