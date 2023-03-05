/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICookieManager.idl
 */

module mozilla.xpcom.nsICookieManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISimpleEnumerator;


/* starting interface:    nsICookieManager */
const char[] NS_ICOOKIEMANAGER_IID_STR = "aaab6710-0f2c-11d5-a53b-0010a401eb10";

const nsIID NS_ICOOKIEMANAGER_IID= 
  {0xaaab6710, 0x0f2c, 0x11d5, 
    [ 0xa5, 0x3b, 0x00, 0x10, 0xa4, 0x01, 0xeb, 0x10 ]};

/** 
 * An optional interface for accessing or removing the cookies
 * that are in the cookie list
 * 
 * @status FROZEN
 */
extern(Windows)
interface nsICookieManager : nsISupports {
  static const char[] IID_STR = NS_ICOOKIEMANAGER_IID_STR;
  static const nsIID IID = NS_ICOOKIEMANAGER_IID;

  /**
   * Called to remove all cookies from the cookie list
   */
  /* void removeAll (); */
  nsresult RemoveAll();

  /**
   * Called to enumerate through each cookie in the cookie list.
   * The objects enumerated over are of type nsICookie
   */
  /* readonly attribute nsISimpleEnumerator enumerator; */
  nsresult GetEnumerator(nsISimpleEnumerator  *aEnumerator);

  /**
   * Called to remove an individual cookie from the cookie list
   *
   * @param aDomain The host or domain for which the cookie was set
   * @param aName The name specified in the cookie
   * @param aBlocked Indicates if cookies from this host should be permanently blocked
   *
   */
  /* void remove (in AUTF8String aDomain, in ACString aName, in AUTF8String aPath, in boolean aBlocked); */
  nsresult Remove(nsACString * aDomain, nsACString * aName, nsACString * aPath, PRBool aBlocked);

}

