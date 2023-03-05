/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIKeyModule.idl
 */

module mozilla.dxpcom.nsIKeyModuleD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIKeyModule;


public import mozilla.dxpcom.nsIKeyModuleD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIKeyObject */
class nsIKeyObjectD : public nsISupportsD {

  static const nsIID IID = NS_IKEYOBJECT_IID;


  alias nsIKeyObject InnerType;

  this(nsIKeyObject intr){
    super(intr);
    this.inner = intr;
  }

  nsIKeyObject opCast() {
    return inner;
  }

  void opAssign(nsIKeyObject value) {
    inner = value;
  }

  enum { SYM_KEY = 1 }

  enum { PRIVATE_KEY = 2 }

  enum { PUBLIC_KEY = 3 }

  enum { RC4 = 1 }

  enum { AES_CBC = 2 }

  /* [noscript] void initKey (in short aAlgorithm, in voidPtr aKey); */
  void InitKey(PRInt16 aAlgorithm, void * aKey){
    nsresult __result = inner.InitKey(aAlgorithm, aKey);
    CheckException(__result);
  }

  /* [noscript] voidPtr getKeyObj (); */
  void * GetKeyObj(){
void * _retval;
    nsresult __result = inner.GetKeyObj(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* short getType (); */
  PRInt16 GetType(){
    PRInt16 _retval;
    nsresult __result = inner.GetType(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIKeyObject inner;

}


/* starting wrapper class:    nsIKeyObjectFactory */
class nsIKeyObjectFactoryD : public nsISupportsD {

  static const nsIID IID = NS_IKEYOBJECTFACTORY_IID;


  alias nsIKeyObjectFactory InnerType;

  this(nsIKeyObjectFactory intr){
    super(intr);
    this.inner = intr;
  }

  nsIKeyObjectFactory opCast() {
    return inner;
  }

  void opAssign(nsIKeyObjectFactory value) {
    inner = value;
  }

  /* nsIKeyObject lookupKeyByName (in ACString aName); */
  nsIKeyObjectD  LookupKeyByName(char[] aName){
    scope auto _aName = new ACString(aName);
    nsIKeyObject _retval;
    nsresult __result = inner.LookupKeyByName(cast(nsACString*)_aName, &_retval);
    CheckException(__result);
    return new nsIKeyObjectD(_retval);
  }

  /* nsIKeyObject unwrapKey (in short aAlgorithm, [array, size_is (aWrappedKeyLen), const] in octet aWrappedKey, in unsigned long aWrappedKeyLen); */
  nsIKeyObjectD  UnwrapKey(PRInt16 aAlgorithm, PRUint8 *aWrappedKey, PRUint32 aWrappedKeyLen){
    nsIKeyObject _retval;
    nsresult __result = inner.UnwrapKey(aAlgorithm, aWrappedKey, aWrappedKeyLen, &_retval);
    CheckException(__result);
    return new nsIKeyObjectD(_retval);
  }

  /* nsIKeyObject keyFromString (in short aAlgorithm, in ACString aKey); */
  nsIKeyObjectD  KeyFromString(PRInt16 aAlgorithm, char[] aKey){
    scope auto _aKey = new ACString(aKey);
    nsIKeyObject _retval;
    nsresult __result = inner.KeyFromString(aAlgorithm, cast(nsACString*)_aKey, &_retval);
    CheckException(__result);
    return new nsIKeyObjectD(_retval);
  }

private:
  nsIKeyObjectFactory inner;

}

