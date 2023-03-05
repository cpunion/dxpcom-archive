/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIHash.idl
 */

module mozilla.dxpcom.nsIHashD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIHash;


public import mozilla.dxpcom.nsIHashD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIHash */
class nsIHashD : public nsISupportsD {

  static const nsIID IID = NS_IHASH_IID;


  alias nsIHash InnerType;

  this(nsIHash intr){
    super(intr);
    this.inner = intr;
  }

  nsIHash opCast() {
    return inner;
  }

  void opAssign(nsIHash value) {
    inner = value;
  }

  enum { HASH_AlgNULL = 0 }

  enum { HASH_AlgMD2 = 1 }

  enum { HASH_AlgMD5 = 2 }

  enum { HASH_AlgSHA1 = 3 }

  enum { MD2_LEN = 16U }

  enum { MD5_LEN = 16U }

  enum { SHA1_LEN = 20U }

  enum { MAX_HASH_LEN = 20U }

  /* unsigned long resultLen (in short aAlg); */
  PRUint32 ResultLen(PRInt16 aAlg){
    PRUint32 _retval;
    nsresult __result = inner.ResultLen(aAlg, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void create (in short aAlg); */
  void Create(PRInt16 aAlg){
    nsresult __result = inner.Create(aAlg);
    CheckException(__result);
  }

  /* void begin (); */
  void Begin(){
    nsresult __result = inner.Begin();
    CheckException(__result);
  }

  /* void update (in UnsignedCharPtr aBuf, in unsigned long aLen); */
  void Update(char * aBuf, PRUint32 aLen){
    nsresult __result = inner.Update(aBuf, aLen);
    CheckException(__result);
  }

  /* void end (in UnsignedCharPtr aHash, out unsigned long aLen, in unsigned long aMaxLen); */
  void End(char * aHash, out PRUint32 aLen, PRUint32 aMaxLen){
    nsresult __result = inner.End(aHash, &aLen, aMaxLen);
    CheckException(__result);
  }

private:
  nsIHash inner;

}

