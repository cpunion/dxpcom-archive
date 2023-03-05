/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISignatureVerifier.idl
 */

module mozilla.dxpcom.nsISignatureVerifierD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISignatureVerifier;


public import mozilla.dxpcom.nsISignatureVerifierD;

public import mozilla.xpcom.nsIPrincipal;
public import mozilla.dxpcom.nsIPrincipalD;


/* starting wrapper class:    nsISignatureVerifier */
class nsISignatureVerifierD : public nsISupportsD {

  static const nsIID IID = NS_ISIGNATUREVERIFIER_IID;


  alias nsISignatureVerifier InnerType;

  this(nsISignatureVerifier intr){
    super(intr);
    this.inner = intr;
  }

  nsISignatureVerifier opCast() {
    return inner;
  }

  void opAssign(nsISignatureVerifier value) {
    inner = value;
  }

  enum { VERIFY_OK = 0 }

  enum { VERIFY_ERROR_UNKNOWN_CA = -8172 }

  /* nsIPrincipal verifySignature (in string aSignature, in unsigned long aSignatureLen, in string plaintext, in unsigned long plaintextLen, out long errorCode); */
  nsIPrincipalD  VerifySignature(char*aSignature, PRUint32 aSignatureLen, char*plaintext, PRUint32 plaintextLen, out PRInt32 errorCode){
    nsIPrincipal _retval;
    nsresult __result = inner.VerifySignature(aSignature, aSignatureLen, plaintext, plaintextLen, &errorCode, &_retval);
    CheckException(__result);
    return new nsIPrincipalD(_retval);
  }

private:
  nsISignatureVerifier inner;

}

