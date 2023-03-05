/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgSignature.idl
 */

module mozilla.dxpcom.nsIMsgSignatureD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgSignature;


public import mozilla.dxpcom.nsIMsgSignatureD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIMsgSignature */
class nsIMsgSignatureD : public nsISupportsD {

  static const nsIID IID = NS_IMSGSIGNATURE_IID;


  alias nsIMsgSignature InnerType;

  this(nsIMsgSignature intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgSignature opCast() {
    return inner;
  }

  void opAssign(nsIMsgSignature value) {
    inner = value;
  }

  /* attribute string signatureName; */
  char* SignatureName(){
    char* value;
    nsresult __result = inner.GetSignatureName(&value);
    CheckException(__result);
    return value;
  }
  void SignatureName(char* aSignatureName){
    nsresult __result = inner.SetSignatureName(aSignatureName);
    CheckException(__result);
  }

  /* attribute string signature; */
  char* Signature(){
    char* value;
    nsresult __result = inner.GetSignature(&value);
    CheckException(__result);
    return value;
  }
  void Signature(char* aSignature){
    nsresult __result = inner.SetSignature(aSignature);
    CheckException(__result);
  }

private:
  nsIMsgSignature inner;

}

