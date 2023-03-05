/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINSSCertCache.idl
 */

module mozilla.xpcom.nsINSSCertCache;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsINSSCertCache */
const char[] NS_INSSCERTCACHE_IID_STR = "6c143dac-bd65-4333-b594-7ed1e748e0f9";

const nsIID NS_INSSCERTCACHE_IID= 
  {0x6c143dac, 0xbd65, 0x4333, 
    [ 0xb5, 0x94, 0x7e, 0xd1, 0xe7, 0x48, 0xe0, 0xf9 ]};

extern(Windows)
interface nsINSSCertCache : nsISupports {
  static const char[] IID_STR = NS_INSSCERTCACHE_IID_STR;
  static const nsIID IID = NS_INSSCERTCACHE_IID;

  /* void cacheAllCerts (); */
  nsresult CacheAllCerts();

  /* [noscript, notxpcom] voidPtr getCachedCerts (); */
  void * GetCachedCerts();

}

