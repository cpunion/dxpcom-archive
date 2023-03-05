/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISSLStatusProvider.idl
 */

module mozilla.dxpcom.nsISSLStatusProviderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISSLStatusProvider;


public import mozilla.dxpcom.nsISSLStatusProviderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsISSLStatusProvider */
class nsISSLStatusProviderD : public nsISupportsD {

  static const nsIID IID = NS_ISSLSTATUSPROVIDER_IID;


  alias nsISSLStatusProvider InnerType;

  this(nsISSLStatusProvider intr){
    super(intr);
    this.inner = intr;
  }

  nsISSLStatusProvider opCast() {
    return inner;
  }

  void opAssign(nsISSLStatusProvider value) {
    inner = value;
  }

  /* readonly attribute nsISupports SSLStatus; */
  nsISupportsD  SSLStatus(){
    nsISupports value;
    nsresult __result = inner.GetSSLStatus(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }

private:
  nsISSLStatusProvider inner;

}

