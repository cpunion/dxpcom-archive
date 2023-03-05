/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProxyCreateInstance.idl
 */

module mozilla.dxpcom.nsIProxyCreateInstanceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIProxyCreateInstance;


public import mozilla.dxpcom.nsIProxyCreateInstanceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIProxyCreateInstance */
class nsIProxyCreateInstanceD : public nsISupportsD {

  static const nsIID IID = NS_IPROXYCREATEINSTANCE_IID;


  alias nsIProxyCreateInstance InnerType;

  this(nsIProxyCreateInstance intr){
    super(intr);
    this.inner = intr;
  }

  nsIProxyCreateInstance opCast() {
    return inner;
  }

  void opAssign(nsIProxyCreateInstance value) {
    inner = value;
  }

  /* [noscript] void CreateInstanceByIID (in nsIIDRef cid, in nsISupports aOuter, in nsIIDRef iid, out voidPtr result); */
  void CreateInstanceByIID(nsIID * cid, nsISupportsD aOuter, nsIID * iid, out void * result){
    nsresult __result = inner.CreateInstanceByIID(cid, aOuter ? cast(nsISupports)aOuter : null, iid, &result);
    CheckException(__result);
  }

  /* [noscript] void CreateInstanceByContractID (in string aContractID, in nsISupports aOuter, in nsIIDRef iid, out voidPtr result); */
  void CreateInstanceByContractID(char*aContractID, nsISupportsD aOuter, nsIID * iid, out void * result){
    nsresult __result = inner.CreateInstanceByContractID(aContractID, aOuter ? cast(nsISupports)aOuter : null, iid, &result);
    CheckException(__result);
  }

private:
  nsIProxyCreateInstance inner;

}

