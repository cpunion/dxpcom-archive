/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIX509CertDB2.idl
 */

module mozilla.dxpcom.nsIX509CertDB2D;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIX509CertDB2;


public import mozilla.dxpcom.nsIX509CertDB2D;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIX509CertDB2 */
/**
 * This represents a service to access and manipulate 
 * X.509 certificates stored in a database through methods
 * not in nsIX509CertDB, which is frozen
 *
 */
class nsIX509CertDB2D : public nsISupportsD {

  static const nsIID IID = NS_IX509CERTDB2_IID;


  alias nsIX509CertDB2 InnerType;

  this(nsIX509CertDB2 intr){
    super(intr);
    this.inner = intr;
  }

  nsIX509CertDB2 opCast() {
    return inner;
  }

  void opAssign(nsIX509CertDB2 value) {
    inner = value;
  }

  /* void addCertFromBase64 (in string base64, in string aTrust, in string aName); */
  void AddCertFromBase64(char*base64, char*aTrust, char*aName){
    nsresult __result = inner.AddCertFromBase64(base64, aTrust, aName);
    CheckException(__result);
  }

private:
  nsIX509CertDB2 inner;

}

