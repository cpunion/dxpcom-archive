/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOCKSSocketInfo.idl
 */

module mozilla.dxpcom.nsISOCKSSocketInfoD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISOCKSSocketInfo;


public import mozilla.dxpcom.nsISOCKSSocketInfoD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsISOCKSSocketInfo */
class nsISOCKSSocketInfoD : public nsISupportsD {

  static const nsIID IID = NS_ISOCKSSOCKETINFO_IID;


  alias nsISOCKSSocketInfo InnerType;

  this(nsISOCKSSocketInfo intr){
    super(intr);
    this.inner = intr;
  }

  nsISOCKSSocketInfo opCast() {
    return inner;
  }

  void opAssign(nsISOCKSSocketInfo value) {
    inner = value;
  }

  /* [noscript] attribute PRNetAddrPtr destinationAddr; */
  PRNetAddr * DestinationAddr(){
    PRNetAddr * value;
    nsresult __result = inner.GetDestinationAddr(&value);
    CheckException(__result);
    return value;
  }
  void DestinationAddr(PRNetAddr * aDestinationAddr){
    nsresult __result = inner.SetDestinationAddr(aDestinationAddr);
    CheckException(__result);
  }

  /* [noscript] attribute PRNetAddrPtr externalProxyAddr; */
  PRNetAddr * ExternalProxyAddr(){
    PRNetAddr * value;
    nsresult __result = inner.GetExternalProxyAddr(&value);
    CheckException(__result);
    return value;
  }
  void ExternalProxyAddr(PRNetAddr * aExternalProxyAddr){
    nsresult __result = inner.SetExternalProxyAddr(aExternalProxyAddr);
    CheckException(__result);
  }

  /* [noscript] attribute PRNetAddrPtr internalProxyAddr; */
  PRNetAddr * InternalProxyAddr(){
    PRNetAddr * value;
    nsresult __result = inner.GetInternalProxyAddr(&value);
    CheckException(__result);
    return value;
  }
  void InternalProxyAddr(PRNetAddr * aInternalProxyAddr){
    nsresult __result = inner.SetInternalProxyAddr(aInternalProxyAddr);
    CheckException(__result);
  }

private:
  nsISOCKSSocketInfo inner;

}

