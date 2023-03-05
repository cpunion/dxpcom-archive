/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICertTree.idl
 */

module mozilla.dxpcom.nsICertTreeD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICertTree;


public import mozilla.dxpcom.nsICertTreeD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsITreeView;
public import mozilla.dxpcom.nsITreeViewD;

public import mozilla.xpcom.nsINSSCertCache;

public import mozilla.dxpcom.nsINSSCertCacheD;

public import mozilla.xpcom.nsIX509Cert;

public import mozilla.dxpcom.nsIX509CertD;


/* starting wrapper class:    nsICertTree */
class nsICertTreeD : public nsITreeViewD {

  static const nsIID IID = NS_ICERTTREE_IID;


  alias nsICertTree InnerType;

  this(nsICertTree intr){
    super(intr);
    this.inner = intr;
  }

  nsICertTree opCast() {
    return inner;
  }

  void opAssign(nsICertTree value) {
    inner = value;
  }

  /* void loadCerts (in unsigned long type); */
  void LoadCerts(PRUint32 type){
    nsresult __result = inner.LoadCerts(type);
    CheckException(__result);
  }

  /* void loadCertsFromCache (in nsINSSCertCache cache, in unsigned long type); */
  void LoadCertsFromCache(nsINSSCertCacheD cache, PRUint32 type){
    nsresult __result = inner.LoadCertsFromCache(cache ? cast(nsINSSCertCache)cache : null, type);
    CheckException(__result);
  }

  /* nsIX509Cert getCert (in unsigned long index); */
  nsIX509CertD  GetCert(PRUint32 index){
    nsIX509Cert _retval;
    nsresult __result = inner.GetCert(index, &_retval);
    CheckException(__result);
    return new nsIX509CertD(_retval);
  }

  /* void removeCert (in unsigned long index); */
  void RemoveCert(PRUint32 index){
    nsresult __result = inner.RemoveCert(index);
    CheckException(__result);
  }

private:
  nsICertTree inner;

}

