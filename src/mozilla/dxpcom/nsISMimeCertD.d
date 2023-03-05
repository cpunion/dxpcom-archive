/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISMimeCert.idl
 */

module mozilla.dxpcom.nsISMimeCertD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISMimeCert;


public import mozilla.dxpcom.nsISMimeCertD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsISMimeCert */
class nsISMimeCertD : public nsISupportsD {

  static const nsIID IID = NS_ISMIMECERT_IID;


  alias nsISMimeCert InnerType;

  this(nsISMimeCert intr){
    super(intr);
    this.inner = intr;
  }

  nsISMimeCert opCast() {
    return inner;
  }

  void opAssign(nsISMimeCert value) {
    inner = value;
  }

  /* void saveSMimeProfile (); */
  void SaveSMimeProfile(){
    nsresult __result = inner.SaveSMimeProfile();
    CheckException(__result);
  }

private:
  nsISMimeCert inner;

}

