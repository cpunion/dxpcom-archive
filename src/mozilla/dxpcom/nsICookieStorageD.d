/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICookieStorage.idl
 */

module mozilla.dxpcom.nsICookieStorageD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICookieStorage;


public import mozilla.dxpcom.nsICookieStorageD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nspluginroot;
public import mozilla.dxpcom.nspluginrootD;


/* starting wrapper class:    nsICookieStorage */
/**
 * nsICookieStorage
 */
class nsICookieStorageD : public nsISupportsD {

  static const nsIID IID = NS_ICOOKIESTORAGE_IID;


  alias nsICookieStorage InnerType;

  this(nsICookieStorage intr){
    super(intr);
    this.inner = intr;
  }

  nsICookieStorage opCast() {
    return inner;
  }

  void opAssign(nsICookieStorage value) {
    inner = value;
  }

  /**
     * Retrieves a cookie from the browser's persistent cookie store.
	 * @param aCookieURL    - URL string to look up cookie with.
	 * @param aCookieBuffer - buffer large enough to accomodate cookie data.
	 * @param aCookieSize   - on input, size of the cookie buffer, on output cookie's size.
     */
  /* void getCookie (in string aCookieURL, in voidPtr aCookieBuffer, in PRUint32Ref aCookieSize); */
  void GetCookie(char*aCookieURL, void * aCookieBuffer, PRUint32 * aCookieSize){
    nsresult __result = inner.GetCookie(aCookieURL, aCookieBuffer, aCookieSize);
    CheckException(__result);
  }

  /**
     * Stores a cookie in the browser's persistent cookie store.
   * @param aCookieURL    - URL string store cookie with.
   * @param aCookieBuffer - buffer containing cookie data.
   * @param aCookieSize   - specifies  size of cookie data.
     */
  /* void setCookie (in string aCookieURL, in constVoidPtr aCookieBuffer, in unsigned long aCookieSize); */
  void SetCookie(char*aCookieURL, void * aCookieBuffer, PRUint32 aCookieSize){
    nsresult __result = inner.SetCookie(aCookieURL, aCookieBuffer, aCookieSize);
    CheckException(__result);
  }

private:
  nsICookieStorage inner;

}

