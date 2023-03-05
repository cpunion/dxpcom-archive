/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICertSelect.idl
 */

module mozilla.dxpcom.nsICertSelectD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICertSelect;


public import mozilla.dxpcom.nsICertSelectD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIX509Cert;

public import mozilla.dxpcom.nsIX509CertD;


/* starting wrapper class:    nsICertSelect */
class nsICertSelectD : public nsISupportsD {

  static const nsIID IID = NS_ICERTSELECT_IID;


  alias nsICertSelect InnerType;

  this(nsICertSelect intr){
    super(intr);
    this.inner = intr;
  }

  nsICertSelect opCast() {
    return inner;
  }

  void opAssign(nsICertSelect value) {
    inner = value;
  }

  /* nsIX509Cert selectClientAuthCert (in nsIChannelSecurityInfo socketInfo, in unsigned long count, [array, size_is (count)] in nsIX509Cert certs); */
  nsIX509CertD  SelectClientAuthCert(nsIChannelSecurityInfoD socketInfo, PRUint32 count, nsIX509CertD *certs){
    nsIX509Cert _retval;
    nsresult __result = inner.SelectClientAuthCert(socketInfo ? cast(nsIChannelSecurityInfo)socketInfo : null, count, certs ? cast(nsIX509Cert)certs : null, &_retval);
    CheckException(__result);
    return new nsIX509CertD(_retval);
  }

private:
  nsICertSelect inner;

}

