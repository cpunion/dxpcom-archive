/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPK11TokenDB.idl
 */

module mozilla.dxpcom.nsIPK11TokenDBD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPK11TokenDB;


public import mozilla.dxpcom.nsIPK11TokenDBD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIPK11Token;

public import mozilla.dxpcom.nsIPK11TokenD;

public import mozilla.xpcom.nsIEnumerator;

public import mozilla.dxpcom.nsIEnumeratorD;


/* starting wrapper class:    nsIPK11TokenDB */
/**
 * The PK11 Token Database provides access to the PK11 modules
 * that are installed, and the tokens that are available.
 * Interfaces: nsIPK11TokenDB
 * Threading: ??
 */
/**
 * nsIPK11TokenDB - Manages PK11 Tokens
 */
class nsIPK11TokenDBD : public nsISupportsD {

  static const nsIID IID = NS_IPK11TOKENDB_IID;


  alias nsIPK11TokenDB InnerType;

  this(nsIPK11TokenDB intr){
    super(intr);
    this.inner = intr;
  }

  nsIPK11TokenDB opCast() {
    return inner;
  }

  void opAssign(nsIPK11TokenDB value) {
    inner = value;
  }

  /* nsIPK11Token getInternalKeyToken (); */
  nsIPK11TokenD  GetInternalKeyToken(){
    nsIPK11Token _retval;
    nsresult __result = inner.GetInternalKeyToken(&_retval);
    CheckException(__result);
    return new nsIPK11TokenD(_retval);
  }

  /* nsIPK11Token findTokenByName (in wstring tokenName); */
  nsIPK11TokenD  FindTokenByName(PRUnichar*tokenName){
    nsIPK11Token _retval;
    nsresult __result = inner.FindTokenByName(tokenName, &_retval);
    CheckException(__result);
    return new nsIPK11TokenD(_retval);
  }

  /* nsIEnumerator listTokens (); */
  nsIEnumeratorD  ListTokens(){
    nsIEnumerator _retval;
    nsresult __result = inner.ListTokens(&_retval);
    CheckException(__result);
    return new nsIEnumeratorD(_retval);
  }

private:
  nsIPK11TokenDB inner;

}

