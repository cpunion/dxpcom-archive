/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINSSCertCache.idl
 */

module mozilla.dxpcom.nsINSSCertCacheD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsINSSCertCache;


public import mozilla.dxpcom.nsINSSCertCacheD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsINSSCertCache */
class nsINSSCertCacheD : public nsISupportsD {

  static const nsIID IID = NS_INSSCERTCACHE_IID;


  alias nsINSSCertCache InnerType;

  this(nsINSSCertCache intr){
    super(intr);
    this.inner = intr;
  }

  nsINSSCertCache opCast() {
    return inner;
  }

  void opAssign(nsINSSCertCache value) {
    inner = value;
  }

  /* void cacheAllCerts (); */
  void CacheAllCerts(){
    nsresult __result = inner.CacheAllCerts();
    CheckException(__result);
  }

  /* [noscript, notxpcom] voidPtr getCachedCerts (); */
  void * GetCachedCerts(){
    void * _retval;
    _retval = inner.GetCachedCerts();

    return _retval;
  }

private:
  nsINSSCertCache inner;

}

