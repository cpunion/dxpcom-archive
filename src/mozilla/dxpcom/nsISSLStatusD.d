/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISSLStatus.idl
 */

module mozilla.dxpcom.nsISSLStatusD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISSLStatus;


public import mozilla.dxpcom.nsISSLStatusD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIX509Cert;

public import mozilla.dxpcom.nsIX509CertD;


/* starting wrapper class:    nsISSLStatus */
class nsISSLStatusD : public nsISupportsD {

  static const nsIID IID = NS_ISSLSTATUS_IID;


  alias nsISSLStatus InnerType;

  this(nsISSLStatus intr){
    super(intr);
    this.inner = intr;
  }

  nsISSLStatus opCast() {
    return inner;
  }

  void opAssign(nsISSLStatus value) {
    inner = value;
  }

  /* readonly attribute nsIX509Cert serverCert; */
  nsIX509CertD  ServerCert(){
    nsIX509Cert value;
    nsresult __result = inner.GetServerCert(&value);
    CheckException(__result);
    return new nsIX509CertD(value);
  }

  /* readonly attribute string cipherName; */
  char* CipherName(){
    char* value;
    nsresult __result = inner.GetCipherName(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute unsigned long keyLength; */
  PRUint32 KeyLength(){
    PRUint32 value;
    nsresult __result = inner.GetKeyLength(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute unsigned long secretKeyLength; */
  PRUint32 SecretKeyLength(){
    PRUint32 value;
    nsresult __result = inner.GetSecretKeyLength(&value);
    CheckException(__result);
    return value;
  }

private:
  nsISSLStatus inner;

}

