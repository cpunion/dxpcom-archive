/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICookieStorage.idl
 */

module mozilla.xpcom.nsICookieStorage;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nspluginroot;


/* starting interface:    nsICookieStorage */
const char[] NS_ICOOKIESTORAGE_IID_STR = "c8c05100-cfdb-11d2-bab8-b088e084e5bc";

const nsIID NS_ICOOKIESTORAGE_IID= 
  {0xc8c05100, 0xcfdb, 0x11d2, 
    [ 0xba, 0xb8, 0xb0, 0x88, 0xe0, 0x84, 0xe5, 0xbc ]};

/**
 * nsICookieStorage
 */
extern(Windows)
interface nsICookieStorage : nsISupports {
  static const char[] IID_STR = NS_ICOOKIESTORAGE_IID_STR;
  static const nsIID IID = NS_ICOOKIESTORAGE_IID;

  /**
     * Retrieves a cookie from the browser's persistent cookie store.
	 * @param aCookieURL    - URL string to look up cookie with.
	 * @param aCookieBuffer - buffer large enough to accomodate cookie data.
	 * @param aCookieSize   - on input, size of the cookie buffer, on output cookie's size.
     */
  /* void getCookie (in string aCookieURL, in voidPtr aCookieBuffer, in PRUint32Ref aCookieSize); */
  nsresult GetCookie(char *aCookieURL, void * aCookieBuffer, PRUint32 * aCookieSize);

  /**
     * Stores a cookie in the browser's persistent cookie store.
   * @param aCookieURL    - URL string store cookie with.
   * @param aCookieBuffer - buffer containing cookie data.
   * @param aCookieSize   - specifies  size of cookie data.
     */
  /* void setCookie (in string aCookieURL, in constVoidPtr aCookieBuffer, in unsigned long aCookieSize); */
  nsresult SetCookie(char *aCookieURL, void * aCookieBuffer, PRUint32 aCookieSize);

}

