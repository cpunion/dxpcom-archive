/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICookieManager.idl
 */

module mozilla.dxpcom.nsICookieManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICookieManager;


public import mozilla.dxpcom.nsICookieManagerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISimpleEnumerator;
public import mozilla.dxpcom.nsISimpleEnumeratorD;


/* starting wrapper class:    nsICookieManager */
/** 
 * An optional interface for accessing or removing the cookies
 * that are in the cookie list
 * 
 * @status FROZEN
 */
class nsICookieManagerD : public nsISupportsD {

  static const nsIID IID = NS_ICOOKIEMANAGER_IID;


  alias nsICookieManager InnerType;

  this(nsICookieManager intr){
    super(intr);
    this.inner = intr;
  }

  nsICookieManager opCast() {
    return inner;
  }

  void opAssign(nsICookieManager value) {
    inner = value;
  }

  /**
   * Called to remove all cookies from the cookie list
   */
  /* void removeAll (); */
  void RemoveAll(){
    nsresult __result = inner.RemoveAll();
    CheckException(__result);
  }

  /**
   * Called to enumerate through each cookie in the cookie list.
   * The objects enumerated over are of type nsICookie
   */
  /* readonly attribute nsISimpleEnumerator enumerator; */
  nsISimpleEnumeratorD  Enumerator(){
    nsISimpleEnumerator value;
    nsresult __result = inner.GetEnumerator(&value);
    CheckException(__result);
    return new nsISimpleEnumeratorD(value);
  }

  /**
   * Called to remove an individual cookie from the cookie list
   *
   * @param aDomain The host or domain for which the cookie was set
   * @param aName The name specified in the cookie
   * @param aBlocked Indicates if cookies from this host should be permanently blocked
   *
   */
  /* void remove (in AUTF8String aDomain, in ACString aName, in AUTF8String aPath, in boolean aBlocked); */
  void Remove(char[] aDomain, char[] aName, char[] aPath, PRBool aBlocked){
    scope auto _aDomain = new ACString(aDomain);
    scope auto _aName = new ACString(aName);
    scope auto _aPath = new ACString(aPath);
    nsresult __result = inner.Remove(cast(nsACString*)_aDomain, cast(nsACString*)_aName, cast(nsACString*)_aPath, aBlocked);
    CheckException(__result);
  }

private:
  nsICookieManager inner;

}

